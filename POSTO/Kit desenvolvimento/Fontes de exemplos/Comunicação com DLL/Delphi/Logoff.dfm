object FormLogoff: TFormLogoff
  Left = 392
  Top = 276
  BorderStyle = bsDialog
  Caption = ' Cadeado do Sistema'
  ClientHeight = 204
  ClientWidth = 436
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 436
    Height = 204
    Align = alClient
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object myLabel3d1: TmyLabel3d
      Left = 4
      Top = 4
      Width = 428
      Height = 26
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'SIACE - Cadeado do Sistema'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Raised3d
      AShadeLTSet = False
    end
    object Panel2: TPanel
      Left = 4
      Top = 36
      Width = 428
      Height = 164
      Align = alBottom
      BevelInner = bvLowered
      Color = 15263976
      TabOrder = 0
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 424
        Height = 160
        Align = alClient
        BevelInner = bvLowered
        Color = 15263976
        TabOrder = 0
        object Label3: TLabel
          Left = 64
          Top = 62
          Width = 104
          Height = 13
          Caption = 'Senha de Acesso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 65
          Top = 26
          Width = 102
          Height = 13
          Caption = 'Nome do Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Image1: TImage
          Left = 12
          Top = 27
          Width = 57
          Height = 65
          Picture.Data = {
            055449636F6E0000010001003030000001001800A81C00001600000028000000
            30000000600000000100180000000000001B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000707D865858583636363D3D3D707D8600000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000636363818181
            B4B4B49999995D5D5D393939707D860000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000868686BCBCBCE3E3E3F0F0F0FAFAFACCCCCC5D5D5D3D3D3D00
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000009C9C9CCCCCCCFEFEFEEDEDED
            E3E3E3E5E5E5FEFEFE8181813636360000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000009C9C9C9F9F9FFAFAFAF5F5F5D7D7D7999999E6E6E6C1C1C14B4B4B00
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000969696C9C9C9FAFAFA
            C1C1C1969696F3F3F3B9B9B94B4B4B0000000000000000000000000000000000
            000000000000000000000000000000000000006464642E3539253D491D475B25
            3D493D3D3D000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000006D6B6B999999EDEDEDBEBEBE949494F5F5F5B7B7B74B4B4B00
            0000000000000000000000000000000000000000000000000000000000000000
            3B91BD1677AC1A7EC045A8CA4DB3D42A7BAF1D475B3030300000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000999999C1C1C1D7D7D7D7D7D7
            B3B3B3929292F3F3F3ABABAB3F3F3F0000000000000000000000000000000000
            000000000000000000000000000000003B91BD97CEF2FEFEFE80E5FF89EEFF92
            F8FF3B91BD253D49000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000008B8B8BE6E6E6F0F0F0D6D4D4A0A0A0A4A4A4F0F0F08E8E8E3F3F3F00
            0000000000000000000000000000000000000000000000000000000000000000
            5098C88CB7D9F9FFFF80E5FF6DD2FF92F8FF4DB3CD194C660000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000ADADACF3F3F3E1E1E1
            9F9F9FA3A3A3EDEDED8E8E8E3636360000000000000000000000000000000000
            000000000000000000000000008B8B8B366B8C57ACD5F1FFFF93E3FE3399FF68
            CEFF73D9E6194C66000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000818181E1E1E1EDEDED929292ABABABEAEAEA81818130303000
            00000000000000000000000000000000000000000000000000003B91BD1B6BA1
            1B6BA13F9FCDDDFDFF67B4FB3197FB86ECFF68CEE0194C660000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000868686838383B7B7B7D1D1D1
            868686B4B4B4E6E6E66666665858580000000000000000000000000000000000
            000000000000000000003B91BDABD3EBC1EAFF6BD1FF6FD5FE2D93F04CB2F892
            F8FF3B91BD335669000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000009C9C9CE5E5E5C9C9C9CCCCCC838383B1B1B1E1E1E15D5D5D64646400
            00000000000000000000000000000000000000000000000000005098C86EB4D9
            D2FDFF6BD1FF4EB4F42D93F071D7FE7FE5F70566990000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000868686E3E3E3DFDFDFB9B9B9
            818181BCBCBCD1D1D15858586464640000000000000000000000000000000000
            000000000000000000005285A96EB4D9D2FDFF66CCFE2C92E440A5F089EEFF3F
            9FCD335669000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000B7B7B7ADADACEAEAEAB9B9B97E7E7EC1C1C1BEBEBE565656707D8600
            000000000000000000000000000000000000000000000046749A1B6BA13F9FCD
            D2FDFF5FBAED288BE26BD1F977DDF4056699707D860000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000005D5D5D7A7A7AD1D1D1B9B9B9
            7E7E7EC1C1C1BABABA4B4B4B707D860000000000000000000000000000000000
            000000006EB4D957ACD597CEF258BEFA66CCFE248ADC3D9EE680E5FF3F9FCD29
            5067000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00838383A9A9A9999999ABABAB9B9B9B7A7A7ACCCCCCA4A4A44B4B4B86868600
            00000000000000000000000000000000000000008CB7D96EB4D9BAFCFF5DC2FE
            4CB2EE2084D55CC2F479DEFE1677AC707D860000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000A9A9A9C9C9C9D9D9D9999999A7A7A7949494
            7A7A7ACCCCCC9999994545450000000000000000000000000000000000000000
            00707D867292A83F9FCDBAFCFF74D4FF258BD6298FD775DBFF46ACDD22557700
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000009F9F
            9FC6C6C6D1D1D1999999A0A0A08E8E8E7E7E7EC9C9C99696963D3D3D00000000
            00000000000000000000000000005285A92255771B6BA13092CBBAFCFF5FBAED
            1B81C94CB2EE6ED4FA1677AC707D860000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000009C9C9CD7D7D7D1D1D19C9C9C9B9B9B7E7E7E
            868686C6C6C67A7A7A3144533D3D3D707D860000000000000000003B91BD54B5
            DF83E0F340A5F03DA3FF57BDFF2387CE2387CE6BD1FF46ACDD22557700000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000009696967373736D6B6B4B4B4B3030303D3D3D7E7E7E8181
            81CCCCCCC6C6C6A4A4A4999999727F895285A95098C83498DD2387CE2A4A6130
            3030707D860000000000002387CE94F4FE94F4FE3399FF3DA3FF3EA4F11A7EC0
            49AFE76BD1FF1A7EC0707D860000000000000000000000000000000000000000
            000000000000000000000000000000000000000000008C8C8CA3A3A3C1C1C1AE
            AEAEA4A4A48686866464644B4B4B7A7A7ABCBCBCBCBCBCADADAC9999992D90DC
            55BBF566CCFE64CAFF4EB4FE2D90DC265B853030306464643B91BD46ACDD9BFF
            FF71D7FE3399FF3DA3FF1B81C91B81C966CCFE49AFE71D5D8800000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000B9B9B9D1D1D1C1C1C1B7B7B7CECECEE5E5E5D6D4D4AEAEAE8181
            81ADADACB9B9B9B1B1B17292A849AFF26FD5FE6DD2FF54BAFF53B9FF6DD2FF49
            AFE71B6BA12E35391D76BB7FE5F794FAFF4CB2FF3399FF2D93F00F75B53498DD
            66CCFE1B81C9707D860000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000A4A4A4D4D4D4D4D4D4B7B7B7B1
            B1B1C9C9C9DCDCDCF5F5F5FEFEFEE5E5E5B3B3B3B1B1B1B9B9B93498DD6FD5FE
            71D7FE68CEFF40A6FF53B9FF6DD2FF86ECFF6BD1EF258BD63498DD82E8FF71D7
            FE47ADFF3399FF1B81C90F75B558BEFA4CB2EE1D5D8800000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000009C9C9CD7D7D7D7D7D7B7B7B7A9A9A9BEBEBED4D4D4EAEAEAFEFEFEF5F5
            F5E3E3E3D1D1D18CB7D94EB4F475DBFF75DBFF4EB4FE40A6FF53B9FF6DD2FF86
            ECFF9BFFFF7FE5F75CC2F475DBFF5DC2FE47ADFF2D93F0096FAA298FD75DC2FE
            298FD3596A750000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000A9A9A9DCDCDCD9D9D9ADADACA0
            A0A0B4B4B4CCCCCCE3E3E3FAFAFAFEFEFEEAEAEAD7D7D73D9EE675DBFF79DEFE
            71D7FE389EFE40A6FF53B9FF6DD2FF86ECFF9BFFFF94FAFF75DBFF68CEFF57BD
            FF47ADFF1A7EC0096FAA49AFFB49AFF21B6BA100000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000A7A7A7DFDFDFDCDCDCABABAB999999AEAEAEC6C6C6DCDCDCF0F0F0FEFE
            FEF0F0F097CEF255BBF580E5FF79DEFE57BDFF3399FF40A6FF53B9FF6DD2FF86
            ECFF9BFFFF94FAFF80E5FF6BD1FF57BDFF3EA4F10566992387CE4CB2FF298FD7
            596A750000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000BCBCBCE1E1E1DFDFDFB1B1B199
            9999A7A7A7BCBCBCCCCCCCD7D7D7EAEAEAF0F0F0439CF279DEFE80E5FF79DEFE
            389EFE3399FF40A6FF53B9FF75DBFF89EEFF9BFFFF94FAFF80E5FF6BD1FF57BD
            FF298FD3056699379DF343A9F61B6BA100000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            A4A4A4BCBCBCE5E5E5E3E3E3ABABAB9B9B9B9F9F9FB4B4B4868686868686ADAD
            AC8CB7D94FB5F785EBFF82E8FF64CAFF3399FF3399FF40A6FF53B9FF68CEE0A5
            FAFC9BFFFF94FAFF80E5FF6BD1FF57BDFF47ADFF248ADC3DA3FF2C92E42A4A61
            7171710000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000A4A4A4C9C9C9E6E6E6E5E5E5A9A9A99F
            9F9F999999ADADAC7A7A7A666666666666358EE380E5FF89EEFF85EBFF3DA3FF
            3399FF3399FF40A6FF3498DD05669945A8CAA5FAFCA5FAFC80E5FF6BD1FF57BD
            FF47ADFF3399FF3DA3FF258BD631445330303071717100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            ADADACD7D7D7EAEAEAEAEAEAAEAEAEA4A4A4999999A4A4A4666666FCE9D5B1CA
            E152B8F98EF3FF89EEFF68CEFF3399FF3399FF3399FF40A6FF366B8C64707737
            5F7A2A7BAF97E7ECBAFCFF78D6FF57BDFF47ADFF3399FF3DA3FF49AFFB3498DD
            265B853030307171710000000000000000000000000000000000000000000000
            00000000000000000000000000000000ADADACDCDCDCEDEDEDDFDFDFB1B1B1A7
            A7A79B9B9B9C9C9C706E6CD9D0BF4CA1F485EBFF8EF3FF8EF3FF3EA4FF3399FF
            3399FF3399FF358ED9666666B7A2A29A8A87606669366B8C6EB4D9D2FDFF80CC
            FE47ADFF3399FF3DA3FF4CB2FF5DC2FE4CB2EE1B6BA12E353900000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            A4A4A4F3F3F3F0F0F0E3E3E3B4B4B4ABABABA0A0A099999976767646749A57BD
            FF94FAFF92F8FF79DEFE3399FF3399FF3399FF3399FF2A7BAF6D6B6BC2A6A6DB
            BBB6B7A2A26D6B6B375F7A3B91BDD7F5F9B1E8FF3E9EFE3DA3FF4CB2FF5DC2FE
            66CCFE3D9EE6375F7A0000000000000000000000000000000000000000000000
            000000000000000000000000000000008E8E8EF5F5F5F5F5F5E6E6E6B9B9B9AE
            AEAEA4A4A4999999A3A3A3439CF2B1E8FFE8FEFFF1FFFFE8FEFF67B4FB3399FF
            3399FF3399FF3BA1F95285A96066699A8A87DBBBB6D2A8A86D6B6B375F7A1677
            ACC5E2ECC1EAFF3DA3FF4CB2FF5DC2FE66CCFE1A7EC071717100000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            A9A9A9FAFAFAFAFAFAEDEDEDCCCCCCB3B3B3A7A7A79B9B9B9B9B9B6EB4D94BA5
            FDD6ECFFF9FFFFF1FFFFF1FFFF97CEF23E9EFE3399FF40A6FF53B9FF57ACD559
            6A757C7573D2A8A8C89D9D6363632A4A612084D52D93F03DA3FF4CB2FF5DC2FE
            4CB2EE265B850000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000A9A9A9FEFEFEFEFEFEFAFAFAFAFAFAF3
            F3F3DCDCDCBEBEBEA4A4A4A9A9A98CB7D93E9EFE97CEF2F1FFFFE8FEFFE8FEFF
            C1EAFF57ADFA40A6FF53B9FF6DD2FF83E0F37283839A8A87D2A8A88D80784674
            9A1B81C92D93F03DA3FF4CB2FF5DC2FE2C92E4596A7500000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            929292B3B3B3CECECEFAFAFAFAFAFAF5F5F5F3F3F3F0F0F0EDEDEDDFDFDFD1D1
            D1C8CED467B4FB67B4FBDDFDFFE8FEFFDDFDFFD2FDFF80CCFE53B9FF6DD2FF86
            ECFF97E7EC666666D2A8A8AF958C596A751A7EC03197FB3DA3FF4CB2FF4FB5F7
            2A7BAF7171710000000000000000000000000000000000000000000000000000
            000000000000000000000000000000009292928D8078847C7A6666669F9F9FD4
            D4D4F3F3F3F0F0F0EDEDEDEAEAEAEAEAEAE6E6E6E3E3E3ABD3EB4BA5FDABE5FF
            DDFDFFDDFDFFD2FDFFABE5FF74D4FF86ECFF9BFFFF666666C89D9DC89D9D6666
            662387CE3399FF3DA3FF4CB2FF359BE6375F7A00000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            8C8C8CE2BD96FBD3ABAF958C5858588E8E8E818181969696BCBCBCD9D9D9E6E6
            E6E5E5E5E3E3E3E1E1E1C8D5E257ADFA80CCFEC6FEFFD2FDFFD2FDFFBAFCFF94
            F4FE99F2F5666666D2A8A8C89D9D6666663EA4F13399FF3DA3FF4AB0FD2084D5
            7171710000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000008C8C8CFBD3ABFBD3AB8D80783F3F3F8B
            8B8B000000000000B3B3B38B8B8B7A7A7A969696B7B7B7DFDFDFDCDCDCD9D9D9
            8CB7D957ADFAB1E8FFC6FEFFC6FEFFC6FEFF89B3B3847C7AD2A8A8AF958C6377
            8647ADFF3399FF3DA3FF3AA0F3366B8C00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            969696D0B192FBD3ABAF958C4B4B4B3030300000000000000000000000000000
            00000000A0A0A07373737A7A7A9B9B9BC6C6C6B1CAE14CA1F480CCFEC6FEFF9E
            C6C66D6B6BC89D9DD2A8A87C75735098C847ADFF3399FF3DA3FF2C92E4596A75
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000009A8A87FBD3ABFBD3AB706E6C4B
            4B4B303030585858000000000000000000000000000000000000000000000000
            96969676767663636346749A7292A86D6B6BC2A6A6D2A8A89A8A8763778657BD
            FF47ADFF3399FF359BF82A7BAF00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000838383D0B192FBD3ABDBBBB67C75735D5D5D4545453636363030303D3D
            3D6464646464646464646464646464643F3F3F4545455656566666669A8A87CE
            B0B0DBBBB69A8A87728383A5FAFC79DEFE47ADFF3399FF2D93F0375F7A000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000717171B3A292FBD3ABFC
            E9D5C6B5A59A8A87666666636363585858585858585858585858585858636363
            666666888383AEA5A5DBBBB6E1C3C3C2A6A6847C7A63778699F2F5A5FAFC9BFF
            FF8EF3FF389EFE288BE200000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000008C8C8C7C7573B3A292E5D3C9FCE9D5FCE9D5E5D3C9D9D4
            CED7D7D7D9D9D9D6D4D4D3CCCCDCD7D6EEDDDDEEDDDDE5D3C9B7A2A2847C7A71
            717100000000000057ADFA66CCFE5DC2FE49AFF23AA0F3000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000096
            9696666666847C7A9F9A94ADADACCFCBC6D7D7D7D9D9D9D6D4D4CAC4C4AEA5A5
            9A94947E7E7E6666669696960000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000008C8C8C8C8C8C8C8C
            8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C00000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFFFFFFFF0000FFFFE0FFFFFF0000FFFFC07FFFFF0000FFFF807F
            FFFF0000FFFF007FFFFF0000FFFF007FFFFF0000FFFF807FF81F0000FFFF807F
            F00F0000FFFF007FF00F0000FFFF007FF00F0000FFFF807FE00F0000FFFF807F
            C00F0000FFFF007FC00F0000FFFF007FC01F0000FFFF007FC01F0000FFFF007F
            801F0000FFFF007F003F0000FFFE007F003F0000FFFC00FE007F0000FFFC00FC
            007F0000FFFC003800FF0000FE00001800FF0000FC00000001FF0000FC000000
            01FF0000F800000003FF0000F800000003FF0000F800000007FF0000F8000000
            07FF0000F80000000FFF0000F000000007FF0000F000000003FF0000F0000000
            01FF0000F000000001FF0000F000000001FF0000F000000001FF0000F0000000
            03FF0000F000000003FF0000F000000003FF0000F000000007FF0000F0000000
            07FF0000F03000000FFF0000F03F00000FFF0000F80FF0001FFF0000F8000000
            1FFF0000FC0000003FFF0000FE0000307FFF0000FF8000FFFFFF0000FFF007FF
            FFFF0000}
        end
        object Bevel1: TBevel
          Left = 8
          Top = 109
          Width = 389
          Height = 8
          Shape = bsBottomLine
        end
        object Edit3: TEdit
          Left = 232
          Top = 25
          Width = 169
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnEnter = Edit3Enter
          OnExit = Edit3Exit
        end
        object Edit4: TEdit
          Left = 176
          Top = 58
          Width = 225
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 2
          OnEnter = Edit4Enter
          OnExit = Edit4Exit
          OnKeyPress = Edit4KeyPress
        end
        object suiButton3: TsuiButton
          Left = 150
          Top = 123
          Width = 120
          Height = 32
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Caption = '&Confirmar'
          AutoSize = False
          ParentFont = False
          UIStyle = FromThemeFile
          TabOrder = 3
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
          Glyph.Data = {
            5A010000424D5A01000000000000760000002800000012000000130000000100
            040000000000E4000000C40E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
            3333330000003333422433333333330000003334222243333333330000003342
            2222243333333300000034222A2222433333330000003222A2A2224333333300
            00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
            243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
            333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
            00003333333333A2224A3300000033333333333A222433000000333333333333
            A224330000003333333333333A223300000033333333333333A333000000}
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = suiButton3Click
          ResHandle = 0
        end
        object suiButton4: TsuiButton
          Left = 278
          Top = 123
          Width = 120
          Height = 32
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Caption = 'C&ancelar'
          AutoSize = False
          ParentFont = False
          UIStyle = FromThemeFile
          TabOrder = 4
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C005800581F7C005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            005800581F7C1F7C0058005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058
            00581F7C1F7C1F7C00580058005800581F7C1F7C1F7C1F7C1F7C1F7C00580058
            1F7C1F7C1F7C1F7C1F7C0068005C005800581F7C1F7C1F7C1F7C005800581F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058005800581F7C0058005800581F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800600060006400581F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00600060006C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800680064006C00741F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C0070006C00681F7C1F7C007000741F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C007C006C00741F7C1F7C1F7C1F7C007C00781F7C
            1F7C1F7C1F7C1F7C1F7C00780078007C1F7C1F7C1F7C1F7C1F7C1F7C00780078
            1F7C1F7C1F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            00781F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C}
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = suiButton4Click
          ResHandle = 0
        end
        object Edit1: TComboEdit
          Left = 176
          Top = 24
          Width = 49
          Height = 21
          ClickKey = 113
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          TabOrder = 0
          OnButtonClick = Edit1ButtonClick
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
        end
      end
    end
  end
  object Informacao4: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o!'
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
    Text = 'Digite o Nome do Usu'#225'rio !!!'
    Left = 117
    Top = 29
  end
  object Informacao3: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro!'
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
    Text = 'Erro ao Tentar Exibir o Formul'#225'rio de Log !!!'
    Left = 88
    Top = 29
  end
  object Informacao2: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o!'
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
    Text = 'Digite a Senha !!!'
    Left = 53
    Top = 29
  end
  object informacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o!'
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
    Text = 'Usuario e Senha N'#227'o Conferem !!!'
    Left = 21
    Top = 29
  end
end
