object CallSolicitanteCadFrm: TCallSolicitanteCadFrm
  Left = 286
  Top = 126
  Width = 460
  Height = 430
  Caption = 'Cadastro :: Solicitante de Chamada Telef'#244'nica'
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
    DataSource = DtsDstCallSolicitante
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        Title.Caption = 'Solicitantes'
        Width = 431
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
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 393
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME'
        DataSource = DtsDstCallSolicitante
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
        DataSource = DtsDstCallSolicitante
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
    end
  end
  object DtsDstCallSolicitante: TDataSource
    DataSet = DM1.DstCallSolicitante
    Left = 392
    Top = 192
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'Label1.Caption'
      'Label2.Caption')
    StoredValues = <>
    Left = 392
    Top = 224
  end
end
