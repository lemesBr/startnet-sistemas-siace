inherited FrmCadAdmCartaoCredito: TFrmCadAdmCartaoCredito
  Left = 416
  Top = 127
  Caption = 'Cadastro Administradoras de Cart'#227'o'
  ClientHeight = 456
  ClientWidth = 752
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 758
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 752
    Height = 405
    ExplicitWidth = 752
    ExplicitHeight = 405
    FullHeight = 405
    object Panel4: TPanel
      Left = 0
      Top = 55
      Width = 752
      Height = 350
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = 16710131
      TabOrder = 0
      object Label3: TLabel
        Left = 128
        Top = 72
        Width = 60
        Height = 13
        Caption = 'Taxa Cr'#233'dito'
      end
      object Label4: TLabel
        Left = 304
        Top = 72
        Width = 55
        Height = 13
        Caption = 'Dias D'#233'bito'
      end
      object Label7: TLabel
        Left = 376
        Top = 72
        Width = 57
        Height = 13
        Caption = 'Dias Cr'#233'dito'
      end
      object Label30: TLabel
        Left = 2
        Top = 2
        Width = 748
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Bandeiras'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 57
      end
      object Label9: TLabel
        Left = 80
        Top = 24
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label10: TLabel
        Left = 8
        Top = 24
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label5: TLabel
        Left = 216
        Top = 72
        Width = 58
        Height = 13
        Caption = 'Taxa D'#233'bito'
      end
      object Label6: TLabel
        Left = 448
        Top = 72
        Width = 56
        Height = 13
        Caption = 'C'#243'digo TEF'
      end
      object Label11: TLabel
        Left = 8
        Top = 72
        Width = 55
        Height = 13
        Caption = 'Tipo Cart'#227'o'
      end
      object Image1: TImage
        Left = 632
        Top = 16
        Width = 100
        Height = 100
        AutoSize = True
        Center = True
      end
      object EdtTaxaCredito: TCurrencyEdit
        Left = 128
        Top = 88
        Width = 73
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        FormatOnEditing = True
        TabOrder = 3
        ZeroEmpty = False
      end
      object EdtDiasCredito: TAlignEdit
        Left = 376
        Top = 88
        Width = 57
        Height = 21
        Alignment = taRightJustify
        TabOrder = 7
        OnEnter = EdtDiasCreditoEnter
      end
      object EdtDiasDebito: TAlignEdit
        Left = 304
        Top = 88
        Width = 57
        Height = 21
        Alignment = taRightJustify
        TabOrder = 5
        OnEnter = EdtDiasDebitoEnter
      end
      object EdtNomeBandeira: TEdit
        Left = 80
        Top = 40
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        MaxLength = 50
        TabOrder = 0
      end
      object EdtCodBandeira: TAlignEdit
        Left = 8
        Top = 40
        Width = 57
        Height = 21
        TabStop = False
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object CheckAtivo: TCheckBox
        Left = 448
        Top = 40
        Width = 73
        Height = 17
        Caption = 'Ativo'
        TabOrder = 1
      end
      object EdtTaxaDebito: TCurrencyEdit
        Left = 216
        Top = 88
        Width = 73
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        FormatOnEditing = True
        TabOrder = 4
        ZeroEmpty = False
      end
      object ComboTipoCartao: TComboBox
        Left = 8
        Top = 88
        Width = 105
        Height = 21
        Style = csDropDownList
        Color = clSilver
        TabOrder = 2
        OnChange = ComboTipoCartaoChange
        OnExit = ComboTipoCartaoChange
        Items.Strings = (
          'CR'#201'DITO'
          'D'#201'BITO'
          'AMBOS')
      end
      object BtnGrava: TButton
        Left = 547
        Top = 33
        Width = 75
        Height = 35
        Caption = '&Gravar'
        TabOrder = 9
        OnClick = BtnGravaClick
      end
      object BtnExclui: TButton
        Left = 547
        Top = 73
        Width = 75
        Height = 35
        Caption = '&Excluir'
        TabOrder = 10
        OnClick = BtnExcluiClick
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 131
        Width = 748
        Height = 217
        Align = alBottom
        Color = clSilver
        DataSource = DSBandeiras
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = 7485192
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Color = 16776176
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Width = 221
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'CALC_TIPO'
            Title.Alignment = taCenter
            Title.Caption = 'TIPO'
            Width = 81
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'TAXA_CREDITO'
            Title.Alignment = taCenter
            Title.Caption = 'TX CR'#201'DITO'
            Width = 70
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'TAXA_DEBITO'
            Title.Alignment = taCenter
            Title.Caption = 'TX D'#201'BITO'
            Width = 66
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'DIAS_CREDITO'
            Title.Alignment = taCenter
            Title.Caption = 'DIAS CR'#201'DITO'
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'DIAS_DEBITO'
            Title.Alignment = taCenter
            Title.Caption = 'DIAS D'#201'BITO'
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'CODIGO_TEF'
            Title.Alignment = taCenter
            Title.Caption = 'COD. TEF'
            Visible = True
          end>
      end
      object EdtCodTEFBandeira: TEdit
        Left = 448
        Top = 88
        Width = 89
        Height = 21
        Color = clSilver
        MaxLength = 10
        TabOrder = 8
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 752
      Height = 55
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = 16710131
      TabOrder = 1
      object Label2: TLabel
        Left = 80
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label8: TLabel
        Left = 424
        Top = 8
        Width = 56
        Height = 13
        Caption = 'C'#243'digo TEF'
      end
      object codigo: TAlignEdit
        Left = 8
        Top = 24
        Width = 57
        Height = 21
        TabStop = False
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdtNome: TEdit
        Left = 80
        Top = 24
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        MaxLength = 50
        TabOrder = 1
      end
      object EdtCodTEF: TEdit
        Left = 424
        Top = 24
        Width = 89
        Height = 21
        Color = clSilver
        MaxLength = 10
        TabOrder = 2
      end
    end
  end
  inherited Panel2: TAdvPanel
    Top = 405
    Width = 752
    ExplicitTop = 405
    ExplicitWidth = 752
    FullHeight = 51
    inherited btnLocalizar: TAdvGlowButton
      Left = 650
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA793000004D5494441545809B5967F
        6C535514C75F5FB78E6ED36803E8EC34214B813F9091F18F3131336A82131723
        3AB21FED58AA14D43F04131363642E660989248A7F08628C59F6A34526464370
        883A3B4810F86BFEFA63637F41872CD14ACC0A6EFDF1FC9C97F79A6E7BAF6B4B
        B69C6FCF39F79E73CF79E79E7BEF1C8A92FFAFB5B5F581B2B2B267344D7B18CB
        07E1D50E87E306FC1A7C2C1E8F8F8D8C8CCC31571239ECBCFC7EFFA30439C8FC
        63C0D68EB904897C3A3737D73B3C3C1C472F8A962C1C0A852A6767678FB26880
        95CCF969E41F48E82AE3B7C05AE4F5E029E40AE684FE41DF130E878745291466
        00DD9EAFAE619153285B81D0854C26F37624123987A28105D4D1D17137034170
        007800EE5A2F4974231744D9045A5A5ADC2E97EB3C5E123C09DF3F34347404BE
        2430630B085F0FBE6106B701852CDE20890F455E0EAA69505E5EFE09B21E9C05
        9A09FE31FAB2C1B15164EFE7E7E7B7230F02856D39D4D6D6D628F272D013A094
        8FE014308CF791FD77865C3023893427E2651C2E02A7AAAA877B7A7AF4F5D16D
        C934E8C542B6E3025F7E14B92492E348CFECC13903B64C4E4EEE84E72555CE39
        164F0085AC0FC0355032D1B0BF52CD13B200BC43783EA85C32CD18C8D7DFA8AB
        AB8B2AFCC969605BA4C3D14AA288E1F5642010A832644BA6325A0F8446D93329
        9D74F16B4EA7F37E192C057CF98F869F9B86DE60C8964CC5C06BCCC40C2E5DDC
        984EA7D79B7AB17C60602081CFDF40A8567EEC200954CB2459CF0A1790D43AF8
        B3E04E485F8FA6BC2BDF222A8167C480A0D99223CB17D00AFE1A992B010E7C74
        5FB6F24F645B921EB82EB304F50937F01BBC8AB183F0A2A9BDBDFD219C5C4049
        A552D785DB41B6605426A9C4E35D5D5DF718F29070B08B32BC092F969E331C62
        1CCB0943B6646A3299FC89990428476E872B5C465FC3A30A7F54E17DBEE87053
        535305EAB2C449926DDD65189E866BC09654AED0DB04F9CCB0E80E0683D2341A
        77BBDC62B215722A5EF7783C1324F20A0FCF1AC3D69271FBB531D100D234E011
        785E926651BA283D5F7F05CBD5E0ECF4F4F4F668349A225835AF5C3763AF02F3
        4249238BED251AACBBBFBFFF2ABA4E24B805E13CDB590D3F4625F7C2F3929E80
        58E0DC82E317C83216E6757CA9AFAFEF3F7445FE494924128DCC7B450713B158
        EC67491259275EBFCD5CE567506AB0BBC97F487554378E9E972458D68086EB61
        3BDE35062EB350687070F01743B76454C929C962FB01066695E45D798FCBEC77
        C6FEE5753D0BD7C0125A9080CCF206EC831F026520038E83084FEDF7F2DA21EB
        D4D9D9E925C00E9410D80484FEE26735584024F72D6FCE0B6645732797242093
        94B391727E845C0F726906E516580BAA8049D2179FD3B86F518DFD047CC79CC8
        E167987B7E71126A8E4156E4EC8EF97CBE06B6C3CFA0942F0917BA8F9F75C00C
        2E091DA3DBEB69B890EC39898F336F454FD3E85F2D3ECE0E2BCBC56334E8BD7C
        D50602AD81AF22C84DCA3FC32DF70741E5EBB32ED86EC3469A313BB648384DA5
        76E0372FE30525208645C041337F43F59AED7C48F014A7E44549C2720BEC1C0B
        1CD768B89DD88E004B92E4B85F4E70825C4E4B8B3B1C1C1F1F4FD5D6D67EE976
        BBB7B2940F58D146B65259910424DAD4D4545A92A8ACAC6C40B74C82ADA858B1
        0408AA48125EAFF7A45D1224707C4513C897047D30CA69D8BDE209E426414FB8
        D1E5863DC99D10E414DCFE1F005BE46525E7AE800000000049454E44AE426082}
      OnClick = BtnConsultarClick
      ExplicitLeft = 650
    end
    inherited btnSalvar: TAdvGlowButton
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000386494441545809ED964D
        4C135110C7B75B01835F114C8403EA9D50381B831515A35CB8108592486AEC11
        F5A212FCC210A368C2451213E3055A20A90713638C1FF103D09B1C403D18A30D
        8DA28460D4D6D082D4DF6CBAA4BBEDB6949AE881E6FFDFF7E6CDCC9B79F3DEBE
        AEA2ACFCFE71056CD9C46F6969593D3737B70B9F5AB81596401B9C8AC562EF6D
        36DB88AAAA0FFBFAFAC28C2D09E29CD1B0A1A1A1282F2FAF9D001E8CD7C274F8
        81DDAD4824D2E1F7FBBFA733145DC6049A9B9B1B595D0FC61B613698C4B8D5E7
        F3DDA6D5E076BBD74522914E84617D5C45B082CDE5727510DC8741B6C171514A
        79F89B9A9ACED02AF1E0F7E9B7C276A8C1AE3D533C58F9054551CEC38C55C2C6
        126C474D4545856D6161E12C463BE02F1675787C7C3CA0F04B5901567E10A373
        E8FF0642CCF5187E66B29F24B4B7BFBFFF297D0D490970E036A0B90E735A39FE
        82102BDF3F303030C2213E451287BC5EEF4B51E84C4AA0A0A0A00DE526982B66
        58ED4E092EFBCFEBEB43962D30CC6B48C0E974AE22CBA3068BE5092182D5B3DA
        518FC753383B3B7B8769B6430F15CEA75D842181B2B2B26A3445301748F00304
        1F96E0A150E82EC9D4C4272C662BF6C4FB5AA36ACFF883D5D7C6BBCB6DD205D7
        E62419A984D6978739812D32B84C660C2EF3B2C87269751A1260B0149A31CCFD
        BE99C1ABD00A4B0A2ECE54A0585A9DE604CCB282C3047F2E535C9D2771BA0CCD
        90F7BCCE62CFCDB622FF96874E73C04FBA426F29994BBF4E49A20DF9B4AEA3FD
        86ECE462197273CF87C3E147245CC3B825D01B62A826CBA049D6449C2E723B1E
        1781605768A5126182D723BF92D39EF0AAA1B6063E13895AD520A8EA834439A1
        2FB762B79E44BC120E820F4970D3AB96E096DCE56634C43024100C0687709981
        56E8663B4E8892E01FB20D8EDFF4FCFCFC08ED22EC8B3D3A814060C1E170ACA7
        5B0D5382EDD887CD7C5555D534FFED5EE49A9486A907AF0D0E0E3E4954A98982
        F4A3D1A8ECEF57E9A76127A57C9B65F0495EE72EF39C4909F01915C2E8188CC1
        BF0599AB95D7396C9ED0B005BA928F853794398ABC1BE60C4E7E1B67E666AA89
        ECA906658C245E90849CFE6A646969B206B1631D04BF64E56999803890C4B3CA
        CACA77F49D8AA214C26C308DF11182F7D05A226D02E2353636F69A4ADCE0C045
        6139636B603A4CA1ECE2C3A6B1B7B777947E5A64555A3E26ECF9F9F94E12A9A3
        B6DB14452981822FC81FED76FB3D6EC4E71C64C37D2F062BFC6F2BF0079EF572
        AF7BB3E7E40000000049454E44AE426082}
      OnClick = BtnGravarClick
      ExplicitLeft = 402
      ExplicitTop = 2
    end
    inherited btnexcluir: TAdvGlowButton
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA793000001E5494441545809ED56BD
        4E0241103EF60826EA6B104D6CEC2CEC0C16345AF357FA12C6041B5EC0F80A50
        DB984B2CEC6C2CD4C68ACAD586181AA22612EECE6F938340D899815DACF432C3
        CCCDCFB71F7B732C41F07F79EC40A552D9AED7EB5B1E1081726D2E97CB6B4AA9
        87344D1F8DEF8A93931AABD5EA196A8E73B860A725C4CD2ED4C8133E62E84440
        2C45CB55BBDD6E4D8216C74AA0D168EC2549728AFA75E80154415D2441D32DF4
        0B845A9D4EE71EFE8CE467EEB21B149FC03D82FA8A215E3220785CEFB08B1140
        7173341ACD1503C059C230BC766EFECD46EB0C98056BB5DA3E1EC58EF17D15C3
        F88C61BCB3E1E46D4113C3E225349E07ABB99A80B112304382DCBC600EF47CD4
        2D822F4362290A926BA27AA838065053394525B0FD2F546ED9F8703824B14802
        FD7EFF150BA5505F490683C11B05421288A2E81B4D3DA8AFF4322C2B0E4920AB
        D699F5312C861290B59017D3982516430908E4F0087DD36916832500F66610A7
        C196F671AAB2182C8155FC16483F682C01EC00BB7D8B6C074E5516832510C7B1
        5E6411AEA65028B01839AED9E4702A7EC06E405DE413A7E026D7A8B864966387
        28ABA18CA612E3B81A3B8CD54C4E4A89E49584807C047512BC45E2DFB0BC845C
        2C162FBADD6E88BA43A8B130A2C478836ED07B2956FE17FCF91DF801ADE1855E
        EBFADD180000000049454E44AE426082}
      OnClick = BtnExcluirClick
      ExplicitLeft = 302
      ExplicitTop = 2
    end
    inherited btnCancelar: TAdvGlowButton
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA7930000029B494441545809ED96CD
        6A144110C7BB478C311257F13916F610F120985D10A2446F5EF6EB093CF87153
        CFEA517D86FDBA080A868820A2A2822022EC2378F192C32A06F1B0EBAF369938
        DB53DD3D9B6BB254ED7457FFABEA3F553D3D63CCE1EFA057C0FA0AD068342E58
        6B6F2449F2B0D3E97CF1E142F676BBBD321E8FEF4C269327FD7EFFBD865509D4
        EBF5AB247E8AC302FA1B2257BADDEE5B33C78F1BA8596B37705942FF42E4DA60
        3078C17846720448BE4AF24D50E2C8652A236C6B54E2F37416F9E3CECF91F015
        B0129ACA3695B8EC56224957D32B896E31CE26676A4A125002CB24A482112C98
        6C72A666898ADC944156730458BC8F8E5057A22402C9259654F1810CB29A6B81
        2CD2BF0A6C5F333E83BAA2EE097C6AF67FCF5D9F2DCA7F91F27F731754020222
        606112606B761FC9258F97802C12384A827E937B6FB78B5B56BD779E82820404
        1421F187D20A81638275349A5CF05102028A901088AB85928B532102029C8344
        E1E412B7300101EF9278C7F824AAC94F5AB2AAED760D2C36ED1C10BB4F4FB3B0
        80FAE42807D929DFA2662F4C80BBAFD99D476D510BB46B3B4E05365AAD56D514
        FCD922B84C72F788F6B9AB8795068E120825E76E471294CAB8E7BE980B9108B6
        20949C0C5B68D5185335C6C898CB8C9C8060B41DDE0AC492137CEF6C071B3D31
        7DDF132A0102D6ECCE86D37AAE3EE7F8EC8B4432533426CD66F32CC99F31D492
        CB2B755D7BCEC5C623B88EDF745F70CD8AB4E339AFEB95AC51C6390218EFA125
        D415491EFC2A922F2648ACE1A89190EF89BBACCD488E006FB74720B6D1AC4493
        A7E00009F9247B9CE2D2ABBA0768C379002FD16554ED39F6A0387BE2176DBDC4
        46FCE43A1D710D321F0E87DFCBE5F2479C1629E9F55EAFF755ECF328317E542A
        95373C2DCBE86D627C98C7FF107B702AF00F9CF92CC3E70354CD000000004945
        4E44AE426082}
      OnClick = BtnCancelarClick
      ExplicitLeft = 202
    end
    inherited btnEditar: TAdvGlowButton
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000149494441545809636018
        E980115B0024242470FCFEFDBB0728E70FC4DC404C0CFA0154D4BB74E9D25E20
        4D3462C6A6525B5BBB14285E09C47C40CC4924E605AA73D3D5D5FD7BF9F2E543
        4036518809872A031CE2F8845782241919199BA3A2A26A406C62305607000DC1
        1A35F80CFCFFFF7F1550BE09881980FA9BA3A3A3BB406C429889900252E481F1
        5F0F54DF04C420544A8C2398402AA989418E00864633D44C828EA0BA0340162F
        5BB6AC8E584750D301CC20CB6118E408605AE887F24B636262D2A16C148A0585
        47010768590B30F5AF4136E2DFBF7FC781E24E40317D207606E299408C82A8E6
        00A0A96140CBC2803449888924D534503CEA80D110180D81D110180D81D11018
        0D01AC21006C4EFDA776CD8BCB4CAC0E005A7E0188A98A800E3887CD40AC2D22
        5656D67E60D74C1AA8C10D8899819812F41768F9CEF7EFDF4FA0C490E1AB1700
        082953B93C3BC9F90000000049454E44AE426082}
      OnClick = BtnAlterarClick
      ExplicitLeft = 102
    end
    inherited btnNovo: TAdvGlowButton
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000305494441545809ED96CF
        4B545114C7EFF339CE64512812965221EDC2F13FA8114388681516322E846816
        D11F90B87223D12A8340085C081A312D2B23A2A640DAB5D0DA44D08FC528FEC8
        A894F995D3E70C2AE73DDE7BE388532D1CBEDF77CEB9E7DC7BCE3BEFBE3BCF98
        BDDF3FEE805549FEFEFEFE483E9FEF644E373C0E9BA160DEB2ACCFC69867CBCB
        CB2FA7A6A6B2E8DB82B59DA89E9E9EC6502834489204F10760107E1137BABEBE
        3E3C3939B9121428BEB205F4F5F5F5168BC5BB0437C04AF08DE06B1313130F90
        BEB07D3DC658F1787C08FF08DC072B85CCB9D8DEDE6E6667675FFB4DF62D803B
        BFC9A44168C19D82A761C5282244112FBC16F15C9C3BBF4CF07DE8E9677C13CF
        5124A60B198422CE4B3C8E87480764B263800D77A8AEAEEE23834D30086BB95C
        EEE0E2E2A2D5D2D2F283406939C2170BE170F8E4D8D8D84F1D51A30DD1091A40
        964B4E88C92693C9DFA954AA809181E5703893C9DC7007390A88C562B5ECF8AB
        EEA0DDB2D910093A6CEBF51C05B4B6B676E26C84D54253241239A317771480A3
        0B56151C506775825A6DD0FE63DADED419CFD2BEB54D7B437EDF9022B42EB661
        4E3D73C225435D1873E4701440DC11E8C6D3743A7D6163B3B97D259BD7ABADA4
        A84B229108ADAEAE3E62A81B6E81C28E6E19283550C36D8BAF28971DD26BAEA5
        D7727480F6A4A950FB453FC77B9E8FC7E3A26BAE70E7A50D8B4FCEFD06EDE4EE
        B5A9F5B4361C774CF2AFDA5925FD8B5EB7461BECD027DAAE86EECEE128606E6E
        6E9AA4D24E4455B0542814DEE8951D05C84EE731DCD101BBA9B3F6881CDF7A4D
        C72614079F5CB7F933BA8EDE048310966355FE8C088AC07258E0141C710759EE
        01B1D9D57FEDEFD896846EF2F1F03E1A8DE618EF824168C32944F883D60FF07D
        78CF2BC2F61A94318A98A608E9D0696C91888A41EEE210C987FD66FA16201328
        22D5D1D1F1013D668CA987956089E02B24970F5A546F04162053666666DED189
        514EC91C3CC5D87E1884059CB7F8B0E91D1F1F7F8B1E888A5A2BBB9E37244621
        E7E9ED09634C3314CC637FB26DFB315F3DAFDCAF9A04ECF1BFEDC01F7B20F60F
        6B5D771B0000000049454E44AE426082}
      OnClick = btnNovoClick
    end
  end
  object IBSQLAdm: TFDCommand
    Connection = DM.Coneccao
    Transaction = IBTRAdm
    Left = 352
    Top = 8
  end
  object IBTRAdm: TFDTransaction
    Connection = DM.Coneccao
    Left = 296
    Top = 8
  end
  object DSBandeiras: TDataSource
    AutoEdit = False
    DataSet = QBandeiras
    Left = 200
    Top = 328
  end
  object QBandeiras: TFDQuery
    OnCalcFields = QBandeirasCalcFields
    Connection = DM.Coneccao
    Transaction = IBTRAdm
    SQL.Strings = (
      'SELECT *'
      'FROM BANDEIRAS_CARTAO'
      'WHERE CODIGO_ADMINISTRADORA = :COD'
      'ORDER BY CODIGO')
    Left = 200
    Top = 280
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBandeirasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBandeirasCODIGO_ADMINISTRADORA: TIntegerField
      FieldName = 'CODIGO_ADMINISTRADORA'
      Origin = 'CODIGO_ADMINISTRADORA'
      Required = True
    end
    object QBandeirasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object QBandeirasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QBandeirasTAXA_CREDITO: TFloatField
      FieldName = 'TAXA_CREDITO'
      Origin = 'TAXA_CREDITO'
    end
    object QBandeirasTAXA_DEBITO: TFloatField
      FieldName = 'TAXA_DEBITO'
      Origin = 'TAXA_DEBITO'
    end
    object QBandeirasDIAS_CREDITO: TIntegerField
      FieldName = 'DIAS_CREDITO'
      Origin = 'DIAS_CREDITO'
    end
    object QBandeirasDIAS_DEBITO: TIntegerField
      FieldName = 'DIAS_DEBITO'
      Origin = 'DIAS_DEBITO'
    end
    object QBandeirasTIPO_CARTAO: TStringField
      FieldName = 'TIPO_CARTAO'
      Origin = 'TIPO_CARTAO'
      Size = 1
    end
    object QBandeirasCALC_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_TIPO'
      Calculated = True
    end
    object QBandeirasCODIGO_TEF: TStringField
      FieldName = 'CODIGO_TEF'
      Origin = 'CODIGO_TEF'
      Size = 10
    end
  end
end
