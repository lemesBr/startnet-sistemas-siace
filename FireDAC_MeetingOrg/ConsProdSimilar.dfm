object FormConsProdutos1: TFormConsProdutos1
  Left = 435
  Top = 143
  Width = 816
  Height = 532
  Caption = 'Consulta Produtos'
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel9: TRxLabel
    Left = 8
    Top = 22
    Width = 134
    Height = 13
    Caption = 'Op'#231#227'o de Pesquisa - F3:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ShadowColor = clWindow
  end
  object RxLabel10: TRxLabel
    Left = 598
    Top = 4
    Width = 92
    Height = 13
    Caption = 'Pre'#231'o de Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ShadowColor = clWindow
  end
  object RxLabel1: TRxLabel
    Left = 186
    Top = 22
    Width = 70
    Height = 13
    Caption = 'Consulta F2:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ShadowColor = clWindow
  end
  object lUltimaLeitura: TLabel
    Left = 619
    Top = 41
    Width = 139
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 598
    Top = 21
    Width = 195
    Height = 35
    Alignment = taRightJustify
    Color = clBlack
    DataField = 'PRECO_VENDA'
    DataSource = DM.Dts_produtos_c
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 445
    Width = 800
    Height = 48
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object myLabel3d1: TmyLabel3d
      Left = 296
      Top = 72
      Width = 368
      Height = 33
      Caption = 'SIACE - Consulta Produtos '
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
    object myLabel3d2: TmyLabel3d
      Left = 211
      Top = 6
      Width = 352
      Height = 33
      Caption = 'SIACE-Consulta Produtos '
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
    object suiDBNavigator1: TsDBNavigator
      Left = 8
      Top = 8
      Width = 184
      Height = 30
      FullRepaint = False
      TabOrder = 0
      TabStop = True
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DM.Dts_produtos_c
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object suiButton1: TsBitBtn
      Left = 575
      Top = 8
      Width = 92
      Height = 30
      Caption = 'Falta - F5'
      TabOrder = 1
      OnClick = suiButton1Click
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D805000000000000000000000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F9F7F7FCF9F8FFFF
        FDD5ECF794CCE5DEEFF8FFFFFFFFFFFFFFFFFFFAFAFAF8F8F8F8F8F80000F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F7F8F8F8F8F7F9F8F7FFFDF9F4
        FAFD7FC7E71391C40187BD00618401000027272790908FFFFFFFFFFFFFF8F8F8
        0000F8F8F8F7F8F8F7F8F8F7F8F8F8F8F7F7F7F7F7F8F7F9F7F7FEFAF8FFFFFF
        ACDAEE2DA8DB0BACE010A1D00E84B51AA7D4041D2D000000000000000000D5D3
        D3FFFFFF0000F7F8F8F7F8F8F8F8F8F8F8F7F7F7F8F8F8F8FDF9F7FFFFFCD0EB
        F848B0E010A8DD0CAFE10DB2E012A6D61282B118A7D51792BD00000100000000
        0000050505FFFFFF0000F7F8F8F8F8F7F7F8F7F7F8F7F8F8F8FFFDFAEBF6FB78
        C6E810A6DF0AAFE80BAFE20FAFE010B1E012AAD61484B1169DC412AEE00D3D57
        000000000000101011FFFFFF0000F8F8F7F7F7F8F9F7F8FFFBF9FFFEFDA5D8EF
        1FA6DF0AB3E70DB8E80FB7E811B6E90FB0E60FAFE112AADA1386B51697BA18BB
        ED1997C800000123211FEFF0F1FDFDFD0000F8F8F8FAF8F7FFFFFDC1E2F343B4
        E20EB0E20CB7E70EBAE70FB9E70EB9E60FB8E710B8E80FB1E711A8DA1489B615
        97BD15B1DC07A7D76DB1C8FFFFFFFDFCFCF8F8F80000FBF9F9F8FAFD70C1E512
        A9E20BB6E80CB9E710BFEA0FC0ED11C1EF10C0EC0EBAE70FB7E710B8EC12AADD
        148CB81A95B814A1CC14BEF00C84B2FFFFFFFBF8F7F8F7F80000EFF0EDE9EDF5
        33BBEE08B7E80FB6E711BFEC10C0EF0FC0EE0FBFEF0FC0EF10C1ED10B9E80FB9
        EA14AFE11A87A7126976189DC611BBEA05A0D268AFD0FFFFFEF8F8F70000BADE
        B9556D5C3CB0E20DBFF20DB8E810C0EE0EC0EE10C0EF10BFEE0FBFEF0FC1EE0F
        BCE913BEEE0A86BC2DA5AF00422F209FC310AFDC11BAEE087EAAF6FFFFFCF8F7
        0000DAFADB57BC520D583F0977A119C1F412C6F80DC2F30FBFF011BFEF10C0EE
        0FC2F012C1EC12A0D31493C827A1A01049221C94B814B6E50FB7EC0398CD8FC8
        DBFFFFFC0000F1FDF165D46469DE63359041065A4C0B84A61AB4E516C8FA10C8
        F810C4F413B8E90C92C71597C816A4CD27947A1549211AAAD60FBCEC0FB4E811
        B2E50B7CA6F5FFFF0000F8FDF96BD46A61D85E5FD45B61CA5A3C933E145D3708
        5C590E7D9713A1D11292C31D9FC8159EC51BA9D3298044164F281AAEDC10BAEC
        10B0E60FB1E20095C593C9DF0000FCFEFD6AD56C5CD35A57CA5759C35856B84E
        4FB46734AE96178098209CC621A1C31C9CC314ADE026BBC42B6E2B134F3017B1
        E30FB6EB0FAEE210B0E012B0E13A99C10000FEFEFE6BD76C58D15657C75856BF
        5446A2440152581CADE5168CC421A1C01D9DBC13B4E319C5F3217F50346A2F0C
        4D3A18B9EE0EAFE40FB0E00DB3E2008DC299CCDD0000FBFEFB68D56657CC5659
        C55354BA5254B2523E884000383F228DB527A0C91FA9D71BBFF222907A2D6B2C
        346A3209555412BAF00EB1E107A9DA1594C0A7D8EBFFFFFF0000F6FEF65DC756
        219E873AC07D52B64651AB504EA24B468A4215502F0B5054136F7025734A3570
        2E30703827582541859423B6EB009AD143A3C9F8FFFFFFFDFBF9F8F70000E4FC
        E15EA36D36BDEF0EB6DD32AC5D4CA447489A484892464791453F833C3D7D3D39
        78373371362E6F38204923FFFFFFC6E6F4B4E0F0FFFFFFFCF9F8F8F7F7F8F7F8
        0000EBF3E7E2F1F82CABE0118EC7A7DADD57AA543F9140478F493E8740418241
        397B40397638306F38215D29849585FFFFFFFEFBF8FFFBF8F9F8F7F8F8F7F7F8
        F8F8F8F80000FAF8F9F9FAFDAFD7EEE9F6FCFFFEFFF1FFF15CA35F3484363C85
        3D3F804138783C357435256830345B35FFFFFFF9F9F9F7F7F8F8F8F7F8F7F8F7
        F8F8F8F8F8F8F8F80000F8F8F7F9F8F8FFFBF9FBF9F8F8F8F7FCF9FCFFFFFFA0
        CCA1357B362A7330296F2C205E24507A56FEFFFFFBFAFCF7F8F8F8F8F8F8F7F8
        F8F8F8F7F8F8F8F8F8F8F8F80000F7F7F8F8F8F7F8F8F7F8F7F8F8F8F8F7F8F7
        F9F7F9FFFEFFF7FFF8C6DFC8A9C6AADAE7DBFFFFFFFAF9FBF7F7F8F8F8F7F7F7
        F8F6F8F7F8F7F8F7F8F8F8F8F8F8F8F80000}
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton3: TsBitBtn
      Left = 687
      Top = 8
      Width = 92
      Height = 29
      Caption = 'Custos - F4'
      TabOrder = 2
      OnClick = suiButton3Click
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
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object cbxpesquisa: TComboBox
    Left = 7
    Top = 37
    Width = 170
    Height = 21
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 1
    Text = 'Pesquisa qualquer parte da descric'#227'o'
    OnChange = cbxpesquisaChange
    Items.Strings = (
      'Pesquisa inicio da descri'#231#227'o produto'
      'Pesquisa qualquer parte da descric'#227'o'
      'Pesquisa Por Codigo Barras'
      'Pesquisa Por Referencia'
      'Pesquisa Por C'#243'digo')
  end
  object XDBGrid1: TDBGrid
    Left = 2
    Top = 64
    Width = 793
    Height = 201
    Color = clWhite
    DataSource = DM.DTS_PRODUTOS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = XDBGrid1DrawColumnCell
    OnDblClick = XDBGrid1DblClick
    OnKeyPress = XDBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_BARRAS'
        Title.Caption = 'C'#243'd. Barras'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Caption = 'Referencia'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_UNIDADE'
        Title.Caption = 'Und.'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'Pre'#231'o Venda'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA2'
        Title.Caption = 'Pre'#231'o (2)'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM_SH'
        Title.Caption = 'C'#243'd NCM'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATIVO'
        Title.Caption = 'Ativo'
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 664
    Top = 12
    Width = 121
    Height = 21
    Color = cl3DLight
    TabOrder = 3
    Visible = False
  end
  object Edit1: TEdit
    Left = 183
    Top = 36
    Width = 408
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = Edit1Change
    OnExit = Edit1Exit
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
  end
  object suiButton2: TsBitBtn
    Left = 689
    Top = -6
    Width = 29
    Height = 24
    Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
    TabOrder = 5
    Visible = False
    OnClick = suiButton2Click
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000130B0000130B00000000000000000000F8F8F8F8F8F8
      F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F3F2F2E7E6E6D8D6D4D3D0CDDBCECAE7D5
      D2F2EEEDF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
      F8F8F8F8F8F7F7F7EDEDEDD4D2D0C0BDB9B6B3AFB9B3AFC08B7CC5644BD7A699
      F1EDEBF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F7F9F9F8F8F8F8F8F8F8
      F8EEEEEDD0CECBBFBBB9C1BFBDC4C4C3C9C2C0DAA48CE17446C37C61DCD2CEF8
      F8F8F8F7F9F8F8F8F8F8F8F9F8F8F8F8F8F9F8F8F9F8F8F9F7F9F8F7F8DAD8D6
      C2BFBBCAC8C6CFCDCDCFCECED2CDCBDCB098D88356CCA28ECDC7C2F9F8F8F8F8
      F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F3F1F1EDEDEAE9EBE9CAC6C1CFCCC8D6
      D5D5C9C7C7BBB9B7DBCFCBD08F79CD8568D2BDB4C9C5BFF8F6F6F6F6F6F8F7F9
      F8F7F8F8F8F8F4F3F2DFD8D2D4B8A78AA36D51A15597B18FD8D6D1DEDEDCC1BE
      BDA39E9CC2A99ECC7953CD8D71DACEC8D0C8BFDDBBA6CEBAB0C0CEDBE1E7EFF6
      F6F7DDE3DAB4C0A4E7CEB48FB46B38B54469B86CC3D2BCD9DAD6D7D9D9ACC2CD
      84AEC3A59C98BB9788D2C4BED9B8A1D47337A880634D95BD82A8C4EAE9EAC2D6
      BE8BC284D6D5B6A7C68566D06866C96B8BCD88BACFB6BACED58AC5E368BCE474
      B0D0A9B3B8D3BBA9E6AC87F2A473C0B09A5CB7DA859EAAE1D2CABAD4B491D486
      B5CB97A6BC8493D18886B38185D08580BD9D7CBED66CBEE863BDE766B9E37EB8
      D6BFC1BED7B8A5E6C5B0B3C0C662A9D2B7BCBFE0CFC2C2D9BB9DD890C0DAB0D9
      D9CBBAC4B8B0B9AE7CA58670B6BD6EC6EC6AC6F164C0EC5FB9E861B7E47FB9D8
      A5AAACA8AAAB75B8D569ACD2CFD6DBE3DBD3E8EFE4B7D4ACA7BCAA95BED275C0
      E589ADC15E7D8A65A5C888CEF381CFF76CC5EF60BAE85EB6E560B2DF9EC4D788
      B7CF66B2DC79A8C7C9CDCFE3E0DAF7F8F7DBE9E996C7D873BEE462BAE45596BA
      31698D4E8FBC83BBE08FC8E983CEF463BBEA5FB6E55DB2E075B8DB71C1E86AB7
      E092BACFD2D8D9F2F2F1F1F5F6BADCED7AC7ED6CC5F063BFEA529DC53078A33C
      8CBF3988BE428CBF85D2F665C0EC5EB7E55CB1DF66BCE666C1ED62BBE86DB9E2
      A9D1E7EEF3F7ECF2F6AED6EC96D5F588D2F56CC3EE58A6D0428BB43595C9268D
      C62183C162B7E569C1EE60B7E662B1DE7BC7EF70C6F263BCEA5FB6E570B6DCD8
      E9F3EDF3F6BBDCEEB9E3F8B0E3F97DC6E83A718A4A85A44CA1C836A5D6269CD2
      2592CF2F96D32F95D051A3D389C8E790D6F76AC2ED5EB6E563B2DDC6DFEEF1F3
      F5C6DBE7B4DAEFA2D8F16BA1B64D5D633E545D4C6F7F6FAFCA62BEE050B8DF4D
      B3DC3CB5D834B6D41BA5C756B5D970C5F05FB8E769B4DCD4E7F2F5F5F5C4CCD0
      809CA87199AB4D69756365666266677B8183BBC3C8CADCE3C1DAE3B2CDD76FC4
      CF2BD9EC0CD5EF21A8D153B5E44DAEDE76B7D9E4EEF3F7F7F7DDDEDF999FA170
      797E6A70747777788D8D8DC6C5C5F1F1F1F8F8F8F9F8F8EEEFF0B6CED468C6D9
      34CBEF20B2E526A2D939A6D591C6DDEDF2F4F9F8F8F6F6F6EAEAEAD8D8D7CBCB
      CACCCCCCDCDCDCF2F2F2F8F8F8F8F8F8F8F9F7F7F7F7EAECEDC7D8DE9DC8DA80
      C4E383C6E6AEDAEDE2EFF5F7F7F8F8F8F8F8F8F8F7F8F8F7F8F7F5F6F6F6F6F6
      F6F7F7F8F8F8F8F8F8F8F8F8F8F9F7F8F8F8F7F7F8F4F5F5EEF1F1E9F0F3EBF1
      F5F4F6F7F7F8F8F8F7F9}
    SkinData.SkinSection = 'BUTTON'
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 261
    Width = 791
    Height = 183
    Enabled = False
    TabOrder = 6
    object RxLabel11: TRxLabel
      Left = 336
      Top = 10
      Width = 34
      Height = 13
      Caption = 'D.M.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 5
      Top = 10
      Width = 50
      Height = 13
      Caption = 'Estoque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel19: TRxLabel
      Left = 167
      Top = 10
      Width = 98
      Height = 13
      Caption = 'Estoque Vendido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 415
      Top = 149
      Width = 55
      Height = 13
      Caption = 'Cod. MS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel28: TRxLabel
      Left = 5
      Top = 149
      Width = 97
      Height = 13
      Caption = 'Garantia/Meses:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 212
      Top = 100
      Width = 89
      Height = 13
      Caption = 'Principio Ativo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 5
      Top = 100
      Width = 56
      Height = 13
      Caption = 'Validade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 212
      Top = 76
      Width = 71
      Height = 13
      Caption = 'Laborat'#243'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel36: TRxLabel
      Left = 4
      Top = 124
      Width = 63
      Height = 13
      Caption = 'Quant. Cx:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 212
      Top = 124
      Width = 46
      Height = 13
      Caption = 'Fra'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel37: TRxLabel
      Left = 4
      Top = 76
      Width = 96
      Height = 13
      Caption = 'Estoque Fra'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 212
      Top = 149
      Width = 73
      Height = 13
      Caption = 'Data Fabric:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 516
      Top = 9
      Width = 42
      Height = 13
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 418
      Top = 127
      Width = 3
      Height = 13
    end
    object suiDBEdit1: TDBEdit
      Left = 5
      Top = 24
      Width = 150
      Height = 32
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object suiDBEdit15: TDBEdit
      Left = 167
      Top = 24
      Width = 150
      Height = 32
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE_VENDIDO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit6: TDBEdit
      Left = 329
      Top = 24
      Width = 176
      Height = 32
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'DESCONTO_MAXIMO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object suiDBEdit11: TDBEdit
      Left = 107
      Top = 147
      Width = 91
      Height = 22
      Hint = 'Meses de Garantia'
      CharCase = ecUpperCase
      DataField = 'GARANTIA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBMemo3: TDBMemo
      Left = 302
      Top = 96
      Width = 443
      Height = 22
      DataField = 'PRINCIPIO_ATIVO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 107
      Top = 96
      Width = 91
      Height = 22
      Hint = 'Validade do medicamento/produto'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'VALIDADE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 302
      Top = 71
      Width = 75
      Height = 22
      Hint = 'Digite o ano de Validade'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'COD_LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object DBMemo4: TDBMemo
      Left = 400
      Top = 71
      Width = 355
      Height = 22
      DataField = 'LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 107
      Top = 123
      Width = 91
      Height = 22
      Hint = 'Quantidade na Caixa do Medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_CAIXA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit1: TDBEdit
      Left = 303
      Top = 123
      Width = 91
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'FRACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 473
      Top = 147
      Width = 136
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'COD_MS'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit5: TDBEdit
      Left = 107
      Top = 71
      Width = 91
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'ESTOQUE_FRACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object DBEdit6: TDBEdit
      Left = 303
      Top = 147
      Width = 91
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DATA_FABRICACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object suiDBEdit2: TDBEdit
      Left = 514
      Top = 23
      Width = 239
      Height = 32
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'NOME_MARCA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
  end
  object CheckBox1: TCheckBox
    Left = 5
    Top = 4
    Width = 97
    Height = 17
    Caption = 'Ativos'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 7
  end
  object CheckBox2: TCheckBox
    Left = 70
    Top = 4
    Width = 97
    Height = 17
    Caption = 'Inativos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object CheckBox3: TCheckBox
    Left = 141
    Top = 4
    Width = 97
    Height = 17
    Caption = 'Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object CheckBox4: TCheckBox
    Left = 205
    Top = 4
    Width = 218
    Height = 17
    Caption = '&Descric'#227'o com N'#250'meros e Letras?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object ACBrLCB2: TACBrLCB
    Porta = 'COM1'
    Sufixo = ' '
    Intervalo = 300
    OnLeCodigo = ACBrLCB2LeCodigo
    Left = 726
    Top = 65523
  end
end
