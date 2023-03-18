object frmxloc_LMC: Tfrmxloc_LMC
  Left = 412
  Top = 140
  Width = 724
  Height = 394
  BorderIcons = [biSystemMenu]
  Caption = 'LMC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 44
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 648
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 670
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 658
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        'DATA'
        'NOME')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TXDBGrid
    Left = 0
    Top = 44
    Width = 708
    Height = 311
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    GridStyle.VisualStyle = vsXPStyle
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TANQUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BOMBA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABERTURA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENCERRANTE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COMBUSTIVEL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NR_NOTA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOTAFISCAL1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOTAFISCAL2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOTAFISCAL3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOTAFISCAL4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QUANTNF1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QUANTNF2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QUANTNF3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QUANTNF4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO5'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO6'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO7'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BICO8'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABER_BICO1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABER_BICO2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABER_BICO3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABER_BICO4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABER_BICO5'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABER_BICO6'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABER_BICO7'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ABER_BICO8'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENC_BICO1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENC_BICO2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENC_BICO3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENC_BICO4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENC_BICO5'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENC_BICO6'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENC_BICO7'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENC_BICO8'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'AFER_BICO1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'AFER_BICO2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'AFER_BICO3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'AFER_BICO4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'AFER_BICO5'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'AFER_BICO6'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'AFER_BICO7'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'AFER_BICO8'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QTEVEND_1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QTEVEND_2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QTEVEND_3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QTEVEND_4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QTEVEND_5'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QTEVEND_6'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QTEVEND_7'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'QTEVEND_8'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTALVEND_1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTALVEND_2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTALVEND_3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTALVEND_4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTALVEND_5'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTALVEND_6'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTALVEND_7'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTALVEND_8'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ESTOQ_ABERTURA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ESTOQ_ESCRITURAL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ESTOQ_FECHAMENTO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERDA_SOBRA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'OBSERVACAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PAGINA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ID_BICO1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ID_BICO2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ID_BICO3'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ID_BICO4'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ID_BICO5'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ID_BICO6'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ID_BICO7'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ID_BICO8'
        Visible = True
      end>
  end
  object ds: TDataSource
    DataSet = query
    Left = 424
    Top = 232
  end
  object query: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from LMC')
    Left = 464
    Top = 232
    object queryCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryTANQUE: TIntegerField
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
    end
    object queryBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
    end
    object queryBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 5
    end
    object queryABERTURA: TIntegerField
      FieldName = 'ABERTURA'
      Origin = 'ABERTURA'
    end
    object queryENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Origin = 'ENCERRANTE'
    end
    object queryCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
    end
    object queryDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object queryPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 3
    end
    object queryQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object queryTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object queryNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
    end
    object queryNOTAFISCAL1: TStringField
      FieldName = 'NOTAFISCAL1'
      Origin = 'NOTAFISCAL1'
      Size = 10
    end
    object queryNOTAFISCAL2: TStringField
      FieldName = 'NOTAFISCAL2'
      Origin = 'NOTAFISCAL2'
      Size = 10
    end
    object queryNOTAFISCAL3: TStringField
      FieldName = 'NOTAFISCAL3'
      Origin = 'NOTAFISCAL3'
      Size = 10
    end
    object queryNOTAFISCAL4: TStringField
      FieldName = 'NOTAFISCAL4'
      Origin = 'NOTAFISCAL4'
      Size = 10
    end
    object queryQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
      Origin = 'QUANTNF1'
    end
    object queryQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
      Origin = 'QUANTNF2'
    end
    object queryQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
      Origin = 'QUANTNF3'
    end
    object queryQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
      Origin = 'QUANTNF4'
    end
    object queryBICO1: TIntegerField
      FieldName = 'BICO1'
      Origin = 'BICO1'
    end
    object queryBICO2: TIntegerField
      FieldName = 'BICO2'
      Origin = 'BICO2'
    end
    object queryBICO3: TIntegerField
      FieldName = 'BICO3'
      Origin = 'BICO3'
    end
    object queryBICO4: TIntegerField
      FieldName = 'BICO4'
      Origin = 'BICO4'
    end
    object queryBICO5: TIntegerField
      FieldName = 'BICO5'
      Origin = 'BICO5'
    end
    object queryBICO6: TIntegerField
      FieldName = 'BICO6'
      Origin = 'BICO6'
    end
    object queryBICO7: TIntegerField
      FieldName = 'BICO7'
      Origin = 'BICO7'
    end
    object queryBICO8: TIntegerField
      FieldName = 'BICO8'
      Origin = 'BICO8'
    end
    object queryABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
      Origin = 'ABER_BICO1'
    end
    object queryABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
      Origin = 'ABER_BICO2'
    end
    object queryABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
      Origin = 'ABER_BICO3'
    end
    object queryABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
      Origin = 'ABER_BICO4'
    end
    object queryABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
      Origin = 'ABER_BICO5'
    end
    object queryABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
      Origin = 'ABER_BICO6'
    end
    object queryABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
      Origin = 'ABER_BICO7'
    end
    object queryABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
      Origin = 'ABER_BICO8'
    end
    object queryENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
      Origin = 'ENC_BICO1'
    end
    object queryENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
      Origin = 'ENC_BICO2'
    end
    object queryENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
      Origin = 'ENC_BICO3'
    end
    object queryENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
      Origin = 'ENC_BICO4'
    end
    object queryENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
      Origin = 'ENC_BICO5'
    end
    object queryENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
      Origin = 'ENC_BICO6'
    end
    object queryENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
      Origin = 'ENC_BICO7'
    end
    object queryENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
      Origin = 'ENC_BICO8'
    end
    object queryAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
      Origin = 'AFER_BICO1'
    end
    object queryAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
      Origin = 'AFER_BICO2'
    end
    object queryAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
      Origin = 'AFER_BICO3'
    end
    object queryAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
      Origin = 'AFER_BICO4'
    end
    object queryAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
      Origin = 'AFER_BICO5'
    end
    object queryAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
      Origin = 'AFER_BICO6'
    end
    object queryAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
      Origin = 'AFER_BICO7'
    end
    object queryAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
      Origin = 'AFER_BICO8'
    end
    object queryQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
      Origin = 'QTEVEND_1'
    end
    object queryQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
      Origin = 'QTEVEND_2'
    end
    object queryQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
      Origin = 'QTEVEND_3'
    end
    object queryQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
      Origin = 'QTEVEND_4'
    end
    object queryQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
      Origin = 'QTEVEND_5'
    end
    object queryQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
      Origin = 'QTEVEND_6'
    end
    object queryQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
      Origin = 'QTEVEND_7'
    end
    object queryQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
      Origin = 'QTEVEND_8'
    end
    object queryTOTALVEND_1: TBCDField
      FieldName = 'TOTALVEND_1'
      Origin = 'TOTALVEND_1'
      Precision = 18
      Size = 3
    end
    object queryTOTALVEND_2: TBCDField
      FieldName = 'TOTALVEND_2'
      Origin = 'TOTALVEND_2'
      Precision = 18
      Size = 3
    end
    object queryTOTALVEND_3: TBCDField
      FieldName = 'TOTALVEND_3'
      Origin = 'TOTALVEND_3'
      Precision = 18
      Size = 3
    end
    object queryTOTALVEND_4: TBCDField
      FieldName = 'TOTALVEND_4'
      Origin = 'TOTALVEND_4'
      Precision = 18
      Size = 3
    end
    object queryTOTALVEND_5: TBCDField
      FieldName = 'TOTALVEND_5'
      Origin = 'TOTALVEND_5'
      Precision = 18
      Size = 3
    end
    object queryTOTALVEND_6: TBCDField
      FieldName = 'TOTALVEND_6'
      Origin = 'TOTALVEND_6'
      Precision = 18
      Size = 3
    end
    object queryTOTALVEND_7: TBCDField
      FieldName = 'TOTALVEND_7'
      Origin = 'TOTALVEND_7'
      Precision = 18
      Size = 3
    end
    object queryTOTALVEND_8: TBCDField
      FieldName = 'TOTALVEND_8'
      Origin = 'TOTALVEND_8'
      Precision = 18
      Size = 3
    end
    object queryESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
      Origin = 'ESTOQ_ABERTURA'
    end
    object queryESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
      Origin = 'ESTOQ_ESCRITURAL'
    end
    object queryESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
      Origin = 'ESTOQ_FECHAMENTO'
    end
    object queryPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
      Origin = 'PERDA_SOBRA'
    end
    object queryOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
    object queryPAGINA: TIntegerField
      FieldName = 'PAGINA'
      Origin = 'PAGINA'
    end
    object queryID_BICO1: TStringField
      FieldName = 'ID_BICO1'
      Origin = 'ID_BICO1'
      Size = 2
    end
    object queryID_BICO2: TStringField
      FieldName = 'ID_BICO2'
      Origin = 'ID_BICO2'
      Size = 2
    end
    object queryID_BICO3: TStringField
      FieldName = 'ID_BICO3'
      Origin = 'ID_BICO3'
      Size = 2
    end
    object queryID_BICO4: TStringField
      FieldName = 'ID_BICO4'
      Origin = 'ID_BICO4'
      Size = 2
    end
    object queryID_BICO5: TStringField
      FieldName = 'ID_BICO5'
      Origin = 'ID_BICO5'
      Size = 2
    end
    object queryID_BICO6: TStringField
      FieldName = 'ID_BICO6'
      Origin = 'ID_BICO6'
      Size = 2
    end
    object queryID_BICO7: TStringField
      FieldName = 'ID_BICO7'
      Origin = 'ID_BICO7'
      Size = 2
    end
    object queryID_BICO8: TStringField
      FieldName = 'ID_BICO8'
      Origin = 'ID_BICO8'
      Size = 2
    end
    object queryVENDAS_DIA: TLargeintField
      FieldName = 'VENDAS_DIA'
      Origin = 'VENDAS_DIA'
    end
    object queryRECEBIDO_DIA: TLargeintField
      FieldName = 'RECEBIDO_DIA'
      Origin = 'RECEBIDO_DIA'
    end
    object queryDISPONIVEL_DIA: TLargeintField
      FieldName = 'DISPONIVEL_DIA'
      Origin = 'DISPONIVEL_DIA'
    end
    object queryTOTALVENDAS_DIA: TBCDField
      FieldName = 'TOTALVENDAS_DIA'
      Origin = 'TOTALVENDAS_DIA'
      Precision = 18
      Size = 3
    end
    object queryTOTALVENDAS_ACU: TBCDField
      FieldName = 'TOTALVENDAS_ACU'
      Origin = 'TOTALVENDAS_ACU'
      Precision = 18
      Size = 3
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
    end
  end
  object qrCombustivel: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from produtos')
    Left = 520
    Top = 224
    object qrCombustivelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrCombustivelCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object qrCombustivelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qrCombustivelABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Origin = 'ABREVIADO'
      Size = 29
    end
    object qrCombustivelPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object qrCombustivelFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object qrCombustivelICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qrCombustivelIPI_IRPJ: TBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object qrCombustivelOUTROS_IMPOSTOS: TBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object qrCombustivelDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object qrCombustivelCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      Size = 6
    end
    object qrCombustivelSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object qrCombustivelCUSTO_MEDIO: TBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object qrCombustivelDESCONTO_MAXIMO: TBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
    end
    object qrCombustivelCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
    end
    object qrCombustivelCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
    end
    object qrCombustivelNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      Size = 40
    end
    object qrCombustivelNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      Size = 40
    end
    object qrCombustivelNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Origin = 'NOME_MARCA'
      Size = 40
    end
    object qrCombustivelNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      Size = 70
    end
    object qrCombustivelCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'CODIGO_FORNECEDORES'
    end
    object qrCombustivelFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qrCombustivelESTOQUE_ATUAL: TBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      Precision = 18
    end
    object qrCombustivelESTOQUE_VENDIDO: TBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'ESTOQUE_VENDIDO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object qrCombustivelVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'VALOR_ESTOQUE_ATUAL'
      Precision = 18
      Size = 6
    end
    object qrCombustivelVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      Precision = 18
      Size = 6
    end
    object qrCombustivelESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
    end
    object qrCombustivelESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'ESTOQUE_MAXIMO'
    end
    object qrCombustivelDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object qrCombustivelUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object qrCombustivelVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 18
      Size = 6
    end
    object qrCombustivelULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
    end
    object qrCombustivelVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      Precision = 18
      Size = 6
    end
    object qrCombustivelSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
    end
    object qrCombustivelCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object qrCombustivelLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 50
    end
    object qrCombustivelAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 500
    end
    object qrCombustivelESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Origin = 'ESP_COD_AUX'
      Size = 50
    end
    object qrCombustivelGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
    end
    object qrCombustivelBALANCA: TStringField
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      Size = 1
    end
    object qrCombustivelETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 1
    end
    object qrCombustivelATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qrCombustivelREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 15
    end
    object qrCombustivelCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrCombustivelDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object qrCombustivelPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object qrCombustivelPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object qrCombustivelFONETICO: TStringField
      FieldName = 'FONETICO'
      Origin = 'FONETICO'
      Size = 60
    end
    object qrCombustivelDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = 'DATAULTALTERACAO'
    end
    object qrCombustivelCUSTOREPOSICAO: TBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'CUSTOREPOSICAO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelPRECO_ANT: TBCDField
      FieldName = 'PRECO_ANT'
      Origin = 'PRECO_ANT'
      Precision = 18
      Size = 3
    end
    object qrCombustivelPRECO_PROMOCAO: TBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      Precision = 18
      Size = 3
    end
    object qrCombustivelFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'FLAG_PROMOCAO'
      Size = 1
    end
    object qrCombustivelDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'DT_INICIO_PROMO'
    end
    object qrCombustivelDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = 'DT_FIM_PROMO'
    end
    object qrCombustivelCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = 'COD_LABORATORIO'
    end
    object qrCombustivelLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 70
    end
    object qrCombustivelPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object qrCombustivelMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Origin = 'MED_CONTROLADO'
      Size = 1
    end
    object qrCombustivelQTD_FRACIONADA: TBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = 'QTD_FRACIONADA'
      Precision = 18
      Size = 2
    end
    object qrCombustivelQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
    end
    object qrCombustivelMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Origin = 'MED_GENERICO'
      Size = 3
    end
    object qrCombustivelLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object qrCombustivelVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object qrCombustivelCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object qrCombustivelPRECO_VENDA2: TBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 3
    end
    object qrCombustivelMARGEM_LUCRO2: TBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object qrCombustivelVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object qrCombustivelPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object qrCombustivelUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = 'UNIDADE_ENT'
    end
    object qrCombustivelDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = 'DESC_UNID_ENT'
      Size = 6
    end
    object qrCombustivelQUANT_SAIDA: TBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = 'QUANT_SAIDA'
      Precision = 18
    end
    object qrCombustivelQUANT_ENTRADA: TBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = 'QUANT_ENTRADA'
      Precision = 18
    end
    object qrCombustivelESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object qrCombustivelDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object qrCombustivelFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object qrCombustivelNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object qrCombustivelCOD_MS: TStringField
      FieldName = 'COD_MS'
      Origin = 'COD_MS'
      Size = 13
    end
    object qrCombustivelCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'CONTOLAESTOQUE'
      Size = 5
    end
    object qrCombustivelPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object qrCombustivelTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object qrCombustivelCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
    end
    object qrCombustivelCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
    end
    object qrCombustivelLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Origin = 'LISTA_ABC'
      Size = 1
    end
    object qrCombustivelGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'GRUPO_TRIBUTACAO'
    end
    object qrCombustivelCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object qrCombustivelCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object qrCombustivelENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'ENABLE_NUMSERIE'
      Required = True
    end
    object qrCombustivelID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object qrCombustivelCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      Size = 9
    end
    object qrCombustivelCESTA: TStringField
      FieldName = 'CESTA'
      Origin = 'CESTA'
      Size = 1
    end
    object qrCombustivelML_QUANT_BEB: TBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object qrCombustivelUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      Size = 3
    end
    object qrCombustivelCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 44
    end
    object qrCombustivelCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      Size = 30
    end
    object qrCombustivelN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      Size = 30
    end
    object qrCombustivelANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      Size = 4
    end
    object qrCombustivelANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      Size = 4
    end
    object qrCombustivelTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      Size = 10
    end
    object qrCombustivelN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      Size = 30
    end
    object qrCombustivelCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Size = 30
    end
    object qrCombustivelESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      Size = 10
    end
    object qrCombustivelCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      Size = 10
    end
    object qrCombustivelTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object qrCombustivelVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Size = 1
    end
    object qrCombustivelUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
    end
    object qrCombustivelUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
    end
    object qrCombustivelUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
    end
    object qrCombustivelPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
    end
    object qrCombustivelMULTIP_FRACAO: TIntegerField
      FieldName = 'MULTIP_FRACAO'
      Origin = 'MULTIP_FRACAO'
    end
  end
end
