object fPesqMecSaidas: TfPesqMecSaidas
  Left = 270
  Top = 69
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa as Saidas por Medicamento'
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
      DisableThemes = False
      Selected.Strings = (
        'NRO_PEDIDO'#9'10'#9'NRO_PEDIDO'
        'NRO_NOTIFICACAO'#9'10'#9'NRO_NOTIFICACAO'
        'DATA_PRESCRICAO'#9'10'#9'DATA_PRESCRICAO'
        'DATA_VENDA'#9'10'#9'DATA_VENDA'
        'LOTE'#9'10'#9'LOTE'
        'QUANTIDADE'#9'7'#9'QTDE'#9'F'
        'NOME_COMPRADOR'#9'50'#9'NOME_COMPRADOR'
        'NOME_PRESCRITOR'#9'50'#9'NOME_PRESCRITOR')
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
    DefaultDatabase = fMenu.coneccao
    Params.Strings = (
      'read_committed'
      'rec_version'
      '')
    Left = 6
    Top = 6
  end
  object MDOQuery1: TMDOQuery
    Database = fMenu.coneccao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    Left = 38
    Top = 3
  end
  object MDOQuery2: TMDOQuery
    Database = fMenu.coneccao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from SAIDAS')
    Left = 70
    Top = 3
    object MDOQuery2NRO_PEDIDO: TIntegerField
      DisplayWidth = 10
      FieldName = 'NRO_PEDIDO'
      Origin = '"SAIDAS"."NRO_PEDIDO"'
      Required = True
    end
    object MDOQuery2NRO_NOTIFICACAO: TMDOStringField
      DisplayWidth = 10
      FieldName = 'NRO_NOTIFICACAO'
      Origin = '"SAIDAS"."NRO_NOTIFICACAO"'
      Required = True
      Size = 10
    end
    object MDOQuery2DATA_PRESCRICAO: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_PRESCRICAO'
      Origin = '"SAIDAS"."DATA_PRESCRICAO"'
      Required = True
    end
    object MDOQuery2DATA_VENDA: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_VENDA'
      Origin = '"SAIDAS"."DATA_VENDA"'
      Required = True
    end
    object MDOQuery2LOTE: TMDOStringField
      DisplayWidth = 10
      FieldName = 'LOTE'
      Origin = '"SAIDAS"."LOTE"'
      Required = True
      Size = 10
    end
    object MDOQuery2QUANTIDADE: TFloatField
      DisplayLabel = 'QTDE'
      DisplayWidth = 7
      FieldName = 'QUANTIDADE'
      Origin = '"SAIDAS"."QUANTIDADE"'
      Required = True
    end
    object MDOQuery2NOME_COMPRADOR: TMDOStringField
      DisplayWidth = 50
      FieldName = 'NOME_COMPRADOR'
      Origin = '"SAIDAS"."NOME_COMPRADOR"'
      Required = True
      Size = 50
    end
    object MDOQuery2NOME_PRESCRITOR: TMDOStringField
      DisplayWidth = 50
      FieldName = 'NOME_PRESCRITOR'
      Origin = '"SAIDAS"."NOME_PRESCRITOR"'
      Required = True
      Size = 50
    end
    object MDOQuery2TIPO_RECEITUARIO: TMDOStringField
      DisplayWidth = 1
      FieldName = 'TIPO_RECEITUARIO'
      Origin = '"SAIDAS"."TIPO_RECEITUARIO"'
      Required = True
      Visible = False
      Size = 1
    end
    object MDOQuery2NRO_REG_PROFISSIONAL: TMDOStringField
      DisplayWidth = 10
      FieldName = 'NRO_REG_PROFISSIONAL'
      Origin = '"SAIDAS"."NRO_REG_PROFISSIONAL"'
      Required = True
      Visible = False
      Size = 10
    end
    object MDOQuery2CONSELHO_PROFISSIONAL: TMDOStringField
      DisplayWidth = 4
      FieldName = 'CONSELHO_PROFISSIONAL'
      Origin = '"SAIDAS"."CONSELHO_PROFISSIONAL"'
      Required = True
      Visible = False
      Size = 4
    end
    object MDOQuery2UF_CONSELHO: TMDOStringField
      DisplayWidth = 2
      FieldName = 'UF_CONSELHO'
      Origin = '"SAIDAS"."UF_CONSELHO"'
      Required = True
      Visible = False
      Size = 2
    end
    object MDOQuery2USO_MEDICAMENTO: TMDOStringField
      DisplayWidth = 1
      FieldName = 'USO_MEDICAMENTO'
      Origin = '"SAIDAS"."USO_MEDICAMENTO"'
      Required = True
      Visible = False
      Size = 1
    end
    object MDOQuery2TIPO_DOC_COMPRADOR: TMDOStringField
      DisplayWidth = 2
      FieldName = 'TIPO_DOC_COMPRADOR'
      Origin = '"SAIDAS"."TIPO_DOC_COMPRADOR"'
      Required = True
      Visible = False
      Size = 2
    end
    object MDOQuery2NRO_DOC_COMPRADOR: TMDOStringField
      DisplayWidth = 30
      FieldName = 'NRO_DOC_COMPRADOR'
      Origin = '"SAIDAS"."NRO_DOC_COMPRADOR"'
      Required = True
      Visible = False
      Size = 30
    end
    object MDOQuery2ORGAO_EXP_DOCTO: TMDOStringField
      DisplayWidth = 10
      FieldName = 'ORGAO_EXP_DOCTO'
      Origin = '"SAIDAS"."ORGAO_EXP_DOCTO"'
      Required = True
      Visible = False
      Size = 10
    end
    object MDOQuery2UF_EMISSAO_DOCTO: TMDOStringField
      DisplayWidth = 2
      FieldName = 'UF_EMISSAO_DOCTO'
      Origin = '"SAIDAS"."UF_EMISSAO_DOCTO"'
      Required = True
      Visible = False
      Size = 2
    end
    object MDOQuery2NRM: TMDOStringField
      DisplayWidth = 17
      FieldName = 'NRM'
      Origin = '"SAIDAS"."NRM"'
      Required = True
      Visible = False
      Size = 17
    end
    object MDOQuery2CODIGO_BARRAS: TMDOStringField
      DisplayWidth = 13
      FieldName = 'CODIGO_BARRAS'
      Origin = '"SAIDAS"."CODIGO_BARRAS"'
      Required = True
      Visible = False
      Size = 13
    end
    object MDOQuery2DESCRICAO: TMDOStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Origin = '"SAIDAS"."DESCRICAO"'
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
