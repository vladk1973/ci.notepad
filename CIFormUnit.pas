unit CIFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NppForms, SHDocVw, StdCtrls, Registry, Buttons, ExtCtrls,
  ActnList, System.Actions, Vcl.Menus, System.ImageList, Vcl.ImgList;

type
  TCIForm = class(TNppForm)
    Panel1: TPanel;
    actionLabel: TLabel;
    Panel2: TPanel;
    OkBtn: TBitBtn;
    CancelBtn: TBitBtn;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    ProductList: TComboBox;
    BranchList: TComboBox;
    ModuleList: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ActionList1: TActionList;
    OkAction: TAction;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    Label4: TLabel;
    FilterList: TComboBox;
    clearAction: TAction;
    Image1: TImage;
    ImageList1: TImageList;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure OkActionExecute(Sender: TObject);
    procedure OkActionUpdate(Sender: TObject);
    procedure clearActionExecute(Sender: TObject);
    procedure FilterListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    const cnstDllKey = 'Software\cinotepad';
    const cnstNoFilter = 'Не задан';
    const cnstFilter1 = 'Стопперы деплоя|85;86;87;90;91;95;98;100;101;103;104;105;108;110;112;116;117;118;119;120';
    const cnstFilter2 = 'Стопперы деплоя NEW|83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;103;104;105;106;107;108;109;110;112;116;117;118;119;120;122;123;124';
    const cnstInsp = 'Инспектор кода: ';
    const cnstCIFormKey = 'CIForm';
    const cnstDevelop   = 'develop';
    const cnstCIFilterKey = 'CIFilterHistory';
    const cnstCIProductKey = 'CIProductHistory';
    const cnstCIBranchKey = 'CIBranchHistory';
    const cnstCIModuleKey = 'CIModuleHistory';


    function GetFileName: String;
    function GetFullFileName: String;
    procedure SaveSettings;
    procedure RestoreSettings;
    procedure RestoreFilter;
    { Private declarations }
  public
    { Public declarations }
    procedure Navigate(WebBrowser: TWebBrowser);
    property FileName: String read GetFileName;
    property FullFileName: String read GetFullFileName;
  end;

var
  CIForm: TCIForm;

implementation

{$R *.dfm}

function EncodeBase64(const inStr: AnsiString): AnsiString;

  function Encode_Byte(b: Byte): AnsiChar;
  const
    Base64Code: string[64] =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  begin
    Result := Base64Code[(b and $3F)+1];
  end;

var
  i: Integer;
begin
  i := 1;
  Result := '';
  while i <= Length(InStr) do
  begin
    Result := Result + Encode_Byte(Byte(inStr[i]) shr 2);
    Result := Result + Encode_Byte((Byte(inStr[i]) shl 4) or (Byte(inStr[i+1]) shr 4));
    if i+1 <= Length(inStr) then
      Result := Result + Encode_Byte((Byte(inStr[i+1]) shl 2) or (Byte(inStr[i+2]) shr 6))
    else
      Result := Result + '=';
    if i+2 <= Length(inStr) then
      Result := Result + Encode_Byte(Byte(inStr[i+2]))
    else
      Result := Result + '=';
    Inc(i, 3);
  end;
end;

{ TCIForm }

function TCIForm.GetFileName: String;
begin
  Npp.GetFileName(Result);
end;

function TCIForm.GetFullFileName: String;
begin
  Npp.GetFullFileName(Result);
end;

procedure TCIForm.RestoreFilter;
var
  Registry: TRegistry;
  FFilter: String;
  FHistory: TStringList;
  i: integer;
begin
  FilterList.Clear;
  FilterList.AddItem(cnstNoFilter,nil);

  Registry := TRegistry.Create(KEY_ALL_ACCESS);
  FHistory := TStringList.Create;
  try
    Registry.RootKey := HKEY_CURRENT_USER;
    if Registry.OpenKey(cnstDllKey + '\' + cnstCIFormKey, False) then
    begin
      FFilter := Registry.ReadString('Filter');
      Registry.CloseKey;
    end;

    if Registry.OpenKey(cnstDllKey + '\' + cnstCIFilterKey, False) then
    begin
      FHistory.Clear;
      Registry.GetValueNames(FHistory);
      for i := 0 to FHistory.Count - 1 do
        FilterList.AddItem(Registry.ReadString(FHistory[i]),nil);
      Registry.CloseKey;
    end
    else
    if Registry.OpenKey(cnstDllKey + '\' + cnstCIFilterKey, True) then
    begin
      Registry.WriteString('Item0',cnstFilter1);
      Registry.WriteString('Item1',cnstFilter2);
      FilterList.AddItem(cnstFilter1,nil);
      FilterList.AddItem(cnstFilter2,nil);
      FilterList.ItemIndex := 0;
      Registry.CloseKey;
    end;

    FilterList.ItemIndex := 0;
    if not FFilter.IsEmpty  then
      if FilterList.Items.Count > 0 then
      begin
        i := FilterList.Items.IndexOf(FFilter);
        if i < 0 then
        begin
          FilterList.AddItem(FFilter,nil);
          i := FilterList.Items.IndexOf(FFilter);
        end;

        if i >= 0 then FilterList.ItemIndex := i;
      end;

  finally
    Registry.Free;
    FHistory.Free;
  end;
end;

procedure TCIForm.RestoreSettings;
var
  Registry: TRegistry;
  FProduct,FBranch,FModule: String;
  FHistory: TStringList;
  i: integer;
begin
  Registry := TRegistry.Create(KEY_READ);
  FHistory := TStringList.Create;
  try
    Registry.RootKey := HKEY_CURRENT_USER;

    if Registry.OpenKey(cnstDllKey + '\' + cnstCIFormKey, False) then
    begin
      FProduct := Registry.ReadString('Product');
      FBranch := Registry.ReadString('Branch');
      FModule := Registry.ReadString('Module');
      Registry.CloseKey;

      if Registry.OpenKey(cnstDllKey + '\' + cnstCIProductKey, False) then
      begin
        FHistory.Clear;
        Registry.GetValueNames(FHistory);
        for i := 0 to FHistory.Count - 1 do
          ProductList.AddItem(Registry.ReadString(FHistory[i]),nil);
        Registry.CloseKey;
      end;

      if Registry.OpenKey(cnstDllKey + '\' + cnstCIBranchKey, False) then
      begin
        FHistory.Clear;
        Registry.GetValueNames(FHistory);
        for i := 0 to FHistory.Count - 1 do
          BranchList.AddItem(Registry.ReadString(FHistory[i]),nil);
        Registry.CloseKey;
      end;

      if Registry.OpenKey(cnstDllKey + '\' + cnstCIModuleKey, False) then
      begin
        FHistory.Clear;
        Registry.GetValueNames(FHistory);
        for i := 0 to FHistory.Count - 1 do
          ModuleList.AddItem(Registry.ReadString(FHistory[i]),nil);
        Registry.CloseKey;
      end;

      if ProductList.Items.Count > 0 then
      begin
        i := ProductList.Items.IndexOf(FProduct);
        if i < 0 then
        begin
          ProductList.AddItem(FProduct,nil);
          i := ProductList.Items.IndexOf(FProduct);
        end;

        if i >= 0 then ProductList.ItemIndex := i;
      end;

      if BranchList.Items.Count > 0 then
      begin
        i := BranchList.Items.IndexOf(FBranch);
        if i < 0 then
        begin
          BranchList.AddItem(FBranch,nil);
          i := BranchList.Items.IndexOf(FBranch);
        end;

        if i >= 0 then BranchList.ItemIndex := i;
      end;

      if ModuleList.Items.Count > 0 then
      begin
        i := ModuleList.Items.IndexOf(FModule);
        if i < 0 then
        begin
          ModuleList.AddItem(FModule,nil);
          i := ModuleList.Items.IndexOf(FModule);
        end;

        if i >= 0 then ModuleList.ItemIndex := i;
      end;
    end
    else
    begin
      ProductList.Clear;
      BranchList.Clear;
      BranchList.AddItem(cnstDevelop,nil);
      BranchList.ItemIndex := 0;
      ModuleList.Clear;
    end;

  finally
    Registry.Free;
    FHistory.Free;
  end;
end;

procedure TCIForm.SaveSettings;
var
  Registry: TRegistry;
  i: integer;
  S: String;
begin
  inherited;
  Registry := TRegistry.Create(KEY_ALL_ACCESS);
  try
    Registry.RootKey := HKEY_CURRENT_USER;

    if not Registry.KeyExists(cnstDllKey) then Registry.CreateKey(cnstDllKey);

    if Registry.OpenKey(cnstDllKey + '\' + cnstCIFormKey, True) then
    begin
      if FilterList.ItemIndex>=0 then
        Registry.WriteString('Filter',FilterList.Items[FilterList.ItemIndex]);
      if ProductList.Text <> '' then
        Registry.WriteString('Product',ProductList.Text);
      if BranchList.Text <> '' then
        Registry.WriteString('Branch',BranchList.Text);
      if ModuleList.Text <> '' then
        Registry.WriteString('Module',ModuleList.Text);
      Registry.CloseKey;
    end;

    S := Trim(ProductList.Text);
    if (S<>'') and (ProductList.Items.IndexOf(S)<0) then ProductList.AddItem(S,nil);
    if ProductList.Items.Count = 0 then
      Registry.DeleteKey(cnstDllKey + '\' + cnstCIProductKey)
    else
      if Registry.OpenKey(cnstDllKey + '\' + cnstCIProductKey, True) then
      begin
        for i := 0 to ProductList.Items.Count - 1 do
          Registry.WriteString('Item' + IntToStr(i),ProductList.Items[i]);
        Registry.CloseKey;
      end;

    S := Trim(BranchList.Text);
    if (S<>'') and (BranchList.Items.IndexOf(S)<0) then BranchList.AddItem(S,nil);
    if BranchList.Items.Count = 0 then
      Registry.DeleteKey(cnstDllKey + '\' + cnstCIBranchKey)
    else
      if Registry.OpenKey(cnstDllKey + '\' + cnstCIBranchKey, True) then
      begin
        for i := 0 to BranchList.Items.Count - 1 do
          Registry.WriteString('Item' + IntToStr(i),BranchList.Items[i]);
        Registry.CloseKey;
      end;

    S := Trim(ModuleList.Text);
    if (S<>'') and (ModuleList.Items.IndexOf(S)<0) then ModuleList.AddItem(S,nil);
    if ModuleList.Items.Count = 0 then
      Registry.DeleteKey(cnstDllKey + '\' + cnstCIModuleKey)
    else
      if Registry.OpenKey(cnstDllKey + '\' + cnstCIModuleKey, True) then
      begin
        for i := 0 to ModuleList.Items.Count - 1 do
          Registry.WriteString('Item' + IntToStr(i),ModuleList.Items[i]);
        Registry.CloseKey;
      end;

  finally
    Registry.Free;
  end;
end;

procedure TCIForm.FilterListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  Bitmap: TBitmap;
  Offset: Integer;
  S: string;
begin
  with (Control as TComboBox).Canvas do  { Draw on control canvas, not on the form. }
  begin
    S := (Control as TComboBox).Items[Index];

    FillRect(Rect);       { Clear the rectangle. }
    Offset := 2;          { Provide default offset. }

    if S.Contains('|') then
    begin
      Bitmap := Image1.Picture.Bitmap;
      S := S.Substring(0,S.IndexOf('|'));
    end
    else
      Bitmap := Image2.Picture.Bitmap;

    if Bitmap <> nil then
    begin
      //DrawIcon(Handle, Rect.Left + Offset, Rect.Top, Icon.Handle);
      BrushCopy(
      Bounds(Rect.Left + Offset, Rect.Top+1, Bitmap.Width, Bitmap.Height),
      Bitmap,
      Bounds(0, 0, Bitmap.Width, Bitmap.Height),
      clWhite);  {render bitmap}
      Offset := Bitmap.width + 6;    { Add four pixels between bitmap and text. }
    end;
    TextOut(Rect.Left + Offset, Rect.Top+1, S);
  end;
end;

procedure TCIForm.FormCreate(Sender: TObject);
begin
  inherited;
  RestoreSettings;
  RestoreFilter;
  Caption := cnstInsp + FileName;
end;

procedure TCIForm.Navigate(WebBrowser: TWebBrowser);
var
  in_stream: TMemoryStream;
  Flags, TargetFrameName, PostData, Headers: OleVariant;
  sData, sFilter: AnsiString;
begin
  if WebBrowser.Busy then WebBrowser.Stop;
  if not FileExists(FullFileName) then Exit;

  in_stream := TMemoryStream.Create;
  try
    in_stream.LoadFromFile(FullFileName);
    in_stream.Position := 0;

    if FilterList.ItemIndex > 0 then
    begin
      sFilter := FilterList.Items[FilterList.ItemIndex];

      sFilter := Copy(sFilter,Pos('|',sFilter)+1,MaxInt);
      //sFilter.Substring(sFilter.IndexOf('|')+1);
    end
    else
      sFilter := '';

    SetString(sData, PAnsiChar(in_stream.Memory), in_stream.Size);

    sData := Format('platform=%s&product=%s&version=%s&module=%s&fileName=%s&inspectingFile=%s&filter_rules=%s',
                ['5NT', AnsiString(ProductList.Text), AnsiString(BranchList.Text), AnsiString(ModuleList.Text),
                  ExtractFileName(FileName), EncodeBase64(sData),sFilter]);

    PostData := VarArrayCreate([1, Length(sData) + 1], varByte);
    System.Move(sData[1], VarArrayLock(PostData)^, Length(sData) + 1);
    VarArrayUnlock(PostData);
    Headers := 'Content-Type: application/x-www-form-urlencoded'#13#10;

    WebBrowser.Navigate('http://codeinsp:8081/inspectfileex/', Flags,
                         TargetFrameName, PostData, Headers);
  finally
    in_stream.Free;
  end;
end;

procedure TCIForm.OkActionExecute(Sender: TObject);
begin
  Self.Npp.SaveCurrentFile;
  SaveSettings;

  OkBtn.Enabled := False;
  actionLabel.Visible := True;
  Self.Refresh;
end;

procedure TCIForm.OkActionUpdate(Sender: TObject);
begin
  inherited;
  OkAction.Enabled := (ProductList.Text <> '') and
                     (BranchList.Text  <> '') and
                     (ModuleList.Text  <> '');
end;

procedure TCIForm.clearActionExecute(Sender: TObject);
var
  Registry: TRegistry;
begin
  ProductList.Clear;
  BranchList.Clear;
  ModuleList.Clear;
  Registry := TRegistry.Create(KEY_ALL_ACCESS);
  try
    Registry.RootKey := HKEY_CURRENT_USER;

    if not Registry.KeyExists(cnstDllKey) then Exit;
    Registry.DeleteKey(cnstDllKey + '\' + cnstCIProductKey);
    Registry.DeleteKey(cnstDllKey + '\' + cnstCIBranchKey) ;
    Registry.DeleteKey(cnstDllKey + '\' + cnstCIModuleKey) ;

  finally
    Registry.Free;
  end;
end;

end.
