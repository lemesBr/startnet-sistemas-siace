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
    Version = '2.5.4.1'
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
      Version = '2.5.4.1'
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
      Left = 270
      Top = 1
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
    Version = '2.5.4.1'
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
    Version = '2.5.4.1'
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
      Left = 702
      Top = 9
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
        702E6969643A3137304439333634453238333131453241314245414242363331
        4535433039302220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A313730443933363545323833313145324131424541424236333145354330
        3930223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3137304439333632453238333131
        453241314245414242363331453543303930222073745265663A646F63756D65
        6E7449443D22786D702E6469643A313730443933363345323833313145324131
        4245414242363331453543303930222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EA23801B1000004DD4944415478DAB459
        7988555518BFEF3A5663D938E1DE8C8995D2E43A8E9AE08CDA188E51844D2989
        2B262A8626B8842286A4A248E21FE258B845A1B6992146B6A8998A8CB98D239A
        5A4E995B6E38EA34E6F6FBE477E4E374EF7BF7BCF7FAE0C73BE79EED3BE77CEB
        7931EFABE35E92D40AE809E4032D81E6440CF81BF80BF81338006C060E26B348
        8663FF4CE0756028501CA75F13A0ADF5ED17602DF0117036EA823187139C0ABC
        0D340D683B465C02EE0059402EF02C50C7EA5B037C00CC00AAD3C160376009D0
        497D3B037C0FAC0776032742C6CA95E701A5148767AC39C6039FA5C2A09CD842
        553F0FBCC713A84942A4443CA6011DD5B7A5C098B0017E9CC9665BCC09534F03
        8B9264CEE369C94DCC54DF46035FBA32B8883BF52853A59CE8B2971E9A0574A6
        960BF5A7A6476270146543E81AD03DDE0E53A03D3CCD4AD67B01CB12C9603ECD
        812111EAC38E0B3F07F4015AF00044197E00B6F0366CAA0BFC06E4B03E16280B
        63F028F014CB03814F1D182BA558E487B4CB42F3800F03DADAA8833066AADABE
        E2718AB9A58ECC7D027C6E31F72F50ABEA4F52D13605388823C090FB87E6792B
        ED13CCA47B7A981A5ACF81B955F42C86E47A3EE689DDA6C11E48D96EC03EDB80
        A280B9F603ED5996DF0A7382C3C89CD0BB0ECCBDA998BBC8494586B653F6CE51
        A6A7509E0FB16F2135D9A691AA3C419FE0165AFA7F8047793D51E80A509F65D1
        C87D09FA4BDF2A209BF5C6BC394DE5400165B0A14FC7DE938D2B1D98EBA5982B
        8BC09CC745E7A8FAD0803E8BD5664A84C1BEAA71BDC3F5BEA8CACB1CC6494473
        93E5B601ED3FABF24B3EE5416B53546AC4DF5BC0AF0EE3C47B9C66393B2432FA
        9DE5D6E68A3D0AF41F0E0BDD54DEA881630C6A44A336A4CF2EFE3695C91F572A
        7ECB61A17265B78A1DC615A90D9D0AE9631427DB575775C5D1A5AD53E5E90EE3
        26A9F28638CA2454CFE7092443B2CB15CA4BAC8830E61DA01FCB15F4D171E355
        5F1DE72349244D05AA3E9C2E2F3744A1DE07E6AA6F03E2CC6D78B99E418DEAC4
        FC21161271D8D499C6DDDED420BAB59DC0562A520F866CDA7DBE96204A7A8CBF
        9733548695C310A92A027362AB1E0A69AF43A67A04B4555006372558A38BC95B
        7CFA4D43AD130C2C6492643327E6A29D0A6EABE836E5FB49E01B7A8DF611987B
        82E1D73D9B98610D10AFF25D1CF31014965F63E657A9E242A18614990B8C6A5C
        025E43DFFAB4ECBB54741244FD2853768A70818A521930E63C15F0B6A3F28D55
        B7F2B559700D7FB318B86AEA0A6C0C98E81CE5F1B0973ECA53818B648035BE72
        F6C68BCC0DD9912691B10E1114CA95965B99E5FD2BAB56B96A7DE6C4867E0A70
        F65D1990A6934A28CB423F5219FF93349D51C1C30B7CDE107A0B7885C1C4C424
        DC62226AC28DD765BD9939009BC1DEE4DE3CF2E4C57977492755A8D8501EA9E6
        8725EE624626ABA7B6BD2AD3FB3F488CFA0EC5DC3ACD5CD8CBC202FA548F61D1
        EE10AF902AB56442D59D7579E07C35EADBCC60E6B0C6F46CB31427551A45F3D4
        4185F905AEAF5BA32DA6A6D120BFA184D995FAD2EDC9E61F54394A6158741DE5
        01F379C67A2D2C53F3055F130EF165D50B79779128E9655E9F7E17BCC1DCB72C
        D517568FA1D26C9E6A6640F45BCEF0FD2AC3B54C9A8E8E34194199DDD428863E
        E6F8CA2F8B8E60DCD7CEF17A6503AB79BD91B3C0580A7F43E4333716469B336A
        7E8011CC0D5EFB29A6911B19C4D6BA2E72578001003E1420BFB0E5E3D5000000
        0049454E44AE426082}
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
    Version = '2.5.4.1'
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
      Top = 4
      Width = 87
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
      Top = 4
      Width = 87
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
        702E6969643A3642383743374531453238333131453239303732384137383943
        3137333842442220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A364238374337453245323833313145323930373238413738394331373338
        4244223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3642383743374446453238333131
        453239303732384137383943313733384244222073745265663A646F63756D65
        6E7449443D22786D702E6469643A364238374337453045323833313145323930
        3732384137383943313733384244222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E1034B6250000047A4944415478DABC99
        7768145110C6F78EC46E2C88150D2A362CD8221A4B0C0AD1288868C48A15BB88
        8A0A8A151BFA8F8AC4A020626F68EC2562D758C0AEB1F758A2B18BDDF80D7C0B
        C372656F7793811F79BB77F776F6BDA92F3E23FDA1E1428A8326A035A806CA00
        3FF8085E830BE01278E7F401510E7E5314F400CD412B10077C21BE7F079CA6A2
        FBC1CB481EE68B60052B82816008A81DE0F31FE037C803D17C11ABBC005BC16A
        70D74B0553C0525059DD7B05B24026B80C9E800FE00FB7BA2A680CE2413D505D
        FDF60B9809D2F8628E159407AD023DD5BD1B603938061ED95CFD0AA02D180B12
        D4FDF3A02F78EC44C1BA601B68C86B31F419DCA20F0E6DBE30E80266AB79DF80
        5EE054A01FF8834C241EB95B4D7298CE90E64239919F6027B77DAD5ADDBD8C04
        B61414DBC9508E20069D4C1BF34ABE82C1602AAF63E8E1CDEC28B8522927B636
        1CFC33F2471683091C97029B4189500A8EA58D18DCE2F146FECB522A2A520B2C
        0AE624B1F4D0920CA6627FEF8D8293B3B44D91F6E0A47505A7533983CBEEA572
        352D3134900C037F399E65DDE28A4C5F2207195EBC10512A95E9EE0AE81FE2BB
        5974489144D3D44C054783B21CAFF170E5BA8251CCF9E5C17A6E5F3059A6762E
        592BD8446589BD1E285696797B1357504BFB3085C5258E3B8A67CB9B55022D79
        F30483A91B290DF6B1D26901C630DF4E64D6D864C3599218EA5A4671F5CAA937
        7023120976A91D19CD9A713003FD55702FCC1C875848886E6DA2543A932AE496
        0BE5C4D1F6804696FBB2D539608ACD796E72A5AB8893F93930EB39A7E9AC168B
        D246013ECBE696DB95EFC00CCE45A36833229F1D1602CDB97295027CF6809E7C
        37C23973B58266B99EE740B9A64C8981947BC45071DFC1BCA62E3EB3C1319845
        622298248E1548E5207694E8503943C5E41F7E765F663354CDE60462F8C7E918
        563907DA81670E952BA4DA836F7EBEADC146A7A1CD493A307C5845E268379745
        6D5DB52B6FFD6C78CCF452C7E6245296A55BEE1D009DDDF4C094242E96C81951
        F039B8C81B09617ADC12DC3EF1F8EE2C300DF6295DC2756836A50DFF4AC8CB34
        73F135E5955DC378ADD4690B793D14F4A14D7A21B14C8F06DB8E5C534169863E
        29070826F13487387A9A04D52D1EE46F53C629C73B62ADA837807E1C77664EB4
        4A79E6C81CA6462FA506ABA9623CD39162234F57D4F3C12F8E570439BAC8613B
        E0B572E6338B713CCF0CD67E4B453B5795E8A905D88F4CE6AE896CD4B9DBDAD5
        CD67D2171904E61480727D55572755CCA4707DF1701E0C19ACCB16E5A3720368
        FB064FC652A8644805EF305364F37A2AE35D690F15F373B7D6A9B8DB4FED5ED8
        B3992C06E217BCEECD93A81ECC956E03F151304D95797278B43D92C32383CD4B
        BCD940330DEEE04152775571D83DD5EAC48C739A958EC86D8EB7BB39C094B837
        022CB09463F7F8800CF61A4F59BAE53125CA215403A6CF66966A5BBEB384CE91
        EBE600538B745923B9DDD602F517B3CA67A5A0C4B42296EF7D649191AADA4BC3
        2B05F5D96132CFF312B852E1CAF793AC1365B5AF47F2309FCB7F435465835D9F
        C767D1AA43FCC29E24C346AB1954FE0B3000BD1B0776D96B9729000000004945
        4E44AE426082}
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
      Left = 218
      Top = 4
      Width = 87
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
        702E6969643A4644343533433243453238323131453242344331443034363931
        3045383637372220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A464434353343324445323832313145324234433144303436393130453836
        3737223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4644343533433241453238323131
        453242344331443034363931304538363737222073745265663A646F63756D65
        6E7449443D22786D702E6469643A464434353343324245323832313145324234
        4331443034363931304538363737222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E2110B5B80000050D4944415478DABC59
        696C155514BE335D28962AC6052235A0C604A46AEA1F374CDCE3DE1F6A03C6A8
        7157143762503451A3311AF7251A445C7E10A88AC4041AA22422C1A2922A6E18
        431529B860C0584B8B7DBC19BFD37EB73DBDCEBC37336FF4245FEF9DFB66EE7C
        73CEB9F79E73EA99E55D26A31C09CC008E070E058E000E017C6007F003F013D0
        097C047C95E5255E4A826381EB810B813362EF0A8767D7F229F01EB008F8E5BF
        207807300F385831D90C321B8DE76F407F1306BA715D34555EA309C3E92630C7
        E10D4D189FAEE6F91B7812780CE8C983A0987101308DD7BD78EC75638A4BF0F4
        3AE3414D82C0F74C18D49920F04D5D4D3F0602532882B7A8D13B167F5A81AB81
        899CE737E0666059A997FB65C8DD03AC55E41E062683DCAD26AC05B903F1EEFA
        EB4C716F0872017EEB33BEDF6B068A45530843106F8176E5B98DC0FCA167CD9C
        C1FB8C9900BC033C9F55832F00B3D95F07CC1A34E1A008975A68073003CDC62B
        E003FCBE21EF0BE981DE18603DAEBB479C7258F6055EA15645560017A421F822
        D52FF292EA5F3CB4503CD8AE48A255DB416EA743C22E8F09A37DD65401BB8177
        793D9F5611791F38DB25521D41EE6E45E811E03E6E1F1F8C983AA477F8CEB24D
        2C9F001771FE9D54C259007CDB5C554A8347035FB22F0BE3066E2D3D311F5389
        FC0A4CA2196E039EE1F84C6069DC2259C1B693E40CF7BCBCC919AEE619EC3F0B
        B4B1BF186888D2E01CDE28D2086C5713EDCF6D618FE363716D58A61D071CC039
        77296589A5EA8157816B35C15AFA823CF828706FC4175F0634F1256189F3C344
        9E2323638235C0AA88DF2F01DE62FF70E0474B50CCF932FDA186AD2B5D7C280F
        1172E7C4FCD64D0B8A356FB73E7825DB4531E444B65440C8D5EECF25EE7D9CED
        E5B22DF9DC424EE4E073095F388FD14BA71A135F6AE64ED0AFC6E51499C25329
        89BC465F171F3D55089EA7549B34245ACE704AFBD156E00BE06BE02F35BE9ABF
        2D4D3837CE7AB39EFD162178B20A87924A6384E9C638278695C079268958454D
        B326360C2ED34A7FCCAA0D23C6BD14F36E603BC9572B734B0ECE1F25C50CF36E
        B27BB0CF03BDDCCA4A16FC4613CF4270806D833EF1830A359827C15101EBEF2A
        34CACBC49512B4677F9FAF7C6F7206324199A32DCE32E57CD7AE8B1D42709B33
        F87F4839773AC1EECD42F0335E3467D0A09740835E060DDA2CB04B08AE5489F8
        6129BF3A0DA9A404ABD5D1BB52086E06BEE1C04D2927F51390F2539AB8954995
        2461EDF6E137D9DE58E1A69C87896D502171E11E4B70A1DD1855AA9996A097C2
        37C31245822695060CAB7F1723691B72D5279CB426A306E36489CA8D3E77FDE3
        01E6AC7E82D0C80609B5311BB2F6B13AB6BB9DFA8C2B4F30CB332A611B457080
        89B9C8F9C0FD251CBB18B1778E8D20A5C3AC6A27E67317C65DECCF5509DBBFD2
        C9552C79DC023CC4AC6B813D76D47D0B199C5EEA105946ADEEA7C65B8037D4D6
        E16AFE4C65B10F59F92A5BFA90BDF15CF6EF049E064E6121320F3909E860BD67
        31C7BE038E010A49AA5B9206B4B3FF1435B696E533490DF6668C7EFE606AD9C1
        4569C97D4BD285B4F54121760DFBDB5896E8E42291B0FE20FA5B35AFABF8D136
        770EE8DB7F32EFDE87E5E2B7D576D24E3728642D605EC16AD7385E77B08ED296
        527BA7B106D3A2C6E6BA3E97B5043C9155AED9CEAA5EC362932439DF339B0BF9
        3153188034D17C0DEA59F9B807695A9307412B47D10F5B69AAB4FED7C663F5E3
        E4E764B67F4388AF9DCE953E955B8C68793C4F8E1E46EA5BA9D9D52C50F6A67D
        D13F020C00A5DD5A0B7D7954480000000049454E44AE426082}
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
      Left = 323
      Top = 4
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
        702E6969643A3531423845383333453238323131453239393932384331334245
        3437413935302220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A353142384538333445323832313145323939393238433133424534374139
        3530223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3531423845383331453238323131
        453239393932384331334245343741393530222073745265663A646F63756D65
        6E7449443D22786D702E6469643A353142384538333245323832313145323939
        3932384331334245343741393530222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3ECBCFC7FB000004B44944415478DAC499
        0B88564514C7EF5E375FBB1A3E327335D7D2C430B5356B15CD554228C396C028
        452B0DD40AD34D30125A162531316B09134534312D455D35B6D228652BCAAC48
        DD141FB1B59A65BAF8E8E103DDFE47FE13C7C3DCEFBD5F077EDCB9F3CD9D7BEE
        993333E7CC9713541D0DD2903CD00F74075D4137108213A09ED4823F527D416E
        8ACF3D041E03C3C06D71DAFE0E6A4015D80CFE4EE645394958B03578118C07BD
        63B46BBCD6AF5F4E8135E00DF07326157C1C54829B54DD15F009F812EC0507C1
        797015B4E1B0DF0D8A68F136EA5969F3325890AE82CDF9C563559D28F326A806
        BF25687D51AE044C070FA8FA6FC013E0682A0AB6075F815EBC17DF990DDE8AE3
        06B7837D31DA8CE10716F2FE12B81F7CED6B1C467422C3B35F29F711E81947B9
        D1F42BB1F017A07344BBADF4E1256A94C410A392B1E03150C0F24A30C9FC2E33
        F83267A5B3DC59B32AAC024FC719FA32B048DDDF010EC7B3E04EA5DC62A35C6B
        5AE77DB009AC677D33CF92D53901DF7CDD7C8458B2552C05A782E12CD7F00BB5
        C8300C51F763F9D5327BCBCD52536E9E2DB42F57965EACFC7E79D410DF084ED3
        1A72BD85C3A8A50FF851DD5FA6A51A783F82D6FF1CD499673B80739E3E036590
        A12C17BB49A32DF81A950B68765F4707B8A6ED6107C54A3991CFB82CD5799E3D
        1D43B980CB8D9377AC053BAAFD721FF75727B3C040B0166C0B9A569682292CDF
        07763B0B96AA462FA9F2B360217792ADC6FFD2951E60B0A97BC5CC87FF867882
        5A5EAA55A362D3C15D1954B0C0D3DF49354AB294E58A826DD5976C320FCC0747
        B8777EAA7D230322136999A77EBB0AE54A7239736E50FE672785EC2637336CCA
        86D4A872FF9081A656282AA6CB96FCA05686AE21A360B769EF570D9BD1370705
        D9975F79ED98CB0539E022FA27CB6DB9A5F5E5FD30FA4C5388EC4617B94A3871
        7AE48726FA75E54E4A3991914D68ADE7C1E4A870D025382EA8747BA5CCDCB7F9
        6592F4AC68420565EF7FC4938C5DB3A428789C372DB8D7EA45BA0B2D793CCB3E
        E822A186D0BCBCAF69D8F03F4C903E2AF7A90FE9FC57587167C443DDB2A8E070
        55AE0D69A53DACB0BE203EB903FCC2C837CCA022B27C3DA336092725BC5E90E8
        C8BDF05D5E7B724971D2456561659ECED291290C4EF3545DBECA20B7807F9C82
        1B4C18EEA48E33F80893F68B1954F005702B38A3EA2AD4282DB111F53A8655CE
        CCBBB23C39DAA949594FE5AFF3A9329327C49227C134158127220322721227AB
        5579922F6992057B8E4A70AA223A7A941F2043F05482CA4D04DF838D11BF4B90
        FC30CB1FF248C59BD5BDCAE30837A3E7793AFB89334CE490F9ED39A6A236D0AD
        650EBD39E283E7B3FC1718172F716FC9FC249FF70B4C1AE072983CCF095523AF
        6B54941E4B2698A1BD077C1B2F71BFC0DCC34514B31949B732C768BEE3B3520E
        FDDC0494AB30CA8DB7CAC53B3C9283C9DDCC67036E8933CD92948ADCCB40A4C8
        9CEB54277378E47C4DF6C50F5492B39EB9EF441E8324230F82F7984F1729DF1C
        14A55C320798333C5BDD193AFD770C6E4FF088AE917EDC81D61AC823B742D367
        2517EB8C9CB0065C3867720D6CE7F9BD5129D822625BBCCA6DB552EDFF1953D0
        EE97A58CB4F3137846DCE2632A772C9997E5A4F937440F26DF054C4D5BAA04EC
        1427D6611E6AA624FF0A300075BC0FB53BF898510000000049454E44AE426082}
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
      Left = 467
      Top = 4
      Width = 103
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
        702E6969643A4442423443394332453238313131453242394338393942364543
        3838344544452220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A444242344339433345323831313145324239433839394236454338383445
        4445223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4442423443394330453238313131
        453242394338393942364543383834454445222073745265663A646F63756D65
        6E7449443D22786D702E6469643A444242344339433145323831313145324239
        4338393942364543383834454445222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB0957FD5000005934944415478DAB458
        796C944514DF6F7771972A68418A55A828A0126F118D174710242A55A99188C4
        A0A051226852A3A2FC2189670C1210E21545413C62A8578C468D8A94C32ACAA1
        50143CD046C156DBDADA935D7F4F7F93BC0CF35D5D7DC92FFB7DB333F3BD79F3
        DEEFBD192FF1FAEE4401520C9C0C1C0D0C0306B37D1FB013A803B6033FF7F403
        E91E8EBB02A800C6024785F46D04D6006F02AB81A6381FF26258F030A012B806
        38A6870B6B0656028B816FFF4B0567008BA8A416B14C35F035B00D680572C021
        DCF2138151C045406F6BECBDC08242153C18781128576DB5C012E0AD18BE25BE
        7A213007B840B56FE68E6CEF8982A5C046A08CEF5DC05DC0A389C2642AE73852
        B58D06D6BA3A277D2619CE2D33CA7DCCB64295137905380E7846B57D024C8E6A
        C15EA487017C7F0998E6183B1F28017600ED4011ADD200FCC13E296028836A36
        F0BB35C7DDC0FDEA5D28EBAB300B562BE51EF7514EE4626E8B44E37EBA80F4AF
        A1C2ED54482C7625B9D29607809BD4FB7A06982F0FDE069CC5E71AAEDA4F44B1
        0DC067C011C04C06CD3C354EA2FA58E053A0DB679E2781D3A8681F600530C565
        C1C3492586AFC685F8529E1FFF15B81E7896ED39D5A705C870ABF30173DD4C83
        982430C665C145EA7916F0578882B2ADFD80D3ADF63FD573378D20CAFD1032DF
        D5800988E74C32300ACA164DE7F337C0AB8E09FA026703597E70180324C5F11E
        FB9558E33AD8E73AE07BBE6FB41622F21DB7F75A600870BEC48351708AEA38CF
        A1DC74A628DB823B494163022CD3C4452DB1DA672AB730720F1534DB5E6D7CD0
        34FE065459834EA1723F311A2F21DE67646642B6EE5046F46C8EABA0B5840747
        5A7D25C8DE5346CBA64929A3D8B8DAF101132C93AC9434993ED816A26086D65E
        C5E013F9859422696F93D5FF1D6022AD3E3EC9BD3696DCE213AD229D8E3CDD19
        2173E4E89F65563248F88CDFA0893B490737B2CB31C0F057918FF2D900E58AA8
        9C4D31073928C9C82665E94169E658530C6C899153F3E4B9462E2277401AFD37
        E535B3AF1771DE6E72ABB046495A95E96D21D5AE6D0549F81358403CE5503049
        4A91FC7A8E9514F2214AB6184BA7AD95B95669B670AFD5FE323F5C4C453CC782
        52F4BDA7C999461AACB903CF24A6E8EC4DC7EFB0FAD4292ED4E5D6E2024AAE49
        8AD6FC7CF71FB74BABC0E8C5ED5863757E0DF8025848EC67A19065FEF6420E5F
        1E5DA75E9C9E054182F56695CF9881FCAD4F93938C1CEF50B0933CF908B734AB
        F2EF97B4788B8332CA18AD397E7004776B1BA9E44E2ED69633E836227B44C175
        EACF9302B8ACD2F2AFE7811FF9DF7292765EEDC6E7AABF649165CC245B43B6FF
        3CF5BC23CD90167A3915B81C981B3241526588264EF8905230C93A70197DBA51
        A5C38111FC739CA2BD0FCDC74C213098D41145C1149DBC2FD1C69CDB41EE2B66
        0957AB22381932773FD68326E535271565185918231A3354A8CBDAFEFECCEB43
        790D3228E27CF7A9E7C7743D58C7AB897246F244555504317E293FEEF99CDEF6
        B1EE6B88A05C094B2C73B7F3816DF239EA7979C454D7C980C83920117F15179C
        8A30DF2AABA23FA0E4DF4313CFE7F1F15D45A87E915D43C7F7AB6A522CD1C2F2
        F002DE3C887CC45B0BDF73F16646B4F1C7DB1DE7E6563E6F55E55410519772D1
        97026F5BFF4F53D6EB62BFFAA0EBB7D1F4810CB94F14BAD5B2DC5EFADEC89829
        CE2E6E67314F1B19AB95F353B0D91C58A8E45C6EE38DFC4FD8FF4CE6CB7C0CE5
        727423230FF2AE479F51D6C7B93C3A813ED64725F64AC7E129AEC8E29FE0D59C
        910ABFBC1C449CB554D2D0CD001E0BC5B237909CA38A7CE73272E35AA5DC2E2A
        5C55E805E61DC0C38EA2F20D160CEBC8A5ADAAA497059DCB6B8D72EBBA2DC122
        F7168BE40BBA021ECE6099C11CEB92769561FC225B6ECB96BAFCAD500575BE9C
        CA63E77875000A926A9EA35FE099F87FB944F70BA411ACFDFAF3EACCE35637F2
        B0BFDB2ABD62C9DF020C009946633A8EAB94390000000049454E44AE426082}
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
      Left = 597
      Top = 4
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
        702E6969643A3433384531453735453238323131453239453939383435423344
        3532464433362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A343338453145373645323832313145323945393938343542334435324644
        3336223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3433384531453733453238323131
        453239453939383435423344353246443336222073745265663A646F63756D65
        6E7449443D22786D702E6469643A343338453145373445323832313145323945
        3939383435423344353246443336222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB3CF7EBF000004DB4944415478DABC99
        7B6C4E671CC74FEBD45E14DBAC96BACCA59B8545C622D12C337625143316A218
        D98265461762D125241244828D2DCDFA07B1D18D4DCC652386B86C82AD8B5135
        9DFB6553D5990D75ABF2FDCDF7243F4F9E73E9FBBEFC924FDE739EF39CF3FCCE
        737EB7E779539C55479C04E461D011B4024F824CB65F04A5E04FF03B381AEF00
        6E9CF70D04AF831EA05948DFCB601B5807BE06E76A33504A2D66F0213011E482
        D601FD6A40AACFB56B6029F804EC4DA682A3C047A0B16ABB0936831D601F2803
        FF51C186FCEC9DC133A037DBB4CCE30B27A4603AF812F4556DA2CC7C7EB2F288
        B3DF90E6301EBCACDA0F83E160573C0A8AC1EF062D795E053E009F3A89493FBE
        A036139980EF6C9DFD6CE50950A294DBC0B644951359438F2F506D6BC188A80A
        A6D1AE9AF07C31E805FE729227D7C1BB860D7E0E9E8DA2E08F2083C71FD34192
        21B69036CF78FE4F6A6CAB8262C45D792CB3F87E12676D2828B4B42F6684B8E3
        138EB3CCCF49242B54B2D37906E06B11076FCE70920D627CCE4E500C2EB14F2E
        63A038C824506DF972CF29475A6B2AB8484D777F1A73987400F91CDC26FF822F
        401E680FF6B33DCB92FE5A80533CAE008FEA4FDC54297720A27213996F7303FA
        48607F0FFC01A684D8FE696502A2CFABBA637FD5313F827232D81C4BBBA4AF15
        0CE65AB28C17B9EEF3DCA9EA78AC5670B89ADAD521CABD08661A6DD3411BD009
        BC019EA62D8FA33D9B72D3E7D9159EED41722493B9FC0CD96C5C1921547C65B4
        0D00ABD4F918563AC79997ABAD19CC5F7E60669178FC924BCF49E3C592086556
        53753EC9504E643B98E1D9501CB2433BA1CB10E1C989909BDF31CEE75AFA4881
        FA0828623EFF075C2555FCBD1030C61EDE23E55D3357E55BAFBA089219CA392E
        84F4CD4D20A89753C10C5795E90E350F928DCEFD912AFEC6520D838DDDC341EB
        D462A95147773CA32E3C064E06DCF838EDCBE543D288BCE8F701F7497A1BC2B4
        17E342EB7C48A1FCFF4CBA5C7979D2961545D040BD7DAE1D03DD8CE7E922C4CB
        10274394ABAF1CB732D5786056C8D4D758CECB39335221CF5621CB9365C6F9E4
        903124ECD5E3F1A954CE9817D97B86DCFC80C598F3B9E690670D0337784D0659
        0E06ABFE656C0B926C755CEA72BA8B590776E54C1CF7B9F986C5560A5809AF61
        AA92B2AD3B18E95524946A56E6613288BF122FB778DE54A40AD5690155747D55
        4635569EFF36F11389992F04BCB8FEBC1D792C35C115AF58F846751A6996DD16
        1B2DE4808722CCC812D00EFC16A1EF67EAB8405733E586312FF27980D72E0BAA
        FD1C78080B883D3497630CE8B358A48E88B8DD21F6FB94E71CCCE97755D499C6
        CAED2D1F45BFA5530DB25CAB1B50EB0549265FCC73C257C026B3B29580FDA13A
        5FC8AD0BC7525E8D0F584EC6233F2BE5D67BCAD94A6F29447F51E7BBE891A624
        6B8DDC80E3B5503B6143C3D6C5CFAB95585DDADAE07B909BB3E8385D545B77B3
        4AB229789571ED92910D6491FD6092941B0D0E32B7EBF2ECD7A87B33255C57FC
        ADDA64112F1E352181AA27879FB4D0A868FA7017ADD6DB6F19F4E41CA3FD2C77
        A336321C9CF1B9BF111DAD17D3A8E974A58CBBC5896E60E6B1BCB7CDF82DC6AD
        32A5683A63604B553A99B2805F23293BAC5EAD289FF94D96E3F1480DD3EA82A0
        598B57415D20C8DAF735AE91D323DCB3857B8C45DC41882C2909FE0DD186C9BD
        392B97980AD895AC350F59761A22CB6D010600366217C325081BDD0000000049
        454E44AE426082}
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
      Top = 4
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
        702E6969643A3237463942453631453238323131453238383933383533304243
        3643463530362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A323746394245363245323832313145323838393338353330424336434635
        3036223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3237463942453546453238323131
        453238383933383533304243364346353036222073745265663A646F63756D65
        6E7449443D22786D702E6469643A323746394245363045323832313145323838
        3933383533304243364346353036222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E2C4D6F47000004E44944415478DAB459
        7988575514FECD73CB9A512C2D236B7450D4C8254525D7C12C30C18DDC925113
        9242C952C47112973FC4052C95122B484DC71197B29219B3C0724C5C835C2810
        15975CCAD1B1658C5CBF337D570E9777EF7BEFF7FBF5C1C7DCF77EF7DD77DEB9
        F79EF39D3B39A96D275319E021B023980FB6009F0403F022788E3C0EFE9EEE0B
        EAA6F9DC4BE048B00F5810D1F73258096E033F076B92BC282781071F04A78363
        C1B69E7E776BC70DC715703DB80C3C934D0347832BC066EADE6DF05B702F7804
        FC05FC13BC03E671DA9F05BBD0E379EA59E953022ECED4C0FAFCE211EA9E18B3
        1C2C072FC5F4BE185708BE090E50F70F8263C093E918F830B80F6CC36B593B33
        C1F7539961303FB025AFFF05FB82FBC33A078E41647A8E29E37680ADB3609CE0
        4BAEE1956A96C4112F2631F007F071B6578303193A7C9800AE238745F415AF4D
        E6A633F85A39C41B66BE039F60FB3D705A4CCF0CE3F409FE624889C2BBE0553A
        21454F4A3CBDE1F2E0EB603FB62B131827F84DB5AF25786E0D1D61D6FDC7AE29
        6EACD65815F87CCC173CC7716EA87BD71937BBC71C431CB1876D89B33DC20C5C
        02D661FB55F066C4A0031872F6323857ABDFCC7ADDCF25D335869163547BAD6D
        60537012DB47C1AF2206FB08FC06ECE0C91EC6A3B2640E81F322C63C0F7EC876
        5BE37D63E050D5B13862A032F035756D84403D75AF6188C173C1851163CFB1F6
        C37D038BD457947B0698CFB467F001D89EED26EA7E0BA63389A75BAC8F2F8AD8
        6866F6448CD415031B71A10B3EF33C5C607DE102700A379420D7121682B34C93
        65EAB74FB8215DD8A9A45CA118D85B4DCF51CF832B545BBC3CDBFAFD574AABCB
        2139FA156E28137B6778DE53A9DA9D024E87C1CF8E87E48B07A9EBE9217D8A19
        E0854B437E9F65E563177E62F0AE5D2A0155B0493FC71C0F7556EDC3945636EE
        5082DD66DB4685F26C8708A17BC1449740E5DC3F98A25CE2414BA4747097E1C6
        A095A7AFB12337B0C2814B09374A338DB95E1CB7DCC80954D4CF63FC0A43956A
        3F9A81813A14DD8C28C66A3F28E0EE13345031CDC669D5EE95A671F55538F36D
        484173FEBDAA0D143CE378E00817BFA09D4EE609304A2D95031E7DD95ED53EE7
        02AA08F3F2A71D0FD55016E95C9CAC7AFC4F8C186CF0F4EDA7DAC703C61CB3BB
        86781E2C51ED8E96C151D8ADA6AD8A29D28542FEFD07DC65727129FFB66631EE
        CA9313D5F5781940299A30F4616CEDADEEBD0CDE72F4CF5515E417A2884C55D7
        5CAD09F16637CF4B17B1BAD3D84CB97E9E02249F5335D0EAF706B8CA33F652A5
        E2E5F9DDBAEC2C534A45DCFCBD67A0A93C1D888B1A16559B234290497172A6F3
        94ADA8A75975820FCBB9E3B772ADB8600AA28208E3049FAAF64457E15E421965
        D6C0D018DE1135FE02C34F3E23C229E6EB8A988745C54ACC56F0A8C479B27040
        FDC10521B22ADB18CE9910FC4D7555ED2BDCFBAA9CF90E37C5FF8522659CD918
        D551270BB2A67A2A2367B2CA6A9865E3E65BEB6E2CA55CACA30F51D69D944818
        079EB04EB9D245771AA2CB8741AEEC1278063AC5BCB89DD7A2943731388F5375
        475C484CDCC85AB98B49655CEFE5991E60BEC520AA3FA89AE72F3FF2B0E92277
        AC08D307C047E8ADAE94F82D436A9CA9D93A614D3170BECD14D7C4A1988D810D
        AC3A599705A534EE503C9591FC94DFE44B8991FDAD72D3855D3C5E2B653A4C20
        8332FB37442B8A05599F8F716A4D0176855AF3842A3913E39E000300FC4D1C17
        703A52D50000000049454E44AE426082}
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
    Version = '2.5.4.1'
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
    Left = 528
    Top = 212
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
    Left = 328
    Top = 264
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
      Size = 80
    end
    object qrcontaspagarNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 40
    end
    object qrcontaspagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 240
    end
    object qrcontaspagarC: TStringField
      FieldName = 'C'
      Size = 4
    end
    object qrcontaspagarE: TStringField
      FieldName = 'E'
      Size = 4
    end
    object qrcontaspagarFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontaspagarESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 80
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
    object qrcontaspagarVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontaspagarVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontaspagarLIQUIDO: TBCDField
      FieldName = 'LIQUIDO'
      Origin = 'LIQUIDO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontaspagarDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontaspagarACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontaspagarCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object qrcontaspagarCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
  end
  object dscontaspagar: TDataSource
    DataSet = qrcontaspagar
    Left = 432
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 216
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
    Left = 400
    Top = 240
    Bitmap = {
      494C01010500090014000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 280
    Top = 264
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
      Size = 80
    end
    object qrgradeUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
      Size = 80
    end
    object qrgradeUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
      Size = 80
    end
    object qrgradeTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 280
    end
    object qrgradeFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 280
    end
    object qrgradeN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 40
    end
    object qrgradePARCELA: TStringField
      FieldName = 'PARCELA'
    end
    object qrgradeSERIE: TStringField
      FieldName = 'SERIE'
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
    object qrgradeDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrgradeMULTA: TBCDField
      FieldName = 'MULTA'
      Origin = 'MULTA'
      Precision = 18
      Size = 2
    end
    object qrgradeJUROS: TBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_DOCUMENTO: TBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Origin = 'VALOR_DOCUMENTO'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_PARCELA: TBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_BAIXA: TBCDField
      FieldName = 'VALOR_BAIXA'
      Origin = 'VALOR_BAIXA'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_ADIANTAMENTO: TBCDField
      FieldName = 'VALOR_ADIANTAMENTO'
      Origin = 'VALOR_ADIANTAMENTO'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_AUTORIZADO: TBCDField
      FieldName = 'VALOR_AUTORIZADO'
      Origin = 'VALOR_AUTORIZADO'
      Precision = 18
      Size = 2
    end
    object qrgradeVALOR_PAGAR: TBCDField
      FieldName = 'VALOR_PAGAR'
      Origin = 'VALOR_PAGAR'
      Precision = 18
      Size = 2
    end
  end
end
