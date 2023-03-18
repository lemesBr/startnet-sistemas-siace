object FormDepositos: TFormDepositos
  Left = 294
  Top = 230
  BorderStyle = bsDialog
  Caption = 'Deposito em Conta Banc'#225'ria'
  ClientHeight = 236
  ClientWidth = 597
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 2
    Width = 597
    Height = 45
    BevelInner = bvLowered
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 5
      Top = 4
      Width = 63
      Height = 13
      Caption = 'N'#176' da Conta:'
    end
    object Cliente: TComboEdit
      Left = 6
      Top = 18
      Width = 145
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnButtonClick = ClienteButtonClick
      OnEnter = ClienteEnter
      OnExit = ClienteExit
    end
    object BTVisualizar: TsuiButton
      Left = 160
      Top = 4
      Width = 145
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Selecionar Conta'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000007020000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
        FFFFFFFFFFFFFF000000007020007020000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFF000000007020007020000000000000000000000000FFFFFFFF
        FFFF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000001020000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
        FFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000702000702000000000972F000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000702000000000000000972F00972F00000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000000070200000000000000010200000000000000000000000000000000000
        0000000000000000000000000000000000000000972F00972F00102000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F0010200000000000000000
        0000000000000000000000000000000000000000972F00972F00972F00000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00702000000000000000000000000000972F00972F00972F00972F00
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972FFFFF
        FF00972FFFFFFFFFFFFFFFFFFF00972F00972F00972F00972F00972F00972F00
        972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00702000000000000000000000000000972F00972F00972F00972F00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F0010200000000000000000
        0000000000000000000000000000000000000000972F00972F00972F00000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000000070200000000000000010200000000000000000000000000000000000
        0000000000000000000000000000000000000000972F00972F00102000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000702000000000000000972F00972F00000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000FFFFFF000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
        FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000007020000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFF000000007020007020000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFF000000007020007020000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000007020000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF00000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = BTVisualizarClick
      ResHandle = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 132
    Width = 597
    Height = 104
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object Bevel1: TBevel
      Left = 9
      Top = 59
      Width = 580
      Height = 3
    end
    object RxLabel10: TRxLabel
      Left = 10
      Top = 5
      Width = 102
      Height = 13
      Caption = 'Data do Deposito:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 150
      Top = 5
      Width = 145
      Height = 13
      Caption = 'Hist'#243'rico do Lan'#231'amento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 460
      Top = 5
      Width = 104
      Height = 13
      Caption = 'Valor do Deposito:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object myLabel3d1: TsLabelFX
      Left = 38
      Top = 67
      Width = 305
      Height = 33
      Caption = 'Deposito em Conta Banc'#225'ria'
      Color = 15263976
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object BTNCANCELAR: TsuiButton
      Left = 489
      Top = 66
      Width = 100
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Cancelar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 4
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
      OnClick = BTNCANCELARClick
      ResHandle = 0
    end
    object BTNSALVAR: TsuiButton
      Left = 382
      Top = 66
      Width = 100
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Salvar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C131DF21CD118F23DF65AF75EF85EF75AF65E1442B014
        B014D2181F7C1F7C7529382538251421903135461B63DF7BFF7FDD7B784E6F0C
        700C1621F31C1F7C75293725382514219031B014742D5C6BFF7BFF7F99526F0C
        700C1521F31C1F7C7529372538251421B23590109010B756BD77FF7FDB5A6F0C
        700C1521F31C1F7C7529372538251421D339B1146F0C12425967FF7FFB5E6F0C
        6F0CF51CF31C1F7C7529372538251521D639F63DB335D2393446FB5E5A4A9110
        91101621F31C1F7C752937253725372537253725372537251721172117213725
        37253825F21C1F7C7529F418131DB6353846594A594A594A3946594A594A794A
        18423725F21C1F7C7529D318FB5EDF7BDE77DE7BDE7BDE7BDE7BDE7BDE7BFF7F
        BA561621F31C1F7C7529D3183C67FF7FBE77BE77BE77BE77BE77BE77BE77DF7B
        BA561621F31C1F7C7529D3183C63BD7739633967396739673967396739679C73
        BA561621F31C1F7C7529D3183C67BD773A675A6B5A6B5A6B5A6B5A6B3A67BD77
        BA561621F31C1F7C7529D3183C67DE775B6B7B6B7B6B7B6B7B6B7B6B5B6BBD77
        BA561621F31C1F7C7529D3183C67BD7739673967396739673967396739679C73
        BB561621F31C1F7C7529D3183C63FF7FBF77BF77BF77BF77BF77BF77BF77FF7B
        BA561621F31C1F7C1F7CD2189752386318631863186318631863186318631863
        774ED1181F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = BTNSALVARClick
      ResHandle = 0
    end
    object DateEdit1: TDateEdit
      Left = 10
      Top = 20
      Width = 119
      Height = 19
      Ctl3D = False
      DialogTitle = 'Selecione a Data'
      Enabled = False
      NumGlyphs = 2
      ParentCtl3D = False
      CalendarStyle = csDialog
      YearDigits = dyFour
      TabOrder = 0
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 460
      Top = 20
      Width = 128
      Height = 20
      AutoSize = False
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = CurrencyEdit1Enter
      OnExit = CurrencyEdit1Exit
    end
    object Edit1: TsuiEdit
      Left = 150
      Top = 20
      Width = 289
      Height = 20
      UIStyle = DeepBlue
      BorderColor = clBlack
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 48
    Width = 598
    Height = 82
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    Enabled = False
    TabOrder = 2
    object RxLabel2: TRxLabel
      Left = 5
      Top = 5
      Width = 39
      Height = 13
      Caption = 'Banco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 452
      Top = 5
      Width = 50
      Height = 13
      Caption = 'Agencia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 5
      Top = 40
      Width = 42
      Height = 13
      Caption = 'Titular:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 453
      Top = 40
      Width = 71
      Height = 13
      Caption = 'N'#176' da Conta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 5
      Top = 20
      Width = 427
      Height = 18
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 5
      Top = 55
      Width = 427
      Height = 18
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 452
      Top = 20
      Width = 138
      Height = 18
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 452
      Top = 55
      Width = 138
      Height = 18
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object BTNNovo: TsuiButton
    Left = 320
    Top = 7
    Width = 127
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Caption = 'Novo Deposito'
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    Enabled = False
    TabOrder = 3
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6A36A209A2096A361F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C6A36A209A209A209A209A2094F3B841EA209A209A209A209
      A2096A361F7C1F7C2926841E841E841E841E841E841E841E841E841E841E841E
      841EA2091F7C1F7C29264F3B4F3B4F3B4F3B4F3B4F3B841E4F3B4F3B4F3B4F3B
      4F3BA2091F7C1F7C6A36292629262926292629264F3B841EA209A209A209A209
      A2096A361F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6A36292629266A361F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = BTNNovoClick
    ResHandle = 0
  end
  object btnpix: TsuiButton
    Left = 462
    Top = 7
    Width = 127
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Caption = 'Pix'
    AutoSize = False
    ParentFont = False
    UIStyle = WinXP
    Enabled = False
    TabOrder = 4
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6A36A209A2096A361F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C6A36A209A209A209A209A2094F3B841EA209A209A209A209
      A2096A361F7C1F7C2926841E841E841E841E841E841E841E841E841E841E841E
      841EA2091F7C1F7C29264F3B4F3B4F3B4F3B4F3B4F3B841E4F3B4F3B4F3B4F3B
      4F3BA2091F7C1F7C6A36292629262926292629264F3B841EA209A209A209A209
      A2096A361F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6A36292629266A361F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = btnpixClick
    ResHandle = 0
  end
  object SPC_MovimentoBancario: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_SAIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORIGEM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_MOVIMENTO_DIARIO'
    Left = 9
    Top = 202
  end
  object MSGP: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiWarning
    Text = 'Esta conta n'#227'o emite cheques. Favor selecionar outra conta!!!'
    Left = 9
    Top = 232
  end
  object MessageConta: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'Digite o N'#250'mero da Conta Banc'#225'ria!!!'
    Left = 72
    Top = 203
  end
  object MessageLocConta: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Este N'#250'mero de Conta Banc'#225'ria N'#227'o Consta no Cadastro !'
    Left = 104
    Top = 203
  end
  object MSGErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Erro na Grava'#231#227'o! Tente Novamente.'
    Left = 138
    Top = 203
  end
  object MessageCanClose: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiInformation
    Text = 'Antes de Sair Voc'#234' Deve Salvar ou Cancelar!'
    Left = 170
    Top = 202
  end
  object qrcaixa_mov: TFDQuery
    CachedUpdates = True
    Connection = DM.Coneccao
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 88
    Top = 76
  end
  object suiMessageDialog1: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiInformation
    Text = 'Antes de Sair Voc'#234' Deve Lan'#231'ar os valores e salvar...'
    Left = 218
    Top = 200
  end
end
