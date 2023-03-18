inherited FormCidades: TFormCidades
  Left = 462
  Top = 246
  Caption = 'Cadastro de Cidades'
  ClientHeight = 270
  ClientWidth = 685
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 691
  ExplicitHeight = 299
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Top = 29
    Width = 685
    Height = 186
    ExplicitTop = 29
    ExplicitWidth = 685
    ExplicitHeight = 186
    object Label1: TsLabel
      Left = 24
      Top = 16
      Width = 41
      Height = 13
      Caption = 'C'#243'digo:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label2: TsLabel
      Left = 24
      Top = 48
      Width = 41
      Height = 13
      Caption = 'Cidade:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label3: TsLabel
      Left = 24
      Top = 80
      Width = 41
      Height = 13
      Caption = 'Estado:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label4: TsLabel
      Left = 452
      Top = 75
      Width = 17
      Height = 13
      Caption = 'UF:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label6: TsLabel
      Left = 24
      Top = 107
      Width = 23
      Height = 13
      Caption = 'CEP:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label7: TsLabel
      Left = 208
      Top = 107
      Width = 56
      Height = 13
      Caption = 'Cod. IBGE:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object DBEdit1: TsDBEdit
      Left = 80
      Top = 11
      Width = 72
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      DataField = 'COD_CIDADE'
      DataSource = DM.DTS_cidades
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object DBEdit2: TsDBEdit
      Left = 80
      Top = 44
      Width = 585
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'NOME'
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object DBLookupComboBox1: TsDBLookupComboBox
      Left = 80
      Top = 72
      Width = 361
      Height = 21
      Color = clWhite
      DataField = 'COD_ESTADO'
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_ESTADO'
      ListField = 'DESCRICO'
      ListSource = DM.DTS_Estados
      ParentFont = False
      TabOrder = 2
      OnClick = DBLookupComboBox1Click
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyPress = DBLookupComboBox1KeyPress
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      SkinData.SkinSection = 'COMBOBOX'
    end
    object DBEdit3: TsDBEdit
      Left = 472
      Top = 72
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'UF'
      DataSource = DM.DTS_cidades
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object DBEdit4: TsDBEdit
      Left = 80
      Top = 104
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'CEP'
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object DBEdit5: TsDBEdit
      Left = 280
      Top = 104
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'COD_IBGE'
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
  end
  inherited Panel2: TsPanel
    Top = 215
    Width = 685
    ExplicitTop = 215
    ExplicitWidth = 685
    inherited btnNovo: TAdvGlowButton
      Left = 98
      OnClick = btnNovoClick
      ExplicitLeft = 98
    end
    inherited btnEditar: TAdvGlowButton
      Left = 195
      OnClick = btnEditarClick
      ExplicitLeft = 195
    end
    inherited btnCancelar: TAdvGlowButton
      Left = 292
      OnClick = btnCancelarClick
      ExplicitLeft = 292
    end
    inherited btnSalvar: TAdvGlowButton
      Left = 389
      OnClick = btnSalvarClick
      ExplicitLeft = 389
    end
    inherited btnExcluir: TAdvGlowButton
      Left = 486
      OnClick = btnExcluirClick
      ExplicitLeft = 486
    end
    inherited DBNavigator: TsDBNavigator
      DataSource = DM.DTS_cidades
    end
    inherited btnLocalizar: TAdvGlowButton
      Left = 581
      OnClick = btnLocalizarClick
      ExplicitLeft = 581
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 0
    Width = 685
    Height = 29
    Align = alTop
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 2
    object Label5: TsLabelFX
      Left = 199
      Top = 3
      Width = 191
      Height = 31
      Caption = 'Cadastro de cidades'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = []
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  object Sds_cid: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from cidades'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 249
    object Sds_cidCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Required = True
    end
    object Sds_cidNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object Sds_cidCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Sds_cidCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Required = True
    end
    object Sds_cidCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_cidUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_cidDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object Dts_cid: TDataSource
    DataSet = Sds_cid
    Left = 281
  end
end
