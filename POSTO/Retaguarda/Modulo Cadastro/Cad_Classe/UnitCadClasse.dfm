object ClasseCadFrm: TClasseCadFrm
  Left = 249
  Top = 103
  Width = 460
  Height = 430
  ActiveControl = DBGrid1
  Caption = 'Cadastro :: Classes Cadastral'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 452
    Height = 254
    Align = alClient
    DataSource = DtsDstClasse
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        Title.Caption = 'Classe'
        Width = 430
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 254
    Width = 452
    Height = 142
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
    DesignSize = (
      452
      142)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 423
      Height = 121
      Anchors = [akLeft, akRight, akBottom]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        423
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
      object DBEdit2: TDBEdit
        Left = 16
        Top = 32
        Width = 393
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME'
        DataSource = DtsDstClasse
        TabOrder = 0
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 80
        Width = 393
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstClasse
        TabOrder = 1
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit1KeyPress
      end
    end
  end
  object DtsDstClasse: TDataSource
    DataSet = DM1.DstClasse
    Left = 400
    Top = 40
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 400
    Top = 72
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'Label1.Caption'
      'Label2.Caption')
    StoredValues = <>
    Left = 400
    Top = 104
  end
end
