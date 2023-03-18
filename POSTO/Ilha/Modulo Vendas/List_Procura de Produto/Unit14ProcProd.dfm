object VendaProdutoListFrm: TVendaProdutoListFrm
  Left = 304
  Top = 113
  ActiveControl = Edit3
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta  ::  Produtos'
  ClientHeight = 455
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    746
    455)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 729
    Height = 81
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 60
      Height = 20
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 520
      Top = 8
      Width = 82
      Height = 20
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 520
      Top = 32
      Width = 193
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 1
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit2KeyDown
    end
    object Edit3: TEdit
      Left = 16
      Top = 32
      Width = 481
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 48
      ParentFont = False
      TabOrder = 0
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit3KeyDown
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 96
    Width = 729
    Height = 353
    Anchors = [akLeft, akBottom]
    BevelInner = bvRaised
    Caption = '(Nenhum registro encontrado)'
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 328
      Width = 725
      Height = 23
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      Caption = ' Listagem de Produtos'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 725
      Height = 326
      Align = alClient
      DataSource = DtsQryProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Refer'#234'ncia'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Produto'
          Width = 345
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Title.Caption = 'Estoque'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA'
          Title.Caption = 'Pre'#231'o'
          Width = 152
          Visible = True
        end>
    end
  end
  object QryProdutos: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select Codigo, descricao, Referencia, Preco_Venda, estoque from ' +
        'Produtos'
      'where COMBUSTIVEL = '#39'S'#39
      'order by DESCRICAO')
    Left = 688
    Top = 152
    object QryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PRODUTOS.CODIGO'
      Required = True
    end
    object QryProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTOS.DESCRICAO'
      Required = True
      Size = 50
    end
    object QryProdutosREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'PRODUTOS.REFERENCIA'
      Size = 15
    end
    object QryProdutosPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRODUTOS.PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object QryProdutosESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = 'PRODUTOS.ESTOQUE'
      Precision = 18
      Size = 4
    end
  end
  object DtsQryProdutos: TDataSource
    DataSet = QryProdutos
    Left = 688
    Top = 184
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'Label1.Caption'
      'Label3.Caption'
      'Panel3.Caption')
    StoredValues = <>
    Left = 656
    Top = 152
  end
end
