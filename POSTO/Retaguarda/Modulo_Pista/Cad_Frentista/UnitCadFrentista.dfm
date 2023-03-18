object FrentistaCadFrm: TFrentistaCadFrm
  Left = 506
  Top = 144
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro :: Frentista'
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
    Height = 256
    Align = alClient
    DataSource = DtsDstFrentista
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
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Frentista'
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
    Top = 256
    Width = 452
    Height = 147
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
    DesignSize = (
      452
      147)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 7
      Width = 420
      Height = 127
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
        420
        127)
      object Label2: TLabel
        Left = 16
        Top = 19
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
        Left = 324
        Top = 19
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
      object Label1: TLabel
        Left = 16
        Top = 72
        Width = 65
        Height = 16
        Caption = 'Descri'#231#227'o:'
      end
      object DBEdit3: TDBEdit
        Left = 324
        Top = 36
        Width = 81
        Height = 24
        TabStop = False
        Anchors = [akTop, akRight]
        DataField = 'COMISSAO'
        DataSource = DtsDstFrentista
        TabOrder = 3
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 324
        Top = 36
        Width = 81
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00 %;,0.00 %'
        FormatOnEditing = True
        Anchors = [akTop, akRight]
        MaxValue = 100.000000000000000000
        TabOrder = 1
        Visible = False
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 36
        Width = 293
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME'
        DataSource = DtsDstFrentista
        TabOrder = 0
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 88
        Width = 389
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstFrentista
        TabOrder = 2
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit1KeyPress
      end
    end
  end
  object DtsDstFrentista: TDataSource
    DataSet = DM1.DstFrentista
    Left = 16
    Top = 184
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 16
    Top = 152
  end
end
