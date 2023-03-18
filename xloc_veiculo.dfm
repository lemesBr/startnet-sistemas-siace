object frmxloc_veiculo: Tfrmxloc_veiculo
  Left = 390
  Top = 225
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = 'VE'#205'CULOS | Localizar'
  ClientHeight = 356
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 44
    Width = 708
    Height = 3
    Align = alTop
  end
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
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'C'#211'DIGO'
        'PLACA')
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
    Top = 47
    Width = 708
    Height = 309
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    GridStyle.VisualStyle = vsXPStyle
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyDown = GRIDKeyDown
    OnKeyPress = GRIDKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMBUSTIVEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLACA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UFPLACA'
        Title.Caption = 'UF'
        Visible = True
        Width = 61
      end
      item
        Expanded = False
        FieldName = 'COR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHASSI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENAVAM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end>
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
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 200
  end
  object query: TIBQuery
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from VEICULO')
    Left = 408
    Top = 200
    object queryCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = '"VEICULO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryNOME: TIBStringField
      DisplayWidth = 20
      FieldName = 'NOME'
      Origin = '"VEICULO"."NOME"'
    end
    object queryANO: TIBStringField
      DisplayWidth = 10
      FieldName = 'ANO'
      Origin = '"VEICULO"."ANO"'
      Size = 10
    end
    object queryCOMBUSTIVEL: TIBStringField
      DisplayWidth = 15
      FieldName = 'COMBUSTIVEL'
      Origin = '"VEICULO"."COMBUSTIVEL"'
      Size = 15
    end
    object queryPLACA: TIBStringField
      DisplayWidth = 10
      FieldName = 'PLACA'
      Origin = '"VEICULO"."PLACA"'
      Size = 10
    end
    object queryUFPLACA: TIBStringField
      DisplayWidth = 2
      FieldName = 'UFPLACA'
      Origin = '"VEICULO"."UFPLACA"'
      Size = 2
    end
    object queryCOR: TIBStringField
      DisplayWidth = 20
      FieldName = 'COR'
      Origin = '"VEICULO"."COR"'
    end
    object queryOBS1: TIBStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Origin = '"VEICULO"."OBS1"'
      Size = 80
    end
    object queryOBS2: TIBStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Origin = '"VEICULO"."OBS2"'
      Size = 80
    end
    object queryOBS3: TIBStringField
      DisplayWidth = 80
      FieldName = 'OBS3'
      Origin = '"VEICULO"."OBS3"'
      Size = 80
    end
    object queryCIDADE: TIBStringField
      DisplayWidth = 50
      FieldName = 'CIDADE'
      Origin = '"VEICULO"."CIDADE"'
      Size = 50
    end
    object queryCOD_CLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_CLIENTE'
      Origin = '"VEICULO"."COD_CLIENTE"'
    end
    object queryCHASSI: TIBStringField
      DisplayWidth = 50
      FieldName = 'CHASSI'
      Origin = '"VEICULO"."CHASSI"'
      Size = 50
    end
    object queryRENAVAM: TIBStringField
      DisplayWidth = 30
      FieldName = 'RENAVAM'
      Origin = '"VEICULO"."RENAVAM"'
      Size = 30
    end
    object queryISENTO_IPVA: TIBStringField
      DisplayWidth = 1
      FieldName = 'ISENTO_IPVA'
      Origin = '"VEICULO"."ISENTO_IPVA"'
      Size = 1
    end
  end
end
