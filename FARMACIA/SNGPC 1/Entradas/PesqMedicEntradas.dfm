object fPesqMecEntradas: TfPesqMecEntradas
  Left = 234
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa as Entradas por Medicamento'
  ClientHeight = 464
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 54
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 394
      Top = 11
      Width = 348
      Height = 13
      Caption = 
        '<- Digite parte do Nome do Medicamento e Pressione F2 para pesqu' +
        'isar.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 2
      Top = 34
      Width = 51
      Height = 19
      Caption = 'Label2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel14: TPanel
      Left = 2
      Top = 3
      Width = 216
      Height = 29
      Alignment = taRightJustify
      Caption = 'C'#243'digo de Barras: '
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel15: TPanel
      Left = 218
      Top = 3
      Width = 173
      Height = 29
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object cCodigo: TEdit
        Left = 5
        Top = 0
        Width = 165
        Height = 27
        TabOrder = 0
        OnExit = cCodigoExit
        OnKeyDown = cCodigoKeyDown
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 772
    Height = 369
    Align = alClient
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 770
      Height = 367
      Selected.Strings = (
        'NOTA_FISCAL'#9'16'#9'NOTA_FISCAL'
        'EMISSAO_NF'#9'11'#9'EMISSAO_NF'
        'RECEBIDO'#9'10'#9'RECEBIDO'
        'CNPJ_FORNECEDOR'#9'18'#9'CNPJ_FORNECEDOR'
        'NOME_FORNECEDOR'#9'40'#9'NOME_FORNECEDOR'
        'LOTE'#9'10'#9'LOTE'
        'QUANTIDADE'#9'7'#9'QTDE')
      IniAttributes.FileName = 'DELPHI32.ini.ini'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dsMDOQuery2
      KeyOptions = []
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 423
    Width = 772
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bSair: TBitBtn
      Left = 603
      Top = 8
      Width = 140
      Height = 25
      Hint = 'Sai do cadastro'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Transacao: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = fMenu.Conexao
    Params.Strings = (
      'read_committed'
      'rec_version'
      '')
    Left = 6
    Top = 6
  end
  object MDOQuery1: TMDOQuery
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 38
    Top = 3
  end
  object MDOQuery2: TMDOQuery
    Database = fMenu.Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from ENTRADAS')
    Left = 70
    Top = 3
    object MDOQuery2NOTA_FISCAL: TMDOStringField
      DisplayWidth = 16
      FieldName = 'NOTA_FISCAL'
      Origin = '"ENTRADAS"."NOTA_FISCAL"'
      Required = True
    end
    object MDOQuery2EMISSAO_NF: TDateField
      DisplayWidth = 11
      FieldName = 'EMISSAO_NF'
      Origin = '"ENTRADAS"."EMISSAO_NF"'
      Required = True
    end
    object MDOQuery2RECEBIDO: TDateField
      DisplayWidth = 10
      FieldName = 'RECEBIDO'
      Origin = '"ENTRADAS"."RECEBIDO"'
      Required = True
    end
    object MDOQuery2CNPJ_FORNECEDOR: TMDOStringField
      DisplayWidth = 18
      FieldName = 'CNPJ_FORNECEDOR'
      Origin = '"ENTRADAS"."CNPJ_FORNECEDOR"'
      Required = True
      Size = 18
    end
    object MDOQuery2NOME_FORNECEDOR: TMDOStringField
      DisplayWidth = 40
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"ENTRADAS"."NOME_FORNECEDOR"'
      Size = 50
    end
    object MDOQuery2LOTE: TMDOStringField
      DisplayWidth = 10
      FieldName = 'LOTE'
      Origin = '"ENTRADAS"."LOTE"'
      Required = True
      Size = 10
    end
    object MDOQuery2QUANTIDADE: TFloatField
      DisplayLabel = 'QTDE'
      DisplayWidth = 7
      FieldName = 'QUANTIDADE'
      Origin = '"ENTRADAS"."QUANTIDADE"'
      Required = True
    end
    object MDOQuery2TIPO_OP_NF: TMDOStringField
      DisplayWidth = 1
      FieldName = 'TIPO_OP_NF'
      Origin = '"ENTRADAS"."TIPO_OP_NF"'
      Required = True
      Visible = False
      Size = 1
    end
    object MDOQuery2CODIGO_BARRAS: TMDOStringField
      DisplayWidth = 13
      FieldName = 'CODIGO_BARRAS'
      Origin = '"ENTRADAS"."CODIGO_BARRAS"'
      Required = True
      Visible = False
      Size = 13
    end
    object MDOQuery2NRM: TMDOStringField
      DisplayWidth = 20
      FieldName = 'NRM'
      Origin = '"ENTRADAS"."NRM"'
      Required = True
      Visible = False
    end
    object MDOQuery2DESCRICAO: TMDOStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Origin = '"ENTRADAS"."DESCRICAO"'
      Visible = False
      Size = 50
    end
  end
  object dsMDOQuery2: TwwDataSource
    DataSet = MDOQuery2
    Left = 106
    Top = 3
  end
  object sdPesquisar: TwwSearchDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    ShadowSearchTable = MDOQuery1
    Caption = 'Search'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecUpperCase
    Left = 142
    Top = 6
  end
end
