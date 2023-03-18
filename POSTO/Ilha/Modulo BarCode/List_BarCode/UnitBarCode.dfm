object BarcodeListFrm: TBarcodeListFrm
  Left = -4
  Top = 65
  Width = 808
  Height = 608
  Caption = 'Impress'#227'o de Etiquetas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 480
    Top = 240
    Width = 157
    Height = 16
    Caption = 'N'#186' de Etiquetas a Imprimir:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 296
    Width = 242
    Height = 16
    Caption = 'Produtos Selecionados para Impress'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 480
    Top = 296
    Width = 179
    Height = 16
    Caption = 'Informa'#231#245'es para Impressora:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 480
    Top = 8
    Width = 257
    Height = 129
    Caption = ' Filtros: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 69
      Height = 16
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 50
      Height = 16
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 16
      Top = 40
      Width = 225
      Height = 24
      TabOrder = 0
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
    end
    object Edit2: TEdit
      Left = 16
      Top = 88
      Width = 225
      Height = 24
      TabOrder = 1
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit2KeyDown
    end
  end
  object Memo1: TMemo
    Left = 480
    Top = 312
    Width = 257
    Height = 153
    TabOrder = 2
  end
  object ListView2: TListView
    Left = 8
    Top = 312
    Width = 457
    Height = 153
    Columns = <
      item
        Caption = 'Refer'#234'ncia'
        Width = 110
      end
      item
        Caption = 'Nome'
        Width = 300
      end>
    ReadOnly = True
    PopupMenu = PopupMenu2
    TabOrder = 3
    ViewStyle = vsReport
    OnClick = ListView2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 457
    Height = 265
    DataSource = DtsQryListProd
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Referencia'
        Title.Caption = 'Refer'#234'ncia'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 319
        Visible = True
      end>
  end
  object SpinEdit1: TSpinEdit
    Left = 480
    Top = 256
    Width = 257
    Height = 22
    MaxValue = 50
    MinValue = 1
    TabOrder = 1
    Value = 1
    OnEnter = Edit1Enter
    OnExit = Edit1Exit
    OnKeyDown = SpinEdit1KeyDown
  end
  object PopupMenu1: TPopupMenu
    Left = 680
    Top = 144
    object ConfigurarImpressora1: TMenuItem
      Caption = 'Configurar Impressora de C'#243'digo de Barras'
      OnClick = ConfigurarImpressora1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 648
    Top = 144
    object ExcluirTodos1: TMenuItem
      Caption = 'Excluir Itens da Lista'
      OnClick = ExcluirTodos1Click
    end
  end
  object QryListProd: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT cod_produtos, referencia, nome FROM produtos')
    Left = 712
    Top = 144
  end
  object DtsQryListProd: TDataSource
    DataSet = QryListProd
    Left = 712
    Top = 176
  end
end
