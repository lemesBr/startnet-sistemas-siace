object FormSimboloMoeda: TFormSimboloMoeda
  Left = 472
  Top = 242
  BorderStyle = bsDialog
  Caption = 'Altera o Simbolo da Moeda'
  ClientHeight = 139
  ClientWidth = 327
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 5
    Top = 7
    Width = 84
    Height = 14
    Caption = 'Observa'#231#245'es: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 5
    Top = 23
    Width = 237
    Height = 26
    Caption = 
      '- O cupom fiscal deve estar fechado. '#13#10'- Ser'#225' executada somente ' +
      'ap'#243's uma Redu'#231#227'o Z. '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 4
    Top = 53
    Width = 201
    Height = 74
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 8
      Top = 34
      Width = 123
      Height = 16
      Caption = 'S'#237'mbolo da Moeda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TsuiEdit
      Left = 135
      Top = 31
      Width = 57
      Height = 19
      UIStyle = DeepBlue
      BorderColor = clBlack
      TabOrder = 0
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
    end
  end
  object suiButton2: TsuiButton
    Left = 211
    Top = 92
    Width = 109
    Height = 33
    Caption = 'Cancela'
    AutoSize = False
    UIStyle = FromThemeFile
    TabOrder = 1
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C005800581F7C005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      005800581F7C1F7C0058005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058
      00581F7C1F7C1F7C00580058005800581F7C1F7C1F7C1F7C1F7C1F7C00580058
      1F7C1F7C1F7C1F7C1F7C0068005C005800581F7C1F7C1F7C1F7C005800581F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058005800581F7C0058005800581F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800600060006400581F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00600060006C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800680064006C00741F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C0070006C00681F7C1F7C007000741F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C007C006C00741F7C1F7C1F7C1F7C007C00781F7C
      1F7C1F7C1F7C1F7C1F7C00780078007C1F7C1F7C1F7C1F7C1F7C1F7C00780078
      1F7C1F7C1F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      00781F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton2Click
    ResHandle = 0
  end
  object suiButton1: TsuiButton
    Left = 211
    Top = 50
    Width = 109
    Height = 33
    Caption = 'Confirma'
    AutoSize = False
    UIStyle = FromThemeFile
    TabOrder = 2
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      5A010000424D5A01000000000000760000002800000012000000130000000100
      040000000000E4000000C40E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
      3333330000003333422433333333330000003334222243333333330000003342
      2222243333333300000034222A2222433333330000003222A2A2224333333300
      00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
      243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
      333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
      00003333333333A2224A3300000033333333333A222433000000333333333333
      A224330000003333333333333A223300000033333333333333A333000000}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton1Click
    OnKeyPress = suiButton1KeyPress
    ResHandle = 0
  end
end
