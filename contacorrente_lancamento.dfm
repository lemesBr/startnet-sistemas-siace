object frmcontacorrente_lancamento: Tfrmcontacorrente_lancamento
  Left = 396
  Top = 208
  BorderStyle = bsToolWindow
  Caption = 'Conta Corrente - Ficha de Lan'#231'amento'
  ClientHeight = 257
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = _mShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 79
    Top = 70
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 82
    Top = 102
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 61
    Top = 131
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hist'#243'rico:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 78
    Top = 158
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 24
    Top = 182
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'Plano de Contas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 469
    Height = 3
    Align = alTop
  end
  object Bevel10: TBevel
    Left = 0
    Top = 205
    Width = 469
    Height = 3
    Align = alBottom
  end
  object BLOCCONTA: TBitBtn
    Left = 175
    Top = 178
    Width = 25
    Height = 21
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 0
    OnClick = BLOCCONTAClick
  end
  object enomeconta: TEdit
    Left = 200
    Top = 178
    Width = 249
    Height = 21
    Color = clBtnFace
    Enabled = False
    TabOrder = 1
  end
  object DateEdit1: TDateEdit
    Left = 111
    Top = 64
    Width = 100
    Height = 21
    Enabled = False
    GlyphKind = gkCustom
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
      8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
      F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
      D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
      BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
      F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
      8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
      CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
      F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
      95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
      E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
      F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
      A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
      FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
      FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
      B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
      FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
      FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
      F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
      F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
      7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 1
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 112
    Top = 87
    Width = 348
    Height = 33
    TabOrder = 3
    object RadioButton1: TRadioButton
      Left = 11
      Top = 11
      Width = 74
      Height = 17
      Caption = 'Entrada'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 107
      Top = 11
      Width = 61
      Height = 17
      Caption = 'Sa'#237'da'
      TabOrder = 1
    end
  end
  object econta: TEdit
    Left = 112
    Top = 179
    Width = 60
    Height = 21
    TabOrder = 6
    OnEnter = econtaEnter
    OnExit = ECONTAExit
    OnKeyPress = ECONTAKeyPress
  end
  object DBEdit1: TEdit
    Left = 112
    Top = 127
    Width = 397
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnExit = DBEdit1Exit
  end
  object ed_valor: TCurrencyEdit
    Left = 111
    Top = 152
    Width = 130
    Height = 21
    AutoSize = False
    TabOrder = 5
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 3
    Width = 469
    Height = 54
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 7
    object Label7: TLabel
      Left = 304
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Ag'#234'ncia:'
    end
    object Label9: TLabel
      Left = 8
      Top = 32
      Width = 34
      Height = 13
      Caption = 'Titular:'
    end
    object Label6: TLabel
      Left = 6
      Top = 7
      Width = 63
      Height = 13
      Caption = 'N'#186' do Conta:'
    end
    object conta: TComboEdit
      Left = 80
      Top = 2
      Width = 69
      Height = 21
      CharCase = ecUpperCase
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 0
      Text = ''
      OnButtonClick = contaButtonClick
      OnExit = contaExit
    end
    object Edit1: TEdit
      Left = 152
      Top = 6
      Width = 145
      Height = 22
      Cursor = crIBeam
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Pitch = fpVariable
      Font.Style = [fsBold, fsItalic]
      ParentColor = True
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 352
      Top = 7
      Width = 113
      Height = 22
      Cursor = crIBeam
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Pitch = fpVariable
      Font.Style = [fsBold, fsItalic]
      ParentColor = True
      ParentFont = False
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 44
      Top = 31
      Width = 413
      Height = 22
      Cursor = crIBeam
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Pitch = fpVariable
      Font.Style = [fsBold, fsItalic]
      ParentColor = True
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 208
    Width = 469
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 8
    object bgravar: TAdvGlowButton
      Left = 122
      Top = 10
      Width = 107
      Height = 32
      Caption = 'F2 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000026B494441544889
        D594CF6B134114C7BFCF2C4DCCC1928290F41445055BC8612FC206B684F80321
        1ECCC19B1515B511E2C585A4FF80510C28566284B6C2DC5231979478F112A98B
        A8E4A6112935B74482A6B19844DA663C24BBD9C4D6B62E157CA7613EF3BEDF99
        F786477234F303801D1B442E16A0B1C979535C0060E79C7300202232AE3BE74C
        7101000E0F0F62E686AC25D0E5072FB158FAAEDFC40C1700401E75120C218F3A
        7B04CC70A1B3C739E7C627F62498E1027639DA06D4ED1911D16FF733C1DB06BC
        EF89BC4FC204FF4725DA7583FFAC072D70BC057054375869ACEA0944442B8DD5
        9EFC1DF07522BA74C17F84CDBEF8745037985B58E2730B4B9BCD9AEDF216115D
        C9C5024C640AC7081D02027A93C9E5B023281D405AFD4CA56ABDAFC85B72B81C
        F66BA988FF89C894F576D9F8A2C89411A103313521A1526BC2E771219C54515E
        6E1893313521BDABD49A577D1E97379C54EF97971B16AD032E873D948AF86744
        A63400ECD1F2F2E3F182000041C98D4AAD89EB8F5E2111F22228B991C8167483
        A0E4CE576ACD53175FDF3DFBE6DCAD8741C9BD92C816663BF8662AE27F2C32A5
        06C06610EF8EEBB45A84CF338C44C88BFD8336A4D5A2F1F5E5B45A3C71A7983C
        0ECEA745A64CE7C7E394C8162C00908B05EE894CF90A609F517C6C72FE4C2E16
        C8080050AAD6114EAA5A8D51AAD661E8E1FB54C4FF4D64CF53DA86C8949FF958
        DCDA5997000C19C5E568E634113D05601300D401EC2D55EB48643FE8BF04DD91
        7B4C8E66CEE76FC749648AC60644A67C04F00580B34FFC24806700AC00405DBD
        ED85C1A427B49AF7C78E0D3632D94CFCAF0D8C267F12074C4C538B75C0DA5A5B
        1BDAEADC2FEC698185CDD5A5E80000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bgravarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bcancelar: TAdvGlowButton
      Left = 239
      Top = 10
      Width = 130
      Height = 32
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000002E9494441544889
        CD945B6C0C6114C77FDFEE543B5B8968DAD0150915D7A5AE21DA74A984266E91
        BEE285884BB48D884413A94B88F0865825C183274523080F08DDB0B66949088A
        54DB905851EDA2ECAC6ECDF1D0BDCC140F6C88934C3233BF39E77FBEFFF9E653
        DEED97BF002E7E120DFB97AA79D557D2E21AE0121101504A29EB7DFCBBB4B806
        30D63D849395DE44825A7BD84F6BE853B29374B806E0F50C5758C2EB196E2B90
        0ED7E2EF4444AC4BB425A4C335FE72F40BA8D4CC9452EA87FED2E0FD02326089
        32A0441AFC1F59F4D705FEF319DC40782422A2949A2C225E04DD26D063C49209
        4A29D563C46CF57FC205380E70FAC5DE6DBC6061BB0F05EC28B8106CEB316235
        406552A0EE4E9BD4DD69FBD55933909BC0BAA32D7B2E362FA911E570D89A695E
        328312A7D37DCEB3F341CA2250F9435D94178DA63ED0AE42E1C800936DFC44CD
        BDEA8B466FACEB5B6F14891A64E4E401D0DBF50E879E0D99996F0E3DD9351296
        F60BE40F75716443119D1FA39416E653511BE0ED072359DDC2BF9616E6D7BCF2
        F7757DEBEB65CECD67BCBF7E89962DABC0143CB5E7C9F196D1B86022E88ED780
        D200CA8B46D1F931CAA66377F16D2CA6BC6814BEAB2D49010BF79F69DDE7560E
        85F9F90BE17BB7C85DB89C82EA833832B3C8F196D1DD700D331A41CBCEE6FEB2
        59D33480FA4007A5856E7C1B8BC91B92457DA0C3E68F853F662B65A018949BCB
        E335CB1977E00423566E002054778AD6DD55B80AC62752BD1A40281CA1A23690
        F09850388265C6566ECE05677C2CA004F36BCA4A33160365DBE14A0322801E0A
        47F05D7D9ADC45A48E5C2B9F341776F70FB413CFF17A724A16113A7B1287EE62
        C4CAF5640E73D3BA737362F04144E4B7AFA6C5D325583A5E4444BA6E5F13FFA4
        C1E29F3058BA1B1B444424387FAC342D9E2E22F26767919EA18D31447FD9B860
        0266D4887B2E3CAB5A8D43D771EAD964389D530054CA91DF8B272B668F33627D
        CFED3F9A20A690E1744E9B7AA9E9615A0289B8BF6C563150127F0CCEBCDC7CDB
        CABF03DAB5D9F78C9DC2190000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bcancelarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Pop2: TPopupMenu
    Left = 412
    Top = 157
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object InsItem: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'INSERT INTO MOVIMENTO_DIARIO ('
      '    CODIGO,'
      '    DATA,'
      '    HISTORICO,'
      '    COD_USUARIO,'
      '    USUARIO,'
      '    TIPO,'
      '    VALOR_ENTRADA,'
      '    VALOR_SAIDA,'
      '    CODIGO_CC,'
      '    NUMERO_CC,'
      '    CODIGO_VENDA,'
      '    ORIGEM,'
      '    COD_CREDIARIO,'
      '    COD_COMPRA,'
      '    N_CHEQUE,'
      '    COD_PLANO,'
      '    PRE_DATADO,'
      '    NOMINAL,'
      '    COMPENSADO,'
      '    COD_CHEQUE,'
      '    COD_CONTAS_PAGAR,'
      '    DOC_LAN,'
      '    CONCILIADO,'
      '    COD_DOC,'
      '    DOCUMENTO_LANC,'
      '    COD_EMPRESA,'
      '    HORA,'
      '    DB_CR,'
      '    VALOR,'
      '    TIPO_MOV)'
      '  VALUES ('
      '    :CODIGO,'
      '    :DATA,'
      '    :HISTORICO,'
      '    :COD_USUARIO,'
      '    :USUARIO,'
      '    :TIPO,'
      '    :VALOR_ENTRADA,'
      '    :VALOR_SAIDA,'
      '    :CODIGO_CC,'
      '    :NUMERO_CC,'
      '    :CODIGO_VENDA,'
      '    :ORIGEM,'
      '    :COD_CREDIARIO,'
      '    :COD_COMPRA,'
      '    :N_CHEQUE,'
      '    :COD_PLANO,'
      '    :PRE_DATADO,'
      '    :NOMINAL,'
      '    :COMPENSADO,'
      '    :COD_CHEQUE,'
      '    :COD_CONTAS_PAGAR,'
      '    :DOC_LAN,'
      '    :CONCILIADO,'
      '    :COD_DOC,'
      '    :DOCUMENTO_LANC,'
      '    :COD_EMPRESA,'
      '    :HORA,'
      '    :DB_CR,'
      '    :VALOR,'
      '    :TIPO_MOV);')
    Left = 72
    Top = 207
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HISTORICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR_ENTRADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR_SAIDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_CC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMERO_CC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_VENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORIGEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CREDIARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_COMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'N_CHEQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PLANO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRE_DATADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPENSADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CHEQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CONTAS_PAGAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOC_LAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONCILIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_DOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOCUMENTO_LANC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DB_CR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_MOV'
        ParamType = ptUnknown
      end>
  end
end
