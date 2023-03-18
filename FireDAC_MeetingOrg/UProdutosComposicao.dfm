object FrmProdutosComposicao: TFrmProdutosComposicao
  Left = 562
  Top = 268
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtos Composi'#231#227'o'
  ClientHeight = 314
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 295
    Width = 581
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 295
    Align = alClient
    Color = 16710131
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = 'Cod.Produto'
    end
    object BtnConsProd: TSpeedButton
      Left = 61
      Top = 32
      Width = 23
      Height = 21
      Hint = 'Consultar Produto'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
        BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
        2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
        00FFA87875C4A398D5B6A7D0A59FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF55BDFFB5D6EDA3908EB69B8BF0E7C8FEFDDAFEFDD9FDFCD8EADA
        C2CEAEA3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCB7B7D9B8A5FF
        F1C3FFFDD6FFFFDAFFFFDAFFFFDFFFFFEFF6F0EBB48D89FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFC6978FF7E2B5F8DBAAFDF7D0FFFFDAFFFFE1FFFFF2FFFF
        FBFFFFFFDFD0BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBBAA8FCE4AFF2
        C897FCF4CCFFFFDBFFFFE4FFFFF9FFFFFBFFFFECF2EFD0C79C96FF00FFFF00FF
        FF00FFFF00FFFF00FFE4C7AFFBE0ABEFBA86F9E3B6FFFFD9FFFFDEFFFFE8FFFF
        EAFFFFE0FAF8D7C6AC9AFF00FFFF00FFFF00FFFF00FFFF00FFDFC0ABFEE9B5EF
        BB84F3CC98FBEEC4FFFFDBFFFFDDFFFFDCFFFFDCF6F2D2C8A298FF00FFFF00FF
        FF00FFFF00FFFF00FFCAA098FDF0C2FAE9C5F4D3A6F4D09DF9E4B8FEF6CFFEFA
        D3FFFFDAE5D9BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDC4AEFF
        FFFFFFF7E9F3CC98F0BD89F4CE9DFCE6B6FDF6C8BE9D8FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFD3BFBAF6F0DCFFF2C0FDE6B1FEE9B5F4DE
        B7D0AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFCAAD96CFAE9BDDBFA9DCB8A8FF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnConsProdClick
    end
    object Label2: TLabel
      Left = 112
      Top = 16
      Width = 103
      Height = 13
      Caption = 'Descri'#231#227'o do Produto'
    end
    object Label12: TLabel
      Left = 424
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Quant.'
    end
    object BtnAddPro: TSpeedButton
      Left = 85
      Top = 32
      Width = 25
      Height = 22
      Hint = 'Cadastrar Produto'
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        700077777777777770007777700077777000777770C077777000777770C07777
        7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
        7000777770C07777700077777000777770007777777777777000777777777777
        7000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnAddProClick
    end
    object LabelUnd: TLabel
      Left = 496
      Top = 35
      Width = 73
      Height = 13
      AutoSize = False
      Caption = 'LabelUnd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtCodPro: TAlignEdit
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar'
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = EdtCodProEnter
      OnExit = EdtCodProExit
      OnKeyDown = EdtCodProKeyDown
      OnKeyPress = EdtCodProKeyPress
    end
    object EdtNomePro: TEdit
      Left = 112
      Top = 32
      Width = 305
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtQuant: TCurrencyEdit
      Left = 424
      Top = 32
      Width = 65
      Height = 21
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = ',#0.000'
      FormatOnEditing = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 64
      Width = 489
      Height = 225
      TabStop = False
      Color = clSilver
      DataSource = DSProd
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'COD_PRO_COMPOSICAO'
          Title.Alignment = taCenter
          Title.Caption = 'PROD.'
          Width = 48
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME_PRO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 306
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'QUANT'
          Title.Alignment = taCenter
          Title.Caption = 'QUANT.'
          Width = 56
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'UNIDADE_SAIDA_PRO'
          Title.Alignment = taCenter
          Title.Caption = 'UND'
          Visible = True
        end>
    end
    object BtnGrava: TButton
      Left = 504
      Top = 64
      Width = 65
      Height = 25
      Caption = '&Gravar'
      TabOrder = 2
      OnClick = BtnGravaClick
    end
    object BtnExclui: TButton
      Left = 504
      Top = 96
      Width = 65
      Height = 25
      Caption = '&Excluir'
      TabOrder = 5
      OnClick = BtnExcluiClick
    end
    object Button1: TButton
      Left = 504
      Top = 144
      Width = 65
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object QProd: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRProd
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT I.*, P.DESCRICAO, U.ABREVIATURA'
      'FROM PRODUTO_COMPOSTO I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO = P.CODIGO)'
      'INNER JOIN UNIDADES U'
      'ON (P.UNIDADE = U.CODIGO)'
      'WHERE I.CODIGO = :CODPRO'
      'ORDER BY P.DESCRICAO')
    Left = 464
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO_COMPOSTO"."CODIGO"'
      Required = True
    end
    object QProdCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
      Origin = '"PRODUTO_COMPOSTO"."COD_PRINCIPAL"'
    end
    object QProdPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PRODUTO_COMPOSTO"."PRODUTO"'
      Size = 70
    end
    object QProdQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"PRODUTO_COMPOSTO"."QUANTIDADE"'
      Precision = 18
      Size = 2
    end
    object QProdDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 70
    end
    object QProdABREVIATURA: TIBStringField
      FieldName = 'ABREVIATURA'
      Origin = '"UNIDADES"."ABREVIATURA"'
      Size = 6
    end
  end
  object DSProd: TDataSource
    AutoEdit = False
    DataSet = QProd
    Left = 464
    Top = 192
  end
  object IBTRProd: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 464
    Top = 240
  end
end
