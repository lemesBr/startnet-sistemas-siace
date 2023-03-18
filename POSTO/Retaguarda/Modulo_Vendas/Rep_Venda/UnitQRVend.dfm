object VendaRepFrm: TVendaRepFrm
  Left = -23
  Top = 25
  Width = 808
  Height = 608
  HorzScrollBar.Position = 26
  VertScrollBar.Position = 40
  Caption = 'Relat'#243'rio :: Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 6
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = VendaListFrm.QryListVend
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        325.4375
        1899.70833333333)
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 8
        Top = 0
        Width = 412
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          21.1666666666667
          0
          1090.08333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Vendas (por Itens)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRMemo1: TQRMemo
        Left = 8
        Top = 64
        Width = 321
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.8125
          21.1666666666667
          169.333333333333
          849.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          'Relatorio de Vendas entre 00/00/0000 e 00/00/0000'
          'Frentista:'
          'Cliente:'
          '')
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 8
        Top = 32
        Width = 138
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          21.1666666666667
          84.6666666666667
          365.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome de Registro'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRImage9: TQRImage
        Left = 510
        Top = 0
        Width = 206
        Height = 58
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          152.135416666667
          1349.375
          0
          545.703125)
        Center = True
        Picture.Data = {
          0A544A504547496D616765970B0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB0043000503040404030504040405050506070C08070707070F0B0B
          090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
          24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E1EFFC0001108001800A003012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7ED
          67E3AFC37D2357BCD2AFF599E3BBB39DE09D0594AC15D18AB0C85C1E41E95D07
          80FE23F83FC6ED347E1CD623BB9A01BA485A368E455F5DAC0123DC64735F307C
          42F10FC2683C7DE208753F879A95DDEC7A95C2DC4E9AC3A2CB2091B73051D013
          938ED50FECED68DAB7C7BB7D53C29A5DCE9DA35B79924D1BCC6510C2622BB59C
          F52CC4601FE99AF62597D3F62E7AA695F5B58E2588973F2E8CF7B6FDA17E16AB
          156D72E010707FD026FF00E26BAAF0EFC47F077883C39A86BDA3EB11DD59E9D0
          B4D77B6361242AAA58928406E80E38E70719AF96AC6F3E0F5FE95AEEA63E1D6A
          69FD9691C8E875A909937CCB1F1E982D9FC2A5FD9EB4E9CDF78D3C4CBA4DDA78
          49345BD49E13290254237080498E58283F30E9D78CD1530149539495D356DEDF
          7046BCF992D1DCFA67C33F143C17E21D0752D774FD5C0D3B4CC7DAE79E278963
          C8C8FBC013F85738DFB42FC2C0C40D7A7383D4584D83FF008E57895CAE8DE23F
          80BE253F0FFC337DA4C169A95B4FA840F78D72D346AADC8CF40A4A93F4CF6AE2
          3C23E22F86B67A55ADA788BE1DDCEA776848B8BD8B599633202C4E4460003030
          319E71D6AA9E5D4E5CCED27676B697DBA8A5889AB6DF89F71E81E26D1B5BF0C4
          1E24B1BC5FECB9E3691279418C0504824EEC60641EB5C6EADF1D3E1769B70D04
          9E288AE245383F66B79665FF00BE954A9FC0D78AFED15AC69317C20F03E9BE09
          9A583C337E679561F31893E595C2392493B59DF2093C8F6147887E1CFC3DF877
          F0C343F14788F4AD4BC4775A9B4292225E9B758DA489A4F9428E836E39CE7AFB
          5634F054ACA53BFBCDA496FA772E55E57B46DA6E7BBF86BE30FC38F10DD25A69
          DE28B4170E70915C23C058FA0F314027D8577A0E7A57C77F137E1978453E0CD9
          7C49F0BC37DA679C2277B19EE3CF4D9236DC06233904839CE31DABDDFF00662D
          5AFB57F833A3DC6A170F3CD119601239CB1449182E4FB0C0FC2B2C4E1A9C69FB
          4A4DDAF669EF72E95593972C9799DC78A3C41A4F86B496D575ABC4B4B3574469
          1FA659828FD4FE5935A71B8750CA410790477AF903F6B1F1F1D7FC54BE16D3E6
          DDA7690E44C54F12DC746FFBE47CBF52D5EB3FB2AF8FBFE126F087FC23FA84FB
          B54D1D550163F34B6FD11BDC8FBA7FE03EB5E447111954703EBB17C355F0D955
          3C7BEBBAEC9FC2FF00CFD51DA78FFE27F83FC0DA941A7F8935196D67B88BCE89
          52DA4932B923395071C8359DE1AF8D9F0DFC41AB43A5D8788556EA76090A4F6F
          2441D8F450CCA064F619E7B579DFED4DAB780F4FF16E951F8B3C2579ADDCB58E
          E86587506B7089BDBE52075E72735E01E2597C37E24D5B4BB0F87FE11D434BBB
          91CC6D135EB5CB4EE4AECDB91F2E307F3F6AFA0C365F4EB535269ABF5D2DFE67
          C6D5C44A126958FB87C7FE3AF0EF81ACEDAF3C477335B5BDCC8628E4481E41BC
          0CE0ED071C67AFA1AD8F0FEAFA7EBBA2DA6B1A64E27B2BC8965864008CA91E87
          907D8D7CE9E38F1A2FC4ED3B54F85B61A0CF7DA969D03CA3521700A19AD97E67
          0BB7387605073CEF1591F07FE24DE693FB3BF8AECADE62352D0C0366DDD23B87
          0A187FBAECC7F115CFF5097B24FED5D7DCF665FB7B4BC8F77F18FC5BF87FE13D
          41B4ED63C430A5E21C3C10C6F33A1F46D80ED3EC706BCAFF0068EF8A172FE11F
          0CEBDF0FFC49710DA5EDC5C4724D00642FB027CA430046093DAB9BFD9BFE0F78
          7FC71E1DBBF14F8AE5B9BDF32E9E18A049CA72002CEEC3E62C49F5ED939CF11F
          ED43E0FD3BC0FE06F0C685A4CB3BD90BFBC9A21330664DE232573DF15D3470F8
          7A7888D34DB927ADF6D999CEA5495372D91F497853588E1F86DA3EB9AD5F2A2F
          F64C1717573336064C4ACCCC7EB93597E07F8A9E0FF1A6ACFA6F872EEEEF668D
          37C87EC72A222FAB3328033DBD6BE78F105DF8BBE266B7E1EF855A4CF1596976
          3A4D8C970C5F01C1B689CC8FDDB6EF0020EFCFB8FA63E1BF82744F0278722D1B
          4583007CD3CEC3F793BE39763FD3A01C0AE3AD429D285E4FDE7B25D1799B42A4
          A6F4D91F3E7C37F09DFCFF00B4FEBD75ACF86AE65D2A5BCD41D65BBB16303E5D
          8A9059769CF635F4FE9DA669DA640D0E9D616B67113929042B1A93EB85028A29
          632A4A728DFB20A11493F53E44F81DF0F358D6A1F1BE89ABE8BA8582DF69456D
          A4BAB67897CE5943C782C0670CA0FD335B3F018F8A74EF87BE3BF066ADE1FD62
          DD26D2AE6E2C4CB652283298991E3524725BE4200EB834515DD571129FB48BF2
          661182566BCCCEF85377E3FF0000FC2DD6EF746F0C5F36A73EAF6F18B7B9D365
          72D118A42CC10609008519E9CD73DE2FD57E2478B74B934ABAF8656F6C679158
          CF67E1B9229B7039E1F048CF7F6CD1456F1A8B9E551C55EE66E2ECA37D0D5F8A
          1F0F7C53A3FC26F0168FFD917F7B7D13DF4F7515AC0D37D9CC8D132A1DA0E0E0
          7E79AF46FDA4B47D5F51F811E12B2B0D2EFAEEEA29ED4C90C16EEF22016B2039
          503230481F5A28AE45899C9D293EEDFDECDBD9A5CCBC909E30D1F5797F641D3B
          498B4BBE9350582D435AADBB998113027E4C6781CF4A6F80B54F117823F66385
          6D343D54EBD2CF710DB5B0B390C91B3C8C448CB8C80064F2304E077A28AE5C4D
          597D5A51FEF37F81E8E554A13C75253575A69DCABFB3F789B53B5B76F0F78EBC
          23A818E3567B5D467D26466C0C931C84A64F7C1FC3D2B9FD7BC75E396F8A563A
          FE87E08D66CB45D3E5291DA47A5BA35C44787326179623A0E8B81EE4945787CD
          2E44AFB1FA442861DE32AD574D7BCB6D6CAF74DA57D1BFF862D7ED53A56AFE23
          F1BF85F51D2744D52F6D1F4F46668ECA46099949C3803E5383C83CD7B67C4286
          C7C21E06D5F58F0CF86601AB8B6315A8D3EC14CA647F954E1172402771F61451
          5EFBA8E50A317B7FC13F2B9C542752C7CA3F0CF51F89FF000FAEEFAF343F05DF
          4B717A8A924975A44F2305049C0C63192727E82A7F86DA1F892E3C7B716DAE78
          5359B2D2BC4625B2BFF2B4E9523804CD9575C8E024811867A05A28AF56A56D24
          ECAED1C518ECAE6F697A7FC6BF831A8DEE9FA1E9571A9E99712165686D1AEADE
          53D048027CD1B6300838E9DF02A5F8B969F10FC53F0BBC2F7BAF689AC5D6B126
          A17B24D12D8BEE8A33B02028A3E4181C645145734312E4E151C5735F7B791A4A
          16E68DF43A8F1DFC22D5EE7C27E1EF1EF831AF2CBC5167A5DA35D5A8252591A3
          81172A0F2B228182BDF18EBD7D13E077C44D77C4D64BA5F8BBC3DAA697ACC2BF
          EBE5B192282E80FE2048C2B7AAFE23D0145723A8EB52929EBCBB3EBE9E86EA3C
          934D753FFFD9}
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 161
      Width = 718
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.3125
        1899.70833333333)
      BandType = rbColumnHeader
      object QRLabel21: TQRLabel
        Left = 128
        Top = 8
        Width = 51
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          338.666666666667
          21.1666666666667
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 8
        Top = 8
        Width = 70
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          21.1666666666667
          21.1666666666667
          185.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Refer'#234'ncia'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 424
        Top = 8
        Width = 94
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1121.83333333333
          21.1666666666667
          248.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Pre'#231'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 536
        Top = 8
        Width = 71
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1418.16666666667
          21.1666666666667
          187.854166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Qnt.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 624
        Top = 8
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1651
          21.1666666666667
          243.416666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sub-Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 194
      Width = 718
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = DetailBand1AfterPrint
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.3333333333333
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 128
        Top = 0
        Width = 285
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          338.666666666667
          0
          754.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = VendaListFrm.QryListVend
        DataField = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 424
        Top = 0
        Width = 97
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1121.83333333333
          0
          256.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = VendaListFrm.QryListVend
        DataField = 'PRC_VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#0.000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 536
        Top = 0
        Width = 71
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1418.16666666667
          0
          187.854166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = VendaListFrm.QryListVend
        DataField = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#0.000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 624
        Top = 0
        Width = 92
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1651
          0
          243.416666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = VendaListFrm.QryListVend
        DataField = 'SUBTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 8
        Top = 0
        Width = 113
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          21.1666666666667
          0
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = VendaListFrm.QryListVend
        DataField = 'REF_PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 210
      Width = 718
      Height = 39
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = SummaryBand1AfterPrint
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        103.1875
        1899.70833333333)
      BandType = rbSummary
      object QRLabel17: TQRLabel
        Left = 592
        Top = 8
        Width = 121
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1566.33333333333
          21.1666666666667
          320.145833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel17'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 392
        Top = 8
        Width = 185
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1037.16666666667
          21.1666666666667
          489.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 249
      Width = 718
      Height = 29
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        76.7291666666667
        1899.70833333333)
      BandType = rbPageFooter
      object QRLabel3: TQRLabel
        Left = 256
        Top = 8
        Width = 193
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          677.333333333333
          21.1666666666667
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sistema Gerencial :: www.igara.com.br'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 56
        Top = 8
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          148.166666666667
          21.1666666666667
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 8
        Top = 8
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          21.1666666666667
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P'#225'gina'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRSysData3: TQRSysData
        Left = 672
        Top = 8
        Width = 35
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1778
          21.1666666666667
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 9
      end
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredValues = <>
    Left = 5
    Top = 16
  end
end
