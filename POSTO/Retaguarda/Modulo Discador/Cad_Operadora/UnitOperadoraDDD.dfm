object OperadoraDDDCadFrm: TOperadoraDDDCadFrm
  Left = 278
  Top = 108
  Width = 460
  Height = 430
  Caption = 'Cadastro :: '#193'rea x Operadora'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 452
    Height = 254
    Align = alClient
    DataSource = DtsDstOperadoraDDD
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
        FieldName = 'NUMAREA'
        Title.Caption = 'C'#243'digo de '#193'rea'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEOPERADORA'
        Title.Caption = 'Operadora'
        Width = 343
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
        Width = 98
        Height = 16
        Caption = 'C'#243'digo da '#193'rea:'
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
        Width = 135
        Height = 16
        Caption = 'C'#243'digo da Operadora:'
      end
      object Label3: TLabel
        Left = 168
        Top = 16
        Width = 91
        Height = 16
        Caption = 'Nome da '#193'rea:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 168
        Top = 64
        Width = 128
        Height = 16
        Caption = 'Nome da Operadora:'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 137
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NUMAREA'
        DataSource = DtsDstOperadoraDDD
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 137
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NUMOPERADORA'
        DataSource = DtsDstOperadoraDDD
        TabOrder = 2
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 168
        Top = 32
        Width = 241
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOMEAREA'
        DataSource = DtsDstOperadoraDDD
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 168
        Top = 80
        Width = 241
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOMEOPERADORA'
        DataSource = DtsDstOperadoraDDD
        TabOrder = 3
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit4KeyPress
      end
    end
  end
  object DtsDstOperadoraDDD: TDataSource
    DataSet = DM1.DstOperadoraDDD
    Left = 272
    Top = 96
  end
  object FormStorage1: TFormStorage
    IniSection = 'OperadoraDDDCadFrm'
    Options = []
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'Label1.Caption'
      'Label2.Caption'
      'Label3.Caption'
      'Label4.Caption')
    StoredValues = <>
    Left = 272
    Top = 136
  end
end
