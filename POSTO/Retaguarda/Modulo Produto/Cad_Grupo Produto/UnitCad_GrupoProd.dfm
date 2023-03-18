object ProdutoGrupoCadFrm: TProdutoGrupoCadFrm
  Left = 242
  Top = 80
  Width = 460
  Height = 430
  Caption = 'Cadastro :: Grupo de Produto'
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
    Height = 261
    Align = alClient
    DataSource = DtsDstGrupoP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        Title.Caption = 'Grupo de Produto'
        Width = 431
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 261
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
        DataSource = DtsDstGrupoP
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
        DataSource = DtsDstGrupoP
        TabOrder = 1
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
    end
  end
  object DtsDstGrupoP: TDataSource
    DataSet = DM1.DstGrupoP
    Left = 400
    Top = 200
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 400
    Top = 168
  end
  object FormStorage1: TFormStorage
    IniSection = 'GrupoProdCadFrm'
    Options = []
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'Label1.Caption'
      'Label2.Caption')
    StoredValues = <>
    Left = 400
    Top = 232
  end
end
