object frmxloc_fornecedor: Tfrmxloc_fornecedor
  Left = 423
  Top = 173
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FORNECEDOR | Localizar'
  ClientHeight = 352
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 56
    Width = 724
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 56
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 544
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 686
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 674
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object BITBTN1: TSpeedButton
      Left = 553
      Top = -38
      Width = 97
      Height = 26
      Caption = 'Cadastrar'
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
        DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
        E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
        441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
        5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
        6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
        723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
        794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
        A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
        FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
        9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
        35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
        6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
        9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
        A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
        C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
        FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
        C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
        2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
        CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
        3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
        EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
        DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
        4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      Visible = False
      OnClick = BITBTN1Click
    end
    object Bevel4: TBevel
      Left = 665
      Top = 4
      Width = 2
      Height = 50
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'CPF/CNPJ'
        'FANTASIA')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 2
      Text = 'PARTE'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 273
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
    object FDvGlowButton1: TAdvGlowButton
      Left = 547
      Top = 4
      Width = 114
      Height = 47
      Caption = 'F2 | Cadastrar '
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A4342304246463045453238323131453242383546434630383142
        4335303344322220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A434230424646304645323832313145324238354643463038314243353033
        4432223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4342304246463043453238323131
        453242383546434630383142433530334432222073745265663A646F63756D65
        6E7449443D22786D702E6469643A434230424646304445323832313145324238
        3546434630383142433530334432222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E08842097000003F24944415478DACC99
        79884D7114C7EF3CCF3EC89691C11031D610118322658929EBC4107FA094B590
        FDA628D4D88A923F2C19593396063519EB64198A88923F64DFF7A5193CDF337D
        6F1DD7DCFDBD9E539FE6BCFBEEFBDD737FBFF33BBF73CEA418850F8D10521774
        03AD413A680922E039784CEE82D7411F100DF8BB116002C8026D5DEE7D092E82
        4270147CF3F3A0141F3358072C0293410787FB6295E3562D6FC05EB0093C8AA7
        8193C016D0545DFB058A4129B80DEE83CF343095CBDE03F4E48CD753BFFD0D96
        8175610DAC010AC038754D8CD90C8AC00B8FB32FC60D0673C15075FD3AC8010F
        8318D8085C01EDF9597C6731D86A8493D17CC10C7E2EA72F5FABEAE688CD20B2
        3C779471A741BB381827729C3EBC4DADD25530CC8F81974173EA3BC170868E78
        89CCDA1C6E3A53CEA8097134F01C68417D239861244E3680E9EAB3B8546D2703
        678341D425762D34122FBB3811A6DFEFB0DB240DC05B508D7F65892B7C3CA833
        4F1291EFE0BC4F4365420650EF4BBFFCEB24594FE30C4E7B85CF07E481B12A46
        FA3DA57278349AB39AA997B80998495D76EF89004BF556E94F03FCFE09D84EBD
        23E8A30DCC56372E09E84B31CB49114456297D96363057BD4591913C79054E52
        9F286E2206D607FD78F188917C39A352B9C111EE9CEACAFF922D1795DE3DC244
        D3947B2106FEA8F48A10E3DC02EFA8A74755EC2A7799C17E9CF65815DFFD049D
        2CD9CB1097DC508ED31F36DF3D63D06E125567EE27F0C5C1C0530CE65E248DB9
        A293B47348B34C3B5223EA0D632E03BE8FB3AFFDF29250475496529F69BD9D34
        8CB381D55C8AB1CA998CAAA85F9311FCBA43A1946A1384CB99CC8E5485D214DE
        1BF92749763F6DD2F8F75DD472631707034B5D6664A432F093071FB4934EAAF6
        792C6F7749F943E7104BA63750F510E30C52FADD08634E192F8CF90F02B569A0
        84A012D33F0AD4D6CF4AA271E2E3E3A91F93BCD234F090BA293F8906E6A94DB5
        4D673352DF1EA0DE1B0C0C30788A8DEE551AAA124312D70BD69A6481D2770778
        409AA56CF52B7B943EA3AAE69104ECE5600D8BEA424B22EB26F94C95626C81F8
        91A560943A528B9D3A0BD7B8CC22ABC1CA04FB9DD43187A97F6576F5C1A92E1E
        A80EEB15606D028DCB55C69921E6835BE12EF1A7BFEAE32DA14FD64EC08ED57E
        276DBD1B5E5B1FD2C1EAA62AB5A9E0818A5161A40F0D59653926F7F9E9CD18CC
        D532551123ED9083E02C0DAEE3D330E9EFEC6741DED33CCAE8EF4541DA6F5AE6
        7397EA17125F9196EE4D66C7CFE916B28B6B81C69CAD5E6CB96558C69486E83C
        F7E0EABD05DC8AB1729A4D6E185306D6B44918E4BBBD34AECC5BF4F7DFE537CF
        CB6CD61D753DFCA68431B280B5B78FE329DCBF21DA80AEF4CF665C5A33817DC3
        5CF301375D20F923C000A422DEAC6EFE30D60000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = BITBTN1Click
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
  object GRID: TwwDBGrid
    Left = 0
    Top = 59
    Width = 724
    Height = 293
    Selected.Strings = (
      'CODIGO'#9'10'#9'CODIGO'#9#9
      'NOME'#9'70'#9'NOME'#9#9
      'CNPJ'#9'18'#9'CNPJ'#9#9
      'FANTASIA'#9'70'#9'FANTASIA'#9#9
      'ENDERECO'#9'44'#9'ENDERECO'#9#9
      'CIDADE'#9'40'#9'CIDADE'#9#9
      'ESTADO'#9'2'#9'ESTADO'#9#9
      'CEP'#9'10'#9'CEP'#9#9
      'TELEFONE'#9'16'#9'TELEFONE'#9#9
      'FAX'#9'15'#9'FAX'#9#9
      'EMAIL'#9'50'#9'EMAIL'#9#9
      'HOMEPAGE'#9'50'#9'HOMEPAGE'#9#9
      'TIPO'#9'10'#9'TIPO'#9#9
      'IE'#9'20'#9'IE'#9#9
      'BAIRRO'#9'30'#9'BAIRRO'#9#9
      'REPRESCELULAR'#9'15'#9'REPRESCELULAR'#9#9
      'USERCAD'#9'20'#9'USERCAD'#9#9
      'DATACADASTRO'#9'10'#9'DATACADASTRO'#9#9
      'OBSERVACOES'#9'10'#9'OBSERVACOES'#9#9
      'REPRESNOME'#9'70'#9'REPRESNOME'#9#9
      'REPRESFONEFAX'#9'16'#9'REPRESFONEFAX'#9#9
      'REPRESEMAIL'#9'50'#9'REPRESEMAIL'#9#9
      'REPRESOBSERVACOES'#9'10'#9'REPRESOBSERVACOES'#9#9
      'PRODUTOR_RURAL'#9'1'#9'PRODUTOR_RURAL'#9#9
      'INSC_PRODUTOR'#9'20'#9'INSC_PRODUTOR'#9#9
      'COD_LINHA'#9'10'#9'COD_LINHA'#9#9
      'LINHA'#9'70'#9'LINHA'#9#9
      'COD_EMPRESA'#9'10'#9'COD_EMPRESA'#9#9
      'VALOR_LEITE'#9'19'#9'VALOR_LEITE'#9#9
      'codigo_ibge'#9'7'#9'codigo_ibge'#9#9
      'NUMERO'#9'10'#9'NUMERO'#9#9
      'COMPLEMENTO'#9'30'#9'COMPLEMENTO'#9#9
      'TP'#9'1'#9'TP'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object CadastrarNovoFornecedor1: TMenuItem
      Caption = 'Cadastrar Novo Fornecedor'
      ShortCut = 113
      OnClick = BITBTN1Click
    end
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 424
    Top = 224
  end
  object query: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from fornecedores')
    Left = 464
    Top = 232
    object queryCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryNOME: TStringField
      DisplayWidth = 70
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 70
    end
    object queryCNPJ: TStringField
      DisplayWidth = 18
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object queryFANTASIA: TStringField
      DisplayWidth = 70
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 70
    end
    object queryENDERECO: TStringField
      DisplayWidth = 44
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object queryCIDADE: TStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object queryESTADO: TStringField
      DisplayWidth = 2
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object queryCEP: TStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object queryTELEFONE: TStringField
      DisplayWidth = 16
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object queryFAX: TStringField
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object queryEMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object queryHOMEPAGE: TStringField
      DisplayWidth = 50
      FieldName = 'HOMEPAGE'
      Origin = 'HOMEPAGE'
      Size = 50
    end
    object queryTIPO: TStringField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object queryIE: TStringField
      DisplayWidth = 20
      FieldName = 'IE'
      Origin = 'IE'
    end
    object queryBAIRRO: TStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object queryREPRESCELULAR: TStringField
      DisplayWidth = 15
      FieldName = 'REPRESCELULAR'
      Origin = 'REPRESCELULAR'
      Size = 15
    end
    object queryUSERCAD: TStringField
      DisplayWidth = 20
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object queryDATACADASTRO: TDateField
      DisplayWidth = 10
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object queryOBSERVACOES: TBlobField
      DisplayWidth = 10
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object queryREPRESNOME: TStringField
      DisplayWidth = 70
      FieldName = 'REPRESNOME'
      Origin = 'REPRESNOME'
      Size = 70
    end
    object queryREPRESFONEFAX: TStringField
      DisplayWidth = 16
      FieldName = 'REPRESFONEFAX'
      Origin = 'REPRESFONEFAX'
      Size = 16
    end
    object queryREPRESEMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'REPRESEMAIL'
      Origin = 'REPRESEMAIL'
      Size = 50
    end
    object queryREPRESOBSERVACOES: TBlobField
      DisplayWidth = 10
      FieldName = 'REPRESOBSERVACOES'
      Origin = 'REPRESOBSERVACOES'
    end
    object queryPRODUTOR_RURAL: TStringField
      DisplayWidth = 1
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object queryINSC_PRODUTOR: TStringField
      DisplayWidth = 20
      FieldName = 'INSC_PRODUTOR'
      Origin = 'INSC_PRODUTOR'
    end
    object queryCOD_LINHA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_LINHA'
      Origin = 'COD_LINHA'
    end
    object queryLINHA: TStringField
      DisplayWidth = 70
      FieldName = 'LINHA'
      Origin = 'LINHA'
      Size = 70
    end
    object queryCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object querycodigo_ibge: TStringField
      DisplayWidth = 7
      FieldName = 'codigo_ibge'
      Origin = '"codigo_ibge"'
      Size = 7
    end
    object queryNUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object queryCOMPLEMENTO: TStringField
      DisplayWidth = 30
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object queryTP: TStringField
      DisplayWidth = 1
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
    object queryVALOR_LEITE: TFMTBCDField
      FieldName = 'VALOR_LEITE'
      Origin = 'VALOR_LEITE'
      Precision = 18
      Size = 2
    end
  end
end
