object BicoCadFrm: TBicoCadFrm
  Left = 820
  Top = 169
  Width = 460
  Height = 492
  Caption = 'Cadastro do Bicos'
  Color = clBtnFace
  Constraints.MinHeight = 430
  Constraints.MinWidth = 460
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 64
    Align = alTop
    TabOrder = 0
    DesignSize = (
      444
      64)
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 122
      Height = 16
      Cursor = crHandPoint
      Caption = 'Selecione a Bomba:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label1Click
      OnMouseEnter = Label1MouseEnter
      OnMouseLeave = Label1MouseLeave
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 423
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_BOMBA'
      ListField = 'ID_BOMBA'
      ListSource = DtsQryBomba
      ParentFont = False
      TabOrder = 0
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyDown = DBLookupComboBox1KeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 260
    Width = 444
    Height = 194
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      444
      194)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 420
      Height = 169
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      TabOrder = 0
      DesignSize = (
        420
        169)
      object Label3: TLabel
        Left = 16
        Top = 16
        Width = 50
        Height = 16
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 112
        Width = 65
        Height = 16
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 64
        Width = 67
        Height = 16
        Caption = 'N'#186' do Bico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 176
        Top = 64
        Width = 87
        Height = 16
        Caption = 'N'#186' do Tanque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 32
        Width = 393
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'COD_PRODUTOS'
        ListField = 'NOME'
        ListSource = DtsQryProdutos
        ParentFont = False
        TabOrder = 0
        OnDropDown = DBLookupComboBox1DropDown
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        OnKeyPress = DBLookupComboBox2KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 16
        Top = 80
        Width = 145
        Height = 24
        Style = csDropDownList
        DataField = 'ID_BICO'
        DataSource = DtsDstBico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          '1'
          '2'
          '3'
          '4')
        ParentFont = False
        TabOrder = 1
        OnEnter = DBComboBox1Enter
        OnExit = DBComboBox1Exit
        OnKeyPress = DBComboBox1KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 128
        Width = 389
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstBico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 176
        Top = 80
        Width = 145
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'COD_TANQUE'
        ListField = 'COD_TANQUE'
        ListSource = DtsQryTanque
        ParentFont = False
        TabOrder = 2
        OnDropDown = DBLookupComboBox1DropDown
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        OnKeyPress = DBLookupComboBox2KeyPress
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 444
    Height = 196
    Align = alClient
    DataSource = DtsDstBico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Produto'
        Width = 355
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_BICO'
        Title.Caption = 'N'#186' do Bico'
        Width = 75
        Visible = True
      end>
  end
  object DtsQryBomba: TDataSource
    DataSet = QryBomba
    Left = 8
    Top = 208
  end
  object QryBomba: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BeforeScroll = QryBombaBeforeScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_BOMBA, ID_BOMBA from BOMBA Order by ID_BOMBA')
    Left = 8
    Top = 176
  end
  object DtsDstBico: TDataSource
    DataSet = DM1.DstBico
    OnDataChange = DtsDstBicoDataChange
    Left = 104
    Top = 208
  end
  object DtsQryProdutos: TDataSource
    DataSet = QryProdutos
    Left = 40
    Top = 208
  end
  object QryProdutos: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_PRODUTOS, NOME, ID_PRODUTOS from PRODUTOS'
      'where TIPO_PRODUTO = 1'
      'Order by NOME')
    Left = 40
    Top = 176
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 104
    Top = 176
  end
  object QryTanque: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_TANQUE from TANQUE')
    Left = 72
    Top = 176
  end
  object DtsQryTanque: TDataSource
    DataSet = QryTanque
    Left = 72
    Top = 208
  end
end
