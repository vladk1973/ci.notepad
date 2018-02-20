unit Easy.diaplugin;

interface

uses
  Winapi.Windows,  Winapi.Messages, System.SysUtils,
  Vcl.Dialogs, Vcl.Forms, Vcl.Controls,
  System.Classes, Vcl.ComCtrls, SciSupport, System.Contnrs, System.Math,
  NppPlugin, ciUnit;

type

  TdiaPlugin = class(TNppPlugin)
  private
    { Private declarations }
    Fci: Tci;
  public
    constructor Create;

    procedure DoNppnToolbarModification; override;
    procedure FuncCiForm;
    procedure FuncCiMain;
  end;

var
  Npp: TdiaPlugin;

implementation

procedure _FuncCiForm; cdecl;
begin
  Npp.FuncCiForm;
end;

procedure _FuncCiMain; cdecl;
begin
  Npp.FuncCiMain;
end;

{ TdiaPlugin }

procedure TdiaPlugin.FuncCiForm;
begin
  if not Assigned(Fci) then Fci := Tci.Create(self, 0);
  (Fci as Tci).DoCodeinsp;
end;

procedure TdiaPlugin.FuncCiMain;
begin
  if not Assigned(Fci) then Fci := Tci.Create(self, 0);
  (Fci as Tci).Show;
end;

constructor TdiaPlugin.Create;
begin
  inherited;

  PluginName := 'Инспектор кода';
  AddFuncItem('Показать результат', _FuncCiMain);
  AddFuncItem('Инспектировать файл', _FuncCiForm);

  Sci_Send(SCI_SETMODEVENTMASK,SC_MOD_INSERTTEXT or SC_MOD_DELETETEXT,0);
end;

procedure TdiaPlugin.DoNppnToolbarModification;
var
  tb: TToolbarIcons;
begin
  tb.ToolbarIcon := 0;
  tb.ToolbarBmp := LoadImage(Hinstance, 'BUG', IMAGE_BITMAP, 0, 0, (LR_DEFAULTSIZE + LR_LOADTRANSPARENT));
  Npp_Send(NPPM_ADDTOOLBARICON, WPARAM(self.CmdIdFromDlgId(1)), LPARAM(@tb));
end;

end.
