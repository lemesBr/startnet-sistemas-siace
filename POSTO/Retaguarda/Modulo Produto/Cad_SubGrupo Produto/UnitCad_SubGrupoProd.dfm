object ProdutoSubgrupoCadFrm: TProdutoSubgrupoCadFrm
  Left = 446
  Top = 102
  Width = 460
  Height = 430
  Caption = 'Cadastro :: Sub-Grupo de Produto'
  Color = clBtnFace
  Constraints.MinHeight = 430
  Constraints.MinWidth = 460
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 452
    Height = 190
    Align = alClient
    DataSource = DtsDstSubGrupoP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Sub-Grupo de Produto'
        Width = 430
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 64
    Align = alTop
    TabOrder = 1
    DesignSize = (
      452
      64)
    object Label3: TLabel
      Left = 16
      Top = 8
      Width = 184
      Height = 16
      Cursor = crHandPoint
      Caption = 'Selecione o Grupo de Produto:'
      OnClick = Label3Click
      OnMouseEnter = Label3MouseEnter
      OnMouseLeave = Label3MouseLeave
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 424
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODGRUPOP'
      ListField = 'NOME'
      ListSource = DtsQryGrupoP
      ParentFont = False
      TabOrder = 0
      OnDropDown = DBLookupComboBox1DropDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 254
    Width = 452
    Height = 142
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 2
    DesignSize = (
      452
      142)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 424
      Height = 121
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        424
        121)
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 40
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 16
        Top = 64
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 393
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME'
        DataSource = DtsDstSubGrupoP
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 393
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstSubGrupoP
        TabOrder = 1
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
    end
  end
  object DtsQryGrupoP: TDataSource
    DataSet = QryGrupoP
    OnDataChange = DtsQryGrupoPDataChange
    Left = 376
    Top = 216
  end
  object DtsDstSubGrupoP: TDataSource
    DataSet = DM1.DstSubGrupoP
    Left = 408
    Top = 216
  end
  object QryGrupoP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BeforeScroll = QryGrupoPBeforeScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODGRUPOP, NOME from GRUPOP ORDER BY NOME')
    Left = 344
    Top = 216
    object QryGrupoPCODGRUPOP: TIntegerField
      FieldName = 'CODGRUPOP'
      Origin = 'GRUPOP.CODGRUPOP'
      Required = True
    end
    object QryGrupoPNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'GRUPOP.NOME'
      Required = True
      Size = 30
    end
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 408
    Top = 184
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'Label1.Caption'
      'Label2.Caption'
      'Label3.Caption')
    StoredValues = <>
    Left = 312
    Top = 216
  end
end
