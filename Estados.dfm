object FormEstados: TFormEstados
  Left = 302
  Top = 194
  BorderStyle = bsDialog
  Caption = 'Cadastro de Estados'
  ClientHeight = 280
  ClientWidth = 592
  Color = clBtnFace
  Constraints.MinWidth = 270
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 225
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 582
      Height = 215
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Cadastro'
        object Panel3: TPanel
          Left = 0
          Top = 51
          Width = 574
          Height = 136
          Align = alClient
          ParentColor = True
          TabOrder = 0
          object Label4: TLabel
            Left = 7
            Top = 91
            Width = 19
            Height = 16
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 7
            Top = 51
            Width = 49
            Height = 16
            Caption = 'Estado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 7
            Top = 11
            Width = 48
            Height = 16
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBComboBox1: TDBComboBox
            Left = 74
            Top = 91
            Width = 49
            Height = 21
            DataField = 'UF'
            DataSource = DM.DTS_Estados
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PI'
              'PR'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO')
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 74
            Top = 51
            Width = 493
            Height = 21
            DataField = 'DESCRICO'
            DataSource = DM.DTS_Estados
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 74
            Top = 11
            Width = 57
            Height = 21
            DataField = 'COD_ESTADO'
            DataSource = DM.DTS_Estados
            Enabled = False
            TabOrder = 2
          end
        end
        object pnfundo: TPanel
          Left = 0
          Top = 0
          Width = 574
          Height = 51
          Align = alTop
          Caption = ' '
          TabOrder = 1
          object Label1: TLabel
            Left = 7
            Top = 18
            Width = 61
            Height = 16
            Caption = 'Consulta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBLookupComboDlg1: TwwDBLookupComboDlg
            Left = 74
            Top = 14
            Width = 308
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            CharCase = ecUpperCase
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Pesquisar'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'DESCRICO'#9'50'#9'DESCRICO'#9'F'#9
              'UF'#9'2'#9'UF'#9'F'#9
              'COD_ESTADO'#9'10'#9'COD_ESTADO'#9'F'#9)
            LookupTable = DM.SDS_estados
            LookupField = 'COD_ESTADO'
            SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
            Style = csDropDownList
            Color = 12974332
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 225
    Width = 592
    Height = 55
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object btnNovo: TAdvGlowButton
      Left = 106
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Novo Registro'
      Caption = '&Novo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnNovoClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnEditar: TAdvGlowButton
      Left = 203
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Editar Registro '
      Caption = '&Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnEditarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnCancelar: TAdvGlowButton
      Left = 300
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnCancelarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
    object btnSalvar: TAdvGlowButton
      Left = 397
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Caption = '&Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000275494441545809ED95CF
        6B134114C767132315450F3DF837083DE4525A850AF6A05E2D822421F120E4E0
        4914141104C183143D78130409E4C725F424259716B6276DAB78EC59CC5152AD
        ECC1D06CFCBCD084CDEC98DDECEE491BDE9799F763BEEFCD9B998D52C7BFFFBD
        0396DE8072B99C711CE7A16559D7FBFDFE29DD1F52FFCEFAB7B55A6D2D28DE57
        40A15078C2A2E720AEB8102CD6EBF55DC6BF4ACAE05932D8A29884FB72D04209
        D263D2BA21AACE119E085A6B2A2068CD24FF1ECE77A00746522C162F70B4F323
        8367926401DBDD6EF722677E07FE4D30925EAFB784F2319FCFAF308E495205EC
        90FC5AB3D9FC49922C1916812E92AB6832EAB669753B954A2D4B725ABDC0F3B3
        955267814FF09DD18D52956ED3F503DDE0D1773399CC8D6AB5EAC8CE5DD75DC7
        770E8496A002AA9CA9103ED619B9E19F487EB552A9FC90E4EC6E83985930954C
        2C00D2819F225EC0FA080CE53393D8C9E15083043231815DF27A0A2FC54711AB
        14748FF907B0DC6834F63D673EF5CEE118C8C40206114A3DA08A6732E7DBFEBA
        D3E95CA19803697B9433171E2FC21420F14F49F84A26AD56EB77123B172E41E0
        A7528204B4FF3E9D9861FCC2CEE54EC8E514572C842EE028CB5DEEC5D1349921
        EC112493CDC0622AC031C44532715CBF64215FCA93329AE02B8016D709EC83B8
        B2CF9FD07B2181734E46137C7780F7DDE4C67F25380B22093B3F4CA7D31B3CD7
        6FB95CEE3C243960145F011245113B8C0286E8522A9566E9C21A0CC63F27ECCA
        58803886E0CDCF417269A88719E980F06659778B786FF243F43191C031834139
        0DE11BEC16882B5B3A81A51B4C3A1FA09BD86F831910455C36B1D56EB7576DDB
        F675210AE1F19A7FA7037F006A6AB8F418DC18DD0000000049454E44AE426082}
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnSalvarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
    object btnExcluir: TAdvGlowButton
      Left = 494
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Excluir Registro'
      Caption = 'E&xcluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnExcluirClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object DBNavigator: TXDBNavigator
      Left = 5
      Top = 7
      Width = 92
      Height = 30
      DataSource = DM.DTS_Estados
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        ''
        '')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = True
    end
  end
  object MsgErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
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
    IconType = suiStop
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 330
    Top = 3
  end
  object MsgAtencao: TsuiMessageDialog
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
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiWarning
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 358
    Top = 3
  end
  object MsgConfirmacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
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
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Exclus'#227'o?'
    Left = 386
    Top = 3
  end
  object MsgInformacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
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
    IconType = suiInformation
    Text = 'Hello world!'
    Left = 414
    Top = 3
  end
end
