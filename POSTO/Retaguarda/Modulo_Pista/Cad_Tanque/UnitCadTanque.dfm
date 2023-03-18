object TanqueCadFrm: TTanqueCadFrm
  Left = 264
  Top = 64
  Width = 460
  Height = 479
  Caption = 'Cadastro de Tanques'
  Color = clBtnFace
  Constraints.MinHeight = 284
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 256
    Width = 452
    Height = 189
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      452
      189)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 420
      Height = 169
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        420
        169)
      object Label4: TLabel
        Left = 16
        Top = 112
        Width = 65
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Descri'#231#227'o:'
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 68
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = 'N'#186' Tanque:'
      end
      object Label2: TLabel
        Left = 136
        Top = 64
        Width = 78
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Capacidade:'
      end
      object Label3: TLabel
        Left = 136
        Top = 16
        Width = 50
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Produto:'
      end
      object Label5: TLabel
        Left = 16
        Top = 64
        Width = 82
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Volume Atual:'
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 128
        Width = 385
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstTanque
        TabOrder = 4
        OnEnter = DBEdit3Enter
        OnExit = DBEdit3Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 16
        Top = 32
        Width = 105
        Height = 24
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_TANQUE'
        DataSource = DtsDstTanque
        ItemHeight = 16
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20')
        TabOrder = 0
        OnEnter = DBComboBox1Enter
        OnExit = DBComboBox1Exit
        OnKeyPress = DBComboBox1KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 80
        Width = 105
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'LITROS'
        DataSource = DtsDstTanque
        TabOrder = 2
        OnEnter = DBEdit3Enter
        OnExit = DBEdit3Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 136
        Top = 32
        Width = 265
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'COD_PRODUTOS'
        DataSource = DtsDstTanque
        KeyField = 'COD_PRODUTOS'
        ListField = 'NOME'
        ListSource = DtsQryProdutos
        TabOrder = 3
        OnDropDown = DBLookupComboBox1DropDown
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 80
        Width = 105
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'LITROS_ATUAL'
        DataSource = DtsDstTanque
        TabOrder = 1
        OnEnter = DBEdit3Enter
        OnExit = DBEdit3Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 16
        Top = 80
        Width = 105
        Height = 24
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = 'R$ ,0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        TabOrder = 5
        OnEnter = CurrencyEdit2Enter
        OnExit = CurrencyEdit2Exit
        OnKeyPress = CurrencyEdit2KeyPress
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 136
        Top = 80
        Width = 105
        Height = 24
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = 'R$ ,0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 6
        OnEnter = CurrencyEdit2Enter
        OnExit = CurrencyEdit2Exit
        OnKeyPress = CurrencyEdit2KeyPress
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 452
    Height = 256
    Align = alClient
    DataSource = DtsDstTanque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'ID_TANQUE'
        Title.Caption = 'N'#186' do Tanque'
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LITROS_ATUAL'
        Title.Caption = 'Volume Atual'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LITROS'
        Title.Caption = 'Capacidade'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Produto'
        Width = 74
        Visible = True
      end>
  end
  object DtsDstTanque: TDataSource
    DataSet = DM1.DstTanque
    Left = 24
    Top = 216
  end
  object QryProdutos: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_PRODUTOS, NOME from PRODUTOS'
      'where TIPO_PRODUTO = 1'
      'Order by NOME')
    Left = 56
    Top = 184
  end
  object DtsQryProdutos: TDataSource
    DataSet = QryProdutos
    Left = 56
    Top = 216
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 24
    Top = 184
  end
end
