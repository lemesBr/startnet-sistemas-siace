object frmcontaspagar: Tfrmcontaspagar
  Left = 436
  Top = 187
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Contas a Pagar'
  ClientHeight = 503
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel5: TBevel
    Left = 0
    Top = 33
    Width = 837
    Height = 3
    Align = alTop
  end
  object Bevel8: TBevel
    Left = 0
    Top = 443
    Width = 837
    Height = 3
    Align = alBottom
  end
  object Bevel9: TBevel
    Left = 0
    Top = 440
    Width = 837
    Height = 3
    Align = alBottom
  end
  object Bevel10: TBevel
    Left = 0
    Top = 412
    Width = 837
    Height = 3
    Align = alBottom
  end
  object Bevel12: TBevel
    Left = 0
    Top = 385
    Width = 837
    Height = 3
    Align = alBottom
  end
  object wwDBGrid1: TXDBGrid
    Left = 0
    Top = 97
    Width = 837
    Height = 288
    Align = alClient
    DataSource = dscontaspagar
    GridStyle.VisualStyle = vsXPStyle
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
    TabOrder = 9
    OnCellClick = wwDBGrid1CellClick
    OnDblClick = wwDBGrid1DblClick
    OnEnter = wwDBGrid1Enter
    OnExit = wwDBGrid1Exit
    Columns = <
      item
        CheckBox = True
        CheckBoxValues = '1;0'
        Expanded = False
        FieldName = 'FILTRO'
        Title.Caption = '.'
        Visible = True
        Width = 22
      end
      item
        Expanded = False
        FieldName = 'situacao2'
        Images = ImageList1
        Title.Caption = '?'
        Transparent = True
        Visible = True
        Width = 24
      end
      item
        Expanded = False
        FieldName = 'CODFORNECEDOR'
        Title.Caption = 'C'#243'd Forn.'
        Visible = True
        Width = 55
      end
      item
        Expanded = False
        FieldName = 'fornecedor'
        Title.Caption = 'Fornecedor'
        Visible = True
        Width = 141
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = 'Data Vcto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'Docto'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ESPECIE'
        Title.Caption = 'Esp'#233'cie'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ACRESCIMO'
        Title.Caption = 'Juros e Multas'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Title.Caption = 'Desconto'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALORPAGO'
        Title.Caption = 'V. Pago'
        Visible = True
        Width = 75
      end
      item
        Expanded = False
        FieldName = 'LIQUIDO'
        Title.Caption = 'L'#237'quido'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_PAGAMENTO'
        Title.Caption = 'D. Pagto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOTAFISCAL'
        Title.Caption = 'N'#186' Nota'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CODCONTA'
        Title.Caption = 'C'#243'd Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'conta'
        Title.Caption = 'Nome da Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOVIMENTO'
        Title.Caption = 'Mov'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Seq.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Caption = 'Data Lcto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'E'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C'
        Visible = True
        Width = 64
      end>
  end
  object DBEdit1: TDBEdit
    Left = 536
    Top = 176
    Width = 121
    Height = 21
    DataField = 'CODIGO'
    DataSource = dscontaspagar
    TabOrder = 0
    Visible = False
    OnChange = DBEdit1Change
  end
  object FlatPanel7: TAdvPanel
    Left = 0
    Top = 415
    Width = 837
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 25
    object Label12: TLabel
      Left = 352
      Top = 5
      Width = 11
      Height = 13
      Caption = 'C:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 396
      Top = 5
      Width = 10
      Height = 13
      Caption = 'E:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 433
      Top = 4
      Width = 33
      Height = 13
      Caption = 'Conta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText8: TDBText
      Left = 470
      Top = 4
      Width = 142
      Height = 15
      DataField = 'conta'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel6: TBevel
      Left = 617
      Top = 2
      Width = 2
      Height = 20
    end
    object Bevel7: TBevel
      Left = 345
      Top = 2
      Width = 2
      Height = 19
    end
    object Bevel11: TBevel
      Left = 260
      Top = 3
      Width = 2
      Height = 19
    end
    object DBText6: TDBText
      Left = 369
      Top = 4
      Width = 20
      Height = 15
      Alignment = taCenter
      DataField = 'C'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText7: TDBText
      Left = 409
      Top = 4
      Width = 20
      Height = 15
      Alignment = taCenter
      DataField = 'E'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 6
      Top = 5
      Width = 65
      Height = 13
      Caption = 'F6 | Localizar:'
      Transparent = True
    end
    object pselecao: TAdvPanel
      Left = 622
      Top = 2
      Width = 159
      Height = 21
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.8.0'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 21
      object Label19: TLabel
        Left = 8
        Top = 3
        Width = 50
        Height = 13
        Caption = 'Sele'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object rselecao: TRxCalcEdit
        Left = 64
        Top = 2
        Width = 89
        Height = 18
        AutoSize = False
        BorderStyle = bsNone
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ButtonWidth = 0
        NumGlyphs = 2
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnChange = rselecaoChange
      end
    end
    object bnf: TAdvGlowButton
      Left = 268
      Top = 2
      Width = 66
      Height = 20
      Hint = 'Nota Fiscal de Compra'
      Caption = 'NF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000001D84944415478DA
        62FCFFFF3F0325002080584044C294F385404A1E886D80D898810168EA7F0646
        867FFF19989818198088E1DFBF7F0CFFFE327C6065F97F475D86CF04245712AC
        C10810400C2017C44F3E37FB3F89A073D53510C50010402C5097D88288985561
        408BFF31FC079AFE17642310FFFDFB178881F4BFBF6036486C67E63E861B8F3E
        FC04E90108208801FFFE4B80A85FBF7F31884B09E0F5F3CD6B0FC1F4F71FBFD9
        40344000810D003A850B44FFFEFD9BE1C9C3D7606F011D017409C8C6FF10FF83
        82054A83F5FCFDCB08A201020862C0BFFF607A7DC256A243FF1FD05B20001040
        3003C0A68536EC65F801B68581616BB32BC3FD671FB16A5694E207BB0E040002
        88096200C4B437DF7F33986B8A33BCFBFE07AE98978B0D05C3C0FF3F10030002
        086A00C45F9F7FFC65F80DF4E3B79F7F506CFCFDF73F18A378E11F440D400081
        0D6084BAE0E7CFDF0CDF7F03A3EBC76F8261F0FFCF2F300D104090306040988E
        2D65B33233621AF01FE2028000021BF0EF0FD80F6055DB8F3E4051F8F9DB2FEC
        2E80C6274000810D00A63A902EC5CB330230421BA717FEFF7F0FA20102089212
        FFFEDB185ABB4F0D2868090C1D417000FDFF078EAAFF60F65F704C41722E88F8
        F7998181E93A482B400031529A9D01020C00544729AC885B7611000000004945
        4E44AE426082}
      Transparent = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bnfClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object combo_loc: TComboBox
      Left = 78
      Top = 2
      Width = 79
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 2
      Text = 'Nota Fiscal'
      OnKeyPress = combo_locKeyPress
      Items.Strings = (
        'Documento'
        'Nota Fiscal')
    end
    object LOC: TwwIncrementalSearch
      Left = 160
      Top = 2
      Width = 94
      Height = 21
      DataSource = dscontaspagar
      TabOrder = 3
      OnEnter = LOCEnter
      OnExit = LOCExit
    end
  end
  object Panel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 27
    object Bevel2: TBevel
      Left = 261
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel3: TBevel
      Left = 461
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel4: TBevel
      Left = 685
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel1: TBevel
      Left = 109
      Top = 4
      Width = 89
      Height = 19
    end
    object Label3: TLabel
      Left = 4
      Top = 7
      Width = 99
      Height = 13
      Caption = 'Data do Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 112
      Top = 7
      Width = 83
      Height = 17
      Cursor = crHandPoint
      Hint = 'Clique aqui para alterar a data de pagamento'
      Alignment = taCenter
      DataField = 'DATA_PAGAMENTO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnClick = DBText1Click
    end
    object Label4: TLabel
      Left = 228
      Top = 7
      Width = 30
      Height = 13
      Caption = 'Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 264
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'ACRESCIMO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 404
      Top = 7
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 464
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'DESCONTO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 620
      Top = 7
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 688
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'VALORPAGO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TAdvPanel
    Left = 0
    Top = 36
    Width = 837
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 45
    object Label7: TLabel
      Left = 6
      Top = 10
      Width = 45
      Height = 13
      Caption = 'F8 | Filtro:'
      Transparent = True
    end
    object Label18: TLabel
      Left = 140
      Top = 10
      Width = 27
      Height = 13
      Caption = 'Forn.:'
      Transparent = True
    end
    object Label20: TLabel
      Left = 380
      Top = 10
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
      Transparent = True
    end
    object Label21: TLabel
      Left = 599
      Top = 10
      Width = 6
      Height = 13
      Caption = 'a'
      Transparent = True
    end
    object Label8: TLabel
      Left = -33
      Top = 36
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Conta:'
      Transparent = True
    end
    object combo_situacao: TComboBox
      Left = 64
      Top = 6
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'A Pagar'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'A Pagar'
        'Pagas'
        'Todas')
    end
    object combo_periodo: TComboBox
      Left = 424
      Top = 6
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Vencimento'
      OnKeyPress = combo_periodoKeyPress
      Items.Strings = (
        'Vencimento'
        'Emiss'#227'o'
        'Pagamento')
    end
    object DateEdit1: TDateEdit
      Left = 509
      Top = 6
      Width = 84
      Height = 21
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      TabOrder = 2
      Text = '01/01/2001'
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TDateEdit
      Left = 611
      Top = 6
      Width = 87
      Height = 21
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      TabOrder = 3
      Text = '31/12/2099'
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object bitbtn1: TAdvGlowButton
      Left = 722
      Top = 6
      Width = 91
      Height = 40
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA793000004D5494441545809B5967F
        6C535514C75F5FB78E6ED36803E8EC34214B813F9091F18F3131336A82131723
        3AB21FED58AA14D43F04131363642E660989248A7F08628C59F6A34526464370
        883A3B4810F86BFEFA63637F41872CD14ACC0A6EFDF1FC9C97F79A6E7BAF6B4B
        B69C6FCF39F79E73CF79E79E7BEF1C8A92FFAFB5B5F581B2B2B267344D7B18CB
        07E1D50E87E306FC1A7C2C1E8F8F8D8C8CCC31571239ECBCFC7EFFA30439C8FC
        63C0D68EB904897C3A3737D73B3C3C1C472F8A962C1C0A852A6767678FB26880
        95CCF969E41F48E82AE3B7C05AE4F5E029E40AE684FE41DF130E878745291466
        00DD9EAFAE619153285B81D0854C26F37624123987A28105D4D1D17137034170
        007800EE5A2F4974231744D9045A5A5ADC2E97EB3C5E123C09DF3F34347404BE
        2430630B085F0FBE6106B701852CDE20890F455E0EAA69505E5EFE09B21E9C05
        9A09FE31FAB2C1B15164EFE7E7E7B7230F02856D39D4D6D6D628F272D013A094
        8FE014308CF791FD77865C3023893427E2651C2E02A7AAAA877B7A7AF4F5D16D
        C934E8C542B6E3025F7E14B92492E348CFECC13903B64C4E4EEE84E72555CE39
        164F0085AC0FC0355032D1B0BF52CD13B200BC43783EA85C32CD18C8D7DFA8AB
        AB8B2AFCC969605BA4C3D14AA288E1F5642010A832644BA6325A0F8446D93329
        9D74F16B4EA7F37E192C057CF98F869F9B86DE60C8964CC5C06BCCC40C2E5DDC
        984EA7D79B7AB17C60602081CFDF40A8567EEC200954CB2459CF0A1790D43AF8
        B3E04E485F8FA6BC2BDF222A8167C480A0D99223CB17D00AFE1A992B010E7C74
        5FB6F24F645B921EB82EB304F50937F01BBC8AB183F0A2A9BDBDFD219C5C4049
        A552D785DB41B6605426A9C4E35D5D5DF718F29070B08B32BC092F969E331C62
        1CCB0943B6646A3299FC89990428476E872B5C465FC3A30A7F54E17DBEE87053
        535305EAB2C449926DDD65189E866BC09654AED0DB04F9CCB0E80E0683D2341A
        77BBDC62B215722A5EF7783C1324F20A0FCF1AC3D69271FBB531D100D234E011
        785E926651BA283D5F7F05CBD5E0ECF4F4F4F668349A225835AF5C3763AF02F3
        4249238BED251AACBBBFBFFF2ABA4E24B805E13CDB590D3F4625F7C2F3929E80
        58E0DC82E317C83216E6757CA9AFAFEF3F7445FE494924128DCC7B450713B158
        EC67491259275EBFCD5CE567506AB0BBC97F487554378E9E972458D68086EB61
        3BDE35062EB350687070F01743B76454C929C962FB01066695E45D798FCBEC77
        C6FEE5753D0BD7C0125A9080CCF206EC831F026520038E83084FEDF7F2DA21EB
        D4D9D9E925C00E9410D80484FEE26735584024F72D6FCE0B6645732797242093
        94B391727E845C0F726906E516580BAA8049D2179FD3B86F518DFD047CC79CC8
        E167987B7E71126A8E4156E4EC8EF97CBE06B6C3CFA0942F0917BA8F9F75C00C
        2E091DA3DBEB69B890EC39898F336F454FD3E85F2D3ECE0E2BCBC56334E8BD7C
        D50602AD81AF22C84DCA3FC32DF70741E5EBB32ED86EC3469A313BB648384DA5
        76E0372FE30525208645C041337F43F59AED7C48F014A7E44549C2720BEC1C0B
        1CD768B89DD88E004B92E4B85F4E70825C4E4B8B3B1C1C1F1F4FD5D6D67EE976
        BBB7B2940F58D146B65259910424DAD4D4545A92A8ACAC6C40B74C82ADA858B1
        0408AA48125EAFF7A45D1224707C4513C897047D30CA69D8BDE209E426414FB8
        D1E5863DC99D10E414DCFE1F005BE46525E7AE800000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
      OnClick = BitBtn1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object Cliente: TRzButtonEdit
      Left = 170
      Top = 7
      Width = 55
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 10550008
      ParentFont = False
      TabOrder = 5
      OnChange = ClienteChange
      OnEnter = ClienteEnter
      OnExit = ClienteExit
      ButtonGlyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonNumGlyphs = 1
      ButtonKind = bkCustom
      ButtonShortCut = 113
      AltBtnWidth = 15
      ButtonWidth = 22
      OnButtonClick = ClienteButtonClick
    end
    object RXLabel6: TEdit
      Left = 224
      Top = 6
      Width = 153
      Height = 21
      TabOrder = 6
    end
    object econta: TEdit
      Left = 64
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 7
      OnExit = econtaExit
      OnKeyPress = econtaKeyPress
    end
    object blocconta: TBitBtn
      Left = 140
      Top = 32
      Width = 25
      Height = 21
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 8
      OnClick = bloccontaClick
    end
    object enomeconta: TEdit
      Left = 174
      Top = 32
      Width = 524
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 9
    end
  end
  object Panel3: TAdvPanel
    Left = 0
    Top = 446
    Width = 837
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 57
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 6
      Width = 106
      Height = 48
      Caption = 'F2 | Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000305494441545809ED96CF
        4B545114C7EFF339CE64512812965221EDC2F13FA8114388681516322E846816
        D11F90B87223D12A8340085C081A312D2B23A2A640DAB5D0DA44D08FC528FEC8
        A894F995D3E70C2AE73DDE7BE388532D1CBEDF77CEB9E7DC7BCE3BEFBE3BCF98
        BDDF3FEE805549FEFEFEFE483E9FEF644E373C0E9BA160DEB2ACCFC69867CBCB
        CB2FA7A6A6B2E8DB82B59DA89E9E9EC6502834489204F10760107E1137BABEBE
        3E3C3939B9121428BEB205F4F5F5F5168BC5BB0437C04AF08DE06B1313130F90
        BEB07D3DC658F1787C08FF08DC072B85CCB9D8DEDE6E6667675FFB4DF62D803B
        BFC9A44168C19D82A761C5282244112FBC16F15C9C3BBF4CF07DE8E9677C13CF
        5124A60B198422CE4B3C8E87480764B263800D77A8AEAEEE23834D30086BB95C
        EEE0E2E2A2D5D2D2F283406939C2170BE170F8E4D8D8D84F1D51A30DD1091A40
        964B4E88C92693C9DFA954AA809181E5703893C9DC7007390A88C562B5ECF8AB
        EEA0DDB2D910093A6CEBF51C05B4B6B676E26C84D54253241239A317771480A3
        0B56151C506775825A6DD0FE63DADED419CFD2BEB54D7B437EDF9022B42EB661
        4E3D73C225435D1873E4701440DC11E8C6D3743A7D6163B3B97D259BD7ABADA4
        A84B229108ADAEAE3E62A81B6E81C28E6E19283550C36D8BAF28971DD26BAEA5
        D7727480F6A4A950FB453FC77B9E8FC7E3A26BAE70E7A50D8B4FCEFD06EDE4EE
        B5A9F5B4361C774CF2AFDA5925FD8B5EB7461BECD027DAAE86EECEE128606E6E
        6E9AA4D24E4455B0542814DEE8951D05C84EE731DCD101BBA9B3F6881CDF7A4D
        C72614079F5CB7F933BA8EDE048310966355FE8C088AC07258E0141C710759EE
        01B1D9D57FEDEFD896846EF2F1F03E1A8DE618EF824168C32944F883D60FF07D
        78CF2BC2F61A94318A98A608E9D0696C91888A41EEE210C987FD66FA16201328
        22D5D1D1F1013D668CA987956089E02B24970F5A546F04162053666666DED189
        514EC91C3CC5D87E1884059CB7F8B0E91D1F1F7F8B1E888A5A2BBB9E37244621
        E7E9ED09634C3314CC637FB26DFB315F3DAFDCAF9A04ECF1BFEDC01F7B20F60F
        6B5D771B0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bincluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object balterar: TAdvGlowButton
      Left = 122
      Top = 6
      Width = 102
      Height = 48
      Caption = 'F3 | Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000149494441545809636018
        E980115B0024242470FCFEFDBB0728E70FC4DC404C0CFA0154D4BB74E9D25E20
        4D3462C6A6525B5BBB14285E09C47C40CC4924E605AA73D3D5D5FD7BF9F2E543
        4036518809872A031CE2F8845782241919199BA3A2A26A406C62305607000DC1
        1A35F80CFCFFFF7F1550BE09881980FA9BA3A3A3BB406C429889900252E481F1
        5F0F54DF04C420544A8C2398402AA989418E00864633D44C828EA0BA0340162F
        5BB6AC8E584750D301CC20CB6118E408605AE887F24B636262D2A16C148A0585
        47010768590B30F5AF4136E2DFBF7FC781E24E40317D207606E299408C82A8E6
        00A0A96140CBC2803449888924D534503CEA80D110180D81D110180D81D11018
        0D01AC21006C4EFDA776CD8BCB4CAC0E005A7E0188A98A800E3887CD40AC2D22
        5656D67E60D74C1AA8C10D8899819812F41768F9CEF7EFDF4FA0C490E1AB1700
        082953B93C3BC9F90000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = balterarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bexcluir: TAdvGlowButton
      Left = 248
      Top = 6
      Width = 109
      Height = 48
      Caption = 'Del | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA793000001E5494441545809ED56BD
        4E0241103EF60826EA6B104D6CEC2CEC0C16345AF357FA12C6041B5EC0F80A50
        DB984B2CEC6C2CD4C68ACAD586181AA22612EECE6F938340D899815DACF432C3
        CCCDCFB71F7B732C41F07F79EC40A552D9AED7EB5B1E1081726D2E97CB6B4AA9
        87344D1F8DEF8A93931AABD5EA196A8E73B860A725C4CD2ED4C8133E62E84440
        2C45CB55BBDD6E4D8216C74AA0D168EC2549728AFA75E80154415D2441D32DF4
        0B845A9D4EE71EFE8CE467EEB21B149FC03D82FA8A215E3220785CEFB08B1140
        7173341ACD1503C059C230BC766EFECD46EB0C98056BB5DA3E1EC58EF17D15C3
        F88C61BCB3E1E46D4113C3E225349E07ABB99A80B112304382DCBC600EF47CD4
        2D822F4362290A926BA27AA838065053394525B0FD2F546ED9F8703824B14802
        FD7EFF150BA5505F490683C11B05421288A2E81B4D3DA8AFF4322C2B0E4920AB
        D699F5312C861290B59017D3982516430908E4F0087DD36916832500F66610A7
        C196F671AAB2182C8155FC16483F682C01EC00BB7D8B6C074E5516832510C7B1
        5E6411AEA65028B01839AED9E4702A7EC06E405DE413A7E026D7A8B864966387
        28ABA18CA612E3B81A3B8CD54C4E4A89E49584807C047512BC45E2DFB0BC845C
        2C162FBADD6E88BA43A8B130A2C478836ED07B2956FE17FCF91DF801ADE1855E
        EBFADD180000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bexcluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bpagamento: TAdvGlowButton
      Left = 363
      Top = 6
      Width = 116
      Height = 48
      Caption = 'F4 | Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000279494441545809ED974D
        68135110C7DF6E123D141511AC55904A0F11BCE4A2E0CDA34510146342BE0415
        C955C49B487A13F4E045CF92CF43721095820741F1144F81509044A8164429B4
        1E5448A3C9FA9BB52DD9753789DB500F66F9FF67DECEECCC9B3724EFED6A4AFD
        7169F178FC2AD6B46118C7344DDBC9D80B5688AD763A9D1BA552E9AD5B02CDEE
        60F2396CB7E1A8B0ECF3F98E67B3D925A7845AAF31954A1DA2E2F74A293FB4C3
        604515BAF20AFEB03BE55ED7F549F425C33066D0BDA8627B8621572C163FA037
        A16D8E18B0FA59D43C74C2F542A170DFC921B6582CB6970217184F41377CC571
        993C15B409DD94EB822A77AC0FEDEA7BBBDD7E6837F6DEB3FA8BDCBB4DDEC167
        C05DF05132993C82366129C0B4388B4FE572B9EDECFA6DA5F869E57EBDA3C093
        B8A588896EB77B9EB189610B901598017D44DF5CB95CAE4AEC2A14EC1721EC1B
        240F8C98D2014BCAED2EC032B9DC8C0B187760DC014F1D482412417856FE465B
        A5D3A9E79A3393C9E88D46E3265BE99CC67B02875785A336CD51BBE21A34C031
        74072291C84CB3D97CCDC477E0C64BCA058EEF05BA7166C03CAEEE613B70C0EF
        F7CB5EBECF21D32407D113EC4BF0AF316C017B0664D6F14F2B0F97047A081B5D
        C8B880FFA6035DB75FCDB674807D63F15F166030F95DE8084B07D850961D9FF2
        6EFCC6EAAFE5F3F997CAE5B26C44C160B0CA76FB86674F40C122E29697C23823
        BAAD56ABC6EBFC2A3954381C966F8E0919936F4DB45013D1CB68347A90E017D8
        8E42C117449EA08F68CFA013A79452A7A1627C8EAE3C36C722ECE494DB8DED1E
        BC0275384A3CE7D36C968406543E1176D6EBF535F834140ACDE39B828761006E
        059F59F983402090AED56A3F3712FD028B64B6ED413DF77C0000000049454E44
        AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = bpagamentoClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object brelatorio: TAdvGlowButton
      Left = 485
      Top = 3
      Width = 125
      Height = 48
      Caption = 'F7 | Relat'#243'rios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000318494441545809CD974D
        68534110C7378949AC0AD24AB57EE0C14B45686F5E5A0A05C50F3C48C1A0F92A
        01A197AAB4273D89DEBC0A160A5E6AF3A5040BC50A22D68282172FF552040F82
        88285250AAD17CFBDBF212F6E5BD645F6D823EE6CFCCCECECCCEEECEEE7BCF25
        84F50904023B7C3EDF557ACE83FD601BD0D11A06CFDD6EF7643C1E7F8FEC885C
        F5560CDEE5F7FB972A954A7F7D9FC3F62A76A793C9E46BB8962C094422910483
        870DCF97F005DADFE00DC9E57275D1791D7400496BF89C4DA5524BB2D10CA604
        62B1584FA150F8888387A0F713894408B902B444E26906BDA018FE26C608319E
        283A8BE85635C562B18FB6078852A9340577343876A25C2E7F915CC156129A0B
        854227159D45342540905AB1793C9EAF16EB260A669BB3E9EE40371F0E874FC0
        6DC99480ADC5269524E627C43C5B342C6C9EB627608CB9BE1DC160D072B25A99
        40C918AC11EBE48E488F8D8D7955832D6A6333324BFD80A21B1642F8804A7B68
        1C00928E64B3D9A308AFC03AB52C018EDB1B220E000B5184E328EF00795ABA25
        AFA2955B508D69E1ACCE338BD2506857201A8D6EE74EB84590C3868F23C676BC
        E5285FE3BDF0B399833601029D61F04BCD82D8F5E1739CC45FD097010D499B00
        95BBC80DF990803B1B46B1E920F1EF5CEB8B365D26953681D9D9D9553CCE81B6
        90BB2D51371054BB02A3A3A3BBD8CBBBC43C087454C0E01EDF02D37047A44D80
        17D431228D00A7D483E1347044DA0428BEC724719B62DCA78B48E155B04FEAEC
        D47E6D02C6399E509D5A29FFFF45687CA6A599B59322C4AC461FBC5E6F706666
        E6734D632368B7804B6810BF61B1F1E7503E9F1FC06D0E34246D02B95CEE1133
        B9E1A408D55128DC4FDC840BAACE4ED62690C964F238DE046DA17F5E84A60458
        E66C759ADC7EDD55B9057C773506F7C48FAA2CB92901F67B19650908DEE5E370
        17D82CC918978D2045E2CA318CA610B2B3D690029FCFA65F336EB7A7E80BE06F
        C8CB8C4FE1380824C9F7444C288FA50859852BFC9CF631703F7643041882B782
        96394D13F5813CF58A9595955FBDBDBD0996AA4CDF5ED0092C2B85CE099599C8
        3B2631457D5DE4DB42FEC29BFCFE000396F553C78A03590000000049454E44AE
        426082}
      Transparent = True
      TabOrder = 4
      OnClick = brelatorioClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bextornar: TAdvGlowButton
      Left = 616
      Top = 6
      Width = 100
      Height = 48
      Caption = 'F9 | Extornar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA793000003A0494441545809ED965D
        48936114C7DFD7CF55D3CA4C838C4ABC0825BD118266B044A23BA112CA2F8617
        6699507491172BD3A82E065DF40161650375100A42574911461416088268421F
        7821919160E648A7DBFA9DB98DBDDB9A9BA51138FEFFF79CE73C1FE7BCE73CEF
        B34751D67EFF38036A2CFE4D2693CEE17014A9AA5A0C73DC6EF776E6C7C30938
        0C5FD2DFD7D5D5F5133D2A44154055555586CBE53ACF8AA7600A8C84293AEFC2
        EB9D9D9DD3C888583280F2F2F223BCED4356498582491EBDD806086A025D41DF
        81DC0B4B6006148C63AFEFE8E8782C8DCACACAC3E84F440F64C40070DEC22266
        2620D48F386C9E9F9FB7916227B610188DC684ACACAC524A63A17337145CE5B1
        019692916CA406AAA615D0F03ABF2826BC3F989B9B6BC07154B52D2B2BD32725
        2559985B077D70C5C5C5A5B6B7B7DB7D06916103A8A8A8384667171498895CDE
        42F498C83AFD4CD8073D203385369B6DC0D3F03EE2BCD22F78F3CD346E418509
        B797EB9C9A5B58C3EF1C5D902B8F40860440BACF32601BFC141F1FDF888C19BC
        4409C19F0833714FB02D21D040EDD6D13E0D054DC1F512633424CDCF1897C5B9
        B1696161219760F268E7C269A881260036CE017AD3E16462626237F28F60B55A
        A758E0B5978850684A40FAF7CB1022EEB35AADB3A2AF343501E02C070AFAE5B1
        1A4C0874C277DAE2743A87C9446BA07D25F5B0E7C04A38E44C90A3BC9EF276B3
        49DFFB7C0497C067FFEB92AC9E64D16BC84B483F562D003CCA17267F5CEFD0FD
        589500E47C21F506F1CA1FDA5B913E6A362175BA428A740C1A65C010FA284771
        C8E1415F4C484E4EAE268034268DEBF5FA17483F3401604D67601D8E51174150
        637C1DC73915DF2C5A627BF2F67AD66CF4CEBAD7DADA3AEFD53D4253021C0F7B
        ACDE0713DDD85A96EB5C96E174B52077298AF299D3F5265283E00046027B71AE
        124476A02D169D3FA526C6D741C1194E57399A45F7535302FEFD46A8BF74BA70
        DC430047699829C3562E9B17B8907CA7BD246A6B6BD7DBEDF63B0C3429FC58EB
        32DF7E0F6A08E446EB370E0E0ECEE4E7E7376038C7844674077A312C24B8EA82
        82826F696969C36363632E6C21902B99C160A8E2DAF688CE83D053423672337A
        58A8C1562E129ACB23692C2113F719B7130ABED27E4AA686688C43854D9AC95B
        16A21F825BA0E00B36132FD22B8DDF31248070036B6A6A52B8139AE993D36C23
        3212A6717C43A7D3DD686B6BFB1169A0F44515800C144A6D6766668C64A08876
        1ECC844E388ED30FD89FB3D35FB1D966B1ADE1FFC8C02F1B573F07B98BE24900
        00000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = bextornarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bfechar: TAdvGlowButton
      Left = 722
      Top = 6
      Width = 106
      Height = 48
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000240494441545809ED96BD
        6B144118C66F77BDBD220A29420888E9AE10CC3F20462CC42A103039BDAFD503
        C14E24485A39B4160BEB34DE275C0A098470092129D3046C44B0102CD43E1F90
        ECDEEEE537616FB99C3B30B7AE45F08EF7DD7766DED9E779E6DDD9D94B2446BF
        FFBD02DA60010A85C21C6396EBBA4BCD66F317ED7F6A5742D05F30F640D7F54D
        E20A1EC958C88CA6692FF177954AE5AB0C440F49F4C68C909CF210C44FBADDEE
        33CFF3762DCBBA25BBB14726CB471EEF743AEF11F00D8049446C5B1211618F80
        7BD40DE03188662199E2AE09BCBF72ABE49E530D21622797CBDD6B341A5F9813
        586401D96CF68661186FD9AC59085278002A694CB0AFDE905BC0038B24209FCF
        DF87B005CA389190F8C9456CB403FA2EED7363F506FDDB44511D87B8729EE8BB
        0C2D00F2BB80AE8361E282F4553A9D6E97CB658F7E60994CE66A2A95DA805490
        9F9098AFD7EB9BC40B36948052A934EE388E58B909F096E3380F5BADD6D10544
        BF639AE63273EED0B511FCB85AADFE414E2EA18B8BAADBB6BDCCDC49FC3BA08B
        3272F2C2F6B87CC617205F2386DA301580537B2A5058D96BCA7920DA32AFD56A
        1BE48413E4A65C014EB69BC05C87FC94DDFF89762CA62C80E54FFB8C3F385A8F
        FDF65F0765011C34D7041B420E458CCB9505C4453888331270A92AD0DBF9BD38
        F83823F5950F228EDD7632992C720EEC476292DCA42C8063D705A386C76A5201
        BCEFB37CF9E224B3F93FD0E6BBF0BB1F344C80E74F2822A2E8B7E30AE24BFAA8
        1F2C4CC0077F42DC6F88C7FEF9E8638FC2A8024105CE00BC33B45732DF7FE900
        00000049454E44AE426082}
      Transparent = True
      TabOrder = 6
      OnClick = bfecharClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object bdesliga_filtro: TBitBtn
    Left = 166
    Top = 148
    Width = 179
    Height = 25
    Caption = 'Desligar filtro'
    TabOrder = 5
    Visible = False
    OnClick = bdesliga_filtroClick
  end
  object Panel4: TAdvPanel
    Left = 0
    Top = 388
    Width = 837
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 26
    object Label16: TLabel
      Left = 433
      Top = 6
      Width = 62
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'A pagar:'
      Transparent = True
    end
    object Label17: TLabel
      Left = 622
      Top = 5
      Width = 38
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pagas:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 27
      Top = 6
      Width = 43
      Height = 13
      Caption = 'A vencer'
      Transparent = True
    end
    object Image2: TImage
      Left = 6
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E7
        E3CAAA9BA16A508F573D8D563D996851C5A99BEEE7E3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDFC8BDA26547B17F56D4B692DAC2A5D9C2A5D1B38F
        AA7951915F47D8C6BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2CCBDA25B3BCAA6
        7CD7BA9EC29B76B58961B3855FBD9571D0B296C4A27688563DD8C6BDFFFFFFFF
        FFFFFFFFFFF4ECE4B37749CEA980D9BBA1BD9065B98B61B6885EB2835DB0825C
        AF825BCCA98CC5A478946148EFE8E4FFFFFFFFFFFFDBBC9BBE905DDFC1A7C495
        6BC19068E0CAB7FDFCFBFEFEFDE9DBCFB3845DB2845DD3B498AD7A55C7A99BFF
        FFFFFFFFFFC58F51DABB9BD4AC88C6976BC29468C09266ECDED2F9F6F3BA8A62
        B88962B78961C49C77D1B7929F6951FFFFFFFFFFFFC0823BE2C6AECFA175C498
        6AC39669C39568EDDFD3FAF6F3BE8F65BD8E64BD8E63BD9168DEC5A995553AFF
        FFFFFFFFFFC68841E3C8AFCFA279CB9C70C6996BC4976AFEFEFEFEFEFDC29568
        C09367C19367C2976CDEC4AA98583AFFFFFFFFFFFFD19D5BDFBB9EDAB292CE9F
        74CC9D71CA9B70DCBEA2DCBEA1C4986AC4986AC3976AD0AA84D7B996AB6D51FF
        FFFFFFFFFFE6C8A4CC9B67E6CAB3D3A479CF9F76CE9D73FAF7F4FAF7F4CA9D70
        CA9C70CCA076DEBFA4B8895AD2AE9AFFFFFFFFFFFFF9F0E7D29959D8B18BE5C9
        B2D5A87CD0A478E1C3A7E0C2A7CFA175D0A376DCBCA1CFAB84B37549F3EAE4FF
        FFFFFFFFFFFFFFFFF1DCC5D0914ED8B18BE5CCB7DFB99CD6AA84D5A881D8B290
        E0C1AAD3AD85B3703DE5D0BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DDC5D59B
        5ACF9F69DFBE9FE2C4ADE2C4ADDEBB9EC79661C38948E9D5BDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E7E9CBA7D7A164CE904DCC9049D09B5A
        E3C6A1F7EEE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel15: TBevel
      Left = 76
      Top = 3
      Width = 2
      Height = 19
    end
    object Label15: TLabel
      Left = 107
      Top = 6
      Width = 74
      Height = 13
      Caption = 'Vencendo Hoje'
      Transparent = True
    end
    object Image6: TImage
      Left = 86
      Top = 5
      Width = 16
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AC8EC2CA6DF2AA3DE28A0DC269D
        DB249AD92297D81F92D51A8BD21584CE107DCB0C76C80870C5056BC20267C05D
        9CD647B5E5BDE2F4F3FBFDEEFAFDEDFAFDEDFAFDEEFBFDEEFBFDEEFAFDEDFAFD
        ECFAFDECFAFDEBFAFDF1FBFDAACDEA297ECAC3E7F761BEE7F3FBFDB4EEF957D9
        F457D9F456D7F257D6F157D5F156D8F350D7F44DD6F361D9F5E9FAFD4392D1B5
        D4EDFFFFFF5DC0EA9CD6F0E6F8FC8AE4F759DAF55AD9F33CA0D43CA0D453D5F1
        51D7F44FD5F3D7F5FB87BEE454A0D8FFFFFFFFFFFFE2F4FB36B1E4F2FAFDC2F1
        FA5BDBF55BD9F363DEF556CAEA54D5F153D8F493E6F7E2F3FA1B89D0DEEDF8FF
        FFFFFFFFFFFFFFFF78CCEE8BD1EFE9FAFD93E5F75BD9F346B0DC3CA0D455D6F1
        5BDAF4DDF7FC7CBFE687C3E8FFFFFFFFFFFFFFFFFFFFFFFFF6FCFE44B9E7C7E9
        F6E5F9FC5CD9F33CA0D43CA0D456D6F1C6F2FBBFE2F33AA3DCF5FAFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB8E5F770C7ECF8FDFE5DDBF33DA1D43DA1D45BD8F3
        ECFAFD67BAE4B2DCF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59C2
        EBA8DEF3ECF8FC3DA2D53DA2D5D3F4FBA1D6F05CB8E5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDAF2FB39B7E7F8FCFE93E8F89DEAF9EBF9FD
        30A9E0D7EEF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF73CDEF93D7F1F2FBFDE6F9FD8ED2EF85CEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FAFE43BDE9F0F9FCD4EEF942B7E7
        F1F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8CD7F384D3F081D0EFACE0F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFF5CC6EE68C9EEFDFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Image7: TImage
      Left = 199
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E6
        F79AA6E34C61CB354EC4334CC2455CC694A1DEE1E4F5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBFC7EF4B62D05163D3838FE6949FED949EEC828DE4
        4B5CCD3C53C3B8C0E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1CAF1465FD47483
        E2A0ABF37E8AEB5B66E35A65E27C86E99EA7F06E7BDC314AC1B8C1E9FFFFFFFF
        FFFFFFFFFFE7EAFA586FDD7787E5A2AFF45666E65564E58891EC8791EB525EE1
        515CE09EA8F16E7CDC4056C6E2E6F6FFFFFFFFFFFFA7B4F05F72DFA3B2F6596D
        EA586BE95768E7FEFEFEFEFEFE5461E45360E2525EE19EA8F14F60D097A3E0FF
        FFFFFFFFFF6A81E88D9EEF8398F35B72ED5A6FEB596DEA8F9CF0A5AEF25666E6
        5564E55461E47C88EA8490E64D63CDFFFFFFFFFFFF5C75E99FB2F6647FF15E77
        EF5C75EE5B72EDD2D8F9FEFEFE586BE95768E75666E65C6BE698A4F03B54CBFF
        FFFFFFFFFF607AEDA0B5F76683F35F7BF25E79F05E77EFFEFEFEFEFEFE5A6FEB
        596DEA586BE95E6EE89AA7F04058CFFFFFFFFFFFFF758CF290A5F287A0F7617F
        F3607DF25F7BF2FEFEFEFEFEFE5C75EE5B72ED5A6FEB8192F08897EB586FD7FF
        FFFFFFFFFFB1BFFA6B80EBA8BCFA6281F46180F4617FF3FEFEFEFEFEFE5E79F0
        5E77EF5C75EEA4B4F75C6FDCA2AEEBFFFFFFFFFFFFEBEEFE748BF68296EFA8BC
        FA6281F46281F4FEFEFEFEFEFE607DF25F7BF2A5B8F87A8CE95C73E0E6EAFAFF
        FFFFFFFFFFFFFFFFCED6FD6C85F78396F0A8BCFA89A2F76A88F56A88F588A1F7
        A7BBF97E91EB5971E4C5CEF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED7FD768D
        F96D82ED91A5F39FB3F79FB3F790A5F2677CE86880ECC8D0F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEEFEB5C2FC7C93F96B85F66983F5768EF4
        B0BDF8E9ECFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel14: TBevel
      Left = 188
      Top = 3
      Width = 2
      Height = 19
    end
    object Label22: TLabel
      Left = 219
      Top = 6
      Width = 44
      Height = 13
      Caption = 'Vencidas'
      Transparent = True
    end
    object Bevel13: TBevel
      Left = 272
      Top = 3
      Width = 2
      Height = 19
    end
    object Label23: TLabel
      Left = 303
      Top = 6
      Width = 30
      Height = 13
      Caption = 'Pagas'
      Transparent = True
    end
    object Image8: TImage
      Left = 282
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EE
        E08FBF913A8C3E2479282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C695
        3C964B307B33B4D0B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD
        82A7DAB486CB9765BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFF
        FFFFFFFFFFE1F2E432A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E
        5AB673A4D8B268B77E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0
        785EBD7074C484D3EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FF
        FFFFFFFFFF3EB45C90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA95
        56B66C5AB87184CB9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C9
        7FEFF8F0FEFEFEEAF6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FF
        FFFFFFFFFF2DB650A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFE
        FAFCFB8BCF9868C07DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C8
        7563C56E60C36D60C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFF
        FFFFFFFFFF9ADEAC56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370
        B5E2BD6EC67DABDEB447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0
        B46CCB7969C97567C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FF
        FFFFFFFFFFFFFFFFBFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79C
        FDE0B477C78A26A03AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C7
        6858C17395D6A2A4DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A
        97DBAAE1F5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel16: TBevel
      Left = 345
      Top = 3
      Width = 2
      Height = 19
    end
    object rpagar: TRxCalcEdit
      Left = 502
      Top = 2
      Width = 111
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object rpaga: TRxCalcEdit
      Left = 666
      Top = 2
      Width = 111
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object btotal: TButton
    Left = 584
    Top = 320
    Width = 75
    Height = 25
    Caption = 'totalizacao'
    TabOrder = 7
    Visible = False
    OnClick = btotalClick
  end
  object Edit2: TEdit
    Left = 536
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 8
    Visible = False
  end
  object BIMportar: TAdvGlowButton
    Left = 552
    Top = 244
    Width = 217
    Height = 48
    Caption = ' Importar Contas Antigas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
      6D0000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
      362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
      202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
      702E6969643A4342304246463045453238323131453242383546434630383142
      4335303344322220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A434230424646304645323832313145324238354643463038314243353033
      4432223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A4342304246463043453238323131
      453242383546434630383142433530334432222073745265663A646F63756D65
      6E7449443D22786D702E6469643A434230424646304445323832313145324238
      3546434630383142433530334432222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3E08842097000003F24944415478DACC99
      79884D7114C7EF3CCF3EC89691C11031D610118322658929EBC4107FA094B590
      FDA628D4D88A923F2C19593396063519EB64198A88923F64DFF7A5193CDF337D
      6F1DD7DCFDBD9E539FE6BCFBEEFBDD737FBFF33BBF73CEA418850F8D10521774
      03AD413A680922E039784CEE82D7411F100DF8BB116002C8026D5DEE7D092E82
      4270147CF3F3A0141F3358072C0293410787FB6295E3562D6FC05EB0093C8AA7
      8193C016D0545DFB058A4129B80DEE83CF343095CBDE03F4E48CD753BFFD0D96
      8175610DAC010AC038754D8CD90C8AC00B8FB32FC60D0673C15075FD3AC8010F
      8318D8085C01EDF9597C6731D86A8493D17CC10C7E2EA72F5FABEAE688CD20B2
      3C779471A741BB381827729C3EBC4DADD25530CC8F81974173EA3BC170868E78
      89CCDA1C6E3A53CEA8097134F01C68417D239861244E3680E9EAB3B8546D2703
      678341D425762D34122FBB3811A6DFEFB0DB240DC05B508D7F65892B7C3CA833
      4F1291EFE0BC4F4365420650EF4BBFFCEB24594FE30C4E7B85CF07E481B12A46
      FA3DA57278349AB39AA997B80998495D76EF89004BF556E94F03FCFE09D84EBD
      23E8A30DCC56372E09E84B31CB49114456297D96363057BD4591913C79054E52
      9F286E2206D607FD78F188917C39A352B9C111EE9CEACAFF922D1795DE3DC244
      D3947B2106FEA8F48A10E3DC02EFA8A74755EC2A7799C17E9CF65815DFFD049D
      2CD9CB1097DC508ED31F36DF3D63D06E125567EE27F0C5C1C0530CE65E248DB9
      A293B47348B34C3B5223EA0D632E03BE8FB3AFFDF29250475496529F69BD9D34
      8CB381D55C8AB1CA998CAAA85F9311FCBA43A1946A1384CB99CC8E5485D214DE
      1BF92749763F6DD2F8F75DD472631707034B5D6664A432F093071FB4934EAAF6
      792C6F7749F943E7104BA63750F510E30C52FADD08634E192F8CF90F02B569A0
      84A012D33F0AD4D6CF4AA271E2E3E3A91F93BCD234F090BA293F8906E6A94DB5
      4D673352DF1EA0DE1B0C0C30788A8DEE551AAA124312D70BD69A6481D2770778
      409AA56CF52B7B943EA3AAE69104ECE5600D8BEA424B22EB26F94C95626C81F8
      91A560943A528B9D3A0BD7B8CC22ABC1CA04FB9DD43187A97F6576F5C1A92E1E
      A80EEB15606D028DCB55C69921E6835BE12EF1A7BFEAE32DA14FD64EC08ED57E
      276DBD1B5E5B1FD2C1EAA62AB5A9E0818A5161A40F0D59653926F7F9E9CD18CC
      D532551123ED9083E02C0DAEE3D330E9EFEC6741DED33CCAE8EF4541DA6F5AE6
      7397EA17125F9196EE4D66C7CFE916B28B6B81C69CAD5E6CB96558C69486E83C
      F7E0EABD05DC8AB1729A4D6E185306D6B44918E4BBBD34AECC5BF4F7DFE537CF
      CB6CD61D753DFCA68431B280B5B78FE329DCBF21DA80AEF4CF665C5A33817DC3
      5CF301375D20F923C000A422DEAC6EFE30D60000000049454E44AE426082}
    TabOrder = 10
    Visible = False
    OnClick = BIMportarClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = clTeal
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object qrcontaspagar: TFDQuery
    AfterInsert = qrcontaspagarAfterInsert
    OnCalcFields = qrcontaspagarCalcFields
    Connection = DM.Coneccao
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmAll
    SQL.Strings = (
      'select * from CONTAS_APAGAR')
    Left = 296
    Top = 248
    object qrcontaspagarsituacao2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontaspagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrcontaspagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontaspagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontaspagarDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontaspagarCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object qrcontaspagarCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qrcontaspagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object qrcontaspagarNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
    end
    object qrcontaspagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcontaspagarC: TStringField
      FieldName = 'C'
      Size = 1
    end
    object qrcontaspagarE: TStringField
      FieldName = 'E'
      Size = 1
    end
    object qrcontaspagarFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontaspagarESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object qrcontaspagarSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontaspagarCODNOTA: TIntegerField
      FieldName = 'CODNOTA'
    end
    object qrcontaspagarMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrcontaspagarCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
    end
    object qrcontaspagarfornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = DM.SDS_Fornecedores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Lookup = True
    end
    object qrcontaspagarconta: TStringField
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = DM.SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCONTA'
      Lookup = True
    end
    object qrcontaspagarCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object qrcontaspagarCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
    object qrcontaspagarVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qrcontaspagarVALORPAGO: TFMTBCDField
      FieldName = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object qrcontaspagarLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      Precision = 18
      Size = 2
    end
    object qrcontaspagarDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrcontaspagarACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qrcontaspagarCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object dscontaspagar: TDataSource
    DataSet = qrcontaspagar
    Left = 376
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 192
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar1Click
    end
    object Pagamento1: TMenuItem
      Caption = 'Pagamento'
      ShortCut = 115
      OnClick = Pagamento1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = Localizar1Click
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = brelatorioClick
    end
    object Filtro1: TMenuItem
      Caption = 'Filtro'
      ShortCut = 119
      OnClick = Filtro1Click
    end
    object Extornar1: TMenuItem
      Caption = 'Extornar'
      ShortCut = 120
      OnClick = Extornar1Click
    end
    object otalizar1: TMenuItem
      Caption = 'Totalizar'
      ShortCut = 121
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
    object i1: TMenuItem
      Caption = 'importar'
      ShortCut = 16457
      OnClick = i1Click
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 408
    Top = 192
    Bitmap = {
      494C01010500090004000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000001E0000000100200000000000201C
      0000000000000000000000000000000000007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000047B5E500BDE2F400F3FBFD00EEFAFD00EDFAFD00EDFAFD00EEFBFD00EEFB
      FD00EEFAFD00EDFAFD00ECFAFD00ECFAFD00EBFAFD00F1FBFD00AACDEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005DC0EA009CD6F000E6F8FC008AE4F70059DAF5005AD9F3003CA0
      D4003CA0D40053D5F10051D7F4004FD5F300D7F5FB0087BEE40054A0D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000078CCEE008BD1EF00E9FAFD0093E5F7005BD9F30046B0
      DC003CA0D40055D6F1005BDAF400DDF7FC007CBFE60087C3E800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8E5F70070C7EC00F8FDFE005DDBF3003DA1
      D4003DA1D4005BD8F300ECFAFD0067BAE400B2DCF20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAF2FB0039B7E700F8FCFE0093E8
      F8009DEAF900EBF9FD0030A9E000D7EEF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1FAFE0043BDE900F0F9
      FC00D4EEF90042B7E700F1F9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008CD7F30084D3F00081D0EF00ACE0F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF005CC6
      EE0068C9EE00FDFEFF0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1E7E300CAAA9B00A16A50008F573D008D56
      3D0099685100C5A99B00EEE7E300000000000000000000000000000000000000
      00000000000000000000E0EEE0008FBF91003A8C3E0024792800247628003A84
      3E008FB99100E0EBE00000000000000000000000000000000000000000000000
      000000000000E3E6F7009AA6E3004C61CB00354EC400334CC200455CC60094A1
      DE00E1E4F500000000000000000000000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A9000000000000000000000000DFC8BD00A265
      4700B17F5600D4B69200DAC2A500D9C2A500D1B38F00AA795100915F4700D8C6
      BD000000000000000000000000000000000000000000B5D9B600308E3400419F
      510086C999009AD2AA009AD1AA0082C695003C964B00307B3300B4D0B6000000
      000000000000000000000000000000000000BFC7EF004B62D0005163D300838F
      E600949FED00949EEC00828DE4004B5CCD003C53C300B8C0E900000000000000
      0000C8926CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA97251FF0000
      000000000000E2CCBD00A25B3B00CAA67C00D7BA9E00C29B7600B5896100B385
      5F00BD957100D0B29600C4A2760088563D00D8C6BD0000000000000000000000
      0000B5DBBA00248E29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA
      9700A4D8B30065B67C0023712600B4D0B600000000000000000000000000C1CA
      F100465FD4007483E200A0ABF3007E8AEB005B66E3005A65E2007C86E9009EA7
      F0006E7BDC00314AC100B8C1E90000000000CA946EFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFE
      FAFFFCFCF9FFFFFFFFFFAA7353FF00000000F4ECE400B3774900CEA98000D9BB
      A100BD906500B98B6100B6885E00B2835D00B0825C00AF825B00CCA98C00C5A4
      780094614800EFE8E40000000000E1F2E40032A0430071C18600A7DAB1005FBB
      76005BB9720058B76F0058B46E0057B46E005AB67300A4D8B20068B77E00307F
      3400E0ECE10000000000E7EAFA00586FDD007787E500A2AFF4005666E6005564
      E5008891EC008791EB00525EE100515CE0009EA8F1006E7CDC004056C600E2E6
      F600CC976FFFFFFFFFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFD
      FAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFCF7FFFBFBF6FFFFFFFFFFAC7554FF0000
      0000DBBC9B00BE905D00DFC1A700C4956B00C1906800E0CAB700FDFCFB00FEFE
      FD00E9DBCF00B3845D00B2845D00D3B49800AD7A5500C7A99B00000000008FD2
      9F004BAF6300A9DCB30063C078005EBD700074C48400D3EBD80089CC980055B5
      6B0057B46D005BB67300A5D9B300409A4D008EBB900000000000A7B4F0005F72
      DF00A3B2F600596DEA00586BE9005768E700FEFEFE00FEFEFE005461E4005360
      E200525EE1009EA8F1004F60D00097A3E000D19C73FFFFFFFFFFFEFEFCFFFEFE
      FCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFA
      F6FFFBF8F4FFFFFFFFFFB07A58FF00000000C58F5100DABB9B00D4AC8800C697
      6B00C2946800C0926600ECDED200F9F6F300BA8A6200B8896200B7896100C49C
      7700D1B792009F695100000000003EB45C0090D19E008CD3990063C2730078C8
      8600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8710084CB960086C6
      99003A8A3E00000000006A81E8008D9EEF008398F3005B72ED005A6FEB00596D
      EA008F9CF000A5AEF2005666E6005564E5005461E4007C88EA008490E6004D63
      CD00D49E75FFFFFFFFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFC
      F8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7F2FFFBF5F2FFFFFFFFFFB27C5AFF0000
      0000C0823B00E2C6AE00CFA17500C4986A00C3966900C3956800EDDFD300FAF6
      F300BE8F6500BD8E6400BD8E6300BD916800DEC5A90095553A000000000026AF
      4800A5DBAE006FC97E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFC
      FB0087CC95005AB8700066BD7C009FD6AE00227E2500000000005C75E9009FB2
      F600647FF1005E77EF005C75EE005B72ED00D2D8F900FEFEFE00586BE9005768
      E7005666E6005C6BE60098A4F0003B54CB00D5A076FFFFFFFFFFFDFDFCFFFDFD
      FBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3
      EFFFF8F2ECFFFFFFFFFFB57E5CFF00000000C6884100E3C8AF00CFA27900CB9C
      7000C6996B00C4976A00FEFEFE00FEFEFD00C2956800C0936700C1936700C297
      6C00DEC4AA0098583A00000000002DB65000A6DCB00071CB7F0065C67200AFE0
      B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF980068C07D00A0D6
      FD002283250000000000607AED00A0B5F7006683F3005F7BF2005E79F0005E77
      EF00FEFEFE00FEFEFE005A6FEB00596DEA00586BE9005E6EE8009AA7F0004058
      CF00D8A279FFFFFFFFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7
      F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFF0000
      0000D19D5B00DFBB9E00DAB29200CE9F7400CC9D7100CA9B7000DCBEA200DCBE
      A100C4986A00C4986A00C3976A00D0AA8400D7B99600AB6D5100000000004AC4
      6B0094D6A00090D69A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3
      BF00FEFEFE00E2F3E5008AD098008ACD9C003B983F0000000000758CF20090A5
      F20087A0F700617FF300607DF2005F7BF200FEFEFE00FEFEFE005C75EE005B72
      ED005A6FEB008192F0008897EB00586FD700D9A379FFFFFFFFFFFCFBF9FFFCFB
      F8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EA
      E4FFF2E7DEFFFFFFFFFFBA8560FF00000000E6C8A400CC9B6700E6CAB300D3A4
      7900CF9F7600CE9D7300FAF7F400FAF7F400CA9D7000CA9C7000CCA07600DEBF
      A400B8895A00D2AE9A00000000009ADEAC0056BE6F00AEE0B6006CCB790067C7
      710064C66F0062C46D0061C36D0062C37000B5E2BD006EC67D00ABDEB40047A8
      5D008EC7930000000000B1BFFA006B80EB00A8BCFA006281F4006180F400617F
      F300FEFEFE00FEFEFE005E79F0005E77EF005C75EE00A4B4F7005C6FDC00A2AE
      EB00DBA47AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FF0000
      0000F9F0E700D2995900D8B18B00E5C9B200D5A87C00D0A47800E1C3A700E0C2
      A700CFA17500D0A37600DCBCA100CFAB8400B3754900F3EAE40000000000E4F7
      E90048C465007ECD8F00ADE0B4006CCB790069C9750067C7710067C7730067C7
      74006AC87800ABDEB30075C3880032A04200E1F1E30000000000EBEEFE00748B
      F6008296EF00A8BCFA006281F4006281F400FEFEFE00FEFEFE00607DF2005F7B
      F200A5B8F8007A8CE9005C73E000E6EAFA00DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF0000000000000000F1DCC500D0914E00D8B1
      8B00E5CCB700DFB99C00D6AA8400D5A88100D8B29000E0C1AA00D3AD8500B370
      3D00E5D0BD00000000000000000000000000BFECCA003CC25B007ECD8F00AEE0
      B60091D79C0076CD820076CD820091D79C00ADE0B40077C78A0026A03A00B5DF
      BD00000000000000000000000000CED6FD006C85F7008396F000A8BCFA0089A2
      F7006A88F5006A88F50088A1F700A7BBF9007E91EB005971E400C5CEF5000000
      0000DDAC85FDE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFD0000
      00000000000000000000F1DDC500D59B5A00CF9F6900DFBE9F00E2C4AD00E2C4
      FD00DEBB9E00C7966100C3894800E9D5BD000000000000000000000000000000
      000000000000C0ECCB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5
      A0004FB8690034B25400B6E3C100000000000000000000000000000000000000
      0000CED7FD00768DF9006D82ED0091A5F3009FB3F7009FB3F70090A5F200677C
      E8006880EC00C8D0F8000000000000000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B00000000000000000000000000000000FAF1
      E700E9CBA700D7A16400CE904D00CC904900D09B5A00E3C6A100F7EEE4000000
      0000000000000000000000000000000000000000000000000000E5F7E9009EE2
      B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5E700000000000000
      00000000000000000000000000000000000000000000EAEEFE00B5C2FC007C93
      F9006B85F6006983F500768EF400B0BDF800E9ECFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      280000003C0000001E0000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      000000000000000080000000000000008000000000000000C002000000000000
      C002000000000000E006000000000000F00E000000000000F00E000000000000
      F81E000000000000F81E000000000000FC3E000000000000FC3E000000000000
      FFFE000000000000FFFFE01FC03F80700001C00F801F003000018007000E0010
      0001000200040000000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      00018007000E00100001C00F801F00300001E01FC03F8070FFFFFFFFFFFFFFF0
      00000000000000000000000000000000000000000000}
  end
  object Qrsoma: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select sum(entrada) total_entrada, sum(saida) total_saida, '
      '(select sum(entrada) from c000044 where movimento = 08),'
      '(select sum(saida) from c000044 where movimento = 08)'
      'from c000044')
    Left = 216
    Top = 248
  end
  object qrcaixa_mov: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 328
    Top = 300
  end
  object qrgrade: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select contas_pagar.*, p.codigo_fornecedor from contas_pagar, co' +
        'ntaspagar p'
      'where'
      'contas_pagar.codigo = p.codigo')
    Left = 512
    Top = 280
    object qrgradeCODIGO_GERA: TIntegerField
      FieldName = 'CODIGO_GERA'
    end
    object qrgradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qrgradeDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrgradeDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrgradeDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrgradeDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object qrgradeUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object qrgradeUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object qrgradeUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object qrgradeTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 70
    end
    object qrgradeFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 70
    end
    object qrgradeN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object qrgradePARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object qrgradeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object qrgradeAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Size = 1
    end
    object qrgradeOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
    end
    object qrgradeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrgradeCODIGO_FORNECEDOR: TIntegerField
      FieldName = 'CODIGO_FORNECEDOR'
    end
    object qrgradeCODIGO_FORNECEDOR_1: TIntegerField
      FieldName = 'CODIGO_FORNECEDOR_1'
    end
    object qrgradeDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrgradeMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 18
      Size = 2
    end
    object qrgradeJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_ADIANTAMENTO: TFMTBCDField
      FieldName = 'VALOR_ADIANTAMENTO'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_AUTORIZADO: TFMTBCDField
      FieldName = 'VALOR_AUTORIZADO'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 18
      Size = 2
    end
  end
end
