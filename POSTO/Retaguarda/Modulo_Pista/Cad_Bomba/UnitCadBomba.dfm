object BombaCadFrm: TBombaCadFrm
  Left = 278
  Top = 132
  Width = 460
  Height = 430
  Caption = 'Cadastro de Bombas'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 245
    Width = 444
    Height = 147
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      444
      147)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 420
      Height = 121
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
        121)
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 47
        Height = 16
        Caption = 'Bomba:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 328
        Top = 16
        Width = 74
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'N'#186' de Bicos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 104
        Top = 16
        Width = 54
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Frentista:'
      end
      object Label4: TLabel
        Left = 16
        Top = 64
        Width = 65
        Height = 16
        Caption = 'Descri'#231#227'o:'
      end
      object DBText1: TDBText
        Left = 344
        Top = 37
        Width = 57
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        DataField = 'QNT_BICO'
        DataSource = DtsDstBomba
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 389
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstBomba
        TabOrder = 2
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 104
        Top = 32
        Width = 209
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'COD_FRENTISTA'
        DataSource = DtsDstBomba
        KeyField = 'COD_FRENTISTA'
        ListField = 'NOME'
        ListSource = DtsQryFrentista
        TabOrder = 1
        OnDropDown = DBLookupComboBox1DropDown
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        OnKeyPress = DBLookupComboBox1KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 16
        Top = 32
        Width = 73
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_BOMBA'
        DataSource = DtsDstBomba
        ItemHeight = 16
        TabOrder = 0
        OnEnter = DBComboBox1Enter
        OnExit = DBComboBox1Exit
        OnKeyPress = DBComboBox1KeyPress
      end
      object CheckBox1: TCheckBox
        Left = 304
        Top = 63
        Width = 100
        Height = 17
        TabStop = False
        Alignment = taLeftJustify
        Anchors = [akTop]
        Caption = 'Auto-Autorizar'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 444
    Height = 245
    Align = alClient
    DataSource = DtsDstBomba
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
        Expanded = False
        FieldName = 'ID_BOMBA'
        Title.Caption = 'Bomba'
        Width = 355
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QNT_BICO'
        Title.Caption = 'N'#186' de Bicos'
        Width = 75
        Visible = True
      end>
  end
  object DtsDstBomba: TDataSource
    DataSet = DM1.DstBomba
    OnDataChange = DtsDstBombaDataChange
    Left = 104
    Top = 208
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 104
    Top = 176
  end
  object DtsQryFrentista: TDataSource
    DataSet = QryFrentista
    Left = 72
    Top = 208
  end
  object QryFrentista: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_FRENTISTA, NOME from FRENTISTA')
    Left = 72
    Top = 176
  end
  object DtsQryTanque: TDataSource
    DataSet = QryTanque
    Left = 40
    Top = 208
  end
  object QryTanque: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_BOMBA, ID_BOMBA from BOMBA Order by ID_BOMBA')
    Left = 40
    Top = 176
  end
end
