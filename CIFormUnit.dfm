inherited CIForm: TCIForm
  Left = 589
  Top = 127
  ActiveControl = FilterList
  Caption = #1048#1085#1089#1087#1077#1082#1090#1086#1088' '#1082#1086#1076#1072
  ClientHeight = 190
  ClientWidth = 384
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 390
  ExplicitHeight = 218
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 152
    Width = 384
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    PopupMenu = PopupMenu
    TabOrder = 0
    object actionLabel: TLabel
      Left = 0
      Top = 0
      Width = 6
      Height = 38
      Align = alLeft
      Alignment = taCenter
      FocusControl = OkBtn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      Visible = False
      ExplicitHeight = 20
    end
    object Panel2: TPanel
      Left = 196
      Top = 0
      Width = 188
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object OkBtn: TBitBtn
        Left = 22
        Top = 8
        Width = 75
        Height = 25
        Action = OkAction
        Caption = 'OK'
        Default = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB8D2B7357F33C8DCC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9D8B7398E332BAE2041
          963CD7E9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBADCB73C9B3333C32524CD132BBB1D4DA445E5F2E4FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBDDB73D9F334ACC3A29C31839CC2828
          C21731B1235AAD51F0F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBDFB7
          3EA43363DA5333BC2255D1453EA43334B6252CB81B36AC286AB861F7FBF7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF3FA83370E65F59D0486BE15A3FA83398D09243
          AB373AB62932B2213BAB2D7BC373FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFBCE1B7
          41AC3374EA6341AC33BCE1B7FFFFFFB8E0B340AE3340B72F38AF2740AE318CCD
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCE3B741AF33BCE3B7FFFFFFFFFFFFFF
          FFFF9DD69645B73758CF4756CD4545B536A3D99CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFE84CD7A4DC13D61D8505FD6
          4F46B737B9E3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF9FDF96DC66156CC466BE25A72E96243B533FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F9EF5DC24F77EE
          6643B933BDE6B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE3F5E044BB33BDE7B7FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ModalResult = 1
        TabOrder = 0
      end
      object CancelBtn: TBitBtn
        Left = 102
        Top = 8
        Width = 75
        Height = 25
        Cancel = True
        Caption = #1054#1090#1084#1077#1085#1072
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5EF9393BA5959963B
          3B823B3B825959969393BAE5E5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB2B2D44141972323A81717C61313D41313D41717C62323A8414197B2B2
          D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2D835359F1A1AC61212B61111D111
          11D11111D11111D11111B61717C434349FB2B2D8FFFFFFFFFFFFFFFFFFE5E5F3
          4242A72020C31212B2DCDCDC1111B21111C81111C81111B2EEEEEE1111B21717
          BE4141A7E5E5F3FFFFFFFFFFFF9393CD3030B41616C1D1D1D1D6D6D6DCDCDC11
          11AD1111ADEAEAEAEEEEEEEEEEEE1111BE2424AB9393CDFFFFFFFFFFFF5858B4
          3636C21212B41111B4D1D1D1D6D6D6DCDCDCE2E2E2E6E6E6EAEAEA1111B41111
          B41B1BB25858B4FFFFFFFFFFFF3B3BAB4545CD2626B51414AB1111AAD1D1D1D6
          D6D6DCDCDCE2E2E21111AA1111AA1111AA1A1AB03B3BABFFFFFFFFFFFF3B3BAE
          4A4AD13333BB2E2EB813139FCECECED1D1D1D6D6D6DCDCDC11119E1111A11111
          A11F1FAD3B3BAEFFFFFFFFFFFF5858BD4E4ED53737BF2323ABFFFFFFF7F7F7E8
          E8E8DEDEDEDBDBDBDDDDDD11119B1616A02F2FB75858BDFFFFFFFFFFFF9393D6
          4949CC4949D1FFFFFFFFFFFFFFFFFF4242CA4242CAFFFFFFFFFFFFFFFFFF4747
          CF4141C49393D6FFFFFFFFFFFFE5E5F54646BE5C5CE35151D9FFFFFF4F4FD74F
          4FD74F4FD74F4FD7FFFFFF5050D85555DD4545BDE5E5F5FFFFFFFFFFFFFFFFFF
          B2B2E43F3FC06161E95F5FE75B5BE35B5BE35B5BE35B5BE35F5FE75E5EE53E3E
          BFB2B2E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2E54747C24D4DD56262EB6B
          6BF36A6AF26161EA4C4CD44747C2B2B2E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE5E5F69393DB5959C83B3BBE3B3BBE5959C89393DBE5E5F6FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ModalResult = 2
        TabOrder = 1
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 384
    Height = 152
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 380
      Height = 131
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu
      TabOrder = 0
      object Label1: TLabel
        Left = 20
        Top = 39
        Width = 42
        Height = 13
        Caption = #1055#1088#1086#1076#1091#1082#1090
        FocusControl = ProductList
      end
      object Label2: TLabel
        Left = 20
        Top = 70
        Width = 30
        Height = 13
        Caption = #1042#1077#1090#1082#1072
        FocusControl = BranchList
      end
      object Label3: TLabel
        Left = 20
        Top = 102
        Width = 38
        Height = 13
        Caption = #1052#1086#1076#1091#1083#1100
        FocusControl = ModuleList
      end
      object Label4: TLabel
        Left = 21
        Top = 8
        Width = 40
        Height = 13
        Caption = #1060#1080#1083#1100#1090#1088
        FocusControl = FilterList
      end
      object Image1: TImage
        Left = 43
        Top = 25
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          000010000000010018000000000000030000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF6AA7663787336AA766FFFFFFFFFFFFFFFFFFFFFFFFCCDCCCFFFFFFFFFF
          FFF4F7F49FBD9F3977399FBD9FF4F9F4FFFFFF3D9C332BDF1A3D9C33FFFFFFFF
          FFFFFFFFFFFFFFFF4C7F4CFFFFFFF2F5F26E966E38823841AB41388238318C29
          3BA2303EA3333DE22C3EA3333EA3336EBB66FFFFFFFFFFFF75957599B09989A5
          89387C3848AE4841A74148AE4818910C52E74152E74152E74152E74152E74140
          AA33FFFFFFFFFFFFF4F6F4466A46396539439D434EB24E4099404EB24E259E1B
          1A920C1C930E66EB5541B13341B13371C466FFFFFFFFFFFFFFFFFF8EA18E3971
          39489E4854AC543F8D3F54AC54489E483971392CA31C75EE6443B633FFFFFFFF
          FFFF758E75B2C0B2F4F6F45F7B5F3F7F3F4E9B4E59A9593D843D59A9594E9B4E
          3F7F3F288C1C42B9313A9D2E758E75FFFFFFDBE2DB779477366136395F394284
          425499545FA95F3A7E3A5FA95F549954428442395F39366136779477DBE2DBFF
          FFFFFFFFFFFFFFFFFFFFFF3964394789475A9D5A65AE65377B3765AE655A9D5A
          478947396439FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4877485AA2
          5A69B5696EBD6E3579356EBD6E69B5695AA25A487748FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE6F0E6569456387738488D484C934C3C813C3478343B803B4A904A
          468B46387738569456E6F0E6FFFFFFFFFFFFFFFFFF68A768BDD8BD98BB984890
          4867B56771C17171C17171C17167B56748904898BB98BDD8BD68A768FFFFFFFF
          FFFFFFFFFF89BE89FFFFFFE6EFE6428E4247984761B66176CB7661B661479847
          428E42E6EFE6FFFFFF89BE89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4292
          42E6E6B345994564B864459945E6E6B3429242FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFA0CBA0439843439843439843439843439843
          A0CBA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
        Transparent = True
        Visible = False
      end
      object Image2: TImage
        Left = 51
        Top = 47
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          000010000000010018000000000000030000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCDCCCFFFFFFFFFF
          FFF4F7F49FBD9F3977399FBD9FF4F7F4FFFFFFFFFFFFCCDCCCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF4C7F4CFFFFFFF2F5F26E966E38823841AB413882386E966E
          F2F5F2FFFFFF4C7F4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75957599B09989A5
          89387C3848AE4841A74148AE48387C3889A58999B099759575FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF4F6F4466A46396539439D434EB24E4099404EB24E439D43
          396539466A46F4F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8EA18E3971
          39489E4854AC543F8D3F54AC54489E483971398EA18EFFFFFFFFFFFFFFFFFFFF
          FFFF758E75B2C0B2F4F6F45F7B5F3F7F3F4E9B4E59A9593D843D59A9594E9B4E
          3F7F3F5F7B5FF4F6F4B2C0B2758E75FFFFFFDBE2DB779477366136395F394284
          425499545FA95F3A7E3A5FA95F549954428442395F39366136779477DBE2DBFF
          FFFFFFFFFFFFFFFFFFFFFF3964394789475A9D5A65AE65377B3765AE655A9D5A
          478947396439FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4877485AA2
          5A69B5696EBD6E3579356EBD6E69B5695AA25A487748FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE6F0E6569456387738488D484C934C3C813C3478343B803B4A904A
          468B46387738569456E6F0E6FFFFFFFFFFFFFFFFFF68A768BDD8BD98BB984890
          4867B56771C17171C17171C17167B56748904898BB98BDD8BD68A768FFFFFFFF
          FFFFFFFFFF89BE89FFFFFFE6EFE6428E4247984761B66176CB7661B661479847
          428E42E6EFE6FFFFFF89BE89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4292
          42E6E6B345994564B864459945E6E6B3429242FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFA0CBA0439843439843439843439843439843
          A0CBA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
        Transparent = True
        Visible = False
      end
      object ProductList: TComboBox
        Left = 71
        Top = 33
        Width = 300
        Height = 22
        Hint = #1055#1088#1086#1076#1091#1082#1090
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu
        ShowHint = True
        TabOrder = 1
      end
      object BranchList: TComboBox
        Left = 71
        Top = 65
        Width = 300
        Height = 22
        Hint = #1042#1077#1090#1082#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu
        ShowHint = True
        TabOrder = 2
      end
      object ModuleList: TComboBox
        Left = 71
        Top = 97
        Width = 300
        Height = 22
        Hint = #1052#1086#1076#1091#1083#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu
        ShowHint = True
        TabOrder = 3
      end
      object FilterList: TComboBox
        Left = 71
        Top = 3
        Width = 300
        Height = 22
        Hint = #1055#1088#1086#1076#1091#1082#1090
        Style = csOwnerDrawFixed
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu
        ShowHint = True
        TabOrder = 0
        OnDrawItem = FilterListDrawItem
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 32
    Top = 146
    object OkAction: TAction
      Caption = 'OK'
      OnExecute = OkActionExecute
      OnUpdate = OkActionUpdate
    end
    object clearAction: TAction
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1080#1089#1090#1086#1088#1080#1102
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1080#1089#1090#1086#1088#1080#1102
      ImageIndex = 0
      OnExecute = clearActionExecute
    end
  end
  object PopupMenu: TPopupMenu
    Images = ImageList1
    Left = 160
    Top = 112
    object N1: TMenuItem
      Action = clearAction
    end
  end
  object ImageList1: TImageList
    Left = 96
    Top = 160
    Bitmap = {
      494C0101010008001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01F8F8F807F1F1F10EEBEB
      EB14E6E6E619E5E5E51AE6E6E619E8E8E817EAEAEA15EDEDED12F1F1F10EF4F4
      F40BF7F7F708FAFAFA05FDFDFD02FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD02F2F2F20DE4E4E41BD7D7
      D728CECECE31CCCCCC339BA5AD64335778CC335677CCA2AAB35DE3E3E31CE9E9
      E916F0F0F00FF5F5F50AFBFBFB04FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7C0C948335577CC5494B7FF34679AFF355B7CCAB7C0C9480000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BED1DD41447B9CBB3A719FFF386F9DFF5F9FC0FF4578ABFF396385C6B9C7
      D346000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7C3
      CF48335577CC4F8DB3FF68ACC8FF4880ACFF5087B3FF6AAAC8FF5588BBFF3E6F
      91C1BBCBD7440000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0D5E13F4985
      A7B65FA1C0FF3F79A3FF4278A7FF66A6C5FF619DC2FF5E95C1FF74B4D1FF6598
      CBFF545454ABC3C3C33C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B7C3CF48335577CC3368
      98FF508CB3FF69ABC8FF67A7C6FF4D80B3FF71B1CEFF6EA9CDFF6CA3CEFF6D6D
      6DFFAA9999FF5A5A5AA5BDD0DC42000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1D8E43E4E8FB1B16AAEC9FF66A8
      C5FF5692B8FF4B80AFFF5D97BFFF77B9D2FF669DC8FF7BBAD5FF7E7E7EFFCEC0
      C0FF797979FF5588BBFF598CABA6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007CAEC7835395B6B85497B7C3589B
      BAD067AAC5E776BAD1FB6EACCCFF669DC8FF83C7DAFF888888FFD3CACAFF8383
      83FF60A4C6FF63A7C9FF5A8FAEA5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFBFC05EBF2F614D7E6EE28BED6
      E34188B5CC775E9CBBAB64A9C3DB7AB9D5FC919191FFD9D4D4FF8D8D8DFF68AC
      CEFF74B8D4FF4B89AAB4BFD4E040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFF5F81092BBD06D96969669DDDCDCFF949494FF70B4D6FF80C4
      DBFF4D8DAFB2334782CCB7BCCF48000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBDBDB249898986788CCDDFF87CBDDFF5091
      B3AF335999CC3F72B6FF33528FCCB7C1D6480000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6D1D63963A0BE9C63A0BE9CC1D9
      E43EB7C7DE48335E9FCC5285C9FF335797CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7C8E0483363A5CCB7C6DD480000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000000000000000000
      0000000000000000F81F000000000000F00F000000000000E007000000000000
      C003000000000000800100000000000000010000000000000001000000000000
      0001000000000000F801000000000000FE00000000000000FF00000000000000
      FFF8000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end