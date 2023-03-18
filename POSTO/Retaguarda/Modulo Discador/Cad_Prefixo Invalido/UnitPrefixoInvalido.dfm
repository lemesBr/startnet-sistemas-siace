object PrefixoInvalidoCadFrm: TPrefixoInvalidoCadFrm
  Left = 249
  Top = 100
  Width = 460
  Height = 430
  Caption = 'Cadastro :: Prefixo Inv'#225'lido'
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
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 64
    Align = alTop
    TabOrder = 0
    DesignSize = (
      452
      64)
    object Label3: TLabel
      Left = 16
      Top = 8
      Width = 125
      Height = 16
      Cursor = crHandPoint
      Caption = 'Selecione o Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
      OnMouseMove = Label3MouseMove
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
      KeyField = 'CODSETORUSER'
      ListField = 'NOME'
      ListSource = DtsQrySetorUser
      ParentFont = False
      TabOrder = 0
      OnCloseUp = DBLookupComboBox1CloseUp
      OnDropDown = DBLookupComboBox1DropDown
      OnKeyPress = DBLookupComboBox1KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 452
    Height = 236
    Align = alClient
    DataSource = DtsDstPrefixoInvalido
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
    OnColEnter = DBGrid1ColEnter
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'PREFIXO'
        Title.Caption = 'Prefixos Inv'#225'lidos'
        Width = 433
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 300
    Width = 452
    Height = 96
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 2
    DesignSize = (
      452
      96)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 424
      Height = 73
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
        73)
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 94
        Height = 16
        Caption = 'Prefixo inv'#225'lido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 393
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PREFIXO'
        DataSource = DtsDstPrefixoInvalido
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
    end
  end
  object DtsDstPrefixoInvalido: TDataSource
    DataSet = DM1.DstPrefixoInvalido
    Left = 48
    Top = 152
  end
  object DtsQrySetorUser: TDataSource
    DataSet = QrySetorUser
    Left = 16
    Top = 120
  end
  object QrySetorUser: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CODSETORUSER, NOME,  CODSETOR  From SETORUSER where CODSE' +
        'TORUSER <> 0 ORDER BY NOME')
    Left = 16
    Top = 152
  end
  object FormStorage1: TFormStorage
    IniSection = 'PrefixoInvalidoCadFrm'
    Options = []
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'Label2.Caption'
      'Label3.Caption')
    StoredValues = <>
    Left = 16
    Top = 184
  end
end
