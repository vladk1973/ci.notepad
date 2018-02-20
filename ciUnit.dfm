inherited ci: Tci
  ActiveControl = WebBrowser1
  Align = alClient
  Caption = #1048#1085#1089#1087#1077#1082#1090#1086#1088' '#1082#1086#1076#1072
  ClientHeight = 515
  ClientWidth = 614
  Color = clWhite
  OnCreate = FormCreate
  ExplicitWidth = 630
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  object ci: TPanel
    Tag = 2
    Left = 0
    Top = 25
    Width = 614
    Height = 490
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object WebBrowser1: TWebBrowser
      Left = 0
      Top = 0
      Width = 610
      Height = 467
      Align = alClient
      TabOrder = 0
      OnProgressChange = WebBrowser1ProgressChange
      OnDownloadBegin = WebBrowser1DownloadBegin
      OnDownloadComplete = WebBrowser1DownloadComplete
      ExplicitLeft = -2
      ExplicitTop = 72
      ExplicitWidth = 614
      ExplicitHeight = 328
      ControlData = {
        4C0000000C3F0000443000000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object StatusBar1: TStatusBar
      Left = 0
      Top = 467
      Width = 610
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end>
      OnDrawPanel = StatusBar1DrawPanel
    end
    object ProgressBar1: TProgressBar
      Left = 416
      Top = 432
      Width = 150
      Height = 17
      Smooth = True
      TabOrder = 2
      StyleElements = []
    end
  end
  object ResultLabel: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
end
