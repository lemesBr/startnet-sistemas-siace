object FormLancCrediario: TFormLancCrediario
  Left = 337
  Top = 95
  Caption = 'Lan'#231'amento'
  ClientHeight = 551
  ClientWidth = 755
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = E
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 206
    Width = 755
    Height = 292
    Align = alBottom
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 284
      Top = 2
      Width = 57
      Height = 13
      Caption = 'C'#243'd. Cliente'
    end
    object Label3: TLabel
      Left = 81
      Top = 4
      Width = 62
      Height = 13
      Caption = 'Data Compra'
    end
    object Label4: TLabel
      Left = 178
      Top = 5
      Width = 82
      Height = 13
      Caption = 'Data Vencimento'
    end
    object Label5: TLabel
      Left = 192
      Top = 77
      Width = 52
      Height = 13
      Caption = 'Data Baixa'
    end
    object Label6: TLabel
      Left = 5
      Top = 42
      Width = 41
      Height = 13
      Caption = 'Hist'#243'rico'
      FocusControl = DBEdit6
    end
    object Label9: TLabel
      Left = 5
      Top = 77
      Width = 15
      Height = 13
      Caption = 'Sit.'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 5
      Top = 114
      Width = 63
      Height = 13
      Caption = 'Valor Parcela'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 5
      Top = 149
      Width = 52
      Height = 13
      Caption = 'Valor Juros'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 5
      Top = 180
      Width = 81
      Height = 13
      Caption = 'Valor Acr'#233'scimos'
      FocusControl = DBEdit12
    end
    object Label13: TLabel
      Left = 5
      Top = 216
      Width = 73
      Height = 13
      Caption = 'Valor Desconto'
      FocusControl = DBEdit13
    end
    object Label14: TLabel
      Left = 5
      Top = 254
      Width = 49
      Height = 13
      Caption = 'Sub Total:'
      FocusControl = DBEdit14
    end
    object Label15: TLabel
      Left = 152
      Top = 112
      Width = 52
      Height = 13
      Caption = 'Valor Pago'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 154
      Top = 147
      Width = 81
      Height = 13
      Caption = 'Saldo A Receber'
      FocusControl = DBEdit16
    end
    object Label17: TLabel
      Left = 157
      Top = 218
      Width = 46
      Height = 13
      Caption = 'N'#186' Venda'
      FocusControl = DBEdit17
    end
    object Label18: TLabel
      Left = 129
      Top = 77
      Width = 36
      Height = 13
      Caption = 'Parcela'
      FocusControl = DBEdit18
    end
    object Label28: TLabel
      Left = 156
      Top = 182
      Width = 21
      Height = 13
      Caption = 'Tipo'
      FocusControl = DBEdit28
    end
    object Label32: TLabel
      Left = 375
      Top = 4
      Width = 81
      Height = 13
      Caption = 'Nome do Cliente:'
      FocusControl = DBEdit32
    end
    object Label33: TLabel
      Left = 240
      Top = 182
      Width = 19
      Height = 13
      Caption = 'Ano'
      FocusControl = DBEdit33
    end
    object Label34: TLabel
      Left = 195
      Top = 182
      Width = 20
      Height = 13
      Caption = 'M'#234's'
      FocusControl = DBEdit34
    end
    object Label7: TLabel
      Left = 30
      Top = 79
      Width = 54
      Height = 13
      Caption = 'A - A Pagar'
      FocusControl = DBEdit18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 30
      Top = 96
      Width = 53
      Height = 13
      Caption = 'F - Baixado'
      FocusControl = DBEdit18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 410
      Top = 264
      Width = 335
      Height = 13
      Caption = 
        'Obs: Para Alterar uma parcela j'#225' paga Favor extornar a baixa pri' +
        'meiro...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 5
      Top = 18
      Width = 69
      Height = 21
      Color = cl3DLight
      DataField = 'CODIGO'
      DataSource = dts_crediario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 5
      Top = 54
      Width = 739
      Height = 21
      Color = 15263976
      DataField = 'HISTORICO'
      DataSource = dts_crediario
      TabOrder = 4
      OnEnter = DBEdit6Enter
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 5
      Top = 89
      Width = 17
      Height = 21
      Color = 15263976
      DataField = 'SITUACAO'
      DataSource = dts_crediario
      TabOrder = 5
      OnEnter = DBEdit9Enter
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 5
      Top = 128
      Width = 131
      Height = 21
      Color = 15263976
      DataField = 'VALOR_COMPRA'
      DataSource = dts_crediario
      TabOrder = 8
      OnEnter = DBEdit10Enter
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit11: TDBEdit
      Left = 5
      Top = 160
      Width = 133
      Height = 21
      Color = 15263976
      DataField = 'VALOR_JUROS'
      DataSource = dts_crediario
      TabOrder = 9
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit12: TDBEdit
      Left = 5
      Top = 194
      Width = 131
      Height = 21
      Color = 15263976
      DataField = 'VALOR_ACRESCIMO'
      DataSource = dts_crediario
      TabOrder = 10
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit13: TDBEdit
      Left = 5
      Top = 231
      Width = 132
      Height = 21
      Color = 15263976
      DataField = 'VALOR_DESCONTO'
      DataSource = dts_crediario
      TabOrder = 11
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit14: TDBEdit
      Left = 5
      Top = 266
      Width = 132
      Height = 21
      Color = 15263976
      DataField = 'VALOR_PAGAR'
      DataSource = dts_crediario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit15: TDBEdit
      Left = 153
      Top = 128
      Width = 129
      Height = 21
      Color = 15263976
      DataField = 'VALOR_PAGO'
      DataSource = dts_crediario
      TabOrder = 13
    end
    object DBEdit16: TDBEdit
      Left = 155
      Top = 160
      Width = 126
      Height = 21
      Color = 15263976
      DataField = 'VALOR_TOTAL'
      DataSource = dts_crediario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit17: TDBEdit
      Left = 155
      Top = 237
      Width = 69
      Height = 21
      Color = 15263976
      DataField = 'CODIGO_COMPRA'
      DataSource = dts_crediario
      TabOrder = 20
    end
    object DBEdit18: TDBEdit
      Left = 128
      Top = 89
      Width = 57
      Height = 21
      Color = 15263976
      DataField = 'PARCELA'
      DataSource = dts_crediario
      TabOrder = 6
      OnEnter = DBEdit18Enter
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit28: TDBEdit
      Left = 154
      Top = 194
      Width = 33
      Height = 21
      Color = 15263976
      DataField = 'TIPO'
      DataSource = dts_crediario
      ReadOnly = True
      TabOrder = 15
    end
    object DBEdit32: TDBEdit
      Left = 375
      Top = 17
      Width = 370
      Height = 21
      TabStop = False
      Color = 15263976
      DataField = 'NOME_SACADO'
      DataSource = dts_crediario
      TabOrder = 17
    end
    object DBEdit33: TDBEdit
      Left = 239
      Top = 194
      Width = 42
      Height = 21
      Color = 15263976
      DataField = 'ANO'
      DataSource = dts_crediario
      ReadOnly = True
      TabOrder = 18
    end
    object DBEdit34: TDBEdit
      Left = 194
      Top = 194
      Width = 30
      Height = 21
      Color = 15263976
      DataField = 'MES'
      DataSource = dts_crediario
      ReadOnly = True
      TabOrder = 16
    end
    object DBDateEdit1: TDBDateEdit
      Left = 80
      Top = 18
      Width = 91
      Height = 21
      DataField = 'DATA_COMPRA'
      DataSource = dts_crediario
      Color = 15263976
      NumGlyphs = 2
      TabOrder = 1
      OnEnter = DBDateEdit1Enter
      OnKeyPress = DBDateEdit1KeyPress
    end
    object DBDateEdit3: TDBDateEdit
      Left = 176
      Top = 18
      Width = 97
      Height = 21
      DataField = 'DATA_VENCIMENTO'
      DataSource = dts_crediario
      Color = 15263976
      NumGlyphs = 2
      TabOrder = 2
      OnEnter = DBDateEdit3Enter
      OnKeyPress = DBDateEdit3KeyPress
    end
    object RxDBComboEdit1: TRxDBComboEdit
      Left = 285
      Top = 18
      Width = 79
      Height = 21
      ClickKey = 113
      Color = 15263976
      DataField = 'CODIGO_CLIENTE'
      DataSource = dts_crediario
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 3
      OnButtonClick = RxDBComboEdit1ButtonClick
      OnEnter = RxDBComboEdit1Enter
      OnExit = RxDBComboEdit1Exit
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBDateEdit2: TDBDateEdit
      Left = 190
      Top = 90
      Width = 91
      Height = 21
      DataField = 'DATA_BAIXA'
      DataSource = dts_crediario
      Color = 15263976
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
      OnEnter = DBDateEdit2Enter
      OnKeyPress = DBDateEdit3KeyPress
    end
    object GroupBox1: TGroupBox
      Left = 410
      Top = 75
      Width = 334
      Height = 170
      Caption = 'Informa'#231#245'es Banc'#225'rias'
      TabOrder = 19
      object Label19: TLabel
        Left = 4
        Top = 15
        Width = 45
        Height = 13
        Caption = 'N'#186' Boleto'
        FocusControl = DBEdit19
      end
      object Label20: TLabel
        Left = 109
        Top = 52
        Width = 74
        Height = 13
        Caption = 'Banco Portador'
      end
      object Label23: TLabel
        Left = 4
        Top = 52
        Width = 74
        Height = 13
        Caption = 'Banco Portador'
        FocusControl = DBEdit23
      end
      object Label22: TLabel
        Left = 4
        Top = 90
        Width = 74
        Height = 13
        Caption = 'Data do Cr'#233'dito'
        FocusControl = DBEdit22
      end
      object Label21: TLabel
        Left = 109
        Top = 89
        Width = 44
        Height = 13
        Caption = 'Remessa'
        FocusControl = DBEdit21
      end
      object Label27: TLabel
        Left = 4
        Top = 126
        Width = 91
        Height = 13
        Caption = 'C'#243'digo do Cedente'
        FocusControl = DBEdit27
      end
      object DBEdit19: TDBEdit
        Left = 4
        Top = 28
        Width = 251
        Height = 21
        Color = clWhite
        DataField = 'NUMBOLETO'
        DataSource = dts_crediario
        TabOrder = 0
      end
      object DBEdit23: TDBEdit
        Left = 4
        Top = 66
        Width = 88
        Height = 21
        Color = clWhite
        DataField = 'ID_PORTADOR'
        DataSource = dts_crediario
        TabOrder = 1
      end
      object DBEdit22: TDBEdit
        Left = 4
        Top = 104
        Width = 83
        Height = 21
        Color = 15263976
        DataField = 'DATACREDITO'
        DataSource = dts_crediario
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit21: TDBEdit
        Left = 110
        Top = 106
        Width = 35
        Height = 21
        Color = 15263976
        DataField = 'REMESSA'
        DataSource = dts_crediario
        TabOrder = 4
      end
      object DBEdit20: TDBEdit
        Left = 109
        Top = 65
        Width = 134
        Height = 21
        Color = clWhite
        DataField = 'BANCO_PORTADOR'
        DataSource = dts_crediario
        TabOrder = 2
      end
      object DBEdit27: TDBEdit
        Left = 4
        Top = 143
        Width = 160
        Height = 21
        Color = clWhite
        DataField = 'CODIGOCEDENTE'
        DataSource = dts_crediario
        TabOrder = 5
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 498
    Width = 755
    Height = 53
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object btnNovo: TsuiButton
      Left = 113
      Top = 6
      Width = 102
      Height = 40
      Hint = 'Novo Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Novo'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00529C6B00106B1000106B1000529C
        6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00529C
        6B00106B1000106B1000106B1000106B1000106B10007BD6730021A53900106B
        1000106B1000106B1000106B1000106B1000529C6B00FF00FF00FF00FF004A8C
        4A0021A5390021A5390021A5390021A5390021A5390021A5390021A5390021A5
        390021A5390021A5390021A5390021A53900106B1000FF00FF00FF00FF004A8C
        4A007BD673007BD673007BD673007BD673007BD673007BD6730021A539007BD6
        73007BD673007BD673007BD673007BD67300106B1000FF00FF00FF00FF00529C
        6B004A8C4A004A8C4A004A8C4A004A8C4A004A8C4A007BD6730021A53900106B
        1000106B1000106B1000106B1000106B1000529C6B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00529C6B004A8C4A004A8C4A00529C
        6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnNovoClick
      ResHandle = 0
    end
    object btnEditar: TsuiButton
      Left = 219
      Top = 6
      Width = 102
      Height = 40
      Hint = 'Editar Registro '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Editar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C64A
        0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A
        0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFCE00FFE7B50039526300CEC6
        9C00F7CE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00ADB5B500ADB5B500ADB5B500ADB5B500ADB5B500395263000000
        00009CB5C600ADB5B500ADB5B500ADB5B500FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700395263000000
        000000000000FFCE9C00F7CE9C00FFCE9C00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00ADB5B500ADB5B500ADB5B500ADB5B500ADB5B50039526300FFEF
        D600D673210000000000A5B5B500ADB5B500FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0063848C00FFEF
        D600D673210000000000FFCE9C00FFCE9C00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00ADB5B500ADB5B500ADB5B500ADB5B500ADB5B500ADB5B5003952
        6300FFEFD600D6732100000000009CA5AD00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006384
        8C00FFEFD600D673210000000000FFCE9C00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00ADB5B500ADB5B500ADB5B500ADB5B500ADB5B500ADB5B500ADB5
        B50039526300FFEFD600D673210000000000FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0063848C00FFEFD600D673210000000800FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF003952630000000000104AD60000000000C64A0000FF00FF00C64A
        0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A
        0000C64A00008C521000104AD600104AD60021001000C64A0000FF00FF00FF00
        FF00C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A
        0000C64A0000C64A00000000840000008400E7214A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnEditarClick
      ResHandle = 0
    end
    object btnCancelar: TsuiButton
      Left = 326
      Top = 6
      Width = 102
      Height = 40
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Cancelar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF000000
        B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF000000
        B5000000B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000D6000000BD000000B5000000B500FF00FF00FF00FF00FF00FF00FF00
        FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000B5000000B5000000B500FF00FF000000B5000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000C6000000C6000000CE000000
        B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000C6000000C6000000DE00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000D6000000CE000000DE000000
        EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000E7000000DE000000D600FF00FF00FF00FF000000
        E7000000EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000DE000000EF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000F7000000F7000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF000000
        F7000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000F700FF00FF00FF00FF000000F7000000
        F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000F7000000
        F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnCancelarClick
      ResHandle = 0
    end
    object btnSalvar: TsuiButton
      Left = 435
      Top = 6
      Width = 102
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Salvar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF009C423900943939008C313100947B7B00B5BDB500BDBDBD00C6BDBD00BDBD
        B500B5BDBD00A5848400842929008429290094313100FF00FF00FF00FF00AD5A
        5200C64A4A00C64A4A00A542420084636300AD8C8C00DEC6C600FFF7F700FFFF
        FF00EFF7F700C69C9C007B18180084181800B54242009C393900FF00FF00AD5A
        5200BD4A4A00C64A4A00A54242008463630084292900A55A5A00E7D6D600FFFF
        F700FFFFFF00CEA5A5007B18180084181800AD4242009C393900FF00FF00AD5A
        5200BD4A4A00C64A4A00A5424200946B6B008421210084212100BDADAD00EFEF
        EF00FFFFFF00DEB5B5007B18180084181800AD4242009C393900FF00FF00AD5A
        5200BD4A4A00C64A4A00A54242009C7373008C2929007B18180094848400CED6
        CE00FFFFFF00DEBDBD007B1818007B181800AD3939009C393900FF00FF00AD5A
        5200BD4A4A00C64A4A00AD424200B5737300B57B7B009C6B6B0094737300A58C
        8C00DEBDBD00D69494008C2121008C212100B54242009C393900FF00FF00AD5A
        5200BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD42
        4200BD424200BD424200BD4A4A00BD4A4A00C64A4A0094393900FF00FF00AD5A
        5200A53931009C423900B56B6B00C68C8C00CE949400CE949400CE949400CE8C
        8C00CE949400CE949400CE9C9400C6848400BD4A4A0094393900FF00FF00AD5A
        52009C313100DEBDBD00FFF7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700FFFFFF00D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CECE00FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00F7EFEF00FFF7F700D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CEC600EFEFEF00CECEC600CECECE00CECECE00CECECE00CECE
        CE00CECECE00CECECE00E7E7E700D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CECE00EFEFEF00D6CECE00D6D6D600D6D6D600D6D6D600D6D6
        D600D6D6D600D6CECE00EFEFEF00D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CECE00F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDE
        D600DEDED600DED6D600EFEFEF00D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CECE00EFEFEF00CECECE00CECECE00CECECE00CECECE00CECE
        CE00CECECE00CECECE00E7E7E700DEADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CEC600FFFFFF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEF
        EF00FFEFEF00FFEFEF00FFFFF700D6ADAD00B54242009C393900FF00FF00FF00
        FF0094313100BDA5A500C6CEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600BD9C9C008C313100FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnSalvarClick
      ResHandle = 0
    end
    object btnExcluir: TsuiButton
      Left = 540
      Top = 6
      Width = 102
      Height = 40
      Hint = 'Excluir Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'E&xcluir'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 4
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ADAD9C009C9C84009C9C84009C9C84009C846B009C84
        6B00AD9C7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00EFDED600FFEFBD00FFDEB500FFDEAD00FFDEB500FFEFBD00FFF7
        CE00FFDEB5009C846B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EFDED600FFFFD600FFDEAD00FFD69C00FFCE8C0029A52900FFF7DE00FFF7
        DE00FFFFDE00FFFFD6009C846B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00DEB58400FFDEA500FFF7CE00FFD6A500FFCE8C0029A52900008400000084
        0000108C1000BDEFB500FFFFD6009C846B00FF00FF00FF00FF00FF00FF00FF00
        FF00F7B57300F7AD6B00FFBD8400FFDEAD00FFF7BD0029A529000084000039AD
        3900EFFFEF0029A52900FFDEB500AD9C7B00FF00FF00FF00FF00FF00FF00EFDE
        D600FFB57B00FFB57B00FFB57B00FFB57B00FFD6A50029A5290029A52900108C
        1000D6EFCE0073CE7300BDCE8C00AD9C7B00FF00FF00FF00FF00FF00FF00EFD6
        B500FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFDEBD006BBD6300FFF7DE005AB5
        5A0029A5290029A52900D6DEAD00CEBD9C00FF00FF00FF00FF00FF00FF00F7D6
        FD00FFD6A500FFD6A500FFD6A500FFD6A500FFDEAD0039AD39006BBD63006BBD
        6B000084000029A52900FFDEB500CEBD9C00FF00FF00FF00FF00FF00FF00FFDE
        FD00FFEFB500FFEFB500FFEFB500FFEFB500FFEFB500D6EFB500108C10000084
        00000084000029A52900FFEFCE00CEBD9C00FF00FF00FF00FF00FF00FF00FFDE
        FD00FFFFD600FFFFD600FFFFD600FFFFD600FFFFD600FFFFD600EFFFD600ADDE
        A500BDEFB50029A52900FFFFDE00D6D6B500FF00FF00FF00FF00FF00FF00FFCE
        9C00FFFFD600FFFFD600FFFFD600FFFFD600FFF7CE00FFEFB500FFD6A500FFDE
        A500FFEFBD00FFFFD600FFFFD600D6D6B500FF00FF00FF00FF00FF00FF00FFDE
        BD00FFCE9C00FFCE9C00FFCE9C00EFBD8C00EFA55A00EFA55200EFA55A00F7AD
        6300F7AD6300F7B57300FFDEAD00D6D6B500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFCE9C00EFBD8C00F7AD
        6B00F7AD6B00F7B57300F7B57300FFD69C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFCE9C00FFB57B00FFB57B00F7BD8C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnExcluirClick
      ResHandle = 0
    end
    object DBNavigator: TsuiDBNavigator
      Left = 5
      Top = 6
      Width = 100
      Height = 30
      Cursor = crDefault
      UIStyle = WinXP
      DataSource = dts_crediario
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        'Novo Rgistro'
        'Excluir Registro'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 6
      TabStop = True
    end
    object btnLocalizar: TsuiButton
      Left = 645
      Top = 6
      Width = 102
      Height = 40
      Hint = 'Localizar Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Localizar F2'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 5
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C0D4EEB4D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7CCC724576EB511F7C1F7C1F7C836A836A836A836A836A836A
        836A1F7C1F7C1F7C1F7CEA7E4676EC4D1F7C836A907F717F4F7B2B770977E876
        E772836A1F7C1F7C1F7C1F7CEA7E466EED498A6216671767336F4E7B2A770977
        E876836A1F7C1F7C1F7C1F7C1F7C0E7B964E5C5BFF6BFF6B9E6714674C7B2A7B
        0977836A1F7C1F7C1F7C1F7C1F7C915E5E57DF63FF6FFF73FF7F7D6FD25E4C7B
        4B7B836A1F7C1F7C1F7C1F7C1F7CBA4E5F537F57FF6FFF77FF7BFF6F1A5B6E7B
        6D7B836A1F7C1F7C1F7C1F7C1F7CBA527F531E47DF67FF73FF73FF6F1A5B8F7F
        8F7F836A1F7C1F7C1F7C1F7C1F7C72529D63BF673E4F7E5BFF67BE631463B07F
        B07F836A1F7C1F7C1F7C1F7C1F7C1F7CB756BE6F9F5B5F537E571863917FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C6C5A39635B67596BB67FB17FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AF67FFB7FFB7FD77FB27FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AD67FB77F957B727B6E7B6E7B
        B07F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A2E772F774F774F772D772B77
        2A77836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A7277D77FD57FD47FD27FB17F
        6E7B836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A
        836A1F7C1F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnLocalizarClick
      ResHandle = 0
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 2
    object RxLabel1: TRxLabel
      Left = 4
      Top = 0
      Width = 102
      Height = 13
      Caption = 'C'#243'digo do Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object myLabel3d1: TsLabelFX
      Left = 137
      Top = 13
      Width = 386
      Height = 37
      Caption = 'Lan'#231'amento avulso  de Credi'#225'rio'
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -24
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Cliente: TComboEdit
      Left = 3
      Top = 14
      Width = 123
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnButtonClick = ClienteButtonClick
      OnChange = ClienteChange
      OnEnter = ClienteEnter
      OnKeyPress = ClienteKeyPress
    end
    object suiButton4: TsuiButton
      Left = 640
      Top = 7
      Width = 107
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Caption = 'buscar'
      AutoSize = False
      Visible = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFDFDFEFAFBFDF7F8F8F9F0F2F1E7EAE8DFE2E4DEDE
        DEDBDBDAD8DBD9DBDEDCE7E3E8EEEEEDF6FAF7FAFDFCFFFFFFFFFFFFFFFFFFFE
        FEFEFFFFFFFFFFFFFFFFFFFCFCFCEEF4F2E3E6E8D5D6DAC2C0C8B5AFB29F9B99
        8F8D8982807F7B787B7774767875767B797884847F989698B6B2B6DDD9DAF3F3
        F3FDFDFDFFFFFFFFFFFFFFFFFFFCFCFCE9E9E9C6C6C6ADA5AC8E898B74736E62
        64594B5E4D4A61464B6843516F4750754754764C51704A476240435244444F45
        585A577C797BB0B0B0E9E9E9FDFDFDFFFFFFFDFDFDE4E4E49F9F9F6868684C6A
        4647733A46852F49962B4CA12A50A62E59AF3C63B74B7CBE628DC8789FD18FAA
        D69FA5D3988CB4785A734E414A455F5F5FA2A2A2E8E8E8FEFEFEF4F6F5A2B09D
        3A773B30862D439C3847893967905B6AA76084C36864995073AE555E965062AE
        4E6DB55E7FBD7090C47B98CB8BA3D096A9D49C7DAE724452425F5D5EB5B4B1EF
        F2F3CFDACD3C8E3459AB586EB26B6AAD697AAB739DAA968B9F839DBA95A3B3A6
        77897687A57D87C37677BA686FB56172B56174B86978B86678B76677B76C5B98
        513E514180787ED7D9DA79B56C68B25F94BD8A85C07B7EBE757FB876A3B0A5F1
        F3F4A9ADAA9E9D9D7C7B7959605476937289B58492C98C89C2847BBA7474B469
        61A9564B9B423A9A3032702D5D5A61BCBBBA4EA13F42A02F8EC482ACD2A1A6CF
        9B9BCB8F7E877EDCD6D9A7AAA48C878E8987845D5F5D596156C1D8B9BDE1B4B8
        DDB2B2D9B0A8D4AD8ECE9356AF542A90242A88244D604BB2AFB1A4CB9B6FB24A
        51A32E5DB93288C660A8D886C1E3A9B2C79BBFD7AEC4D7B0C1DAAAB5DA9DB4DC
        9AB4E49CAEDD8CABDD86A2CF669BCB5791C43277BA2244AA183A981E4C7544B9
        B9B9FEF1ECF6E3D2A3A1B328487359A1BF36517436788B519AA2516F88346880
        3E879D53A5B758A1B8284F6F5E759D344E7866B6D577BEDA29636F3977874E81
        9541787A545F62D0C6C8FDFDF6F3D5C8FEF5F242727A2C61782B32512953673C
        6C7823364F2C4F622D606C2D636E2E697A2650633663722A616D5FA4B95B96A6
        2D57553F6C6B3E6F7235666563615EDCCECAFCFEFFF9E7DBF9E2D2D6D9D8FDFA
        F3C7C6C7828F9790A3AC61858F53777F244D5A2E5F73223B4A2B5E6A27616C2A
        616E3B7685245864234C4A215153254B4B254A4B887C70E2D3C6FCFDFEFFFEFF
        F2E3D3FDDCCDFBEFE8FEF1EDFFF3EFFCEEE4FCEFE7FDF1EEEDE8E293A5AA8597
        A35B7E9E2C65753C758F3F86A63B7B9015454C204745204849314F57B8AFAAEA
        DBD3FDFEFDFEFDFDFFF4EAF9D5C5F9F3EDFDF6F2FEF2EBFAE6DAFBDDCFFAF1E9
        FDF5ECF5E9EBCBD0E24F89C34293D054C7F955CCFF55CFFD57C2E731769A194E
        5353737EE4D1D4F3E7DBFEFEFFFEFEFEFDFCF8EFC9B5FCECE1FBF4ECFEF5EEFD
        EBE3F8D9BFF9D7C5F9DCD3BAB7C5748ABC4890D145C0FD49C6FE50C9FC49C8FC
        4BC6FE42C2FE4EAEE24D7EB68C96C0EEE8F1FCFDFFFEFEFEF9FEFDF8D0BBF8D5
        C3F8EADFFDF5F1FFF3F2FDEBE4FDD3BEFBD5BFC2C6D25D96D93BB0F738B6FF44
        BEFE40BFFE4BC1FF45BEFE41BCFD36B3FB51A8EA85A3D3F8FAFAFFFFFDFBFEFF
        FFFFFFF5E8DFF8DAC8F5E6D2FBD9D1FADAC8F9D8CAFCE4D4F0E5E3A6B5D44886
        CC30A8F936AFFF38B4FF38B7FD38B7FE37B5FD36B3FC2DAEFF3093E7769DD3DF
        E0F6FFFFFDFBFFFFFDFFFFFFFFF9F9E5DAF4D8C5F9EBDEFBEDDDFAECE7FCECDE
        F0E5DC8CA0C55897DE2EA6FB37AFFF41B4FD3FB5FF3FB4FF3FB3FF3DB1FF33AB
        FF41A6F15E91D0CBDFECFFFFFFFDFFFFFCFFFFFDFFFEFCFEFCF5D4C3F7EADAF9
        EEE4FFEDE6FAE8E3FDDCC8DFCDD6558AD132A5F94BB3FF5ABBFD5CBBFF5CBAFF
        5BBAFF5AB8FF5AB9FD3993E4AABDE8FBF8FEFAFDFDFFFFFFFFFFFFFFFEFFF9FE
        FEF6DECBFFE7D9FAEEE8FCF0E7F9ECE4F7D8C49D9AB25382C6368DE646ADF781
        C7FE82C8FE82C8FE82C8FE81C7FE49A3F04791E35D88C3EAF1F9FFFFFFFFFFFF
        FFFFFFFFFFFFFDFFFFFFFAF3F2D2C4FBEFDEFEF2E8F9EDE9FAE6DDF4D4BEDDBE
        B13C7EC74BA2F25BAFFC9FD0FEA7D6FD93CEFC6DB4F73995E696B4E7FEFDFCF9
        FEFDFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFAFEFCFCF4EEEFD6C8F7E2D1FCE9DE
        FCE7DCF7DCCCD5BBBE80A0D189B0E33492EF3994E93399EF4E9DED4D92E1A8BF
        E591AAD0FBFDFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFFFCFEFEFD
        FDF6FFF6EBFCF1E8FFF5EEFFF4EEFEFDFCFEFDFAB9CFE68CA6D7ABBFE54D83CF
        C8D5F67196CFFEFEFBFAFEFDFDFFFFFEFFFAFFFFFFFFFFFFFFFFFFFFFFFFFCFD
        FFFFFFFEF9FFFEFEFBFFFCFFFFFDFEFEFDFEFEFCFEFEFCFFFCFCFDFFF0F7FCF4
        F8FBEDF2F9C1D2EBFFFFF9F1F1F9FDFFFDF9FFFFFFFDFFFDFFFD}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton4Click
      ResHandle = 0
    end
    object Edit2: TEdit
      Left = 652
      Top = 27
      Width = 97
      Height = 21
      TabOrder = 2
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 40
    Width = 755
    Height = 36
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 3
    object Panel6: TPanel
      Left = 2
      Top = 5
      Width = 71
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 0
      object RxLabel5: TRxLabel
        Left = 3
        Top = 4
        Width = 63
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object Panel7: TPanel
      Left = 76
      Top = 5
      Width = 480
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel6: TRxLabel
        Left = 4
        Top = 4
        Width = 373
        Height = 15
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object Panel8: TPanel
      Left = 568
      Top = 6
      Width = 180
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      object RxLabel7: TRxLabel
        Left = 5
        Top = 6
        Width = 173
        Height = 15
        AutoSize = False
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
  end
  object DBGrid1: TXDBGrid
    Left = 0
    Top = 76
    Width = 755
    Height = 130
    Align = alClient
    DataSource = dts_crediario
    FixedStyle = fsMild
    FocusRect = frMild
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Gradient.Direction = gdHorizontal
    Gradient.StartColor = cl3DLight
    GridStyle.VisualStyle = vsXPStyle
    MarkerStyle = msMild
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgMarkerAscendOnly, dgForceSequence, dgThumbTracking]
    OptionsEx = [dgBlankRow, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgDelaySelectedRows, dgSelectedAutoHidden]
    ParentFont = False
    TabOrder = 4
    Totals.Color = 10930928
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_COMPRA'
        ReadOnly = True
        Title.Caption = 'N'#186' Venda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 58
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        ReadOnly = True
        Title.Caption = 'Parc.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 34
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = 'Vecto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Title.Marker = tmAscend
        Title.MarkerIndex = 2
        Visible = True
        Width = 66
      end
      item
        Expanded = False
        FieldName = 'DIAS_VENCIDO'
        Title.Caption = 'Vencido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 34
      end
      item
        Expanded = False
        FieldName = 'DATA_BAIXA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data Baixa'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 68
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        ReadOnly = True
        Title.Caption = 'Hist'#243'rico'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 112
      end
      item
        Expanded = False
        FieldName = 'VALOR_COMPRA'
        ReadOnly = True
        Title.Caption = 'Valor Titulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 69
      end
      item
        Expanded = False
        FieldName = 'VALOR_JUROS'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Juros'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 68
      end
      item
        Expanded = False
        FieldName = 'VALOR_ACRESCIMO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Multa'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Pago'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 65
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 71
      end>
    OrderFields = 'DATA_VENCIMENTO'
  end
  object Sds_crediario: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CREDIARIO order by DATA_VENCIMENTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 39
    Top = 32
    object Sds_crediarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_crediarioCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Sds_crediarioDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object Sds_crediarioDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object Sds_crediarioDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object Sds_crediarioHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object Sds_crediarioUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object Sds_crediarioUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object Sds_crediarioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Sds_crediarioVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_crediarioVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_crediarioVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_crediarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_crediarioVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      ReadOnly = True
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_crediarioVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_crediarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ReadOnly = True
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_crediarioCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object Sds_crediarioPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object Sds_crediarioNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object Sds_crediarioBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object Sds_crediarioREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object Sds_crediarioDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object Sds_crediarioID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object Sds_crediarioENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object Sds_crediarioCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_crediarioNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object Sds_crediarioCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object Sds_crediarioTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Sds_crediarioCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object Sds_crediarioNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object Sds_crediarioSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object Sds_crediarioNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object Sds_crediarioANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object Sds_crediarioMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
  end
  object dts_crediario: TDataSource
    DataSet = Sds_crediario
    Left = 42
    Top = 5
  end
  object SPC_CREDIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'INSERECOD_CREDIARIO'
    Left = 80
    Top = 9
  end
  object MsgInformacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'Hello world!'
    Left = 550
    Top = 3
  end
  object MsgConfirmacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Exclus'#227'o?'
    Left = 522
    Top = 3
  end
  object MsgAtencao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiWarning
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 494
    Top = 3
  end
  object MsgErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 466
    Top = 3
  end
  object MessageLocCli: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiWarning
    Text = 'Cliente Sem Contas a Receber!'
    Left = 430
  end
end
