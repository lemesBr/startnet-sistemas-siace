object FormaContatoCadFrm: TFormaContatoCadFrm
  Left = 303
  Top = 157
  BorderStyle = bsSingle
  Caption = 'Cadastro :: Formas de Contato'
  ClientHeight = 403
  ClientWidth = 452
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
    DataSource = DtsDstTipo
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
        Title.Caption = 'Forma de Contato'
        Width = 430
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
      Width = 425
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
        425
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
        Width = 281
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME'
        DataSource = DtsDstTipo
        TabOrder = 0
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 80
        Width = 281
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstTipo
        TabOrder = 2
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 312
        Top = 2
        Width = 113
        Height = 119
        Anchors = [akTop, akRight]
        Caption = 'A'#231#227'o'
        DataField = 'CODACAO'
        DataSource = DtsDstTipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Nenhuma'
          'Discar n'#250'mero'
          'Enviar e-mail'
          'Acessar p'#225'gina')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
    end
  end
  object DtsDstTipo: TDataSource
    DataSet = DM1.DstTipoFrm
    Left = 400
    Top = 48
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 400
    Top = 80
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'DBRadioGroup1.Caption'
      'GroupBox1.Caption'
      'Label1.Caption'
      'Label2.Caption'
      'DBRadioGroup1.Items')
    StoredValues = <>
    Left = 400
    Top = 112
  end
end
