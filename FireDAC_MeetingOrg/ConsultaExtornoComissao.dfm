object FormConsultaExtornoComissao: TFormConsultaExtornoComissao
  Left = 287
  Top = 206
  BorderStyle = bsDialog
  Caption = 'Consulta Extorno de Comiss'#245'es de Pedidos por Devolu'#231#227'o de Itens'
  ClientHeight = 312
  ClientWidth = 765
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
  object Panel1: TPanel
    Left = 0
    Top = 279
    Width = 765
    Height = 33
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clBlack
    TabOrder = 0
    DesignSize = (
      765
      33)
    object RxLabel8: TRxLabel
      Left = 2
      Top = 2
      Width = 403
      Height = 29
      Align = alLeft
      Caption = 'Valor Total das Comiss'#245'es no Per'#237'odo:'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object RxLabel9: TRxLabel
      Left = 409
      Top = 2
      Width = 354
      Height = 29
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
    end
    object suiButton2: TsuiButton
      Left = 863
      Top = 0
      Width = 22
      Height = 21
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ShowHint = True
      Caption = 'BitBtn3'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      TabStop = False
      UIStyle = MacOS
      TabOrder = 0
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        0E030000424D0E030000000000003600000028000000110000000E0000000100
        180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBF0000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
        BF00BFBFBF000000000000000000000000000000000000000000000000000000
        000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
        000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
        BF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
        BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
        00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000000000000000000000FFFFFF000000000000000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000BFBFBFBFBFBF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      ResHandle = 0
    end
  end
  object Panel19: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 107
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object RxLabel17: TRxLabel
      Left = 5
      Top = 25
      Width = 57
      Height = 13
      Caption = 'Hist'#243'rico:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel18: TRxLabel
      Left = 5
      Top = 5
      Width = 46
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel20: TRxLabel
      Left = 470
      Top = 25
      Width = 123
      Height = 13
      Caption = 'Usu'#225'rio (Devolu'#231#227'o):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel21: TRxLabel
      Left = 233
      Top = 45
      Width = 117
      Height = 13
      Caption = 'Data da Devolu'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel22: TRxLabel
      Left = 470
      Top = 45
      Width = 111
      Height = 13
      Caption = 'Valor da Comiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel23: TRxLabel
      Left = 470
      Top = 5
      Width = 116
      Height = 13
      Caption = 'Usu'#225'rio (Vendedor):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel25: TRxLabel
      Left = 5
      Top = 45
      Width = 70
      Height = 13
      Caption = 'Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 3
      Top = 2
      Width = 757
      Height = 65
    end
    object suiDBEdit21: TsuiDBEdit
      Left = 89
      Top = 45
      Width = 143
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'PAGAMENTO'
      DataSource = DMC3.DTS_ExtComissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit23: TsuiDBEdit
      Left = 89
      Top = 5
      Width = 365
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CLIENTE'
      DataSource = DMC3.DTS_ExtComissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit25: TsuiDBEdit
      Left = 89
      Top = 25
      Width = 365
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'HISTORICO'
      DataSource = DMC3.DTS_ExtComissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit26: TsuiDBEdit
      Left = 352
      Top = 45
      Width = 102
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'DATA'
      DataSource = DMC3.DTS_ExtComissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit27: TsuiDBEdit
      Left = 593
      Top = 45
      Width = 162
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'VALOR'
      DataSource = DMC3.DTS_ExtComissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit28: TsuiDBEdit
      Left = 593
      Top = 5
      Width = 162
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'USUARIO_PEDIDO'
      DataSource = DMC3.DTS_ExtComissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit29: TsuiDBEdit
      Left = 593
      Top = 25
      Width = 162
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'USUARIO_EST'
      DataSource = DMC3.DTS_ExtComissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBNavigator1: TsuiDBNavigator
      Left = 7
      Top = 73
      Width = 224
      Height = 26
      Cursor = crDefault
      UIStyle = FromThemeFile
      DataSource = DMC3.DTS_ExtComissao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 7
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 234
    Width = 765
    Height = 45
    Align = alTop
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15198177
    TabOrder = 2
    object Bevel3: TBevel
      Left = 4
      Top = 4
      Width = 752
      Height = 34
    end
    object Label6: TLabel
      Left = 7
      Top = 10
      Width = 70
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 182
      Top = 10
      Width = 63
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 352
      Top = 10
      Width = 102
      Height = 13
      Caption = 'Nome do Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DateEdit5: TDateEdit
      Left = 77
      Top = 10
      Width = 100
      Height = 20
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = DateEdit5Enter
      OnExit = DateEdit5Exit
    end
    object DateEdit6: TDateEdit
      Left = 246
      Top = 10
      Width = 100
      Height = 20
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnEnter = DateEdit6Enter
      OnExit = DateEdit6Exit
    end
    object suiButton8: TsuiButton
      Left = 639
      Top = 7
      Width = 113
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Consultar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000C30E0000C30E00000001000000010000211800002918
        000029210000312100003921000042210000422900004A290000523100005A31
        0000633100009C3100005A390000633900006B420000844A0000845200008C52
        0000CE630000D68400003121080052310800633908006B420800734208007B4A
        0800845208005239100063421000734A100042311800523918006B4218007B4A
        18009C631800393129005A4A29007B5A29009C632900633131004A4231005242
        3100635231006B5231007B5A31003942390042423900634A39008C633900736B
        420073634A0039525200736352005A5A5A004A6B6300A58C73005A847B000063
        9C00216B9C000073B500188CCE00009CCE0039ADD600009CE70000A5E70000AD
        F700FF00FF0008B5FF0029BDFF0000CEFF0063CEFF008CD6FF009CDEFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242424242
        4242424242424242424242424242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424242424242424242
        424242422B2C374242424242424242424242424242424242424242040627272F
        424242424242424242424242421F2729424203021312082720393B3B3B424242
        42424242040607092E1E0213120B0D1617283B3C3B3942424242421402131209
        041400120B0B0C16213443403C3B39424242320213120B0D0614000006150D0D
        1835454440403B3942422400120B0B09060C14141D1D0D0D1C3A45454143403C
        39422A0000071C0D07233026110F0D15333E4541454443403C424227271A0E0C
        152D3E3810101A313E45464644444443403B424222270C0C1F3E413F413E3E44
        4445464647444544403C4242423125363E4441403F4141414445454646474445
        44394242423B3D3E45444441403F414141444545464647444539424242423B3D
        4145454441403F4141414445454646483C3942424242423B3D4148454441403F
        413D41444444484039424242424242423B3D41484544414039423D4144454039
        4242424242424242423B3D41454440394242423D3D3D3D424242424242424242
        42423D3D3D3D3D42424242424242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424242424242424242
        4242424242424242424242424242424242424242424242424242}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton8Click
      ResHandle = 0
    end
    object Edit1: TComboEdit
      Left = 457
      Top = 10
      Width = 166
      Height = 20
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = ''
      OnButtonClick = Edit1ButtonClick
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
    end
  end
  object suiDBGrid5: TsuiDBGrid
    Left = 0
    Top = 107
    Width = 765
    Height = 127
    Align = alTop
    BorderStyle = bsNone
    Color = 15263976
    DataSource = DMC3.DTS_ExtComissao
    FixedColor = 10504772
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UIStyle = DeepBlue
    BorderColor = clBlack
    FocusedColor = clGreen
    SelectedColor = clYellow
    FontColor = clBlack
    TitleFontColor = clWhite
    FixedBGColor = 10504772
    BGColor = 15263976
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data da Devolu'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Alignment = taCenter
        Title.Caption = 'Hist'#243'rico'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 284
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor da Comiss'#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end>
  end
  object MSG_ERRO: TsuiMessageDialog
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
    Text = 'Erro na Consulta'
    Left = 731
    Top = 4
  end
  object MSG_NR: TsuiMessageDialog
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
    Text = 'Nenhum Registro Foi Localizado !!!'
    Left = 698
    Top = 4
  end
end
