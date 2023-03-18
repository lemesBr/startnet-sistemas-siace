object FrmRelRecebimento: TFrmRelRecebimento
  Left = 366
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatorio de Recebimento'
  ClientHeight = 300
  ClientWidth = 417
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 241
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 160
      Top = 120
      Width = 249
      Height = 49
      Caption = 'Per'#237'odo'
      TabOrder = 2
      object Label1: TLabel
        Left = 120
        Top = 24
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object EdtDataIni: TDateTimePicker
        Left = 8
        Top = 16
        Width = 97
        Height = 21
        Date = 38092.661706886600000000
        Time = 38092.661706886600000000
        Color = clSilver
        TabOrder = 0
      end
      object EdtDataFin: TDateTimePicker
        Left = 144
        Top = 16
        Width = 97
        Height = 21
        Date = 38092.661706886600000000
        Time = 38092.661706886600000000
        Color = clSilver
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 120
      Width = 153
      Height = 49
      Caption = 'Caixa'
      TabOrder = 1
      object ComboCaixa: TComboBox
        Left = 8
        Top = 16
        Width = 137
        Height = 21
        Style = csDropDownList
        Color = clSilver
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object CheckEmp: TCheckBox
      Left = 8
      Top = 216
      Width = 177
      Height = 17
      TabStop = False
      Caption = 'Todas as Empresas'
      TabOrder = 4
    end
    object RdgOrdem: TRadioGroup
      Left = 9
      Top = 168
      Width = 400
      Height = 41
      Caption = 'Ordem para Impress'#227'o'
      Columns = 2
      Items.Strings = (
        'Alfab'#233'tica'
        'Data Pagamento')
      TabOrder = 3
    end
    object GBConvenio: TGroupBox
      Left = 2
      Top = 41
      Width = 413
      Height = 49
      Align = alTop
      Caption = 'Conv'#234'nio'
      TabOrder = 0
      object BtnConsConv: TSpeedButton
        Left = 61
        Top = 18
        Width = 23
        Height = 21
        Hint = 'Consultar Conv'#234'nio'
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
        OnClick = BtnConsConvClick
      end
      object EdtCodConv: TAlignEdit
        Left = 8
        Top = 18
        Width = 49
        Height = 21
        Hint = 'Pressione F2 para Consultar Conv'#234'nio'
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = EdtCodConvExit
        OnKeyDown = EdtCodConvKeyDown
        OnKeyPress = EdtCodConvKeyPress
        Alignment = taRightJustify
        ColorOnFocus = clWindow
        ColorOnNoFocus = clWindow
        FontOnFocus.Charset = DEFAULT_CHARSET
        FontOnFocus.Color = clWindowText
        FontOnFocus.Height = -11
        FontOnFocus.Name = 'MS Sans Serif'
        FontOnFocus.Style = []
        FontOnNoFocus.Charset = DEFAULT_CHARSET
        FontOnNoFocus.Color = clWindowText
        FontOnNoFocus.Height = -11
        FontOnNoFocus.Name = 'MS Sans Serif'
        FontOnNoFocus.Style = []
      end
      object EdtNomeConv: TEdit
        Left = 88
        Top = 18
        Width = 315
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
        TabOrder = 1
      end
    end
    object RdgTipo: TRadioGroup
      Left = 2
      Top = 2
      Width = 413
      Height = 39
      Align = alTop
      Columns = 2
      Items.Strings = (
        'Detalhada'
        'Resumida')
      TabOrder = 5
      OnClick = RdgTipoClick
    end
    object CheckConvenio: TCheckBox
      Left = 8
      Top = 90
      Width = 305
      Height = 17
      Caption = 'Todos os Conv'#234'nios'
      TabOrder = 6
      OnClick = CheckConvenioClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 417
    Height = 40
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object BtnVis: TBitBtn
      Left = 72
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 0
      OnClick = BtnVisClick
    end
    object BtnImp: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = BtnVisClick
    end
    object BtnSair: TBitBtn
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 281
    Width = 417
    Height = 19
    Panels = <>
  end
  object QRecDet: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT R.COD_CTR, R.SEQUENCIA_CTR, R.VENCTO_CTR, R.DTPAGTO_CTR, ' +
        'R.VALOR_CTR, R.ACRESCIMO_RECEBIDO_CTR,'
      
        'R.VLRPAGO_CTR, R.DEVOLUCAO_CTR, R.DESCONTO_CONCEDIDO_CTR, C.NOME' +
        '_CLI'
      'FROM CONTAS_RECEBER R'
      'INNER JOIN CLIENTE C'
      'ON (R.COD_CLI = C.COD_CLI)')
    Left = 360
    Top = 112
    object QRecDetCOD_CTR: TIntegerField
      FieldName = 'COD_CTR'
      Origin = 'CONTAS_RECEBER.COD_CTR'
      Required = True
    end
    object QRecDetSEQUENCIA_CTR: TIntegerField
      FieldName = 'SEQUENCIA_CTR'
      Origin = 'CONTAS_RECEBER.SEQUENCIA_CTR'
      Required = True
    end
    object QRecDetVENCTO_CTR: TDateField
      FieldName = 'VENCTO_CTR'
      Origin = 'CONTAS_RECEBER.VENCTO_CTR'
      Required = True
    end
    object QRecDetDTPAGTO_CTR: TDateField
      FieldName = 'DTPAGTO_CTR'
      Origin = 'CONTAS_RECEBER.DTPAGTO_CTR'
    end
    object QRecDetVALOR_CTR: TIBBCDField
      FieldName = 'VALOR_CTR'
      Origin = 'CONTAS_RECEBER.VALOR_CTR'
      Required = True
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecDetACRESCIMO_RECEBIDO_CTR: TIBBCDField
      FieldName = 'ACRESCIMO_RECEBIDO_CTR'
      Origin = 'CONTAS_RECEBER.ACRESCIMO_RECEBIDO_CTR'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecDetVLRPAGO_CTR: TIBBCDField
      FieldName = 'VLRPAGO_CTR'
      Origin = 'CONTAS_RECEBER.VLRPAGO_CTR'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecDetNOME_CLI: TIBStringField
      FieldName = 'NOME_CLI'
      Origin = 'CLIENTE.NOME_CLI'
      Required = True
      Size = 60
    end
    object QRecDetDEVOLUCAO_CTR: TIBBCDField
      FieldName = 'DEVOLUCAO_CTR'
      Origin = 'CONTAS_RECEBER.DEVOLUCAO_CTR'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecDetDESCONTO_CONCEDIDO_CTR: TIBBCDField
      FieldName = 'DESCONTO_CONCEDIDO_CTR'
      Origin = 'CONTAS_RECEBER.DESCONTO_CONCEDIDO_CTR'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
  end
  object QRecRes: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT R.COD_CLI, SUM(R.VALOR_CTR) VALOR_BRUTO, SUM(R.ACRESCIMO_' +
        'RECEBIDO_CTR) ACRES_RECEBIDO,'
      'SUM(R.VLRPAGO_CTR) VALOR_PAGO, '
      
        'SUM(R.DEVOLUCAO_CTR) DEVOLUCAO, SUM(R.DESCONTO_CONCEDIDO_CTR) DE' +
        'SC_CONCEDIDO, C.NOME_CLI'
      'FROM CONTAS_RECEBER R'
      'INNER JOIN CLIENTE C'
      'ON (R.COD_CLI = C.COD_CLI)')
    Left = 360
    Top = 176
    object QRecResVALOR_BRUTO: TIBBCDField
      FieldName = 'VALOR_BRUTO'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecResACRES_RECEBIDO: TIBBCDField
      FieldName = 'ACRES_RECEBIDO'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecResVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecResDEVOLUCAO: TIBBCDField
      FieldName = 'DEVOLUCAO'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecResDESC_CONCEDIDO: TIBBCDField
      FieldName = 'DESC_CONCEDIDO'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QRecResNOME_CLI: TIBStringField
      FieldName = 'NOME_CLI'
      Required = True
      Size = 60
    end
    object QRecResCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Required = True
    end
  end
end
