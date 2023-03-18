object FormConfiguracoes: TFormConfiguracoes
  Left = 314
  Top = 187
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Par'#226'metros do Sistema'
  ClientHeight = 471
  ClientWidth = 658
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
  PopupMenu = Pop1
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 421
    Width = 658
    Height = 50
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object myLabel3d1: TmyLabel3d
      Left = 27
      Top = 13
      Width = 271
      Height = 25
      Caption = 'Configura'#231#245'es do Sistema'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
    object btnSalvar: TAdvGlowButton
      Left = 550
      Top = 9
      Width = 100
      Height = 32
      Caption = 'F10 | Gravar'
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
      OnClick = btnSalvarClick
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
    object btnEditar: TAdvGlowButton
      Left = 341
      Top = 9
      Width = 100
      Height = 32
      Caption = 'F4 | Alterar'
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
        F8000000097048597300000EC400000EC401952B0E1B00000262494441544889
        B594BD4B5B5118879FB75C41333438081A178D5407C1A4632389097611324890
        3A3A74D1D2244397FA1738D7426A878E1DEAC75D2AD96DF476F4164497E2C7D2
        4805AF517A23083D1DCC4D6E62EA07575FB8DCC379CEEFF7BEE7BC8723B1B75F
        FF003E9AC4DA5C524666573D710DF029A5148088887B5C59E7896B004F027E3E
        65628E405ECE7FE367F1B45A8917AE01C4063B0557C4063BEB0CBC70AD32A794
        52EE2DD609BC708D078ECB0452EB9988C895FA3CF0CB04AA618BAAC1C2037F88
        23B2800DA0E521126C02CFA746FB8FA746FBA925B89F1EFC00C644E4389CD515
        80F92E25F7D5834DA5545C444E1DE3705657E1ACAE3480B3F2455520227256BE
        A8D3DFC0CDB3F24542444EDD953B493480C5F55DB5B8BEFBBFB7E6261E7F9D1C
        2C39E600E1ACAE9C244E93A5ABDD472AD28B6EEC49D1B21B0EB9293701D6E692
        75E64E8CCCAE06D6E692BF3480AE761FEFA7231C95CE490C75915E30383C2957
        1737E1E6E14939EE54DB683E10F0771F9E940B409F06908AF470543AE7D5870D
        7233C3A4223DE4F23B5541033753919EF864B4AF69E59FDF24BAB70E8E0BB9FC
        4E102AD75437F6490C05C8CD0CD3E16F4537F6EB442E6E76F85BAF35EFF0B716
        74633FE8CC690045CB26BD6038674CD1B271F5D8E1662AD21B9F8C069B9A0F04
        FCDD5B07564137F6826EBD06D8405BD1B2C9E5B7ABB784DA936B03BF8B963D36
        190D96C299E571E4519DF9E3B69640D1B20BB9FC76F08A5E2975EB2F945EFA5E
        F98F87322B2A9459513769EE9620B3FCD7310DA597C66FA391DA8EAE8FA759FD
        8B42BD00CE51CA34E7279EDD467797D7348A521FCDF989E93B68F8076C820F3F
        0EDA78CB0000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = btnEditarClick
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
    object btnCancelar: TAdvGlowButton
      Left = 447
      Top = 9
      Width = 100
      Height = 32
      Caption = 'F5 | Cancelar'
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
      TabOrder = 2
      OnClick = btnCancelarClick
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 658
    Height = 421
    Align = alClient
    Caption = 'Panel5'
    Enabled = False
    TabOrder = 1
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 1
      Width = 656
      Height = 419
      ActivePage = TabSheet6
      Align = alClient
      UseColoredTabs = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabIndex = 5
      TabOrder = 0
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Caption = 'Gerais (1)'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 652
          Height = 396
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object RxLabel2: TRxLabel
            Left = 3
            Top = 29
            Width = 247
            Height = 13
            Caption = ' % de Juros por dia por atrazo no Credi'#225'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel3: TRxLabel
            Left = 5
            Top = 97
            Width = 303
            Height = 13
            Caption = 'Desc. m'#225'ximo permitido ao finalizar vendas em ( R$) '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel4: TRxLabel
            Left = 5
            Top = 173
            Width = 238
            Height = 13
            Caption = 'N'#186' de dias para Cancelamento de Pedidos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel5: TRxLabel
            Left = 5
            Top = 147
            Width = 266
            Height = 13
            Caption = 'N'#186' de dias para Devolu'#231#227'o de Itens de Pedidos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel6: TRxLabel
            Left = 3
            Top = 73
            Width = 259
            Height = 13
            Caption = ' % de Juros por dia para Cheque  Pr'#233'-Datado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel7: TRxLabel
            Left = 7
            Top = 6
            Width = 247
            Height = 13
            Caption = 'N'#186' de dias de car'#234'ncia no Credi'#225'rio Vencido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel10: TRxLabel
            Left = 4
            Top = 52
            Width = 206
            Height = 13
            Caption = ' % de Multa por atrazo no Credi'#225'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel11: TRxLabel
            Left = 5
            Top = 121
            Width = 301
            Height = 13
            Caption = 'Desc. m'#225'ximo permitido ao finalizar vendas em ( %) '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 8
            Top = 346
            Width = 151
            Height = 13
            Caption = 'Pasta de Local de Backup'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton6: TSpeedButton
            Left = 323
            Top = 361
            Width = 23
            Height = 21
            Caption = '...'
            Transparent = False
            OnClick = SpeedButton6Click
          end
          object RxLabel14: TRxLabel
            Left = 5
            Top = 198
            Width = 146
            Height = 13
            Caption = 'Margem de Lucro PFDr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object suiDBEdit2: TDBEdit
            Left = 315
            Top = 29
            Width = 80
            Height = 21
            DataField = 'JUROS'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
          end
          object suiDBEdit3: TDBEdit
            Left = 315
            Top = 96
            Width = 80
            Height = 21
            DataField = 'DESCONTO_MAXIMO_FV'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object suiDBEdit4: TDBEdit
            Left = 315
            Top = 146
            Width = 80
            Height = 21
            DataField = 'DDIP'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
          end
          object suiDBEdit5: TDBEdit
            Left = 315
            Top = 173
            Width = 80
            Height = 21
            DataField = 'DCP'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object suiDBEdit6: TDBEdit
            Left = 315
            Top = 73
            Width = 80
            Height = 21
            DataField = 'JUROS_CHEQUE'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object suiDBEdit7: TDBEdit
            Left = 315
            Top = 6
            Width = 80
            Height = 21
            DataField = 'DIAS_CARENCIA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 409
            Top = 46
            Width = 236
            Height = 48
            Caption = 'Vendas Usa Caixa Registradora:'
            Columns = 2
            DataField = 'REGISTRADORA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 10
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup9: TDBRadioGroup
            Left = 6
            Top = 238
            Width = 640
            Height = 49
            Caption = 'Pesquisa PFDr'#227'o na Consulta de Produtos'
            Columns = 4
            DataField = 'PESQ_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Inicio da descri'#231#227'o '
              'Qualq. parte descric'#227'o'
              'Por Codigo Barras'
              'Por Refer'#234'ncia')
            ParentFont = False
            TabOrder = 11
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object DBRadioGroup12: TDBRadioGroup
            Left = 409
            Top = 1
            Width = 235
            Height = 45
            Caption = 'Pre'#231'o PFDr'#227'o:'
            Columns = 2
            DataField = 'PRECO_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Pre'#231'o (1)'
              'Pre'#231'o (2)')
            ParentFont = False
            TabOrder = 9
            Values.Strings = (
              '1'
              '2')
          end
          object suiDBEdit8: TDBEdit
            Left = 315
            Top = 51
            Width = 80
            Height = 21
            DataField = 'MULTA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
          end
          object suiDBEdit9: TDBEdit
            Left = 315
            Top = 120
            Width = 80
            Height = 21
            DataField = 'DESC_MAXIMO_PERC'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object DBEdit11: TDBEdit
            Left = 8
            Top = 362
            Width = 305
            Height = 21
            DataField = 'LOCAL_BACKUP'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object DBRadioGroup33: TDBRadioGroup
            Left = 6
            Top = 291
            Width = 639
            Height = 48
            Caption = 'Tipo da Pesquisa:'
            Columns = 2
            DataField = 'TP_PESQUISA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Pesquisa Autom'#225'tica'
              'Pesquisa Com Enter')
            ParentFont = False
            TabOrder = 13
            Values.Strings = (
              'A'
              'E')
          end
          object DBRadioGroup34: TDBRadioGroup
            Left = 409
            Top = 95
            Width = 236
            Height = 48
            Caption = 'Caixa '#218'nico:'
            Columns = 2
            DataField = 'CAIXA_UNICO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 14
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit48: TDBEdit
            Left = 315
            Top = 198
            Width = 80
            Height = 21
            DataField = 'MARGEM_LUCRO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
        end
      end
      object TabSheet2: TRzTabSheet
        Caption = 'Vendas (2)'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 652
          Height = 396
          Align = alClient
          Enabled = False
          TabOrder = 0
          object DBRadioGroup8: TDBRadioGroup
            Left = 2
            Top = 8
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Permite Estoque Negativo:'
            Columns = 2
            DataField = 'ESTOQUE_NEGATIVO'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup13: TDBRadioGroup
            Left = 338
            Top = 8
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Baixa em estoque Por Fra'#231#227'o?'
            Columns = 2
            DataField = 'USA_FRACAO'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup15: TDBRadioGroup
            Left = 338
            Top = 169
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Tipo de Desconto na Venda ou na Finaliza'#231#227'o'
            Columns = 2
            DataField = 'TP_DESCONTO'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Percentual'
              'Reais')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Values.Strings = (
              'P'
              'R')
          end
          object DBRadioGroup16: TDBRadioGroup
            Left = 2
            Top = 170
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Pode Alterar Pre'#231'o na Venda'
            Columns = 2
            DataField = 'LIB_PRECO_VENDA'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup17: TDBRadioGroup
            Left = 2
            Top = 227
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Cliente Emite NF-e/NFC-e'
            Columns = 2
            DataField = 'UTILIZA_NFE'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup19: TDBRadioGroup
            Left = 338
            Top = 64
            Width = 300
            Height = 47
            Hint = 
              'Somete coloque Sim para leitores com a conec'#231#227'o na porta Serial,' +
              ' para leitores USB e Teclaco Coloque N'#227'o'
            Align = alCustom
            Caption = 'Leitor de Codigo de Barras Serial Conectado?'
            Columns = 2
            DataField = 'LEITOT_SERIAL'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup20: TDBRadioGroup
            Left = 338
            Top = 115
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Inicia Foco na Tela de Vendas:'
            Columns = 3
            DataField = 'CLIENTE_VENDEDOR'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Cliente'
              'Vendedor'
              'Produto')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'C'
              'V'
              'O')
          end
          object DBRadioGroup21: TDBRadioGroup
            Left = 2
            Top = 115
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Mostra Tela de D'#233'bitos do cliente na Venda:'
            Columns = 2
            DataField = 'DEBITOS_CLIENTE'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 7
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup7: TDBRadioGroup
            Left = 2
            Top = 60
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Testa Limite de Cr'#233'dito:'
            Columns = 2
            DataField = 'LIMITE_CREDITO'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 8
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup25: TDBRadioGroup
            Left = 338
            Top = 226
            Width = 300
            Height = 50
            Hint = 
              'Lan'#231'ar descontos na Venda (unitario) Ou na Finaliza'#231#227'o da vendas' +
              ' (total)'#13#10
            Align = alCustom
            Caption = 'Tipo de Desconto:'
            Columns = 2
            DataField = 'TP_DESC'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Venda Unitario'
              'Venda Total')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            Values.Strings = (
              'U'
              'T')
          end
          object DBRadioGroup26: TDBRadioGroup
            Left = 2
            Top = 283
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Venda Quantidade (1) e passa pra proxima linha'
            Columns = 2
            DataField = 'PROX_LINHA'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 10
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup28: TDBRadioGroup
            Left = 338
            Top = 282
            Width = 300
            Height = 50
            Hint = 'Calculo dos itens da Venda pelo unitario ou pelo total'
            Align = alCustom
            Caption = 'Vendas pelo Unitario ou Total:'
            Columns = 2
            DataField = 'UNIT_TOTAL'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Venda Unitario'
              'Venda Total')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            Values.Strings = (
              'U'
              'T')
          end
        end
      end
      object TabSheet3: TRzTabSheet
        Caption = 'Frente Caixa/Vendas'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 652
          Height = 396
          Align = alClient
          TabOrder = 0
          object RxLabel1: TRxLabel
            Left = 2
            Top = 101
            Width = 163
            Height = 13
            Caption = 'Mensagem do Cupom Fiscal: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel20: TRxLabel
            Left = 3
            Top = 8
            Width = 87
            Height = 13
            Caption = 'Cliente PFDr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel8: TRxLabel
            Left = 12
            Top = 270
            Width = 101
            Height = 13
            Caption = 'Imagem Produto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel9: TRxLabel
            Left = 3
            Top = 37
            Width = 93
            Height = 13
            Caption = 'Produto PFDr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel12: TRxLabel
            Left = 3
            Top = 69
            Width = 129
            Height = 13
            Caption = 'Cond Pagto PFDr'#227'o PZ:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxLabel13: TRxLabel
            Left = 2
            Top = 157
            Width = 131
            Height = 13
            Caption = 'Mensagem Fiscal NF-E: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object E_Nome: TEdit
            Left = 256
            Top = 5
            Width = 388
            Height = 19
            TabStop = False
            Color = clActiveBorder
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object ECodigocli: TRxDBComboEdit
            Left = 141
            Top = 5
            Width = 106
            Height = 21
            ClickKey = 113
            DataField = 'CLIENTE_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 0
            OnButtonClick = ECodigocliButtonClick
            OnChange = ECodigocliChange
            OnExit = ECodigocliExit
          end
          object DBImage1: TDBImage
            Left = 132
            Top = 215
            Width = 175
            Height = 137
            Hint = 'Foto do Produto'
            DataField = 'LOGOMARCA'
            DataSource = DM.DTS_CONFIGURACOES
            Stretch = True
            TabOrder = 8
            TabStop = False
          end
          object RxDBComboEdit1: TRxDBComboEdit
            Left = 142
            Top = 34
            Width = 105
            Height = 21
            ClickKey = 113
            DataField = 'PRODUTO_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 1
            OnButtonClick = RxDBComboEdit1ButtonClick
          end
          object suiEdit1: TEdit
            Left = 256
            Top = 34
            Width = 388
            Height = 19
            TabStop = False
            Color = clActiveBorder
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBRadioGroup11: TDBRadioGroup
            Left = 331
            Top = 220
            Width = 311
            Height = 41
            Caption = 'Emite Cupon Vinculado para Vendas a Prazo?'
            Columns = 2
            DataField = 'CUPON_VINCULADO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object RxDBComboEdit2: TRxDBComboEdit
            Left = 142
            Top = 66
            Width = 105
            Height = 21
            ClickKey = 113
            DataField = 'COD_PAGTO_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 2
            OnButtonClick = RxDBComboEdit2ButtonClick
            OnExit = RxDBComboEdit2Exit
          end
          object suiEdit2: TEdit
            Left = 256
            Top = 66
            Width = 387
            Height = 19
            TabStop = False
            Color = clActiveBorder
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object Edit3: TEdit
            Left = 545
            Top = 92
            Width = 97
            Height = 21
            Enabled = False
            TabOrder = 11
            Visible = False
          end
          object DBRadioGroup22: TDBRadioGroup
            Left = 331
            Top = 262
            Width = 311
            Height = 41
            Caption = 'Gaveta Conectada ?'
            Columns = 2
            DataField = 'USA_GAVETA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'S'
              'N')
          end
          object DBRichEdit1: TDBRichEdit
            Left = 2
            Top = 116
            Width = 641
            Height = 41
            DataField = 'MSG_CUPOMFISCAL'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 3
          end
          object DBRichEdit2: TDBRichEdit
            Left = 2
            Top = 172
            Width = 641
            Height = 41
            DataField = 'OBS_FISCO'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 4
          end
          object DBRadioGroup30: TDBRadioGroup
            Left = 331
            Top = 308
            Width = 311
            Height = 41
            Caption = 'Venda Aberta ao abrir o Frente Caixa ?'
            Columns = 2
            DataField = 'ABRE_VENDA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 12
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
      object TabSheet5: TRzTabSheet
        Caption = 'Relatorios/Impressoras'
        object DBRadioGroup1: TDBRadioGroup
          Left = 6
          Top = 8
          Width = 388
          Height = 56
          Caption = 'Formul'#225'rio de Pedidos Impress'#227'o:'
          Columns = 3
          DataField = 'FORM_PEDIDOS'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Modelo 1'
            'Modelo 2'
            '40 colunas 1'
            'Modelo 3'
            '40 colunas 2'
            '60 colunas')
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            'P'
            'I'
            'Q'
            '3'
            '4'
            '5')
        end
        object DBRadioGroup10: TDBRadioGroup
          Left = 9
          Top = 67
          Width = 192
          Height = 54
          Caption = 'Modelo da Impressora:'
          Columns = 2
          DataField = 'IMPRESSAO'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Laser/Jato'
            'Matricial')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'P'
            'M')
        end
        object DBRadioGroup18: TDBRadioGroup
          Left = 208
          Top = 67
          Width = 185
          Height = 54
          Caption = 'Imprime Venda:'
          Columns = 2
          DataField = 'IMP_VENDA'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 408
          Top = 9
          Width = 238
          Height = 40
          Caption = 'Vendas Emite Cupom:'
          Columns = 2
          DataField = 'CUPOM'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup5: TDBRadioGroup
          Left = 408
          Top = 50
          Width = 238
          Height = 42
          Caption = 'Venda Imprime Duplicata:'
          Columns = 2
          DataField = 'DUPLICATA'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 408
          Top = 94
          Width = 238
          Height = 42
          Caption = 'Venda Imprime Boleto:'
          Columns = 2
          DataField = 'BOLETO'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup6: TDBRadioGroup
          Left = 408
          Top = 139
          Width = 238
          Height = 42
          Caption = 'Venda Imprime Contrato:'
          Columns = 2
          DataField = 'CONTRATO'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 6
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup14: TDBRadioGroup
          Left = 408
          Top = 181
          Width = 238
          Height = 42
          Caption = 'Venda Imprime Carn'#234':'
          Columns = 2
          DataField = 'IMP_NOTA'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 7
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup23: TDBRadioGroup
          Left = 10
          Top = 128
          Width = 383
          Height = 54
          Align = alCustom
          Caption = 'Modelo  impressoras Fiscais'
          Columns = 3
          DataField = 'MODELO_ECF'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Bematech c/ DLL'
            'Outros Modelos'
            'Concentrador'
            'N'#227'o Fiscal/NFC-e')
          ParentFont = False
          TabOrder = 8
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBRadioGroup24: TDBRadioGroup
          Left = 408
          Top = 225
          Width = 238
          Height = 44
          Caption = 'Pre Visualizar Relat'#243'rios'
          Columns = 2
          DataField = 'PREVIEW'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 9
          Values.Strings = (
            'S'
            'N')
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 184
          Width = 385
          Height = 83
          Caption = 'Config Concentrador de ECF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          object Label17: TLabel
            Left = 8
            Top = 14
            Width = 38
            Height = 13
            Caption = 'Marca:'
          end
          object Label18: TLabel
            Left = 138
            Top = 14
            Width = 44
            Height = 13
            Caption = 'Modelo:'
          end
          object Label19: TLabel
            Left = 248
            Top = 14
            Width = 27
            Height = 13
            Caption = 'Tipo:'
          end
          object Label20: TLabel
            Left = 330
            Top = 14
            Width = 34
            Height = 13
            Caption = 'Porta:'
          end
          object cb_ecf_modelo: TDBComboBox
            Left = 139
            Top = 28
            Width = 104
            Height = 21
            Hint = 'Modelo do Emissor de Cupom fiscal'
            Color = clBtnHighlight
            DataField = 'ECF_MODELO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            Items.Strings = (
              ''
              'MP-2100 TH FI'
              'MP-4000 TH FI'
              'MP-7000 TH FI'
              'MP-3000 TH FI'
              'MP-6000 TH FI'
              'FS600'
              'FS2000'
              'FS2100T'
              'IF ST120'
              'IF ST200'
              'IF ST2000'
              'IF ST2500'
              'TM-T81 FBII')
            ParentFont = False
            TabOrder = 0
          end
          object DBComboBox1: TDBComboBox
            Left = 249
            Top = 28
            Width = 70
            Height = 21
            Hint = 'Tipo do Emissor de Cupom fiscal'
            DataField = 'ECF_TIPO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            Items.Strings = (
              ''
              'ECF-IF'
              'ECF-PDV')
            ParentFont = False
            TabOrder = 1
          end
          object DBComboBox2: TDBComboBox
            Left = 9
            Top = 28
            Width = 123
            Height = 21
            Hint = 'Modelo do Emissor de Cupom fiscal'
            Color = clBtnHighlight
            DataField = 'ECF_MARCA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            Items.Strings = (
              ''
              'BEMATECH'
              'DARUMA'
              'SWEDA'
              'EPSON')
            ParentFont = False
            TabOrder = 2
          end
          object DBComboBox3: TDBComboBox
            Left = 329
            Top = 28
            Width = 51
            Height = 21
            Hint = 'Tipo do Emissor de Cupom fiscal'
            DataField = 'ECF_PORTA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            Items.Strings = (
              ''
              'COM1'
              'COM2'
              'COM3'
              'COM4'
              'COM5'
              'COM6'
              'COM7'
              'COM8'
              'COM9'
              'USB')
            ParentFont = False
            TabOrder = 3
          end
        end
        object GroupBox5: TGroupBox
          Left = 7
          Top = 271
          Width = 638
          Height = 111
          Caption = 'Bematech N'#227'o Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          object GroupBox6: TGroupBox
            Left = 326
            Top = 18
            Width = 307
            Height = 84
            Caption = 'Escolha a porta de comunica'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label21: TLabel
              Left = 14
              Top = 20
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label22: TLabel
              Left = 15
              Top = 42
              Width = 10
              Height = 13
              Caption = 'IP'
            end
            object cbo_porta: TComboBox
              Left = 56
              Top = 16
              Width = 161
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              OnChange = cbo_portaChange
              Items.Strings = (
                'COM1'
                'COM2'
                'COM3'
                'COM4'
                'LPT1'
                'LPT2'
                'USB'
                'ETHERNET')
            end
            object edt_ip: TEdit
              Left = 56
              Top = 40
              Width = 161
              Height = 21
              TabOrder = 1
            end
            object btn_porta: TButton
              Left = 224
              Top = 17
              Width = 75
              Height = 25
              Caption = '&Conectar'
              TabOrder = 2
              OnClick = btn_portaClick
            end
          end
          object GroupBox7: TGroupBox
            Left = 6
            Top = 16
            Width = 315
            Height = 83
            Caption = 'Escolha o modelo da impressora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object pic_model: TImage
              Left = 238
              Top = 9
              Width = 70
              Height = 70
            end
            object cbo_modelo: TComboBox
              Left = 8
              Top = 32
              Width = 225
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              Text = 'Modelo'
              OnChange = cbo_modeloChange
              Items.Strings = (
                'MP 20 CI'
                'MP 20 MI'
                'MP 20 TH'
                'MP 2000 CI'
                'MP 2000 TH'
                'MP 2100 TH'
                'MP 4000 TH'
                'MP 4200 TH'
                'MP 2500 TH')
            end
          end
        end
      end
      object TabSheet4: TRzTabSheet
        Caption = 'Estoque'
        object Label7: TLabel
          Left = 7
          Top = 16
          Width = 133
          Height = 13
          Caption = 'Data In'#237'cio do Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox10: TGroupBox
          Left = 8
          Top = 66
          Width = 636
          Height = 57
          Caption = 'Local de Estoque [Vendas]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object BtnConsLocal: TSpeedButton
            Left = 112
            Top = 24
            Width = 23
            Height = 21
            Hint = 'Consultar '
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
            OnClick = BtnConsLocalClick
          end
          object EdtNomeLocal: TEdit
            Left = 139
            Top = 24
            Width = 485
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
            TabOrder = 0
          end
          object EdtCodLocal: TDBEdit
            Left = 8
            Top = 24
            Width = 97
            Height = 21
            DataField = 'CODIGO_LOCAL_ESTOQUE_VENDAS'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 1
          end
        end
        object GroupBox11: TGroupBox
          Left = 8
          Top = 138
          Width = 636
          Height = 127
          Caption = 'Local de Vendas Default [Transfer'#234'ncia entre Locais de Estoque]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object BtnConsLocalOrigem: TSpeedButton
            Left = 109
            Top = 40
            Width = 23
            Height = 21
            Hint = 'Consultar '
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
            OnClick = BtnConsLocalOrigemClick
          end
          object BtnConsLocalDestino: TSpeedButton
            Left = 109
            Top = 88
            Width = 23
            Height = 21
            Hint = 'Consultar '
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
            OnClick = BtnConsLocalDestinoClick
          end
          object Label8: TLabel
            Left = 8
            Top = 24
            Width = 143
            Height = 13
            Caption = 'Local de Estoque Origem'
          end
          object Label9: TLabel
            Left = 8
            Top = 72
            Width = 147
            Height = 13
            Caption = 'Local de Estoque Destino'
          end
          object EdtNomeLocalOrigem: TEdit
            Left = 136
            Top = 40
            Width = 489
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
            TabOrder = 0
          end
          object EdtNomeLocalDestino: TEdit
            Left = 136
            Top = 88
            Width = 489
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
            TabOrder = 1
          end
          object EdtCodLocalOrigem: TDBEdit
            Left = 8
            Top = 40
            Width = 97
            Height = 21
            DataField = 'DEFAULT_LOCAL_ORIGEM'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 2
          end
          object EdtCodLocalDestino: TDBEdit
            Left = 8
            Top = 88
            Width = 97
            Height = 21
            DataField = 'DEFAULT_LOCAL_DESTINO'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 3
          end
        end
        object DBDateEdit1: TDBDateEdit
          Left = 18
          Top = 32
          Width = 95
          Height = 21
          DataField = 'DATA_INICIO_ESTOQUE'
          DataSource = DM.DTS_CONFIGURACOES
          NumGlyphs = 2
          TabOrder = 2
        end
      end
      object TabSheet6: TRzTabSheet
        Caption = 'NF-e'
        object GroupBox18: TGroupBox
          Left = 8
          Top = 8
          Width = 641
          Height = 385
          Caption = 'NFe - Nota Fiscal Eletr'#244'nica'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object PageControl1: TPageControl
            Left = 2
            Top = 15
            Width = 637
            Height = 368
            ActivePage = TabSheet13
            Align = alClient
            TabOrder = 0
            object TabSheet12: TTabSheet
              Caption = 'Certificado'
              object Label10: TLabel
                Left = 10
                Top = 16
                Width = 49
                Height = 13
                Caption = 'Caminho'
              end
              object Label11: TLabel
                Left = 10
                Top = 56
                Width = 37
                Height = 13
                Caption = 'Senha'
              end
              object Label12: TLabel
                Left = 10
                Top = 96
                Width = 95
                Height = 13
                Caption = 'N'#250'mero de S'#233'rie'
              end
              object Label13: TLabel
                Left = 10
                Top = 144
                Width = 66
                Height = 13
                Caption = 'UF da NF-e'
              end
              object Label23: TLabel
                Left = 10
                Top = 192
                Width = 76
                Height = 13
                Caption = 'Token NFC-e'
              end
              object Label24: TLabel
                Left = 129
                Top = 192
                Width = 91
                Height = 13
                Caption = 'Id Token NFC-e'
              end
              object Button1: TButton
                Left = 318
                Top = 31
                Width = 70
                Height = 21
                Caption = 'Carregar'
                TabOrder = 6
                OnClick = Button1Click
              end
              object Button2: TButton
                Left = 318
                Top = 111
                Width = 70
                Height = 21
                Caption = 'Carregar'
                TabOrder = 7
                OnClick = Button2Click
              end
              object estado_nfe: TDBComboBox
                Left = 7
                Top = 160
                Width = 145
                Height = 21
                DataField = 'ESTADO_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                ItemHeight = 13
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
                TabOrder = 3
              end
              object EdtSenhaCertificado: TDBEdit
                Left = 8
                Top = 72
                Width = 305
                Height = 21
                DataField = 'NFE_SENHA'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object EdtNumeroSerieCertificado: TDBEdit
                Left = 8
                Top = 112
                Width = 305
                Height = 21
                DataField = 'NFE_CERTIFICAO'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object EdtCaminhoCertificado: TDBEdit
                Left = 8
                Top = 32
                Width = 305
                Height = 21
                DataField = 'CAMINHO_CERTIFICADO'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object DBEdit46: TDBEdit
                Left = 128
                Top = 208
                Width = 305
                Height = 21
                DataField = 'ID_TOKEN'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit47: TDBEdit
                Left = 7
                Top = 208
                Width = 97
                Height = 21
                DataField = 'TOKEN'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBRadioGroup31: TDBRadioGroup
                Left = 8
                Top = 238
                Width = 236
                Height = 48
                Caption = 'NFCE - OFF-LINE/ON-LINE'
                Columns = 2
                DataField = 'NFCE_OFF'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Items.Strings = (
                  'On-Line'
                  'Off-Line')
                ParentFont = False
                TabOrder = 8
                Values.Strings = (
                  '1'
                  '2')
              end
              object DBRadioGroup32: TDBRadioGroup
                Left = 255
                Top = 241
                Width = 238
                Height = 44
                Caption = 'Pr'#233' Visualiza NFC-e'
                Columns = 2
                DataField = 'PREVIEW'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                ParentFont = False
                TabOrder = 9
                Values.Strings = (
                  'S'
                  'N')
              end
              object Button3: TButton
                Left = 14
                Top = 303
                Width = 211
                Height = 21
                Caption = 'Configura porta Daruma (Aut)'
                TabOrder = 10
                OnClick = Button3Click
              end
            end
            object TabSheet13: TTabSheet
              Caption = 'Geral'
              ImageIndex = 1
              object Label56: TLabel
                Left = 280
                Top = 7
                Width = 68
                Height = 13
                Caption = 'Logo Marca'
              end
              object sbtnPathSalvar: TSpeedButton
                Left = 523
                Top = 22
                Width = 22
                Height = 21
                Caption = '...'
                Transparent = False
                OnClick = sbtnPathSalvarClick
              end
              object SpeedButton2: TSpeedButton
                Left = 523
                Top = 79
                Width = 23
                Height = 21
                Caption = '...'
                Transparent = False
                OnClick = SpeedButton2Click
              end
              object Label68: TLabel
                Left = 280
                Top = 112
                Width = 104
                Height = 13
                Caption = 'Caminho Relat'#243'rio'
              end
              object SpeedButton7: TSpeedButton
                Left = 523
                Top = 128
                Width = 23
                Height = 21
                Caption = '...'
                NumGlyphs = 2
                Transparent = False
                OnClick = SpeedButton7Click
              end
              object EdtLogoMarcaDanfe: TDBEdit
                Left = 280
                Top = 23
                Width = 241
                Height = 21
                DataField = 'NFE_LOGOMARCA'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object edtPathLogs: TDBEdit
                Left = 281
                Top = 79
                Width = 240
                Height = 21
                DataField = 'NFE_CAMINHO_XML'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object suiDBRadioGroup1: TDBRadioGroup
                Left = 9
                Top = 4
                Width = 248
                Height = 49
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdRightToLeft
                Caption = 'DANFE'
                Columns = 2
                DataField = 'TIPO_IMPRESSAO_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'Retrato'
                  'Paisagem')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 2
                TabStop = True
                Values.Strings = (
                  'R'
                  'P')
              end
              object suiDBRadioGroup2: TDBRadioGroup
                Left = 9
                Top = 60
                Width = 248
                Height = 85
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdRightToLeft
                Caption = 'Forma Emiss'#227'o'
                Columns = 2
                DataField = 'FORMA_EMISSAO_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'Normal'
                  'Conting'#234'ncia'
                  'SCAN'
                  'DPEC'
                  'FSDA')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 3
                TabStop = True
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
              end
              object suiDBRadioGroup3: TDBRadioGroup
                Left = 9
                Top = 148
                Width = 248
                Height = 49
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdRightToLeft
                Caption = 'Ambiente de Destino'
                Columns = 2
                DataField = 'AMBIENTE_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'Produ'#231#227'o'
                  'Homologa'#231#227'o')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 4
                TabStop = True
                Values.Strings = (
                  'P'
                  'H')
              end
              object DBCheckBox1: TDBCheckBox
                Left = 280
                Top = 56
                Width = 265
                Height = 17
                Caption = 'Salvar Arquivos de Envio e Resposta Logs'
                DataField = 'SALVAR_LOG_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit45: TDBEdit
                Left = 281
                Top = 129
                Width = 240
                Height = 21
                DataField = 'CAMINHO_RELATORIO_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 6
              end
              object DBRadioGroup35: TDBRadioGroup
                Left = 9
                Top = 204
                Width = 248
                Height = 49
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdRightToLeft
                Caption = 'Servi'#231'o de envio NFC-e'
                Columns = 2
                DataField = 'SERVICO_NFCE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'S'#237'ncrono'
                  'Ass'#237'ncrono')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 7
                TabStop = True
                Values.Strings = (
                  '1'
                  '0')
              end
            end
            object TabSheet14: TTabSheet
              Caption = 'Email'
              ImageIndex = 2
              object Label57: TLabel
                Left = 0
                Top = 8
                Width = 86
                Height = 13
                Caption = 'Servidor SMTP'
              end
              object Label58: TLabel
                Left = 222
                Top = 8
                Width = 31
                Height = 13
                Caption = 'Porta'
              end
              object Label59: TLabel
                Left = 153
                Top = 48
                Width = 37
                Height = 13
                Caption = 'Senha'
              end
              object Label60: TLabel
                Left = 0
                Top = 48
                Width = 85
                Height = 13
                Caption = 'Usu'#225'rio/E-Mail'
              end
              object Label61: TLabel
                Left = 0
                Top = 128
                Width = 146
                Height = 13
                Caption = 'Assunto do email enviado'
              end
              object Label62: TLabel
                Left = 288
                Top = 8
                Width = 113
                Height = 13
                Caption = 'Mensagem do Email'
              end
              object Label66: TLabel
                Left = 0
                Top = 88
                Width = 32
                Height = 13
                Caption = 'From:'
              end
              object DBMemo1: TDBMemo
                Left = 288
                Top = 24
                Width = 321
                Height = 177
                DataField = 'MENSAGEM_EMAIL_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 0
                Top = 24
                Width = 201
                Height = 21
                DataField = 'SERVIDOR_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 216
                Top = 24
                Width = 57
                Height = 21
                DataField = 'PORTA_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit7: TDBEdit
                Left = 0
                Top = 64
                Width = 145
                Height = 21
                DataField = 'USUARIO_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
              object DBEdit8: TDBEdit
                Left = 152
                Top = 64
                Width = 121
                Height = 21
                DataField = 'SENHA_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBEdit9: TDBEdit
                Left = 0
                Top = 104
                Width = 273
                Height = 21
                DataField = 'FROM_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit10: TDBEdit
                Left = 0
                Top = 144
                Width = 273
                Height = 21
                DataField = 'ASSUNTO_EMAIL_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 6
              end
              object DBCheckBox2: TDBCheckBox
                Left = 1
                Top = 176
                Width = 273
                Height = 17
                Caption = 'SMTP exige conex'#227'o segura'
                DataField = 'SMTP_CONEXAO_SEGURA'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object TabSheet15: TTabSheet
              Caption = 'Arquivos'
              ImageIndex = 3
              object Label63: TLabel
                Left = 8
                Top = 16
                Width = 147
                Height = 13
                Caption = 'Pasta Danfes Cancelados'
              end
              object Label64: TLabel
                Left = 8
                Top = 56
                Width = 145
                Height = 13
                Caption = 'Pasta Danfes Inutilizados'
              end
              object Label65: TLabel
                Left = 8
                Top = 96
                Width = 152
                Height = 13
                Caption = 'Pasta Danfes Transmitidos'
              end
              object Label67: TLabel
                Left = 8
                Top = 136
                Width = 114
                Height = 13
                Caption = 'Pasta Arquivos PDF'
              end
              object SpeedButton1: TSpeedButton
                Left = 323
                Top = 31
                Width = 23
                Height = 21
                Caption = '...'
                Transparent = False
                OnClick = SpeedButton1Click
              end
              object SpeedButton3: TSpeedButton
                Left = 323
                Top = 71
                Width = 23
                Height = 21
                Caption = '...'
                Transparent = False
                OnClick = SpeedButton3Click
              end
              object SpeedButton4: TSpeedButton
                Left = 323
                Top = 111
                Width = 23
                Height = 21
                Caption = '...'
                Transparent = False
                OnClick = SpeedButton4Click
              end
              object SpeedButton5: TSpeedButton
                Left = 323
                Top = 151
                Width = 23
                Height = 21
                Caption = '...'
                Transparent = False
                OnClick = SpeedButton5Click
              end
              object DBEdit1: TDBEdit
                Left = 8
                Top = 32
                Width = 305
                Height = 21
                DataField = 'PASTA_CANCELADAS_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 8
                Top = 72
                Width = 305
                Height = 21
                DataField = 'PASTA_INUTILIZADAS_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 8
                Top = 112
                Width = 305
                Height = 21
                DataField = 'PASTA_TRANSMITIDAS_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 8
                Top = 152
                Width = 305
                Height = 21
                DataField = 'CAMINHO_ARQUIVOS_PDF'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
        end
      end
      object TabSheet7: TRzTabSheet
        Caption = 'Outros'
        object Label3: TLabel
          Left = 7
          Top = 68
          Width = 154
          Height = 13
          Caption = 'Usu'#225'rio Farm'#225'cia Popular: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 175
          Top = 68
          Width = 147
          Height = 13
          Caption = 'Senha Farm'#225'cia Popular: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 329
          Top = 17
          Width = 260
          Height = 13
          Caption = 'CFOP para comprass no Lan'#231'. de Nota fiscal '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 87
          Width = 153
          Height = 21
          DataField = 'USUARIO_FP'
          DataSource = DM.DTS_CONFIGURACOES
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 176
          Top = 87
          Width = 217
          Height = 21
          DataField = 'SENHA_FP'
          DataSource = DM.DTS_CONFIGURACOES
          TabOrder = 1
        end
        object DBRadioGroup27: TDBRadioGroup
          Left = 9
          Top = 11
          Width = 236
          Height = 48
          Caption = 'Utiliza Farm'#225'cia Popular'
          Columns = 2
          DataField = 'USA_FP'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 112
          Width = 385
          Height = 233
          Caption = 'Relatorio Gerencial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object Label4: TLabel
            Left = 7
            Top = 76
            Width = 94
            Height = 13
            Caption = 'Acima do Valor: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 7
            Top = 108
            Width = 168
            Height = 13
            Caption = 'Texto do Relat'#243'rio Gerencial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit14: TDBEdit
            Left = 104
            Top = 71
            Width = 121
            Height = 21
            DataField = 'VALOR_GERENCIAL'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit15: TDBEdit
            Left = 6
            Top = 127
            Width = 369
            Height = 21
            DataField = 'TEXTO_GERENCIAL'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit16: TDBEdit
            Left = 6
            Top = 151
            Width = 369
            Height = 21
            DataField = 'TEXTO_GERENCIAL1'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit17: TDBEdit
            Left = 6
            Top = 175
            Width = 369
            Height = 21
            DataField = 'TEXTO_GERENCIAL2'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit18: TDBEdit
            Left = 6
            Top = 199
            Width = 369
            Height = 21
            DataField = 'TEXTO_GERENCIAL4'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBRadioGroup29: TDBRadioGroup
            Left = 11
            Top = 19
            Width = 350
            Height = 48
            Caption = 'Utiliza Gerencial'
            Columns = 2
            DataField = 'USA_GERENCIAL'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
        end
        object DBEdit19: TDBEdit
          Left = 256
          Top = 13
          Width = 65
          Height = 21
          DataField = 'CFOP_CUPON'
          DataSource = DM.DTS_CONFIGURACOES
          TabOrder = 4
        end
        object Panel4: TPanel
          Left = 397
          Top = 86
          Width = 255
          Height = 30
          BevelInner = bvLowered
          BiDiMode = bdLeftToRight
          Caption = '::: CONFIGURA'#199#195'O PARA HOTEL :::'
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object GroupBox2: TGroupBox
          Left = 394
          Top = 116
          Width = 257
          Height = 171
          TabOrder = 6
          object Label14: TLabel
            Left = 16
            Top = 15
            Width = 227
            Height = 13
            Caption = 'Valor do Minuto (Na Conta de Telefone)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNone
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 16
            Top = 65
            Width = 177
            Height = 13
            Caption = 'Horas de Vencimento da Di'#225'ria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNone
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 152
            Top = 120
            Width = 118
            Height = 13
            Caption = 'Valor da Di'#225'ria Extra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNone
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit20: TDBEdit
            Left = 16
            Top = 32
            Width = 121
            Height = 21
            DataField = 'CON_VALORMINUTO'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 0
          end
          object DBEdit21: TDBEdit
            Left = 16
            Top = 81
            Width = 121
            Height = 21
            DataField = 'CON_HORADIARIA'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 152
            Top = 137
            Width = 97
            Height = 21
            DataField = 'CON_VALORCEXTRA'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 2
          end
          object DbCCExtra: TDBRadioGroup
            Left = 16
            Top = 120
            Width = 129
            Height = 39
            Caption = 'Calcula Di'#225'ria Extra?'
            Columns = 2
            DataField = 'CON_CCEXTRA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNone
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              'SIM'
              'NAO')
          end
        end
      end
      object TabSheet8: TRzTabSheet
        Caption = 'Plano Contas'
        object RzPageControl2: TRzPageControl
          Left = 0
          Top = 0
          Width = 652
          Height = 396
          ActivePage = TabSheet9
          Align = alClient
          ParentColor = False
          TabIndex = 0
          TabOrder = 0
          FixedDimension = 19
          object TabSheet9: TRzTabSheet
            Caption = 'Vendas'
            object GroupBox16: TGroupBox
              Left = 0
              Top = 0
              Width = 648
              Height = 46
              Align = alTop
              Caption = 'VENDA '#192' VISTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object blocregiao: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                TabOrder = 0
                OnClick = blocregiaoClick
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
              end
              object DBEdit24: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 1
              end
              object DBEdit23: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit25: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
            object GroupBox30: TGroupBox
              Left = 0
              Top = 46
              Width = 648
              Height = 46
              Align = alTop
              Caption = 'VENDAS '#192' PRAZO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBEdit27: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AP'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 0
              end
              object BitBtn1: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                TabOrder = 1
                OnClick = BitBtn1Click
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
              end
              object DBEdit55: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA2'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit56: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA20'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
            object GroupBox17: TGroupBox
              Left = 0
              Top = 92
              Width = 648
              Height = 46
              Align = alTop
              Caption = 'DUPLICATAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object BitBtn13: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                TabOrder = 0
                OnClick = BitBtn13Click
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
              end
              object DBEdit30: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA8'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object DBEdit28: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_DUPLICATA_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 2
              end
              object DBEdit26: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA80'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
          object TabSheet10: TRzTabSheet
            Caption = 'Orden de Servi'#231'o'
            object GroupBox3: TGroupBox
              Left = 0
              Top = 46
              Width = 648
              Height = 46
              Align = alTop
              Caption = 'O.S. '#192' VISTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBEdit29: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_OS_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 0
              end
              object BitBtn14: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                TabOrder = 1
                OnClick = BitBtn14Click
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
              end
              object DBEdit31: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA3'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit32: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA30'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
            object GroupBox19: TGroupBox
              Left = 0
              Top = 0
              Width = 648
              Height = 46
              Align = alTop
              Caption = 'O.S. '#192' PRAZO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object DBEdit35: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA40'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object BitBtn15: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                TabOrder = 1
                OnClick = BitBtn15Click
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
              end
              object DBEdit33: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_OS_AP'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 2
              end
              object DBEdit34: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA4'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
          object TabSheet11: TRzTabSheet
            Caption = 'Entradas'
            object GroupBox22: TGroupBox
              Left = 0
              Top = 46
              Width = 648
              Height = 46
              Align = alTop
              Caption = 'RECEBIMENTO DE CREDI'#193'RIO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBEdit39: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_RECEBIMENTO_CREDIARIO'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 0
              end
              object BitBtn18: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                TabOrder = 1
                OnClick = BitBtn18Click
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
              end
              object DBEdit40: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA5'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit41: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA50'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
            object GroupBox20: TGroupBox
              Left = 0
              Top = 0
              Width = 648
              Height = 46
              Align = alTop
              Caption = 'ENTRADAS DIVERSAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object DBEdit38: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA60'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object BitBtn16: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                TabOrder = 1
                OnClick = BitBtn16Click
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
              end
              object DBEdit36: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_OUTRAS_ENTRADAS'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 2
              end
              object DBEdit37: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA6'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
          object TabSheet16: TRzTabSheet
            Caption = 'Sa'#237'das'
            object GroupBox21: TGroupBox
              Left = 0
              Top = 0
              Width = 648
              Height = 46
              Align = alTop
              Caption = 'SA'#205'DAS DIVERSAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBEdit42: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_OUTRAS_SAIDAS'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 0
              end
              object BitBtn17: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                TabOrder = 1
                OnClick = BitBtn17Click
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
              end
              object DBEdit43: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA7'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit44: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA70'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenPictureDialog
    Left = 343
    Top = 96
  end
  object Pop1: TPopupMenu
    Left = 724
    Top = 328
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 114
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 115
      OnClick = btnEditarClick
    end
    object cancelar: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 116
      OnClick = btnCancelarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 117
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 118
    end
    object Gravar: TMenuItem
      Caption = 'Salvar'
      ShortCut = 121
      OnClick = btnSalvarClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
    end
  end
end
