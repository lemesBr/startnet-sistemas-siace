object VendedorCadFrm: TVendedorCadFrm
  Left = 251
  Top = 111
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro :: Atendente'
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
    Height = 312
    Align = alClient
    DataSource = DtsDstVend
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
        Title.Caption = 'Atendente'
        Width = 329
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMISSAO'
        Title.Caption = 'Comiss'#227'o'
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 452
    Height = 91
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
    DesignSize = (
      452
      91)
    object GroupBox1: TGroupBox
      Left = 14
      Top = 8
      Width = 424
      Height = 71
      Anchors = [akLeft, akTop, akRight, akBottom]
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
        71)
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
      object Label6: TLabel
        Left = 336
        Top = 16
        Width = 64
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Comiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 32
        Width = 305
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME'
        DataSource = DtsDstVend
        TabOrder = 0
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 336
        Top = 32
        Width = 73
        Height = 24
        TabStop = False
        Anchors = [akTop, akRight]
        DataField = 'COMISSAO'
        DataSource = DtsDstVend
        TabOrder = 2
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 336
        Top = 32
        Width = 73
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00 %;,0.00 %'
        FormatOnEditing = True
        Anchors = [akTop, akRight]
        MaxValue = 100
        TabOrder = 1
        Visible = False
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit1KeyPress
      end
    end
  end
  object DtsDstVend: TDataSource
    DataSet = DM1.DstVend
    Left = 392
    Top = 200
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'Label2.Caption'
      'Label6.Caption')
    StoredValues = <>
    Left = 392
    Top = 232
  end
end
