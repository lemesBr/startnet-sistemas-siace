object FormPordLaticinios: TFormPordLaticinios
  Left = 375
  Top = 216
  Caption = 'Relatorios de Produ'#231#227'o Laticinios'
  ClientHeight = 187
  ClientWidth = 595
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 595
    Height = 187
    Align = alClient
    TabOrder = 0
    object RxLabel2: TRxLabel
      Left = 3
      Top = 53
      Width = 52
      Height = 13
      Caption = 'Produtor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 3
      Top = 80
      Width = 71
      Height = 13
      Caption = 'Linha/Zona:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 3
      Top = 143
      Width = 26
      Height = 13
      Caption = 'M'#234's:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 217
      Top = 142
      Width = 25
      Height = 13
      Caption = 'Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 13
      Width = 329
      Height = 23
      Caption = 'Relat'#243'rios de Produ'#231#227'o em Latic'#237'nios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -20
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 3
      Top = 116
      Width = 71
      Height = 13
      Caption = 'Data Movto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 216
      Top = 114
      Width = 12
      Height = 13
      Caption = 'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Panel1: TPanel
      Left = 172
      Top = 51
      Width = 279
      Height = 23
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel3: TRxLabel
        Left = 6
        Top = 3
        Width = 269
        Height = 17
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object ComboEdit1: TComboEdit
      Left = 79
      Top = 51
      Width = 92
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
      OnButtonClick = ComboEdit1ButtonClick
      OnExit = ComboEdit1Exit
    end
    object suiButton5: TsuiButton
      Left = 464
      Top = 43
      Width = 97
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = 'Fechar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D8DAA7B0
        B4BEC1C3D2D3D4E4E5E4EDEDECF5F5F5FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7FAFB1A6EA302619B065E920E5F8F1A618A2D698B3D72905C7F946C8A9C8C9E
        A7A5AEB2DCDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E1EC30
        7AA72775A32876A42775A305649E1975C41877C21676BE1472BA0F6EB20E6CB0
        0B69AD0867A60863A202629C718B9BFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFCFDA9C8DC065385113B64113B64103E680864A12283D1258AD42488D323
        87D32385D22284D12082D02080D01F7ECE1270B65D8297FCFCFCFFFFFFFFFFFF
        FFFFFFFFFFFFD9E2D973987497B7CB07528313386012365A105F390B68A9298D
        D6298FD72A90D82A91D8278ED7288ED6278ED6268CD62489D41877C3567B92FA
        FBFAFFFFFFFFFFFFFFFFFFB7CAB730A0373688397394A90A40680A4A32268938
        65C18B0C69A82D91D92B91D82D94DA2E95DB2A90D82B91D92C92D9298FD7288F
        D71C7EC44E768EF8F8F8FFFFFFFCFDFC94B59519A52830BF4222A12D2A9A3538
        A64560C7707EDA9556B682106CAD3194DC2B91D83198DC3298DC2C92D92E95DA
        2F96DB2C92D92B92D92082C83F718FF6F6F6FFFFFF79B07912AA1F21BA322FBD
        403EC45151CA655FCF746DD38269CC7B0F5E381172B63498DD2E93D9369BDE37
        9DE02E95DB3097DC3399DD2F96DB2E94DA2687D0376C8BF4F4F5FFFFFFA6D1A8
        1DA92721BA322FBD403EC4514FCA635ECF7352BB601465330E416B1475B53796
        D51D6AA71C61962F88C23298DD339ADE389DE03299DE3197DC298CD4306A8AF2
        F2F2FFFFFFFFFFFFCEE1CE2DA5352FBE412AAC362198361B6C410D4846133860
        0E4370197AB91A6DB41872BF156DB919547F3296D8379DE03BA1E3379DE03198
        DD2E92D72B688EEEEEEEFFFFFFFFFFFFFFFFFFE9F4E951AD563A8C3C2A709D0E
        43701338601338600D46731C7CC0166BB6348FD52D89CF0F59973495D43AA0E2
        3FA5E53AA1E2349ADE3397DE276891EAEAE8FFFFFFFFFFFFFFFFFFFFFFFFFCFD
        FCB8DABC1E6FA0113D661338601338600B48752285C5337FB6B4D1ED97BEDE1F
        70AD389FE13DA3E542A8E63FA5E5349ADE389CE0236892E4E5E4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F8FA12679A113B64133860133860094B79278ACA3EA2
        E24596CD4099D349ACE83CA2E440A6E647ACEB45ABE9369BDF3CA3E4206B9BDF
        E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F1F6055E9213375D13375D133860
        084F7F2E90D14BB1EE389FE24EB4F04BB1EE3DA4E542A9E84AB0ED49AEEC369B
        DF42A8E7196AA0DADADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EBF205588F06
        5A250A323512365A0751823497D953B5EF44A4E160B9EC60BAEC59ACE269B6E2
        6FBDE771BCE564AEDB53AEE8186CA4D2D3D4FFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCB5BFC4064D50258F32349A42082E2D095081369BDFD0DBD5F9F1E1FBF0E1F9
        F0E2F9F1E4E9E2E5E0DCE7F4EFE8E4DCE6B3D0DA136DA9CCCECEFFFFFFFFFFFF
        FFFFFFD3DCD3559B572EA0373CB74A5DC96E75D68C48B156065F7745A4E1C1BB
        E0453FF16B66F35B56F28D89F68480F64D49F2D7D5FB8883F2B9D8E11370ADC3
        C5C6FFFFFFFFFFFFC8DAC824A22D31BE4343C55651CA6562D07772D58881DB97
        1A769851ADE7B8B3E3726EF4C9C7FBA7A3F85651F2EDECFD827FF6DBD9FB8783
        F5BDDCE51475B3B9BEC0FFFFFFF0F1F1279D2E26BB3731C14441C55451CA6563
        D07874D58A78D58C12719355B1EBBAB4E35651F2B3B0F98784F65752F2CCCAFB
        6662F39B98F78880C295B4C7187AB8AFB6BAFFFFFF9DC99F17B5271DB42C2CA1
        35469D6411654D349D4462C775186A3006619461B7ECC7C0E5524CF27B77F48D
        8AF6D2D1FAA5A3F7A8A6F7B9B4F2E2DED060BDF31B7EBBA3ADB1FFFFFF53AE55
        20A128A2C3A3F6F6F68CB4CF094C7D127826105B3413386009639A66B9EEFEF0
        DCFFFBF2FFF9EEFFF7EBFFF5E7FEF4E2FBF0E1F2E9DC80C0E552B8F51D7FBD9A
        A7ACFFFFFF49A04BADC1AEFFFFFFFFFFFF8CB4CF055587055073094C7B094C7B
        0A669F4EB2F2B2D0D9B5D2DCA7CEE093C7E57DC0E963B7EB4DACE83FA2E23599
        D93092D01070AFA5AFB5FFFFFFA6CCA6F9F9F9FFFFFFFFFFFFE9F2F5A4C5D9A4
        C5D9A4C5D9A2C3D80C69A02B8DCD2587C71E81BE1A7AB51774B10D6CAA0B68A0
        11679B307AA7518BB075A6C295BAD1F2F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE3F85AE3B7FA85D97B885B0C9AECADDC5
        D7E1DAE4E7E9EFF2F9FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton5Click
      ResHandle = 0
    end
    object suiButton6: TsuiButton
      Left = 463
      Top = 84
      Width = 97
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = 'Limpar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 3
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
      OnClick = suiButton6Click
      ResHandle = 0
    end
    object suiButton7: TsuiButton
      Left = 463
      Top = 124
      Width = 97
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = 'Imprimir'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 4
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D805000000000000000000000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F80000F7F8
        F8F8F8F8F7F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F8F7F8F8FC
        FDFFFFFFFFFDFEFFF9FAFAF7F8F8F7F7F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8
        0000F8F8F8F7F7F8F8F8F8F8F8F7F7F8F8F7F8F7F8F7F7F8F8F8F7F7F8FCFDFD
        FFFFFFCDC7BE9D8B76CAC3BCF1F3F4FFFFFFFFFFFFFEFFFFFBFCFDF9F8F8F8F8
        F8F6F8F80000F7F7F8F7F8F7F8F8F8FAF9FAF9F8F9F8F8F9F8F7F8F7F8F8FBFE
        FFEBD9CAA36F50997753BE9772B087639B764E95795BA5927EBCB2A4E2DCD6FF
        FFFFFCFFFFF7F8F80000F8F7F8F7F9F8FAFBFCF7F3F5F7FBFCF9FCFFFAFDFFFC
        FEFFF9F2EABD8260AF8F75E9D8C9D9C5B1D2BBA5D0B59ACAAD90C9A483BB9973
        9F7D588B6E4FC0B09EFEFEFF0000F8F8F8FBFEFFBAA398A16744B5866ABB9F8E
        D0C1B7E0D7D3E1A88EEDA283F1E5DCFEFFFFFBFBFCFBF9F9F8F4F0F4EEE8ECE5
        DEE8DCD2E7DACDD2B9A0F4EEE3F9FAFB0000FAFBFCEBEAE99B5F38CD8A51E69F
        59DB8F4ACB8041CC8E66F4AF96E9C2AEF9F7F5F8F9F9F8F8F8F7F8F8F8F9F9F8
        F9FAF9FAFBFEFFFFEBE0D1C99879FAF7F7F7F9F90000FAFEFFB8A294BA6F32E2
        CBB6FFFCEDF9EAD4EFCA9FCC9C79DFBCA8FCFDFBF9FDFFF8FAFCF7F9FBF7F9F9
        F7F8F9F7F8F8FBFEFFECE2D8E0A387E8BFA9F8F8F6F8F8F80000EDECEEA8693D
        DCA36FDFD1CFFDFEFDFFFDFE65260AB98864F1C49AFEDBBDFFE3CBFFECDCFFF5
        E8FFF9F3FFFBFAFFFFFFECE4DAD4A485D8A27DF6F6F5F9FAFBF7F8F80000D4C8
        C1C88447E9CFB6D9CBC3FCF6EBF9EEE39E4A269F6A47543A236144257D58309B
        6C3EB57F54CE976AE2AC80E0B58EC3A186EFDFC9CF9466E1D9D7FAFBFCF7F8F8
        0000D5C7BFE3B07CE3DBD8DFCBBBFAEEDBF9E5D5B84F2ADA7546E59164D79069
        BE8869A87C608E684B6C452F5D37217A4421DEBDAAFFFFFFE0C9B6DED0C9FAFC
        FDF7F8F70000D4C7BCF3E4D0D0C2BDF3D7B7F9E1C5F5DCC4CB542CED6E3CF171
        3CF0743EF1763FF77E49FA8A58FE9B68EF9362D46F43DEAF99FFFDF9E1C1A9DE
        D1C9FAFBFDF8F8F70000CECAC8FDFBFDD6BBA7FCD5AAFADDB2E8AF90DA592DF1
        7A4BF6885BF68E67F4885CF47744F5703DF5733DF36F3ED25126EFCFBBFDF6E7
        D9B396E6E2E2FAFAFBF8F7F80000CECAC9F5EEEAE6BB8CFACC95FFD8A8B75B39
        D76F47E48C67EA9D7FEAA384ECA281E88C64E17043DF6D3ED76334B95732FFED
        D6FEE6C9CDA68DFAFCFDF8F8F8F8F8F80000E9E7E7CFB8A4FCCD8EFCCB8CD59B
        75B16142BF7653C68667CE9174CE9578CD9678CA8868BE6F46B45B30993C16E1
        B08FFBDDB7EFC79EDDCDC3FAFDFEF8F8F8F8F8F80000FAFAFBEFEAE6DDCAB9E4
        C2A6AC6849ECA889EDA788E39F83D69171CE8D70C28464B67959A86B468E4823
        C8946CFFD9A4F3C794D8C2AEFDFEFFF7F8F8F8F8F8F8F8F80000F8F8F8F9FAFA
        FBFCFEFEFFFFE0D3CA9E6A4CBA7B5BB0775DC69B89C48568D69274D78E71D487
        6BC58A66FFD49EE3B689E3D3C3FDFFFFF7F8F8F8F8F7F8F8F8F8F8F80000F8F7
        F8F7F8F7F8F7F8FBFCFDE0DEDEC58166FFB391DBB7A4E3E4E0B67458C17958ED
        DDD2F1E9E8F8F5F2E6E2DEF5F3F1FAFCFEF7F8F8F8F8F8F8F8F7F8F8F8F8F8F8
        0000F7F8F7F8F7F8F8F8F7FEFFFFB6A59DD39073E4A282EDDDD3A17F70FBAD8D
        DC9E84FFFFFFF8FAFCF9FAFAF9FAFAF8F8F9F7F8F8F8F8F8F8F8F7F8F8F8F8F8
        F8F8F8F80000F7F8F7F8F7F8F7F7F8FBFDFED7CBC39A6C4FAA7B5A95654AAD73
        57B57453D4B8A7FDFFFFF8F8F8F8F8F7F6F7F8F8F8F7F8F8F8F7F7F7F8F8F8F8
        F8F8F8F8F8F8F8F80000F8F7F8F7F7F7F8F8F8F7F7F8FDFEFFFAF7F3EEE8E4EB
        DED2E3D3C7EADED6FFFFFFF7F7F9F8F8F7F7F7F8F7F8F7F8F7F8F7F7F7F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F80000F8F8F8F8F7F7F7F8F8F8F8F8F7F8F7F8F9F9
        F9FBFBFAFCFCFBFCFEFAFBFCF7F8F7F8F8F8F7F7F8F9F7F8F7F8F7F8F7F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F80000}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton7Click
      ResHandle = 0
    end
    object ComboEdit2: TComboEdit
      Left = 79
      Top = 77
      Width = 92
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
      TabOrder = 5
      Text = ''
      OnButtonClick = ComboEdit2ButtonClick
      OnExit = ComboEdit2Exit
    end
    object Panel2: TPanel
      Left = 171
      Top = 78
      Width = 280
      Height = 23
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 6
      object RxLabel1: TRxLabel
        Left = 4
        Top = 3
        Width = 269
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object Edit1: TEdit
      Left = 78
      Top = 139
      Width = 89
      Height = 21
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 251
      Top = 138
      Width = 56
      Height = 21
      TabOrder = 8
    end
    object DateEdit1: TDateEdit
      Left = 78
      Top = 110
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 9
    end
    object DateEdit2: TDateEdit
      Left = 249
      Top = 110
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 10
    end
  end
  object Cds_laticinios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Laticinios'
    Left = 17
    Top = 83
    object Cds_laticiniosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Cds_laticiniosCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object Cds_laticiniosNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 50
    end
    object Cds_laticiniosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Cds_laticiniosDATAI: TDateField
      FieldName = 'DATAI'
    end
    object Cds_laticiniosDATAF: TDateField
      FieldName = 'DATAF'
    end
    object Cds_laticiniosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_laticiniosN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      FixedChar = True
      Size = 10
    end
    object Cds_laticiniosCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Cds_laticiniosDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object Cds_laticiniosCOD_FORNECEDOR1: TIntegerField
      FieldName = 'COD_FORNECEDOR1'
    end
    object Cds_laticiniosNOME_FORNECEDOR1: TStringField
      FieldName = 'NOME_FORNECEDOR1'
      Size = 50
    end
    object Cds_laticiniosLINHA: TIntegerField
      FieldName = 'LINHA'
    end
    object Cds_laticiniosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Cds_laticiniosVALOR_LEITE: TFMTBCDField
      FieldName = 'VALOR_LEITE'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_laticiniosVALOR_TOTAL1: TFMTBCDField
      FieldName = 'VALOR_TOTAL1'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_laticiniosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object Cds_laticiniosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object Cds_laticiniosCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
      Required = True
    end
    object Cds_laticiniosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Cds_laticiniosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Cds_laticiniosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Cds_laticiniosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object Cds_laticiniosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Cds_laticiniosTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object Cds_laticiniosFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object Cds_laticiniosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Cds_laticiniosHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object Cds_laticiniosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Cds_laticiniosCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object Cds_laticiniosIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object Cds_laticiniosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Cds_laticiniosREPRESCELULAR: TStringField
      FieldName = 'REPRESCELULAR'
      Size = 15
    end
    object Cds_laticiniosUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Cds_laticiniosDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object Cds_laticiniosOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object Cds_laticiniosREPRESNOME: TStringField
      FieldName = 'REPRESNOME'
      Size = 50
    end
    object Cds_laticiniosREPRESFONEFAX: TStringField
      FieldName = 'REPRESFONEFAX'
      Size = 15
    end
    object Cds_laticiniosREPRESEMAIL: TStringField
      FieldName = 'REPRESEMAIL'
      Size = 50
    end
    object Cds_laticiniosREPRESOBSERVACOES: TBlobField
      FieldName = 'REPRESOBSERVACOES'
      Size = 1
    end
    object Cds_laticiniosPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object Cds_laticiniosINSC_PRODUTOR: TStringField
      FieldName = 'INSC_PRODUTOR'
      Size = 15
    end
    object Cds_laticiniosCOD_LINHA: TIntegerField
      FieldName = 'COD_LINHA'
    end
    object Cds_laticiniosLINHA1: TStringField
      FieldName = 'LINHA1'
      Size = 50
    end
    object Cds_laticiniosCOD_EMPRESA1: TIntegerField
      FieldName = 'COD_EMPRESA1'
    end
    object Cds_laticiniosVALOR_LEITE1: TFMTBCDField
      FieldName = 'VALOR_LEITE1'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_laticiniosANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object Cds_laticiniosMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
  end
  object Dsp_Laticinios: TDataSetProvider
    DataSet = QryLaticinios
    Left = 48
    Top = 56
  end
  object Dts_laticinios: TDataSource
    DataSet = Cds_laticinios
    Left = 47
    Top = 84
  end
  object QryLaticinios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from v_produtos_laticinio')
    SQLConnection = DM.SQLC
    Left = 14
    Top = 54
    object QryLaticiniosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QryLaticiniosCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object QryLaticiniosNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 50
    end
    object QryLaticiniosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object QryLaticiniosDATAI: TDateField
      FieldName = 'DATAI'
    end
    object QryLaticiniosDATAF: TDateField
      FieldName = 'DATAF'
    end
    object QryLaticiniosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object QryLaticiniosN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      FixedChar = True
      Size = 10
    end
    object QryLaticiniosCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object QryLaticiniosDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object QryLaticiniosCOD_FORNECEDOR1: TIntegerField
      FieldName = 'COD_FORNECEDOR1'
    end
    object QryLaticiniosNOME_FORNECEDOR1: TStringField
      FieldName = 'NOME_FORNECEDOR1'
      Size = 50
    end
    object QryLaticiniosLINHA: TIntegerField
      FieldName = 'LINHA'
    end
    object QryLaticiniosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object QryLaticiniosVALOR_LEITE: TFMTBCDField
      FieldName = 'VALOR_LEITE'
      Precision = 15
      Size = 2
    end
    object QryLaticiniosVALOR_TOTAL1: TFMTBCDField
      FieldName = 'VALOR_TOTAL1'
      Precision = 15
      Size = 2
    end
    object QryLaticiniosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object QryLaticiniosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object QryLaticiniosCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
      Required = True
    end
    object QryLaticiniosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QryLaticiniosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object QryLaticiniosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object QryLaticiniosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object QryLaticiniosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object QryLaticiniosTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object QryLaticiniosFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object QryLaticiniosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object QryLaticiniosHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object QryLaticiniosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object QryLaticiniosCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object QryLaticiniosIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object QryLaticiniosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object QryLaticiniosREPRESCELULAR: TStringField
      FieldName = 'REPRESCELULAR'
      Size = 15
    end
    object QryLaticiniosUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object QryLaticiniosDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object QryLaticiniosOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object QryLaticiniosREPRESNOME: TStringField
      FieldName = 'REPRESNOME'
      Size = 50
    end
    object QryLaticiniosREPRESFONEFAX: TStringField
      FieldName = 'REPRESFONEFAX'
      Size = 15
    end
    object QryLaticiniosREPRESEMAIL: TStringField
      FieldName = 'REPRESEMAIL'
      Size = 50
    end
    object QryLaticiniosREPRESOBSERVACOES: TBlobField
      FieldName = 'REPRESOBSERVACOES'
      Size = 1
    end
    object QryLaticiniosPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object QryLaticiniosINSC_PRODUTOR: TStringField
      FieldName = 'INSC_PRODUTOR'
      Size = 15
    end
    object QryLaticiniosCOD_LINHA: TIntegerField
      FieldName = 'COD_LINHA'
    end
    object QryLaticiniosLINHA1: TStringField
      FieldName = 'LINHA1'
      Size = 50
    end
    object QryLaticiniosCOD_EMPRESA1: TIntegerField
      FieldName = 'COD_EMPRESA1'
    end
    object QryLaticiniosVALOR_LEITE1: TFMTBCDField
      FieldName = 'VALOR_LEITE1'
      Precision = 15
      Size = 2
    end
    object QryLaticiniosANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object QryLaticiniosMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
  end
  object SDS_CONTAS_PAGAS: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'SELECT * from V_PRODUTOS_LAT_BAIXAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_FORNECEDOR;MES;ANO'
    MasterFields = 'COD_FORNECEDOR;MES;ANO'
    MasterSource = Dts_laticinios
    PacketRecords = 0
    Params = <>
    Left = 108
    Top = 57
    object SDS_CONTAS_PAGASFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_CONTAS_PAGASCODIGO_FORNECEDOR: TIntegerField
      FieldName = 'CODIGO_FORNECEDOR'
    end
    object SDS_CONTAS_PAGASAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CONTAS_PAGASSOMADEVALOR_BAIXA: TFMTBCDField
      FieldName = 'SOMADEVALOR_BAIXA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CONTAS_PAGASMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_CONTAS_PAGASANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
  end
  object DTS_CONTAS_PAGAS: TDataSource
    DataSet = SDS_CONTAS_PAGAS
    Left = 100
    Top = 92
  end
  object sds_linhas_bx: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from V_PRODUTOS_LAT_BAIXAS order by fornecedor asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_FORNECEDOR;MES;ANO'
    MasterFields = 'COD_FORNECEDOR;MES;ANO'
    MasterSource = dts_linhas
    PacketRecords = 0
    Params = <>
    Left = 343
    Top = 64
    object sds_linhas_bxFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object sds_linhas_bxCODIGO_FORNECEDOR: TIntegerField
      FieldName = 'CODIGO_FORNECEDOR'
    end
    object sds_linhas_bxAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
    object sds_linhas_bxSOMADEVALOR_BAIXA: TFMTBCDField
      FieldName = 'SOMADEVALOR_BAIXA'
      Precision = 15
      Size = 2
    end
    object sds_linhas_bxMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object sds_linhas_bxANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
  end
  object dts_linhas_bx: TDataSource
    DataSet = sds_linhas_bx
    Left = 339
    Top = 103
  end
  object QryLinhas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_PRODUTOS_LAT_FORN_SUM ')
    SQLConnection = DM.SQLC
    Left = 254
    Top = 64
    object QryLinhasCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object QryLinhasSOMAQUANTIDADE: TFMTBCDField
      FieldName = 'SOMAQUANTIDADE'
      Precision = 15
    end
    object QryLinhasSOMAVALOR_LEITE: TFMTBCDField
      FieldName = 'SOMAVALOR_LEITE'
      currency = True
      Precision = 15
      Size = 2
    end
    object QryLinhasSOMAVALOR_TOTAL: TFMTBCDField
      FieldName = 'SOMAVALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object QryLinhasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QryLinhasMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object QryLinhasANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object QryLinhasCOD_LINHA: TIntegerField
      FieldName = 'COD_LINHA'
    end
  end
  object dsp_linhas: TDataSetProvider
    DataSet = QryLinhas
    Left = 253
    Top = 96
  end
  object cds_linhas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_linhas'
    Left = 294
    Top = 64
    object cds_linhasCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object cds_linhasSOMAQUANTIDADE: TFMTBCDField
      FieldName = 'SOMAQUANTIDADE'
      Precision = 15
    end
    object cds_linhasSOMAVALOR_LEITE: TFMTBCDField
      FieldName = 'SOMAVALOR_LEITE'
      Precision = 15
      Size = 2
    end
    object cds_linhasSOMAVALOR_TOTAL: TFMTBCDField
      FieldName = 'SOMAVALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cds_linhasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cds_linhasMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object cds_linhasANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object cds_linhasCOD_LINHA: TIntegerField
      FieldName = 'COD_LINHA'
    end
  end
  object dts_linhas: TDataSource
    DataSet = cds_linhas
    Left = 296
    Top = 98
  end
end
