object AbastecimentosListFrm: TAbastecimentosListFrm
  Left = 0
  Top = 0
  Width = 780
  Height = 464
  Background.Fixed = False
  HandleTabs = False
  Title = 'SAR - Sistema de Acesso Remoto  ::  Siace Sistemas'
  ExtraHeader.Strings = (
    '')
  SupportedBrowsers = [brIE, brNetscape6]
  OnCreate = IWAppFormCreate
  DesignLeft = 419
  DesignTop = 232
  object IWLabel1: TIWLabel
    Left = 16
    Top = 16
    Width = 226
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = [fsBold]
    Caption = 'Controle de Abastecimentos'
  end
  object IWLabel2: TIWLabel
    Left = 208
    Top = 160
    Width = 402
    Height = 16
    ZIndex = 0
    Font.Color = clGreen
    Font.Enabled = True
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = [fsBold]
    Caption = 'Indique o per'#237'odo desejado e clique em procurar...'
  end
  object IWLabel5: TIWLabel
    Left = 16
    Top = 32
    Width = 156
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = []
    Caption = 'Posto de Combust'#237'vel'
  end
  object IWHRule1: TIWHRule
    Left = 16
    Top = 56
    Width = 745
    Height = 3
    ZIndex = 0
  end
  object IWImage2: TIWImage
    Left = 560
    Top = 8
    Width = 200
    Height = 41
    ZIndex = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    UseBorder = False
    UseSize = True
    JpegOptions.CompressionQuality = 90
    JpegOptions.Performance = jpBestSpeed
    JpegOptions.ProgressiveEncoding = False
    JpegOptions.Smoothing = True
    Picture.Data = {
      0A544A504547496D6167658D090000FFD8FFE000104A46494600010101004800
      480000FFDB0043000503040404030504040405050506070C08070707070F0B0B
      090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
      24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
      1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
      1E1E1E1E1E1E1E1E1E1E1E1E1EFFC0001108002900C803012200021101031101
      FFC4001F0000010501010101010100000000000000000102030405060708090A
      0BFFC400B5100002010303020403050504040000017D01020300041105122131
      410613516107227114328191A1082342B1C11552D1F02433627282090A161718
      191A25262728292A3435363738393A434445464748494A535455565758595A63
      6465666768696A737475767778797A838485868788898A92939495969798999A
      A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
      D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
      01010101010101010000000000000102030405060708090A0BFFC400B5110002
      0102040403040705040400010277000102031104052131061241510761711322
      328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
      292A35363738393A434445464748494A535455565758595A636465666768696A
      737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
      A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
      E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FB2E
      8A8AF2E21B4B696E6E2558A1894BBBB1C05039249AF2497E29F8A7C4D7F35AFC
      33F07FF6A5B42E636D575097C9B52C0E0EDE85F1EC73ED5A53A529EAB6339D48
      C347B9EC14579235F7C7FB543732691E07BF41C9B682799243EC198EDCFD6AFF
      00803E2C5AF8835B93C31AEE9371E1CF12C6A58595C30759C0EA6271C3F7E3D3
      A6706AA542495D34FD1931AD16ECEEBD4F4CA2B3BFB46DC48D1BCCF1BA8C9564
      C535B53B31D6F7FF001CFF00EB573B924752A5396C8D3A2B19F59B15EB7F8FFB
      667FC2A07D7EC57FE623FF00908FF852F691EE6AB0959ED17F73FF0023A0A2B9
      797C4F62BD3511FF007E8FF855793C5D64BFF3111FF7E8FF00854BAD05D4D639
      76225B45FDCFFC8EC28AE19FC6B68BD350FF00C85FFD6AAD278F6D54F17FFF00
      90BFFAD52F114FB9AC727C5CB683FB9FF91E854579B49F112D97FE5FFF00F217
      FF005AAB49F12ADD7A5F8FFBF5FF00D6A978AA4BA9B4720C74B683FB9FF91EA5
      45792C9F14A05E97DFF90BFF00AD55DFE2CC4A3FE3F3FF0020FF00F5A93C6D15
      D4DA3C3598CB6A7F9FF91EC54578AC9F17E25FF97CFF00C83FFD6A81FE32C6BF
      F2F7FF009047F8547D7E82EA6B1E13CD1ED4FF003FF23DC68AF0793E362A9C0B
      BFFC823FC2A5B7F8C33CF11996E163857932CA8B1A77FE26001E8781E86858FA
      2DD93155E15CCA9479EA46CBBBD0F73A2BC535CF8AB3E9F6631AB5AC977229F2
      E38516500E7F888E077F7FCEB96B7F8C7E339717082DD0A805E196D9597A0247
      CA41EA71D7BAF4E4889E65421B9E67F66D6BD9599F4A515E0907C73D6228986A
      3A059A3ED215E399B970327E4207EAC2B919BE3BF8FED64B4D5A78F47934692F
      8C4235836CB326721558B919DA71900F4FC4E90C7D09FC32339E02BC15E4AC7D
      534563F83BC43A778A340B5D6B4B984B6D709B811D8F707DC1C8A2BAD3BABA38
      DAB68CF3EFDABA6BF87E105DB5A3CA901BB816F5A3FBCB6E5C06C7E3B6BCDAE0
      C7A578F75EBAF0E4A9A7241A7C7FD853C90DC4CA910871BA211831F94413F783
      7273D41AFA6356D3ED354D36E34FBFB78EE2D6E6368A68A45CABA918208AF06B
      DF87FF0012BE1F4B227C3DD6E2D4343DC5A2D33530CE2004E76A3AFCD8F6FE75
      7529AAF4D439ACD3BFDE8E9C0635E06ACEA72732924BF14FADEE9ECD18A9F103
      C781B49921D4355B969F4F98C76AF64BBDE5065DAF21F2C078CED500A9523824
      73CF96EBDE20D76F754D275392F65BBD5ADF51B56B2B968044E6560A5E3C0032
      15FE5FA57A9DF6B5F1AB51CDA3787F45B473C190CB2B7E2063F9D6BFC37F83FA
      B4DE228FC4DE30BC6BFBD8B9883A6C8E2F5D89CE0F6C9E7D31CD4D1A0F0F3537
      3BDBA7C8DF1D99D3C65174618751BDB5D34D6FA697F2FCEFD3DC2658EE74D4BC
      91007F27393EE2B989AA7F185DCB6F6DE54324D2381858A13F28FAF4CD7092DE
      EBADD20B8FFBE7FF00B2AE7A9194B646D82AB4A947DF91D2CE324FB5509FBD73
      F24FAF1FF96373FF007CFF00F6555653AFB7FCB1B9FF00BE7FFAF5CF2A337D0F
      5E9E61858EF2FC0DB9BA1AA13F3D6B2658FC4073886E7FEF9FFEBD549AD7C427
      FE58DC7E5FFD7AC9E1EA763D0A79BE0A3F6FF034A7CE6A85C75C0154A5B0F113
      7FCB1B9FCBFF00AF5565D2FC4679115CFF009FC6B2785AAFA1DF4F3EC04779FE
      0599FAD5198719A8E5D1BC48C3886E7FCFE35564D03C4ADFF2C6E7FCFE3593C1
      D6EC77D3E25CB56F53F0166EE6A84F52CBE1BF1311C4173FE7F1AAB2F85BC4CD
      FF002C6E7FCFE3594B015DF43BE9F15E571DEA7E057941E4D529F927356E4F08
      F8A0FF00CB1B9FCFFF00AF55A5F0678A1BA4375F9FFF005EB2797621F43BA9F1
      8E50B7A9F814A6660300F63FA8C1FF003DAA1959E43BA47676C01927B0E83E95
      6E5F0478A4F1E4DD7E7FFD7A81FC0BE2AC7105D7E67FC6A7FB3F156B58D1717E
      449F3F32E6EF6D49F48BACDCA8B96478E343857279F403F1C75AB9F0FA4D52FB
      FB656FEC664BA69D6401B255136F1C018DBC75E0647D2B1DBC09E2BED0DD7E67
      FC6B6FC3FA178B2CA296D6E21BE10CAB8768E4647703A2165392B9038F6ADA19
      7D6E494251DCF86CFB1995E22BFD6B0952CFAC6D64FBBF5174ED1355F1229D32
      C967F244AC9BC266493E660C79E00393CE3BE79AF73F0BFC13B09749846B2704
      83BADC282006EA0E7D7BFAD765F07FC3F6BA5785ADA636CAB752AEE762A011ED
      5DCD7B987C2D3A11B451F095F133AF2BC9983E0AF0C59F8574E6B0B1663096CA
      A9E8A3D00A2B7A8AE939C28A28A004DABFDD1F952E051450034A21EA8A7F0A3C
      B8FF00B8BF953A8A006F971FFCF35FCA8F2E3FF9E6BF953A8A006F971FFCF34F
      CA8F2A3FF9E69FF7CD3A8A00679517FCF34FFBE451E545FF003CD3FEF914FA28
      019E545FF3CD3FEF91479517FCF24FFBE453E8A00679517FCF24FF00BE451E4C
      5FF3C93FEF914FA28019E4C5FF003C93FEF91479317FCF24FF00BE453E8A0067
      930FFCF24FFBE451E4C3FF003CA3FF00BE453E8A0067930FFCF28FFEF9147930
      FF00CF28FF00EF914FA28010000600007B52D14500145145007FFFD9}
  end
  object IWHRule3: TIWHRule
    Left = 16
    Top = 152
    Width = 745
    Height = 3
    ZIndex = 0
  end
  object IWLink2: TIWLink
    Left = 656
    Top = 128
    Width = 97
    Height = 17
    ZIndex = 0
    Color = clNone
    Caption = 'menu principal'
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'verdana'
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = False
    OnClick = IWLink2Click
  end
  object IWLabel6: TIWLabel
    Left = 96
    Top = 72
    Width = 85
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'verdana'
    Font.Size = 10
    Font.Style = []
    Caption = 'Data inicial:'
  end
  object IWLabel7: TIWLabel
    Left = 232
    Top = 72
    Width = 75
    Height = 16
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'verdana'
    Font.Size = 10
    Font.Style = []
    Caption = 'Data final:'
  end
  object IWEdit1: TIWEdit
    Left = 96
    Top = 88
    Width = 105
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'verdana'
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 0
    PasswordPrompt = False
  end
  object IWEdit2: TIWEdit
    Left = 232
    Top = 88
    Width = 105
    Height = 21
    ZIndex = 0
    BGColor = clNone
    DoSubmitValidation = True
    Editable = True
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'verdana'
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit2'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 1
    PasswordPrompt = False
  end
  object IWButton1: TIWButton
    Left = 96
    Top = 120
    Width = 121
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Procurar'
    Color = clBtnFace
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'verdana'
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 2
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 232
    Top = 120
    Width = 121
    Height = 25
    ZIndex = 0
    ButtonType = btButton
    Caption = 'Limpar'
    Color = clBtnFace
    DoSubmitValidation = True
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'verdana'
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TabOrder = 3
    OnClick = IWButton2Click
  end
  object IWLabel12: TIWLabel
    Left = 208
    Top = 184
    Width = 434
    Height = 16
    Visible = False
    ZIndex = 0
    Font.Color = clRed
    Font.Enabled = True
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = [fsBold]
    Caption = 'Nenhum registro encontrado para o per'#237'odo digitado...'
  end
  object IWImage1: TIWImage
    Left = 16
    Top = 72
    Width = 64
    Height = 64
    ZIndex = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    UseBorder = False
    UseSize = True
    JpegOptions.CompressionQuality = 90
    JpegOptions.Performance = jpBestSpeed
    JpegOptions.ProgressiveEncoding = False
    JpegOptions.Smoothing = True
    Picture.Data = {
      0A544A504547496D616765EF0B0000FFD8FFE000104A46494600010101004800
      480000FFDB0043000503040404030504040405050506070C08070707070F0B0B
      090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
      24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
      1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
      1E1E1E1E1E1E1E1E1E1E1E1E1EFFC00011080040004003012200021101031101
      FFC4001F0000010501010101010100000000000000000102030405060708090A
      0BFFC400B5100002010303020403050504040000017D01020300041105122131
      410613516107227114328191A1082342B1C11552D1F02433627282090A161718
      191A25262728292A3435363738393A434445464748494A535455565758595A63
      6465666768696A737475767778797A838485868788898A92939495969798999A
      A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
      D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
      01010101010101010000000000000102030405060708090A0BFFC400B5110002
      0102040403040705040400010277000102031104052131061241510761711322
      328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
      292A35363738393A434445464748494A535455565758595A636465666768696A
      737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
      A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
      E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E7F5
      4D77C57E31F8D5F116DAEFE2C78B3C316BA56B6F656165A6EA170448A8F2C7B6
      38233B98E21076A2939626B674CF875F183570F2695F103E33344AC541BA9E5B
      3271DC0B9B889B1F8579D5DFC52BAF871F17FE2B476724F1CBA8789AEFE68230
      24212E67E37E410A770C8EFC7071C569BF68FF001134ACCADA8104E726E173FF
      00A09AE47869BA8E7ED256ECAD65A7A37E7B9D51C4423051F669F9BBDFF346D7
      8BFF00672D6AC279755F1145E3BB99AEE579A7B98B4C8B5091DC9CB3C8609E47
      C92492CC39E6A1F097ECEBE1CF1596834AF8842DEF41C7D8EFACFECF739FFAE1
      232C98EA338C7BD53D3BF69BF1459BE527D4D0643616E41048F51800FE39AF4D
      F0DFED2BA178AF4E5D33C73A6E91AC5AC8712DB6A56D1838E9C646DCF4E793EC
      0D675B095A6BF7759C5FA45AFCBF51AC4C12B3A51FFC9BFCCE2A0FD92F549DB6
      C5E26BA6F7FEC5200FC4CB5A5E1BF81DE34F0C2DC59F86BE2EEBFA2AC8C5E78B
      4F865B70ECA3AB049C64819E4F4AF63F0EBDEE99A7C7A87C1AD5E0D4F4E4064B
      8F06EAF78CCF8CF22CEE1C968C91D15CB264E70BD2BB3F0078CBC2BE388AFF00
      4F8ADE6D275F5FF90BE8D78A61BEB760402181E590E07CCBF290C338248AF97C
      CEB67580F7E552F0EEA31FC55B4FC4F42857CBE6ED2A3FF934BFCCF9B6E3C01F
      1B81516DF1CBC47267AF99AADE27E5890E6B63E02EBBF147C25FB4B787BC07E2
      8F1EDFF892C35AB2B89A68EEAEE5B85555866752A65E558341DBB13EB5F4CEB5
      15A68DA0CED6162A9214288D1C7965C8E58B75C019E4FB57CB9E0F9A497F6FAF
      0D46E72B0D9CC89EC0D84EDFCD8D69906758BC762153A924D59BDAC6B8DC3E11
      E15D6A3071D525ADCF2BFD9A7E0E699F141755BCD6356BCB2B4D3A48A3F2ED55
      77CA5C313F3302171B47F09CE6BDCBC17F03BE1B45E38F1269B3F87A2BEB3B08
      6C920171712BB89191DA466C301F36538C718F7ACFFF008276697FDA5E1FF187
      EFFCAF2EEEDBF837672927B8F4AFAAC78594316178033753E4F27F5AFD0F0F2C
      3C629CB7F43E71DCF9BB54F82BF0C751F8856BA25BF862DE0B3B4D2E5BABE482
      6914B3CB22A5BE486C8C08E73DB381D466B84F88FF00B35F85A0D7749D2BC2DA
      F5FDAEA1AB4EFE5DB5D6D992186352D2CB90036D5F954024E59D4679C8FB10F8
      4121B99AEAD9AD85C4C144B2795B1A4DB9DA188C938C9C67D4D7396DE0ABDB0F
      146ABE20B856BCB8BC58E080AC60FD9EDD147EED48E48690BB93C677018F941A
      E8B61EAE8ADF90B547C3FAB689F13BE076A31B6A7035DE8ACDB12E6DDCC90119
      CE01EA87FD97001E783D6BDE74BD5B45F8CDA3D86AFA7EB07C3BE3FD3D07F65E
      BD6ADE5BC84023C99B9F9948C290D9EA41E0FCD7FE277C5EB0D335A3A0E99A44
      7AFDA4059758DCAAD148BB58182224E1A40D8DD90540057EF13B7C3FC6DE1B5F
      86FACDA78EFC13772DFF0080B589371F2B39B0909C6C6CF2086CE3201E0A3723
      27CFAD4A95E4A0F992DD1BCA95584633945A4F67DCFA7FC07E3FFF0084FBC19A
      8DAEBEAFA0789344B86B6D674D894B65C1C248A0E0F94F8241CE010464E013E2
      3E0397CCFF008280E8C9B71E5452A673D7FE25929CFEB5775EF125CE9DAEE83F
      1874A3E71B00969AEC31003ED960D8570C064395043027D98F22A87C3DB8B2BE
      FDBEF42D4F4E92392D2F6DE4B884C4DB9361D325DBB4F71802BE4B0795C70399
      B9535EE4A2EDE4EEB43D3FACBA997CA9BE925DBB3F99D47FC134581D0BC6E9DC
      5CD993F8ACBFE15F5FD7C8DFF04DFB1BAD3ECBC7F697D6F35ADDC17B6B04F6F3
      4652489D04C19594F2181C8208C822BEB9AFA53C90AF9E7F6ADF891E21B08E1F
      07781A3BDBC9A6565D727D3A17792C55B688E3798294803EE6DCC4EF55DA401B
      81AF52F16FC4AF0EE8575369968B79E20D6A2E1B4BD222F3E68C9E9E6B642403
      DE565E9C67A57897C47F1FF8DBC55A8C9E1B82D7C866887DA743D2AFBE5B51D4
      BEA57EA008A3C039862E59411B981ACEA4D2F757C4F64B737A1EECD4DAD13D7B
      7F5F7FA1E0715CC3A55DD958EA8C6769585B436761062D6D3BB65CE0B10064F3
      900FDD1915BBE06D2A18FC671E87E2DBF964F087882E1E37B1B79DE083ED4401
      034BB482E5B685EC376CEB8AA70C575278E6F1249B4DD505BAC79D42C9045626
      12A7647671AE07961F78DC3E562AE72C4E6B43C551DF4DA4CB1D8DAC13C80798
      A64959363A10C8C02A92C430071C74EB5E2D2C44B05898AFBFB7F5F99FABBCB6
      39E6513AD356DDC2C9B6ADB5DEF2EDA2B2D524AC68FC3DD1FF00B0BC41E27F85
      5E239249DA081E2B69B2313DB32168C9278E632EA47660A0679AE4BF65982F2C
      3F6BBF0C6897B2895B497D42C63936E0B225B5D1527D7AF1ED81DABD2FC7FA7E
      A5A37C4BF00F8AF5BD6E2D4AE75A89A2964B5B416D08814C73C42300B37DD797
      2CEE72303039AE7FC0D696FA07EDCDE17BE9E411C3A9C72C8B804E247B49A003
      81D4B81EDF3678EDF475A1152D3E47E431934AC7A87EC997DE47C69F8F91CA00
      823F10BCE5CB050B8B9BCCE49E3A0EE474AEC758BBF1E78AE48E2F156A96FE04
      D1AE2565B5D2F4BD415F51BF0AA5995EE31855DA32440338DDFBC18C9F9A75BB
      FBBF87DF17BE254DAE7F69E96BAA789659ADCDDD83CDA66C324F245733AAA9F3
      C859418A3FBBBD8336368C3754F18FC2EFED6B97D5BE25F89BC53A5EA204BA8C
      6BA594BDB893233135CB08DBECDD488170A30306B96AC2B548DA8B51F37FA7F5
      E86B4DC22EF3D4F60D366BAF134A7C05F05ED2DB43F0F59CAD16A5AE5AC1F244
      D9E52D39C4B29DB8695890A30724E0D7A3D97C06F0DC3A3E9BA04B7B767C3F0B
      B5CEA7A6A1C0D5EE4EDC49752FDF9002A18A82031033C00A3CC7C39FB5A7C17F
      0C6991693A3F86BC5715AC08A88B0585B246001C055F3C600E78C7E75A0FFB6B
      7C2F18D9E1EF18B7AE6D6D87FED7AAC3D0A7858B8D2D5BDE4F77EBFE4156B4AA
      BD765B2E8877ED47A569FA6FC40F0C5D5943140F75A2DC5ABC518DAAB15B4B09
      88051C003ED1201803FC3C9F559AF60B5DFA7D8ADECFB8011B4C2218F5DC41FE
      547C55F8F5A67C4BF1BD95F681E16F10CB61A6E9CF0A28B457B8F32490172C11
      D804C47181CE73BBDAB9E3E339F071E0CF16E7B674D3FE35E266185AB3C43942
      375A1FAB709E7980C26531A15EBA84AF2F55AFA34769ABDCF8CBC4BF0D3E12EB
      17FE1DB4B5D2F4C94E9F15E47A919A49847149082F1794BB0FEEC8CEF6C9C71C
      D66FC45B8B8B7FDB27C00F68C44A754B446C2863B1EF5D5F8F4DA5B9EDD7B569
      DC7C5AD2C7C31F02783AD3C07E3B8FFB024B57D424FECB502629191294F98E4B
      33330CEDEDD391599F03748F137C47FDACECBC6779A06B361A469EC6EE596E6D
      5A211ED89846A58A95CB4873B723237E3A57D14A5EED99F923D5DD1FFFD9}
  end
  object IWRadioGroup1: TIWRadioGroup
    Left = 368
    Top = 72
    Width = 105
    Height = 65
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'verdana'
    Font.Size = 10
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'por Produto'
      'por Frentista'
      'por Bomba')
    Layout = glVertical
  end
  object IWRegion1: TIWRegion
    Left = 16
    Top = 160
    Width = 745
    Height = 169
    Visible = False
    TabOrder = 0
    Color = clNone
    object IWLabel8: TIWLabel
      Left = 8
      Top = 8
      Width = 212
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'Total dos Abastecimentos:'
    end
    object IWDBLabel1: TIWDBLabel
      Left = 136
      Top = 56
      Width = 69
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = []
      DataField = 'DINHEIRO'
      DataSource = DtsQryTotais
    end
    object IWLabel10: TIWLabel
      Left = 16
      Top = 56
      Width = 55
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'em R$:'
    end
    object IWLabel11: TIWLabel
      Left = 16
      Top = 80
      Width = 95
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'em Volume:'
    end
    object IWDBLabel2: TIWDBLabel
      Left = 136
      Top = 80
      Width = 52
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = []
      DataField = 'LITROS'
      DataSource = DtsQryTotais
    end
    object IWDBLabel3: TIWDBLabel
      Left = 136
      Top = 32
      Width = 86
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = []
      DataField = 'OPERACOES'
      DataSource = DtsQryTotais
    end
    object IWLabel13: TIWLabel
      Left = 16
      Top = 32
      Width = 121
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'em Opera'#231#245'es:'
    end
    object IWDBGrid1: TIWDBGrid
      Left = 16
      Top = 128
      Width = 713
      Height = 25
      ZIndex = 0
      BorderColors.Color = clNone
      BorderColors.Light = clNone
      BorderColors.Dark = clNone
      BGColor = clNone
      BorderSize = 0
      BorderStyle = tfVoid
      CellPadding = 0
      CellSpacing = 1
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = []
      FrameBuffer = 40
      Lines = tlAll
      UseFrame = False
      UseWidth = True
      Columns = <
        item
          Alignment = taCenter
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '10%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'CODIGO'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.CSSStyle = 'verdana'
          Title.Font.Enabled = True
          Title.Font.FontName = 'verdana'
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'C'#243'digo'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taCenter
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'OPERACOES'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.CSSStyle = 'verdana'
          Title.Font.Enabled = True
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Opera'#231#245'es'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '0'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'PRODUTO'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.CSSStyle = 'verdana'
          Title.Font.Enabled = True
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Produto'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taRightJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'PRECO'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.CSSStyle = 'verdana'
          Title.Font.Enabled = True
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Pre'#231'o'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taRightJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'VOLUME'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.CSSStyle = 'verdana'
          Title.Font.Enabled = True
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Volume'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taRightJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'VALOR'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.CSSStyle = 'verdana'
          Title.Font.Enabled = True
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Valor'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end>
      DataSource = DtsQryPorProduto
      FooterRowCount = 0
      FromStart = True
      HighlightColor = clNone
      HighlightRows = False
      Options = [dgShowTitles]
      RefreshMode = rmAutomatic
      RowLimit = 0
      RollOver = False
      RowClick = False
      RollOverColor = clNone
      RowHeaderColor = 2987775
      RowAlternateColor = 10473471
      RowCurrentColor = clNone
    end
    object IWLabel9: TIWLabel
      Left = 8
      Top = 112
      Width = 99
      Height = 16
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'por Produto:'
    end
    object IWDBGrid2: TIWDBGrid
      Left = 16
      Top = 128
      Width = 713
      Height = 25
      ZIndex = 0
      BorderColors.Color = clNone
      BorderColors.Light = clNone
      BorderColors.Dark = clNone
      BGColor = clNone
      BorderSize = 0
      BorderStyle = tfVoid
      CellPadding = 0
      CellSpacing = 1
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = []
      FrameBuffer = 40
      Lines = tlAll
      UseFrame = False
      UseWidth = True
      Columns = <
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '0'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'NOME'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.FontName = 'verdana'
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Nome'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taCenter
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'OPERACOES'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.Size = 10
          Title.Font.Style = []
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Opera'#231#245'es'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taRightJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'VOLUME'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.Size = 10
          Title.Font.Style = []
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Volume'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taRightJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'VALOR'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.Size = 10
          Title.Font.Style = []
          Title.Header = True
          Title.Height = '0'
          Title.Text = 'Valor'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end>
      DataSource = DtsQryPorFrentista
      FooterRowCount = 0
      FromStart = True
      HighlightColor = clNone
      HighlightRows = False
      Options = [dgShowTitles]
      RefreshMode = rmAutomatic
      RowLimit = 0
      RollOver = False
      RowClick = False
      RollOverColor = clNone
      RowHeaderColor = 2987775
      RowAlternateColor = 10473471
      RowCurrentColor = clNone
    end
    object IWDBGrid3: TIWDBGrid
      Left = 16
      Top = 128
      Width = 713
      Height = 25
      ZIndex = 0
      BorderColors.Color = clNone
      BorderColors.Light = clNone
      BorderColors.Dark = clNone
      BGColor = clNone
      BorderSize = 0
      BorderStyle = tfVoid
      CellPadding = 0
      CellSpacing = 1
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = []
      FrameBuffer = 40
      Lines = tlAll
      UseFrame = False
      UseWidth = True
      Columns = <
        item
          Alignment = taCenter
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '10%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'ID_BOMBA'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.FontName = 'verdana'
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = False
          Title.Height = '0'
          Title.Text = 'Bomba'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taCenter
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '10%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'OPERACOES'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.FontName = 'verdana'
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = False
          Title.Height = '0'
          Title.Text = 'Opera'#231#245'es'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '0'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'PRODUTO'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.FontName = 'verdana'
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = False
          Title.Height = '0'
          Title.Text = 'Produto'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taRightJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'PRECO'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.FontName = 'verdana'
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = False
          Title.Height = '0'
          Title.Text = 'Pre'#231'o'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taRightJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'VOLUME'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.FontName = 'verdana'
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = False
          Title.Height = '0'
          Title.Text = 'Volume'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end
        item
          Alignment = taRightJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clNone
          Font.Enabled = True
          Font.FontName = 'verdana'
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          VAlign = vaMiddle
          Visible = True
          Width = '15%'
          Wrap = False
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'VALOR'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clNone
          Title.Font.Enabled = True
          Title.Font.FontName = 'verdana'
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = False
          Title.Height = '0'
          Title.Text = 'Valor'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
        end>
      DataSource = DtsQryPorBomba
      FooterRowCount = 0
      FromStart = True
      HighlightColor = clNone
      HighlightRows = False
      Options = [dgShowTitles]
      RefreshMode = rmAutomatic
      RowLimit = 0
      RollOver = False
      RowClick = False
      RollOverColor = clNone
      RowHeaderColor = 2987775
      RowAlternateColor = 10473471
      RowCurrentColor = clNone
    end
  end
  object QryTotais: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select count(COD_BICOENC) OPERACOES, sum(DINHEIRO) DINHEIRO, sum' +
        '(LITROS) LITROS from BICOENC where DATAHORA between :DATA_INI an' +
        'd :DATA_FIM')
    Left = 504
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FIM'
        ParamType = ptUnknown
      end>
    object QryTotaisDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryTotaisLITROS: TIBBCDField
      FieldName = 'LITROS'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryTotaisOPERACOES: TIntegerField
      FieldName = 'OPERACOES'
      Required = True
    end
  end
  object DtsQryTotais: TDataSource
    DataSet = QryTotais
    Left = 504
    Top = 96
  end
  object QryPorProduto: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ID_PRODUTOS CODIGO, PRODUTOS_DESC PRODUTO,  count(ID_PROD' +
        'UTOS) OPERACOES, PRECO, sum(LITROS) VOLUME, sum(DINHEIRO) VALOR ' +
        'from BICOENC '
      'where DATAHORA between :DATA_INI and :DATA_FIM '
      'group by ID_PRODUTOS, PRODUTOS_DESC, PRECO')
    Left = 536
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FIM'
        ParamType = ptUnknown
      end>
    object QryPorProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QryPorProdutoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object QryPorProdutoPRECO: TIBBCDField
      FieldName = 'PRECO'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryPorProdutoOPERACOES: TIntegerField
      FieldName = 'OPERACOES'
      Required = True
    end
    object QryPorProdutoVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryPorProdutoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
  end
  object DtsQryPorProduto: TDataSource
    DataSet = QryPorProduto
    Left = 536
    Top = 96
  end
  object QryPorFrentista: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select FRENTISTA.NOME NOME, count(ID_PRODUTOS) OPERACOES, sum(LI' +
        'TROS) VOLUME, sum(DINHEIRO) VALOR from BICOENC '
      
        'left outer join FRENTISTA on (FRENTISTA.COD_FRENTISTA=BICOENC.CO' +
        'D_FRENTISTA)'
      'where DATAHORA between :DATA_INI and :DATA_FIM '
      'group by FRENTISTA.NOME'
      '')
    Left = 568
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FIM'
        ParamType = ptUnknown
      end>
    object QryPorFrentistaNOME: TIBStringField
      FieldName = 'NOME'
      Size = 100
    end
    object QryPorFrentistaOPERACOES: TIntegerField
      FieldName = 'OPERACOES'
      Required = True
    end
    object QryPorFrentistaVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryPorFrentistaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
  end
  object DtsQryPorFrentista: TDataSource
    DataSet = QryPorFrentista
    Left = 568
    Top = 96
  end
  object QryPorBomba: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = DataModule1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ID_BOMBA, count(*) OPERACOES, PRECO, PRODUTOS_DESC PRODUT' +
        'O, sum(LITROS) VOLUME, sum(DINHEIRO) VALOR from BICOENC '
      'where DATAHORA between :DATA_INI and :DATA_FIM '
      'group by ID_BOMBA, PRECO, PRODUTOS_DESC'
      '')
    Left = 600
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FIM'
        ParamType = ptUnknown
      end>
    object QryPorBombaID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Required = True
    end
    object QryPorBombaOPERACOES: TIntegerField
      FieldName = 'OPERACOES'
      Required = True
    end
    object QryPorBombaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object QryPorBombaPRECO: TIBBCDField
      FieldName = 'PRECO'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryPorBombaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryPorBombaVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
  end
  object DtsQryPorBomba: TDataSource
    DataSet = QryPorBomba
    Left = 600
    Top = 96
  end
end
