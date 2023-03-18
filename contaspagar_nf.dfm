object frmcontaspagar_nf: Tfrmcontaspagar_nf
  Left = 271
  Top = 126
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NF - Visuzalia'#231#227'o de Itens da Nota Fiscal'
  ClientHeight = 479
  ClientWidth = 980
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
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 41
    Width = 980
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 383
    Width = 980
    Height = 3
    Align = alBottom
  end
  object Panel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
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
    FullHeight = 41
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 144
      Top = 12
      Width = 26
      Height = 13
      Caption = 'Data:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 272
      Top = 12
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 70
      Top = 8
      Width = 57
      Height = 21
      DataField = 'NUM_NOTA'
      DataSource = dsnota
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 81
      Height = 21
      DataField = 'DATA_EMISSAO'
      DataSource = dsnota
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 344
      Top = 8
      Width = 601
      Height = 21
      DataField = 'fornecedor'
      DataSource = dsnota
      TabOrder = 2
    end
  end
  object wwDBGrid1: TXDBGrid
    Left = 0
    Top = 44
    Width = 980
    Height = 339
    Align = alClient
    DataSource = dsitem
    GridStyle.VisualStyle = vsXPStyle
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
    TabOrder = 1
    OnDblClick = wwDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_PRODUTO'
        Title.Caption = 'C'#243'd. Produto'
        Visible = True
        Width = 71
      end
      item
        Expanded = False
        FieldName = 'CODIGO_BARRAS'
        Title.Caption = 'C'#243'd. de Barras'
        Visible = True
        Width = 104
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
        Width = 250
      end
      item
        Expanded = False
        FieldName = 'DESC_UNIDADE'
        Title.Caption = 'Un.'
        Visible = True
        Width = 35
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Qtde'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_UNI'
        Title.Caption = 'Vlr Compra'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_DESC'
        Title.Caption = 'Desconto'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Title.Caption = 'Total do Item'
        Visible = True
        Width = 86
      end
      item
        Expanded = False
        FieldName = 'NCM_SH'
        Title.Caption = 'Ncm'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'P. Venda'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA2'
        Title.Caption = 'P. Venda 2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERC_ICMS'
        Title.Caption = 'P. Icms'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMS'
        Title.Caption = 'B. Icms'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_ICMS'
        Title.Caption = 'V. Icms'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERC_IPI'
        Title.Caption = 'P. Ipi'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_IPI'
        Title.Caption = 'Base Ipi'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_IPI'
        Title.Caption = 'V. Ipi'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_VALIDADE'
        Title.Caption = 'D. Validade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_FABRICACAO'
        Title.Caption = 'Data Fabrica'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE_MED'
        Title.Caption = 'Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARG_LUCRO'
        Title.Caption = 'Margem de Lucro'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ALIC_ICMS_ST'
        Title.Caption = 'A. Icms ST'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMS_ST'
        Title.Caption = 'Base Icms ST'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_ICMS_ST'
        Title.Caption = 'V. Icms ST'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'IMOBILZ'
        Title.Caption = 'Imob.'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_PIS'
        Title.Caption = 'Base Pis'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERC_PIS'
        Title.Caption = 'Perc. Pis'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_PIS'
        Title.Caption = 'V. Pis'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_COFINS'
        Title.Caption = 'Base Cofins'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERC_COFINS'
        Title.Caption = 'Perc. Cofins'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_COFINS'
        Title.Caption = 'Valor Cofins'
        Visible = True
      end>
  end
  object Panel2: TAdvPanel
    Left = 0
    Top = 386
    Width = 980
    Height = 93
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
    FullHeight = 93
    object Label4: TLabel
      Left = 14
      Top = 3
      Width = 65
      Height = 13
      Caption = 'Base C. ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 88
      Top = 3
      Width = 52
      Height = 13
      Caption = 'Valor ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label54: TLabel
      Left = 159
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Base C. Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label61: TLabel
      Left = 238
      Top = 3
      Width = 58
      Height = 13
      Caption = 'Valor Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label62: TLabel
      Left = 316
      Top = 27
      Width = 90
      Height = 13
      Caption = 'Total dos Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 30
      Top = 45
      Width = 26
      Height = 13
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 100
      Top = 45
      Width = 34
      Height = 13
      Caption = 'Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 164
      Top = 45
      Width = 64
      Height = 13
      Caption = 'Outras Desp.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 243
      Top = 45
      Width = 41
      Height = 13
      Caption = 'Valor IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 439
      Top = 27
      Width = 45
      Height = 13
      Caption = 'Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 535
      Top = 27
      Width = 65
      Height = 13
      Caption = 'Total da Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 16
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_CALCULO_ICMS'
      Alignment = taLeftJustify
      TabOrder = 0
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit2: TRzDBNumericEdit
      Left = 88
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_ICMS'
      Alignment = taLeftJustify
      TabOrder = 1
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit3: TRzDBNumericEdit
      Left = 160
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_CALC_ICMS_SUBST'
      Alignment = taLeftJustify
      TabOrder = 2
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit4: TRzDBNumericEdit
      Left = 232
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_ICMS_SUBST'
      Alignment = taLeftJustify
      TabOrder = 3
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit5: TRzDBNumericEdit
      Left = 312
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_TOTAL_PRODUTOS'
      Alignment = taLeftJustify
      TabOrder = 4
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit6: TRzDBNumericEdit
      Left = 16
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_FRETE'
      Alignment = taLeftJustify
      TabOrder = 5
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit7: TRzDBNumericEdit
      Left = 88
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_SEGURO'
      Alignment = taLeftJustify
      TabOrder = 6
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit8: TRzDBNumericEdit
      Left = 160
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_OUTRAS_DESPESAS'
      Alignment = taLeftJustify
      TabOrder = 7
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit9: TRzDBNumericEdit
      Left = 232
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_IPI'
      Alignment = taLeftJustify
      TabOrder = 8
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit10: TRzDBNumericEdit
      Left = 520
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'TOTAL_NOTA'
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit11: TRzDBNumericEdit
      Left = 424
      Top = 44
      Width = 81
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_DESCONTO'
      Alignment = taLeftJustify
      TabOrder = 10
      DisplayFormat = '###,###,##0.00'
    end
  end
  object bcancelar: TAdvGlowButton
    Left = 821
    Top = 409
    Width = 124
    Height = 48
    Caption = 'ESC | Retornar'
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
    TabOrder = 3
    OnClick = bcancelarClick
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
    Layout = blGlyphLeftAdjusted
  end
  object qrnota: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from notasfiscais')
    Left = 168
    Top = 248
    object qrnotaCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrnotaNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
      Required = True
    end
    object qrnotaSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Origin = 'SERIE_NF'
      Size = 15
    end
    object qrnotaCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Origin = 'CFOP_NOTA'
      Size = 5
    end
    object qrnotaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qrnotaCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
    end
    object qrnotaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 70
    end
    object qrnotaDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qrnotaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object qrnotaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qrnotaUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object qrnotaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qrnotaOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object qrnotaMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object qrnotaANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qrnotaCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Origin = 'CHAVE_NFE'
      Size = 44
    end
    object qrnotaPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Origin = 'PROTOCOLO_NFE'
      Size = 30
    end
    object qrnotaTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'BASE_CALCULO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaBASE_CALC_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBST'
      Origin = 'BASE_CALC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_ICMS_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'VALOR_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_OUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      Origin = 'VALOR_OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_TOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'VALOR_TOTAL_PRODUTOS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_TOTAL_ITENS_NOTA: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      Origin = 'VALOR_TOTAL_ITENS_NOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaVLR_ICMS_GARANTIDO: TFMTBCDField
      FieldName = 'VLR_ICMS_GARANTIDO'
      Origin = 'VLR_ICMS_GARANTIDO'
      Precision = 18
      Size = 2
    end
    object qrnotacod_pagto: TIntegerField
      FieldName = 'cod_pagto'
      Origin = '"cod_pagto"'
    end
    object qrnotaTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
    object qrnotaENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Origin = 'ENDERECO_CLI_FORN'
      Size = 44
    end
    object qrnotaEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
      Origin = 'END_NUM_CLIENTE'
    end
    object qrnotaCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 7
    end
    object qrnotaCEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      Origin = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object qrnotaBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Origin = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object qrnotaTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Size = 1
    end
    object qrnotaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object qrnotaCIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Origin = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object qrnotaUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Origin = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object qrnotaDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      Origin = 'DESC_PAGTO'
      Size = 70
    end
    object qrnotaVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      Precision = 18
      Size = 2
    end
    object qrnotapagamento: TStringField
      FieldName = 'pagamento'
      Origin = '"pagamento"'
      Size = 30
    end
    object qrnotaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qrnotaEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Origin = 'EMITENTE'
      Size = 1
    end
    object qrnotaVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PIS_ST: TFMTBCDField
      FieldName = 'VALOR_PIS_ST'
      Origin = 'VALOR_PIS_ST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_COFIS_ST: TFMTBCDField
      FieldName = 'VALOR_COFIS_ST'
      Origin = 'VALOR_COFIS_ST'
      Precision = 18
      Size = 2
    end
    object qrnotaPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qrnotaSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Origin = 'SUB_SERIE'
      Size = 10
    end
    object qrnotaTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      Origin = 'TRANSP_NOME'
      Size = 60
    end
    object qrnotaTRANSP_PLACA: TStringField
      FieldName = 'TRANSP_PLACA'
      Origin = 'TRANSP_PLACA'
      Size = 10
    end
    object qrnotaTRANSP_PLACAUF: TStringField
      FieldName = 'TRANSP_PLACAUF'
      Origin = 'TRANSP_PLACAUF'
      Size = 2
    end
    object qrnotaTRANSP_IE: TStringField
      FieldName = 'TRANSP_IE'
      Origin = 'TRANSP_IE'
      Size = 25
    end
    object qrnotaTRANSP_CNPJ: TStringField
      FieldName = 'TRANSP_CNPJ'
      Origin = 'TRANSP_CNPJ'
      Size = 25
    end
    object qrnotaTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      Origin = 'TRANSP_ENDERECO'
      Size = 40
    end
    object qrnotaTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      Origin = 'TRANSP_CIDADE'
      Size = 30
    end
    object qrnotaTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      Origin = 'TRANSP_UF'
      Size = 2
    end
    object qrnotaTRANSP_QTDE: TFMTBCDField
      FieldName = 'TRANSP_QTDE'
      Origin = 'TRANSP_QTDE'
      Precision = 18
      Size = 3
    end
    object qrnotaTRANSP_ESPECIE: TStringField
      FieldName = 'TRANSP_ESPECIE'
      Origin = 'TRANSP_ESPECIE'
    end
    object qrnotaTRANSP_MARCA: TStringField
      FieldName = 'TRANSP_MARCA'
      Origin = 'TRANSP_MARCA'
    end
    object qrnotaTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      Origin = 'TRANSP_NUMERO'
    end
    object qrnotaTRANSP_PESOBRUTO: TFMTBCDField
      FieldName = 'TRANSP_PESOBRUTO'
      Origin = 'TRANSP_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object qrnotaTRANSP_PESOLIQUIDO: TFMTBCDField
      FieldName = 'TRANSP_PESOLIQUIDO'
      Origin = 'TRANSP_PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object qrnotaOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 60
    end
    object qrnotaOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 60
    end
    object qrnotaOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'OBS3'
      Size = 60
    end
    object qrnotaOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'OBS4'
      Size = 60
    end
    object qrnotaOBS5: TStringField
      FieldName = 'OBS5'
      Origin = 'OBS5'
      Size = 60
    end
    object qrnotaOBS6: TStringField
      FieldName = 'OBS6'
      Origin = 'OBS6'
      Size = 60
    end
    object qrnotaOBS7: TStringField
      FieldName = 'OBS7'
      Origin = 'OBS7'
      Size = 60
    end
    object qrnotaOBS8: TStringField
      FieldName = 'OBS8'
      Origin = 'OBS8'
      Size = 60
    end
    object qrnotaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object qrnotaITENS: TIntegerField
      FieldName = 'ITENS'
      Origin = 'ITENS'
    end
    object qrnotaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object qrnotaNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NOTA_FISCAL'
      Size = 6
    end
    object qrnotaICMS_ISENTO: TFMTBCDField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object qrnotaICMS_OUTRAS: TFMTBCDField
      FieldName = 'ICMS_OUTRAS'
      Origin = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object qrnotaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Origin = 'DESCONTO_INCIDENTE'
    end
    object qrnotaITEM_FRETE_VALOR: TFMTBCDField
      FieldName = 'ITEM_FRETE_VALOR'
      Origin = 'ITEM_FRETE_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_FRETE_BASE: TFMTBCDField
      FieldName = 'ITEM_FRETE_BASE'
      Origin = 'ITEM_FRETE_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_FRETE_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Origin = 'ITEM_FRETE_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_FRETE_ICMS: TFMTBCDField
      FieldName = 'ITEM_FRETE_ICMS'
      Origin = 'ITEM_FRETE_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SEGURO_VALOR: TFMTBCDField
      FieldName = 'ITEM_SEGURO_VALOR'
      Origin = 'ITEM_SEGURO_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SEGURO_BASE: TFMTBCDField
      FieldName = 'ITEM_SEGURO_BASE'
      Origin = 'ITEM_SEGURO_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SEGURO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Origin = 'ITEM_SEGURO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SEGURO_ICMS: TFMTBCDField
      FieldName = 'ITEM_SEGURO_ICMS'
      Origin = 'ITEM_SEGURO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_PIS_VALOR: TFMTBCDField
      FieldName = 'ITEM_PIS_VALOR'
      Origin = 'ITEM_PIS_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_PIS_BASE: TFMTBCDField
      FieldName = 'ITEM_PIS_BASE'
      Origin = 'ITEM_PIS_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_PIS_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Origin = 'ITEM_PIS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_PIS_ICMS: TFMTBCDField
      FieldName = 'ITEM_PIS_ICMS'
      Origin = 'ITEM_PIS_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_COMPLEMENTO_VALOR: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Origin = 'ITEM_COMPLEMENTO_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_COMPLEMENTO_BASE: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Origin = 'ITEM_COMPLEMENTO_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Origin = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_COMPLEMENTO_ICMS: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Origin = 'ITEM_COMPLEMENTO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SERVICO_VALOR: TFMTBCDField
      FieldName = 'ITEM_SERVICO_VALOR'
      Origin = 'ITEM_SERVICO_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SERVICO_BASE: TFMTBCDField
      FieldName = 'ITEM_SERVICO_BASE'
      Origin = 'ITEM_SERVICO_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SERVICO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Origin = 'ITEM_SERVICO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SERVICO_ICMS: TFMTBCDField
      FieldName = 'ITEM_SERVICO_ICMS'
      Origin = 'ITEM_SERVICO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_OUTRAS_VALOR: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Origin = 'ITEM_OUTRAS_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_OUTRAS_BASE: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_BASE'
      Origin = 'ITEM_OUTRAS_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_OUTRAS_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Origin = 'ITEM_OUTRAS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_OUTRAS_ICMS: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Origin = 'ITEM_OUTRAS_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_ESPECIAL_TOTAL: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Origin = 'ITEM_ESPECIAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_ESPECIAL_VALOR: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Origin = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
      Origin = 'BASEICMS_PRODUTOS'
    end
    object qrnotaCONF_ITEM_ESPECIAL: TFMTBCDField
      FieldName = 'CONF_ITEM_ESPECIAL'
      Origin = 'CONF_ITEM_ESPECIAL'
      Precision = 18
      Size = 3
    end
    object qrnotaCREDITO_ICMS: TFMTBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object qrnotaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 1
    end
    object qrnotaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
      Origin = 'INTEGRACAO'
    end
    object qrnotaAPROVEITA_CREDITO_ICMS: TStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Origin = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object qrnotaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrnotaICMSRETIDO: TFMTBCDField
      FieldName = 'ICMSRETIDO'
      Origin = 'ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object qrnotaPERC_ICMSRETIDO: TFMTBCDField
      FieldName = 'PERC_ICMSRETIDO'
      Origin = 'PERC_ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object qrnotaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 5
    end
    object qrnotaCODREMETENTE: TIntegerField
      FieldName = 'CODREMETENTE'
      Origin = 'CODREMETENTE'
    end
    object qrnotaREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Origin = 'REMETENTE'
      Size = 50
    end
    object qrnotaVALOR_MERCADORIAS: TFMTBCDField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = 'VALOR_MERCADORIAS'
      Precision = 18
      Size = 2
    end
    object qrnotaCONF_BASEICMS: TFMTBCDField
      FieldName = 'CONF_BASEICMS'
      Origin = 'CONF_BASEICMS'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_VALORICMS: TFMTBCDField
      FieldName = 'CONF_VALORICMS'
      Origin = 'CONF_VALORICMS'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_BASESUB: TFMTBCDField
      FieldName = 'CONF_BASESUB'
      Origin = 'CONF_BASESUB'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_VALORSUB: TFMTBCDField
      FieldName = 'CONF_VALORSUB'
      Origin = 'CONF_VALORSUB'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_FRETE: TFMTBCDField
      FieldName = 'CONF_FRETE'
      Origin = 'CONF_FRETE'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_SEGURO: TFMTBCDField
      FieldName = 'CONF_SEGURO'
      Origin = 'CONF_SEGURO'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_OUTRAS: TFMTBCDField
      FieldName = 'CONF_OUTRAS'
      Origin = 'CONF_OUTRAS'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_IPI: TFMTBCDField
      FieldName = 'CONF_IPI'
      Origin = 'CONF_IPI'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_DESCONTO: TFMTBCDField
      FieldName = 'CONF_DESCONTO'
      Origin = 'CONF_DESCONTO'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'CONF_TOTALPRODUTOS'
      Origin = 'CONF_TOTALPRODUTOS'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_TOTALNOTA: TFMTBCDField
      FieldName = 'CONF_TOTALNOTA'
      Origin = 'CONF_TOTALNOTA'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_ICMSRETIDO: TFMTBCDField
      FieldName = 'CONF_ICMSRETIDO'
      Origin = 'CONF_ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_ICMSREDITO_PERC: TFMTBCDField
      FieldName = 'CONF_ICMSREDITO_PERC'
      Origin = 'CONF_ICMSREDITO_PERC'
      Precision = 18
      Size = 3
    end
    object qrnotaCONFI_PIS: TFMTBCDField
      FieldName = 'CONFI_PIS'
      Origin = 'CONFI_PIS'
      Precision = 18
      Size = 2
    end
    object qrnotaCONF_COFINS: TFMTBCDField
      FieldName = 'CONF_COFINS'
      Origin = 'CONF_COFINS'
      Precision = 18
      Size = 2
    end
    object qrnotaCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object qrnotaCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
  end
  object qritem: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '    CODIGO_ITEM          ,'
      '    CODIGO_PRODUTO,'
      '    CODIGO_BARRAS  ,'
      '    CODIGO_NOTA     ,'
      '    DESCRICAO        ,'
      '    NCM_SH            ,'
      '    CST                ,'
      '    CFOP        ,'
      '    DESC_UNIDADE ,'
      '    QUANTIDADE    ,'
      '    (VALOR_UNI / FRACAO) AS VALOR_UNI     ,'
      '    VALOR_DESC      ,'
      '    TOTAL_ITEM       ,'
      '    DATA              ,'
      '    BASE_ICMS          ,'
      '    VALOR_ICMS          ,'
      '    VALOR_IPI            ,'
      '    PERC_ICMS             ,'
      '    PERC_IPI               ,'
      '    PRECO_VENDA             ,'
      '    PRECO_VENDA2             ,'
      '    DATA_VALIDADE             ,'
      '    DATA_FABRICACAO            ,'
      '    FRACAO                      ,'
      '    QUANT_FRACIONADA             ,'
      '    LOTE_MED                      ,'
      '    MARG_LUCRO                     ,'
      '    ATIVO                           ,'
      '    BASE_ICMS_ST                     ,'
      '    ALIC_ICMS_ST                      ,'
      '    VALOR_ICMS_ST                      ,'
      '    COD_EMPRESA                         ,'
      '    IMOBILZ                              ,'
      '    BASE_PIS                              ,'
      '    PERC_PIS                               ,'
      '    VALOR_PIS                               ,'
      '    BASE_COFINS                              ,'
      '    PERC_COFINS                               ,'
      '    VALOR_COFINS                               ,'
      '    BASE_IPI                                    ,'
      '    UN_FRACAO                                    ,'
      '    ITEM                                          ,'
      '    CODFORNECEDOR                                  ,'
      '    NUM_NOTA                                        ,'
      '    ICMS_RETIDO                                      ,'
      '    SUBTOTAL        ,'
      '    DESCONTO_P       ,'
      '    ICMS_REDUCAO      ,'
      '    ICMS_VALORRETIDO   ,'
      '    ICMS_ISENTO          ,'
      '    ICMS_NAOTRIBUTADO     ,'
      '    IPI_TIPO            ,'
      '    TIPO                  ,'
      '    FRETE                ,'
      '    OUTRAS                  ,'
      '    SEGURO                 ,'
      '    CLASSIFICACAO_FISCAL  ,'
      '    SUB_PRODUTOS           ,'
      '    ITEM_ESPECIAL_VALOR     ,'
      '    ICMS_OUTRAS              ,'
      '    ALTERA_ITEM               ,'
      '    CREDITO_ICMS               ,'
      '    CREDITO_ICMS_BASE           ,'
      '    PMARGEM                      ,'
      '    PRECO_CUSTO                   ,'
      '    CODLANCAMENTO'
      'FROM NOTASFISCAIS_ITENS')
    Left = 240
    Top = 240
    object qritemCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Origin = 'CODIGO_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qritemCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object qritemCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 13
    end
    object qritemCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      Required = True
    end
    object qritemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qritemNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object qritemCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qritemCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object qritemDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object qritemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object qritemVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      ReadOnly = True
      Precision = 18
    end
    object qritemVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Precision = 18
      Size = 2
    end
    object qritemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Precision = 18
      Size = 2
    end
    object qritemDATA: TDateField
      FieldName = 'DATA'
    end
    object qritemBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object qritemPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object qritemPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object qritemPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object qritemPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 18
      Size = 2
    end
    object qritemDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object qritemDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object qritemFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object qritemQUANT_FRACIONADA: TBCDField
      FieldName = 'QUANT_FRACIONADA'
      Precision = 18
    end
    object qritemLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object qritemMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Precision = 18
      Size = 2
    end
    object qritemATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qritemBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qritemALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qritemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qritemIMOBILZ: TStringField
      FieldName = 'IMOBILZ'
      Size = 1
    end
    object qritemBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object qritemPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object qritemBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object qritemPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object qritemBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object qritemUN_FRACAO: TStringField
      FieldName = 'UN_FRACAO'
      Size = 5
    end
    object qritemITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qritemCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qritemNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
    end
    object qritemICMS_RETIDO: TStringField
      FieldName = 'ICMS_RETIDO'
      Size = 1
    end
    object qritemSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qritemDESCONTO_P: TFMTBCDField
      FieldName = 'DESCONTO_P'
      Precision = 18
      Size = 2
    end
    object qritemICMS_REDUCAO: TFMTBCDField
      FieldName = 'ICMS_REDUCAO'
      Precision = 18
      Size = 2
    end
    object qritemICMS_VALORRETIDO: TFMTBCDField
      FieldName = 'ICMS_VALORRETIDO'
      Precision = 18
      Size = 2
    end
    object qritemICMS_ISENTO: TFMTBCDField
      FieldName = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object qritemICMS_NAOTRIBUTADO: TFMTBCDField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Precision = 18
      Size = 2
    end
    object qritemIPI_TIPO: TStringField
      FieldName = 'IPI_TIPO'
      Size = 25
    end
    object qritemTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qritemFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object qritemOUTRAS: TFMTBCDField
      FieldName = 'OUTRAS'
      Precision = 18
      Size = 2
    end
    object qritemSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Precision = 18
      Size = 2
    end
    object qritemCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 2
    end
    object qritemSUB_PRODUTOS: TFMTBCDField
      FieldName = 'SUB_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object qritemITEM_ESPECIAL_VALOR: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 3
    end
    object qritemICMS_OUTRAS: TFMTBCDField
      FieldName = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object qritemALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
    end
    object qritemCREDITO_ICMS: TFMTBCDField
      FieldName = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object qritemCREDITO_ICMS_BASE: TFMTBCDField
      FieldName = 'CREDITO_ICMS_BASE'
      Precision = 18
      Size = 3
    end
    object qritemPMARGEM: TSingleField
      FieldName = 'PMARGEM'
    end
    object qritemPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object qritemCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 50
    end
  end
  object qrfornecedor: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from fornecedores')
    Left = 384
    Top = 248
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 168
    Top = 296
  end
  object dsitem: TDataSource
    DataSet = qritem
    Left = 240
    Top = 280
  end
  object qrproduto: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from produtos')
    Left = 304
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 128
    object A1: TMenuItem
      Caption = 'Alterar Pre'#231'o Venda'
      OnClick = A1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
