unit ciUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NppDockingForms, Vcl.OleCtrls, SHDocVw,
  Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.ComCtrls;

type
  Tci = class(TNppDockingForm)
    ci: TPanel;
    WebBrowser1: TWebBrowser;
    ResultLabel: TPanel;
    StatusBar1: TStatusBar;
    ProgressBar1: TProgressBar;
    procedure WebBrowser1DownloadBegin(Sender: TObject);
    procedure WebBrowser1DownloadComplete(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure WebBrowser1ProgressChange(ASender: TObject; Progress,
      ProgressMax: Integer);
  private
    FFileName: string;
    const cnstCIExec = 'Инспекция файла';

    function GetWebBrowserFile: String;
    procedure SetWebBrowserFile(const Value: String);
  public
    procedure DoCodeinsp;
    property WebBrowserFile: string read GetWebBrowserFile write SetWebBrowserFile;
  end;

implementation

uses
  CIFormUnit;

{$R *.dfm}

procedure Tci.DoCodeinsp;
var FCiForm: TCIForm;
begin
  FCiForm := TCIForm.Create(self);
  try
    if FCiForm.ShowModal = mrOK then
    begin
      //WebBrowser1.Navigate('about:blank');
      FFileName := FCiForm.FileName;
      FCiForm.Navigate(WebBrowser1);
      Show;
    end;
  finally
    FCiForm.Free;
  end;
end;

procedure Tci.FormCreate(Sender: TObject);
var
  ProgressBarStyle: integer;
begin
  //enable status bar 2nd Panel custom drawing
  StatusBar1.Panels[0].Style := psOwnerDraw;

  //place the progress bar into the status bar
  ProgressBar1.Parent := StatusBar1;

  //remove progress bar border
  ProgressBarStyle := GetWindowLong(ProgressBar1.Handle,
                                    GWL_EXSTYLE);
  ProgressBarStyle := ProgressBarStyle
                      - WS_EX_STATICEDGE;
  SetWindowLong(ProgressBar1.Handle,
                GWL_EXSTYLE,
                ProgressBarStyle);
end;

function Tci.GetWebBrowserFile: String;
begin
  Result := ResultLabel.Caption;
end;

procedure Tci.SetWebBrowserFile(const Value: String);
begin
  ResultLabel.Caption := Value;
end;

procedure Tci.StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
  const Rect: TRect);
begin
 if Panel = StatusBar.Panels[0] then
  with ProgressBar1 do begin
    Top := Rect.Top;
    Left := Rect.Left;
    Width := Rect.Right - Rect.Left;
    Height := Rect.Bottom - Rect.Top;
  end;
end;

procedure Tci.WebBrowser1DownloadBegin(Sender: TObject);
begin
  WebBrowserFile := '';
  ProgressBar1.Position := 0;
end;

procedure Tci.WebBrowser1DownloadComplete(Sender: TObject);
begin
  WebBrowserFile := cnstCIExec + ': ' + FFileName;
end;

procedure Tci.WebBrowser1ProgressChange(ASender: TObject; Progress,
  ProgressMax: Integer);
begin
  ProgressBar1.Max := ProgressMax;
  ProgressBar1.Position := Progress;
end;

end.
