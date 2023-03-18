object VendaClienteListFrm: TVendaClienteListFrm
  Left = 332
  Top = 142
  ActiveControl = Edit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta  ::  Empresa / Pessoa F'#237'sica'
  ClientHeight = 455
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
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
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 178
      Height = 20
      Caption = 'Empresa / Pessoa F'#237'sica:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 697
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
      OnKeyDown = Edit1KeyDown
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
      Caption = '  Listagem de Clientes / <F1> Cliente Avulso'
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
      DataSource = DtsQryClientes
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
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME_RS'
          Title.Caption = 'Nome'
          Width = 300
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ATIVO'
          Title.Caption = 'Situa'#231#227'o'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Width = 407
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PONTO_REFERENCIA'
          Title.Caption = 'Refer'#234'ncia'
          Width = 383
          Visible = True
        end>
    end
  end
  object QryClientes: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select Codigo, Nome_rs, Endereco, PONTO_REFERENCIA, Ativo from C' +
        'lientes order by nome_rs')
    Left = 624
    Top = 160
  end
  object DtsQryClientes: TDataSource
    DataSet = QryClientes
    Left = 624
    Top = 192
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'Panel3.Caption')
    StoredValues = <>
    Left = 592
    Top = 160
  end
end
