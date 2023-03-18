object FrmConsCheque: TFrmConsCheque
  Left = 368
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Cheques Emitidos'
  ClientHeight = 428
  ClientWidth = 812
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 409
    Width = 812
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 812
    Height = 137
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 5
      Width = 329
      Height = 49
      Caption = 'Consultar por'
      TabOrder = 0
      object ComboCons: TComboBox
        Left = 8
        Top = 18
        Width = 305
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'C'#211'DIGO'
        OnChange = ComboConsChange
        Items.Strings = (
          'C'#211'DIGO'
          'C'#211'D. CLIENTE'
          'CONTA CORRENTE'
          'DATA EMISS'#195'O'
          'DATA VENCIMENTO'
          'NUM.CHEQUE'
          'FAVORECIDO')
      end
    end
    object GB2: TGroupBox
      Left = 8
      Top = 61
      Width = 329
      Height = 49
      Caption = 'Consultar por'
      TabOrder = 1
      object BtnCons: TSpeedButton
        Left = 61
        Top = 18
        Width = 23
        Height = 21
        Flat = True
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
        OnClick = _
      end
      object Label7: TLabel
        Left = 160
        Top = 24
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object EdtCons: TEdit
        Left = 8
        Top = 18
        Width = 305
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object edtcod: TAlignEdit
        Left = 8
        Top = 18
        Width = 49
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnEnter = edtcodEnter
        OnExit = edtcodExit
        OnKeyDown = edtcodKeyDown
        OnKeyPress = edtcodKeyPress
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
      object EdtNome: TEdit
        Left = 88
        Top = 18
        Width = 225
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
        TabOrder = 2
      end
      object EdtDataIni: TDateTimePicker
        Left = 48
        Top = 18
        Width = 97
        Height = 21
        Date = 40909.412703738400000000
        Time = 40909.412703738400000000
        Color = clSilver
        TabOrder = 3
      end
      object EdtDataFin: TDateTimePicker
        Left = 192
        Top = 18
        Width = 97
        Height = 21
        Date = 41274.412703738400000000
        Time = 41274.412703738400000000
        Color = clSilver
        TabOrder = 4
      end
    end
    object BtnOk: TButton
      Left = 352
      Top = 82
      Width = 49
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = BtnOkClick
    end
    object GroupBox2: TGroupBox
      Left = 624
      Top = 16
      Width = 169
      Height = 113
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 55
        Height = 13
        Caption = 'A Depositar'
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 59
        Height = 13
        Caption = 'Depositados'
      end
      object Label3: TLabel
        Left = 8
        Top = 48
        Width = 53
        Height = 13
        Caption = 'Devolvidos'
      end
      object Label4: TLabel
        Left = 8
        Top = 64
        Width = 30
        Height = 13
        Caption = 'Pagos'
      end
      object Label5: TLabel
        Left = 8
        Top = 88
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Ladepositar: TLabel
        Left = 96
        Top = 16
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ladepositar'
      end
      object LDepositados: TLabel
        Left = 96
        Top = 32
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ladepositar'
      end
      object Ldevolvidos: TLabel
        Left = 96
        Top = 48
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ladepositar'
      end
      object LPagos: TLabel
        Left = 96
        Top = 64
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ladepositar'
      end
      object Label6: TLabel
        Left = 88
        Top = 80
        Width = 75
        Height = 13
        Caption = '-------------------------'
      end
      object LTotal: TLabel
        Left = 96
        Top = 88
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ladepositar'
      end
    end
    object CheckEmp: TCheckBox
      Left = 8
      Top = 112
      Width = 177
      Height = 17
      Caption = 'Todas as Empresas'
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 812
    Height = 272
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 2
    object spbImprimir: TSpeedButton
      Left = 640
      Top = 235
      Width = 165
      Height = 33
      Caption = 'Gerar Relat'#243'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        20000000000090070000120B0000120B00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FADA
        B400FAD6AA00FEE2BC00FFE6C300FFE5C100FFE5C100FFE5C100FFE6C400FCDD
        B600FAD8AF00FBD8AD00FADAB400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFD59A00FDD39D00E7A3
        5900DA873200DE903E00DE903E00DE903E00DA873100F1B97900FDD29B00F9C9
        8F00FFD59A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F9F9F900F4F3F200FFDA9D00FFD39B00ECAF6A00E39C4F00E6A2
        5700E6A25700E6A25700E29A4B00F8CA9000FFE1B200FDCE9400FFD89B00F4F3
        F200F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF009C9C9C003F40
        41002B313800EBC08C00FFDBA200EBAC6600E1964700E49D5100E49D5100E49D
        5100E59F5500DE913F00D9863100FFCB8B00EDC593002B3138003F4041009C9C
        9C00EFEFEF00FFFFFF00FFFFFF0097979700424242003D3E400042424300F5C9
        9100FFE1A500F1AF6600E7984500EA9F4F00EA9F4F00EA9F4F00EA9F4F00EA9E
        4E00E89B4A00FFD29000F7CD9600424243003D3E40004242420097979700FFFF
        FF00FFFFFF008A8A8A00424242003F41440028292B00E89F4400FFAD4700FBB3
        5700FEBA6100FDB85E00FDB85E00FDB85E00FDB85E00FDB85E00FDB95F00FFB2
        4E00E79D4200292A2B003F414400424242008A8A8A00FFFFFF00FFFFFF008A8A
        8A0042424200434444003233330045392A004A3D2C00493C2C00493C2C00493C
        2C00493C2C00493C2C00493C2C00493C2C00493C2C004A3D2C0045392A003333
        330044444400424242008A8A8A00FFFFFF00FFFFFF00868686003C3C3C003C3C
        3C0041404000303740002D353F002E363F002E363F002E363F002E363F002E36
        3F002E363F002E363F002E363F002D353F0030374000414040003C3C3C003C3C
        3C0086868600FFFFFF00FFFFFF00939393005151510051515100515151005151
        5100515151005151510051515100515151005151510051515100515151005151
        510051515100515151005151510051515100515151005151510093939300FFFF
        FF00FFFFFF00A1A1A10067676700676767006767670067676700676767006767
        6700676767006767670067676700676767006767670067676700676767006767
        67006768660066636A006559710067696500A1A2A000FFFFFF00FFFFFF009D9D
        9D00616161006161610061616100616161006161610061616100616161006161
        6100616161006161610061616100616161006161610061616100605E6400636D
        5800688C4100605A66009C9AA000FFFFFF00FFFFFF00A6A6A600616161006161
        6100626262005C5D5F005C5D5F005C5D5F005C5D5F005C5D5F005C5D5F005C5D
        5F005C5D5F005C5D5F005C5D5F005C5D5F005B586300657554006CA92D005F56
        6900A5A1AA00FFFFFF00FFFFFF00EDEDED00A1A1A10066666600636363005B5D
        5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D
        5F005B5D5F005B5D5F005B5E5E00625F660063567100A1A3A000EEEEED00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700484C5100D5B08300EFC38E00E5BC
        8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00EFC3
        8E00D5B08300484C5100F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00CDCCCB00FFDB9A00FFD99800FFD49500FFD49500FFD4
        9500FFD49500FFD49500FFD49500FFD49500FFD49500FFD99800FFDB9A00CDCC
        CB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFD89C00F9C98F00F9CA9000F9CA9000F9CA9000F9CA9000F9CA
        9000F9CA9000F9CA9000F9CA9000F9C98F00FFD89C00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8CA
        9400F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA
        9000F9CA9000F9CA9000F8CA9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBDCB500FBD8AD00FBDA
        B100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBD8
        FD00FBDCB500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00}
      ParentFont = False
      OnClick = spbImprimirClick
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 801
      Height = 225
      Color = clSilver
      DataSource = DSQConsCheque
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'COD_CHEQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Lanc.'
          Width = 54
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'BANCO'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Width = 97
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NUMERO_CHEQUE'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Cheque'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DATA_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Emiss'#227'o'
          Width = 84
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'AGENCIA'
          Title.Alignment = taCenter
          Title.Caption = 'Ag'#234'ncia'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CONTA'
          Title.Alignment = taCenter
          Title.Caption = 'Conta'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DIGITO'
          Title.Alignment = taCenter
          Title.Caption = 'D'#237'g.'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Width = 85
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Deposito'
          Width = 81
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'FAVORECIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Favorecido'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME_RS'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Fornecedor'
          Visible = True
        end>
    end
    object BtnLocalizar: TButton
      Left = 272
      Top = 237
      Width = 65
      Height = 25
      Caption = '&Localizar'
      TabOrder = 1
      OnClick = BtnLocalizarClick
    end
    object BtnSair: TButton
      Left = 448
      Top = 237
      Width = 65
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
  object QConsCheque: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT C.*, O.TITULAR, O.CONTA, O.DIGITO, O.AGENCIA, O.BANCO, CL' +
        '.NOME_RS, FR.NOME, pl.nome'
      'FROM cheques_emitidos C'
      'INNER JOIN CONTA_BANCARIA O'
      'ON (C.COD_CONTA = O.CODIGO)'
      'LEFT JOIN CLIENTES CL'
      'ON (C.COD_CLI = CL.CODIGO)'
      'LEFT JOIN FORNECEDORES FR'
      'ON (C.COD_FORN = FR.CODIGO)'
      'LEFT JOIN planocontas pl'
      'ON (C.pl_conta = pl.CODIGO)')
    Left = 200
    Top = 216
    object QConsChequeCOD_CHEQUE: TIntegerField
      FieldName = 'COD_CHEQUE'
      Origin = 'CHEQUES_EMITIDOS.COD_CHEQUE'
      Required = True
    end
    object QConsChequeVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'CHEQUES_EMITIDOS.VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsChequeDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'CHEQUES_EMITIDOS.DATA_EMISSAO'
      Required = True
    end
    object QConsChequeDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'CHEQUES_EMITIDOS.DATA_VENCIMENTO'
      Required = True
    end
    object QConsChequePAGO: TIBStringField
      FieldName = 'PAGO'
      Origin = 'CHEQUES_EMITIDOS.PAGO'
      Required = True
      Size = 1
    end
    object QConsChequeORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = 'CHEQUES_EMITIDOS.ORIGEM'
      Required = True
      Size = 2
    end
    object QConsChequeDOCUMENTO_ORIGEM: TIntegerField
      FieldName = 'DOCUMENTO_ORIGEM'
      Origin = 'CHEQUES_EMITIDOS.DOCUMENTO_ORIGEM'
    end
    object QConsChequeCOD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Origin = 'CHEQUES_EMITIDOS.COD_CONTA'
      Required = True
    end
    object QConsChequeCOMP_NA_INCLUSAO: TIBStringField
      FieldName = 'COMP_NA_INCLUSAO'
      Origin = 'CHEQUES_EMITIDOS.COMP_NA_INCLUSAO'
      Required = True
      Size = 1
    end
    object QConsChequeDATA_COMPENSACAO: TDateField
      FieldName = 'DATA_COMPENSACAO'
      Origin = 'CHEQUES_EMITIDOS.DATA_COMPENSACAO'
    end
    object QConsChequeHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'CHEQUES_EMITIDOS.HISTORICO'
      Size = 900
    end
    object QConsChequeNUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Origin = 'CHEQUES_EMITIDOS.NUMERO_CHEQUE'
      Required = True
    end
    object QConsChequeCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'CHEQUES_EMITIDOS.COD_USUARIO'
      Required = True
    end
    object QConsChequeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'CHEQUES_EMITIDOS.COD_EMPRESA'
      Required = True
    end
    object QConsChequeTROCO: TIBStringField
      FieldName = 'TROCO'
      Origin = 'CHEQUES_EMITIDOS.TROCO'
      Required = True
      Size = 1
    end
    object QConsChequeFAVORECIDO: TIBStringField
      FieldName = 'FAVORECIDO'
      Origin = 'CHEQUES_EMITIDOS.FAVORECIDO'
      Required = True
      Size = 50
    end
    object QConsChequeCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'CHEQUES_EMITIDOS.COD_VENDA'
    end
    object QConsChequeCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
      Origin = 'CHEQUES_EMITIDOS.COD_COMPRA'
    end
    object QConsChequeOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = 'CHEQUES_EMITIDOS.OBSERVACAO'
      Size = 300
    end
    object QConsChequeCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Origin = 'CHEQUES_EMITIDOS.COD_CLI'
    end
    object QConsChequeCOD_FORN: TIntegerField
      FieldName = 'COD_FORN'
      Origin = 'CHEQUES_EMITIDOS.COD_FORN'
    end
    object QConsChequeDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
      Origin = 'CHEQUES_EMITIDOS.DATA_RETORNO'
    end
    object QConsChequeRETORNADO: TIBStringField
      FieldName = 'RETORNADO'
      Origin = 'CHEQUES_EMITIDOS.RETORNADO'
      Size = 1
    end
    object QConsChequeTITULAR: TIBStringField
      FieldName = 'TITULAR'
      Origin = 'CONTA_BANCARIA.TITULAR'
      Size = 50
    end
    object QConsChequeCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = 'CONTA_BANCARIA.CONTA'
      Size = 10
    end
    object QConsChequeBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = 'CONTA_BANCARIA.BANCO'
      Size = 50
    end
    object QConsChequeNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Size = 50
    end
    object QConsChequeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'FORNECEDORES.NOME'
      Size = 50
    end
    object QConsChequeDIGITO: TIBStringField
      FieldName = 'DIGITO'
      Origin = 'CONTA_BANCARIA.DIGITO'
      Size = 1
    end
    object QConsChequeAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = 'CONTA_BANCARIA.AGENCIA'
      Size = 10
    end
    object QConsChequePL_CONTA: TIntegerField
      FieldName = 'PL_CONTA'
      Origin = '"CHEQUES_EMITIDOS"."PL_CONTA"'
    end
    object QConsChequeNOME1: TIBStringField
      FieldName = 'NOME1'
      Origin = '"PLANOCONTAS"."NOME"'
      Size = 70
    end
  end
  object DSQConsCheque: TDataSource
    AutoEdit = False
    DataSet = QConsCheque
    Left = 200
    Top = 264
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'EMPRESA_CNPJ=EMPRESA_CNPJ'
      'EMPRESA_FONE=EMPRESA_FONE'
      'EMPRESA_LOGO=EMPRESA_LOGO'
      'COD_CHEQUE=COD_CHEQUE'
      'BANCO=BANCO'
      'NUMERO_CHEQUE=NUMERO_CHEQUE'
      'DATA_EMISSAO=DATA_EMISSAO'
      'AGENCIA=AGENCIA'
      'CONTA=CONTA'
      'DIGITO=DIGITO'
      'VALOR=VALOR'
      'FAVORECIDO=FAVORECIDO'
      'CLIENTE=CLIENTE'
      'CLIENTE_CNPJ=CLIENTE_CNPJ'
      'CLIENTE_FONE=CLIENTE_FONE'
      'FORNECEDOR=FORNECEDOR'
      'FORNECEDOR_CNPJ=FORNECEDOR_CNPJ'
      'FORNECEDOR_FONE=FORNECEDOR_FONE')
    BCDToCurrency = False
    Left = 464
    Top = 208
  end
  object frxReport: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42515.386731782400000000
    ReportOptions.LastChange = 42524.644730555560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 208
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 273.637795280000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Gradient38: TfrxGradientView
          Left = 581.047620000000000000
          Top = 152.740260000000000000
          Width = 130.393700790000000000
          Height = 18.897637800000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Gradient1: TfrxGradientView
          Left = 3.338590000000000000
          Top = 35.456710000000000000
          Width = 555.590910000000000000
          Height = 3.779530000000000000
          BeginColor = 13948116
          EndColor = 13224393
          Style = gsHorizontal
          Color = 13619151
        end
        object Memo1: TfrxMemoView
          Left = 3.118120000000000000
          Top = 12.338590000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cheques Emitidos')
          ParentFont = False
        end
        object Gradient2: TfrxGradientView
          Left = 5.338590000000000000
          Top = 93.913420000000000000
          Width = 61.228346456692900000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient3: TfrxGradientView
          Left = 5.511811020000000000
          Top = 113.811070000000000000
          Width = 60.850393700000000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 9.338590000000000000
          Top = 95.692950000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Gradient4: TfrxGradientView
          Left = 67.078788980000000000
          Top = 93.913420000000000000
          Width = 140.976429210000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient5: TfrxGradientView
          Left = 67.252010000000000000
          Top = 113.811070000000000000
          Width = 140.976377950000000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 71.078788980000000000
          Top = 95.692950000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Data de Emiss'#195#163'o')
          ParentFont = False
        end
        object Gradient6: TfrxGradientView
          Left = 208.874150000000000000
          Top = 93.913420000000000000
          Width = 141.732283464567000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient7: TfrxGradientView
          Left = 209.047371020000000000
          Top = 113.811070000000000000
          Width = 141.732283464567000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 212.874150000000000000
          Top = 95.692950000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Banco')
          ParentFont = False
        end
        object Gradient8: TfrxGradientView
          Left = 351.496290000000000000
          Top = 93.866141730000000000
          Width = 95.622069210000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient9: TfrxGradientView
          Left = 351.606299210000000000
          Top = 113.811070000000000000
          Width = 95.622047244094490000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo5: TfrxMemoView
          Left = 355.496290000000000000
          Top = 95.692950000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Ag'#195#170'ncia')
          ParentFont = False
        end
        object Gradient10: TfrxGradientView
          Left = 5.449050790000000000
          Top = 133.488250000000000000
          Width = 360.189169210000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient11: TfrxGradientView
          Left = 5.669291338582677000
          Top = 153.385900000000000000
          Width = 360.188976380000000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo6: TfrxMemoView
          Left = 9.449050790000000000
          Top = 136.267780000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Cliente')
          ParentFont = False
        end
        object Gradient12: TfrxGradientView
          Left = 366.677490000000000000
          Top = 133.488250000000000000
          Width = 213.543307090000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient13: TfrxGradientView
          Left = 366.614173230000000000
          Top = 153.385900000000000000
          Width = 213.543307090000000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 370.677490000000000000
          Top = 136.267780000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 631.842920000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 79.370130000000000000
          DataField = 'EMPRESA_LOGO'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Picture.Data = {
            07544269746D617036640000424D366400000000000036000000280000005000
            0000500000000100200000000000006400000000000000000000000000000000
            0000F8F5F1FFE2DDD2FFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFE2DDD2FFFAF4
            F1FFDBD6D2FFFAF4F1FFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFCF9F5FFFAF4F1FFE2DD
            D2FFD9D1CAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFF5F0ECFFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFE8E2DFFFDBD6D2FFDBD6D2FFF8F5
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6D2FFFAF4F1FFF5F0ECFFD9D1CAFFE8E2
            DFFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFD9D1CAFFF5F0ECFFFAF4F1FFE2DDD2FFD9D1
            CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFE2DDD2FFDBD6D2FFF4F3F5FFEFE9E7FFD9D1
            CAFFE2DDD2FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFD9D1
            CAFFD9D1CAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFD9D1
            CAFFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0
            ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0
            ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0
            ECFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFF5F0ECFFDBD6
            D2FFD9D1CAFFE8E2DFFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFF5F0ECFFFAF4F1FFEFE9E7FFD9D1
            CAFFE8E2DFFFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFDBD6D2FFF4F3F5FFF5F0
            ECFFDBD6D2FFD9D1CAFFD9D1CAFFDBD6D2FFF5F0ECFFFAF4F1FFDBD6D2FFD9D1
            CAFFE2DDD2FFF5F0ECFFD9D1CAFFD9D1CAFFE8E2DFFFFAF4F1FFE8E2DFFFD9D1
            CAFFD9D1CAFFE8E2DFFFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFDBD6
            D2FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFE2DDD2FFEFE9
            E7FFD9D1CAFFD9D1CAFFF5F0ECFFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFD9D1
            CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFE8E2DFFFFAF4F1FFEFE9E7FFD9D1
            CAFFDBD6D2FFFAF4F1FFEFE9E7FFD9D1CAFFE8E2DFFFF5F0ECFFE2DDD2FFDBD6
            D2FFD9D1CAFFE2DDD2FFEFE9E7FFEFE9E7FFD9D1CAFFEFE9E7FFD9D1CAFFD9D1
            CAFFE8E2DFFFDBD6D2FFD9D1CAFFDBD6D2FFE8E2DFFFEFE9E7FFDBD6D2FFD9D1
            CAFFEFE9E7FFE8E2DFFFE2DDD2FFFAF4F1FFE2DDD2FFD9D1CAFFF5F0ECFFEFE9
            E7FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFD9D1CAFFD9D1CAFFE8E2DFFFE2DD
            D2FFD9D1CAFFD9D1CAFFDBD6D2FFF5F0ECFFE2DDD2FFD9D1CAFFF5F0ECFFEFE9
            E7FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFEFE9E7FFD9D1CAFFE8E2DFFFFAF4F1FFF5F0ECFFD9D1
            CAFFD9D1CAFFFAF4F1FFF5F0ECFFD9D1CAFFDBD6D2FFFAF4F1FFE8E2DFFFD9D1
            CAFFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFEFE9E7FFDBD6D2FFD9D1CAFFDBD6
            D2FFFAF4F1FFDBD6D2FFD9D1CAFFDBD6D2FFFAF4F1FFDBD6D2FFD9D1CAFFDBD6
            D2FFFAF4F1FFFAF4F1FFEFE9E7FFE8E2DFFFD9D1CAFFDBD6D2FFFAF4F1FFF5F0
            ECFFD9D1CAFFDBD6D2FFE8E2DFFFF5F0ECFFD9D1CAFFDBD6D2FFFAF4F1FFE8E2
            DFFFD9D1CAFFD9D1CAFFF5F0ECFFDBD6D2FFD9D1CAFFDBD6D2FFFAF4F1FFFAF4
            F1FFD9D1CAFFDBD6D2FFE8E2DFFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFDBD6D2FFFAF4F1FFFAF4F1FFD9D1
            CAFFD9D1CAFFF5F0ECFFFAF4F1FFD9D1CAFFD9D1CAFFF5F0ECFFFAF4F1FFD9D1
            CAFFD9D1CAFFEFE9E7FFF5F0ECFFFAF4F1FFFAF4F1FFEFE9E7FFD9D1CAFFDBD6
            D2FFFAF4F1FFEFE9E7FFD9D1CAFFD9D1CAFFFAF4F1FFEFE9E7FFD9D1CAFFDBD6
            D2FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFDBD6D2FFF5F0ECFFD9D1
            CAFFDBD6D2FFD9D1CAFFE8E2DFFFE8E2DFFFD9D1CAFFD9D1CAFFFAF4F1FFF5F0
            ECFFD9D1CAFFD9D1CAFFEFE9E7FFEFE9E7FFD9D1CAFFDBD6D2FFF5F0ECFFD9D1
            CAFFDBD6D2FFD9D1CAFFE8E2DFFFE8E2DFFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFD9D1CAFFD9D1CAFFFAF4F1FFFAF4F1FFDBD6
            D2FFD9D1CAFFE8E2DFFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFD9D1
            CAFFD9D1CAFFE8E2DFFFD9D1CAFFDBD6D2FFFAF4F1FFFAF4F1FFD9D1CAFFD9D1
            CAFFFAF4F1FFFAF4F1FFD9D1CAFFD9D1CAFFF5F0ECFFFAF4F1FFD9D1CAFFD9D1
            CAFFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFDBD6D2FFE8E2
            DFFFEFE9E7FFD9D1CAFFE2DDD2FFFAF4F1FFD9D1CAFFD9D1CAFFFAF4F1FFFAF4
            F1FFDBD6D2FFD9D1CAFFE8E2DFFFFAF4F1FFD9D1CAFFD9D1CAFFDBD6D2FFE8E2
            DFFFEFE9E7FFD9D1CAFFE2DDD2FFFAF4F1FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFE8E2DFFFFAF4F1FFE8E2
            DFFFD9D1CAFFDBD6D2FFFAF4F1FFE8E2DFFFD9D1CAFFE2DDD2FFFAF4F1FFDBD6
            D2FFD9D1CAFFEFE9E7FFEFE9E7FFD9D1CAFFDBD6D2FFFAF4F1FFDBD6D2FFD9D1
            CAFFEFE9E7FFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFDBD6D2FFD9D1
            CAFFE8E2DFFFEFE9E7FFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFD9D1CAFFEFE9
            E7FFFAF4F1FFD9D1CAFFD9D1CAFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4
            F1FFE8E2DFFFD9D1CAFFDBD6D2FFFAF4F1FFDBD6D2FFD9D1CAFFD9D1CAFFEFE9
            E7FFFAF4F1FFD9D1CAFFD9D1CAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFE2DDD2FFFAF4F1FFEFE9
            E7FFD9D1CAFFD9D1CAFFF5F0ECFFF5F0ECFFD9D1CAFFD9D1CAFFFAF4F1FFE2DD
            D2FFD9D1CAFFE8E2DFFFFAF4F1FFE2DDD2FFD9D1CAFFEFE9E7FFE2DDD2FFD9D1
            CAFFE8E2DFFFFAF4F1FFE8E2DFFFD9D1CAFFE8E2DFFFFAF4F1FFDBD6D2FFD9D1
            CAFFE8E2DFFFD9D1CAFFF5F0ECFFFAF4F1FFE2DDD2FFD9D1CAFFD9D1CAFFFAF4
            F1FFFAF4F1FFDBD6D2FFD9D1CAFFF5F0ECFFE8E2DFFFD9D1CAFFE8E2DFFFFAF4
            F1FFEFE9E7FFD9D1CAFFD9D1CAFFFAF4F1FFE2DDD2FFD9D1CAFFD9D1CAFFFAF4
            F1FFFAF4F1FFDBD6D2FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFD9D1CAFFD9D1CAFFF5F0ECFFF5F0
            ECFFD9D1CAFFD9D1CAFFE8E2DFFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFEFE9
            E7FFD9D1CAFFDBD6D2FFFAF4F1FFF5F0ECFFD9D1CAFFE8E2DFFFE8E2DFFFD9D1
            CAFFDBD6D2FFFAF4F1FFEFE9E7FFD9D1CAFFDBD6D2FFFAF4F1FFE8E2DFFFD9D1
            CAFFE8E2DFFFDBD6D2FFDBD6D2FFFAF4F1FFEFE9E7FFD9D1CAFFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFF5F0ECFFD9D1CAFFD9D1CAFFFAF4
            F1FFFAF4F1FFD9D1CAFFD9D1CAFFF5F0ECFFEFE9E7FFD9D1CAFFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFE8E2DFFFFAF4
            F1FFD9D1CAFFD9D1CAFFE2DDD2FFF5F0ECFFE2DDD2FFD9D1CAFFEFE9E7FFFAF4
            F1FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFDBD6D2FFDBD6D2FFEFE9E7FFD9D1
            CAFFDBD6D2FFFAF4F1FFF5F0ECFFD9D1CAFFD9D1CAFFF5F0ECFFEFE9E7FFD9D1
            CAFFE2DDD2FFF5F0ECFFD9D1CAFFEFE9E7FFFAF4F1FFE8E2DFFFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFF5F0ECFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFFAF4F1FFFAF4F1FFE8E2DFFFD9D1CAFFEFE9
            E7FFFAF4F1FFDBD6D2FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6D2FFD9D1CAFFDBD6D2FFE8E2
            DFFFD9D1CAFFD9D1CAFFE8E2DFFFDBD6D2FFE2DDD2FFD9D1CAFFE8E2DFFFFAF4
            F1FFEFE9E7FFD9D1CAFFDBD6D2FFFAF4F1FFDBD6D2FFE2DDD2FFFAF4F1FFD9D1
            CAFFD9D1CAFFF5F0ECFFFAF4F1FFDBD6D2FFD9D1CAFFEFE9E7FFF5F0ECFFD9D1
            CAFFD9D1CAFFFAF4F1FFDBD6D2FFE2DDD2FFFAF4F1FFFAF4F1FFE2DDD2FFE2DD
            D2FFFAF4F1FFDBD6D2FFD9D1CAFFFAF4F1FFFAF4F1FFF5F0ECFFD9D1CAFFDBD6
            D2FFEFE9E7FFE2DDD2FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFE2DDD2FFE2DD
            D2FFFAF4F1FFDBD6D2FFD9D1CAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFE8E2DFFFFAF4F1FFE2DD
            D2FFD9D1CAFFDBD6D2FFFAF4F1FFE8E2DFFFD9D1CAFFDBD6D2FFFAF4F1FFFAF4
            F1FFFAF4F1FFE8E2DFFFD9D1CAFFDBD6D2FFDBD6D2FFF5F0ECFFFAF4F1FFDBD6
            D2FFD9D1CAFFF5F0ECFFFAF4F1FFE8E2DFFFD9D1CAFFE8E2DFFFFAF4F1FFD9D1
            CAFFD9D1CAFFF5F0ECFFE8E2DFFFD9D1CAFFFAF4F1FFFAF4F1FFFAF4F1FFDBD6
            D2FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFD9D1
            CAFFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFDBD6
            D2FFDBD6D2FFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFEFE9E7FFFAF4F1FFFAF4F1FFE2DD
            D2FFD9D1CAFFEFE9E7FFEFE9E7FFD9D1CAFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4
            F1FFEFE9E7FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFEFE9E7FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFE8E2
            DFFFD9D1CAFFDBD6D2FFFAF4F1FFD9D1CAFFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFD9D1CAFFD9D1CAFFF5F0ECFFD9D1CAFFE8E2DFFFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFE8E2DFFFD9D1CAFFEFE9E7FFDBD6D2FFEFE9E7FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFD9D1CAFFDBD6D2FFDBD6D2FFF5F0ECFFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFF5F0ECFFE8E2DFFFF5F0ECFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4
            F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFDFBFAFFFDFBFAFFD9D1
            CAFFD9D1CAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFD9D1
            CAFFE2DDD2FFFAF4F1FFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFB
            FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFAF4F1FFDBD6
            D2FFFAF4F1FFE2DDD2FFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1
            CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFD9D1CAFFE2DDD2FFF8F5
            F1FF}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          Left = 2.779530000000000000
          Top = 37.795300000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Date]  [Time] - [frxDBDataset."EMPRESA"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          Left = 402.630180000000000000
          Top = 59.472480000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fone - [frxDBDataset."EMPRESA_FONE"] ')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 2.779530000000000000
          Top = 58.692950000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ: [frxDBDataset."EMPRESA_CNPJ"] ')
          ParentFont = False
        end
        object Gradient37: TfrxGradientView
          Left = 581.268090000000000000
          Top = 132.842610000000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Memo23: TfrxMemoView
          Left = 585.268090000000000000
          Top = 134.622140000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 7.338590000000000000
          Top = 116.385900000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."NUMERO_CHEQUE"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 68.811070000000000000
          Top = 116.385900000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 210.653680000000000000
          Top = 116.165430000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."BANCO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 354.275820000000000000
          Top = 116.165430000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."AGENCIA"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 9.338590000000000000
          Top = 155.960730000000000000
          Width = 351.496290000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."CLIENTE"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 371.393940000000000000
          Top = 155.960730000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."CLIENTE_CNPJ"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 583.827150000000000000
          Top = 156.181200000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."CLIENTE_FONE"]')
          ParentFont = False
        end
        object Gradient29: TfrxGradientView
          Left = 448.205010000000000000
          Top = 93.866141730000000000
          Width = 95.622069210000000000
          Height = 18.897637800000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient31: TfrxGradientView
          Left = 448.315019210000000000
          Top = 113.385900000000000000
          Width = 95.622047244094490000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo17: TfrxMemoView
          Left = 452.205010000000000000
          Top = 96.267780000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Conta')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 450.984540000000000000
          Top = 116.740260000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."CONTA"]')
          ParentFont = False
        end
        object Gradient32: TfrxGradientView
          Left = 544.811380000000000000
          Top = 93.866141730000000000
          Width = 167.433139210000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient33: TfrxGradientView
          Left = 544.921389210000000000
          Top = 113.385900000000000000
          Width = 167.054993620000000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo42: TfrxMemoView
          Left = 548.811380000000000000
          Top = 96.267780000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 547.590910000000000000
          Top = 116.740260000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."VALOR"]')
          ParentFont = False
        end
        object Gradient14: TfrxGradientView
          Left = 5.291338580000000000
          Top = 172.724490000000000000
          Width = 360.566929133858300000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient15: TfrxGradientView
          Left = 5.291338580000000000
          Top = 192.622140000000000000
          Width = 360.566929133858300000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo8: TfrxMemoView
          Left = 8.779530000000000000
          Top = 175.504020000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Fornecedor')
          ParentFont = False
        end
        object Gradient16: TfrxGradientView
          Left = 366.614173228346500000
          Top = 172.724490000000000000
          Width = 213.543307090000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient17: TfrxGradientView
          Left = 366.614173230000000000
          Top = 192.377952760000000000
          Width = 213.921259840000000000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 370.007969210000000000
          Top = 175.504020000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ')
          ParentFont = False
        end
        object Gradient18: TfrxGradientView
          Left = 580.913385830000000000
          Top = 172.724409450000000000
          Width = 130.393700790000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient19: TfrxGradientView
          Left = 580.771790230000000000
          Top = 192.377952760000000000
          Width = 130.393700790000000000
          Height = 18.897637800000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo10: TfrxMemoView
          Left = 584.598569210000000000
          Top = 173.858380000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 8.669069210000000000
          Top = 195.196970000000000000
          Width = 351.496290000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."FORNECEDOR"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 370.724419210000000000
          Top = 195.196970000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."FORNECEDOR_CNPJ"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 583.157629210000000000
          Top = 195.417440000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."FORNECEDOR_FONE"]')
          ParentFont = False
        end
        object Gradient20: TfrxGradientView
          Left = 5.291338580000000000
          Top = 212.433210000000000000
          Width = 706.015748030000000000
          Height = 18.897650000000000000
          BeginColor = 13092807
          EndColor = 13092807
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = 13092807
        end
        object Gradient21: TfrxGradientView
          Left = 5.291338580000000000
          Top = 232.330860000000000000
          Width = 706.015748031496100000
          Height = 18.897650000000000000
          EndColor = clWhite
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = 11645361
          Frame.TopLine.Color = 11645361
          Frame.RightLine.Color = 11645361
          Frame.BottomLine.Color = 11645361
          Color = clWhite
        end
        object Memo14: TfrxMemoView
          Left = 9.559060000000000000
          Top = 215.212740000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            'Favorecido')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 9.448599210000000000
          Top = 234.905690000000000000
          Width = 691.653990000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset."FAVORECIDO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
      end
    end
  end
end
