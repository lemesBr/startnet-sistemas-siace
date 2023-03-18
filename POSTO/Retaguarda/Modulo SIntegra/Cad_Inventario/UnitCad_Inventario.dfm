object InventarioCadFrm: TInventarioCadFrm
  Left = 292
  Top = 85
  Width = 460
  Height = 430
  Caption = 'Cadastro :: Invent'#225'rio'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 452
    Height = 254
    Align = alClient
    DataSource = DtsDstInventario
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
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_INVENTARIO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAHORA'
        Title.Caption = 'Data Invent'#225'rio'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESPONSAVEL'
        Title.Caption = 'Respons'#225'vel'
        Width = 225
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
        Width = 84
        Height = 16
        Caption = 'Respons'#225'vel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 144
        Top = 64
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 32
        Height = 16
        Caption = 'Data:'
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 80
        Width = 113
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DATAHORA'
        DataSource = DtsDstInventario
        TabOrder = 5
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 329
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'RESPONSAVEL'
        DataSource = DtsDstInventario
        TabOrder = 3
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 144
        Top = 80
        Width = 265
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstInventario
        TabOrder = 2
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object Edit1: TEdit
        Left = 16
        Top = 32
        Width = 329
        Height = 24
        ReadOnly = True
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyDown = Edit1KeyDown
        OnKeyPress = Edit1KeyPress
      end
      object BitBtn1: TBitBtn
        Left = 352
        Top = 32
        Width = 57
        Height = 25
        Hint = 'DETALHES DOS CONTATOS'
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        OnClick = BitBtn1Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777770000070000000777777777770BFB0700000007777
          77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
          0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
          B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
          FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
          0000770000000000777770000000777777777777777770000000777777777777
          777770000000}
      end
      object DateTimePicker1: TDateTimePicker
        Left = 16
        Top = 80
        Width = 113
        Height = 24
        CalAlignment = dtaLeft
        Date = 37837.682712963
        Format = 'dd/MM/yyyy'
        Time = 37837.682712963
        DateFormat = dfShort
        DateMode = dmComboBox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Kind = dtkDate
        ParseInput = False
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DateTimePicker1KeyPress
      end
    end
  end
  object DtsDstInventario: TDataSource
    DataSet = DM1.DstInventario
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
  object QryProdutos: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select count(COD_PRODUTOS) Produtos'
      'FROM PRODUTOS')
    Left = 368
    Top = 168
    object QryProdutosPRODUTOS: TIntegerField
      FieldName = 'PRODUTOS'
      Required = True
    end
  end
end
