object frmTitulosLista: TfrmTitulosLista
  Left = 343
  Top = 178
  Caption = 'M'#243'dulo de Remessa de T'#237'tulos'
  ClientHeight = 546
  ClientWidth = 934
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
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 527
    Width = 934
    Height = 19
    Panels = <
      item
        Text = 'Mensagem'
        Width = 437
      end
      item
        Text = 'Contas encontradas:'
        Width = 450
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 1
      Top = 44
      Width = 72
      Height = 13
      Caption = 'Vecto Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 194
      Top = 44
      Width = 64
      Height = 13
      Caption = 'Vecto Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 377
      Top = 44
      Width = 41
      Height = 13
      Caption = 'Banco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label35: TsLabel
      Left = 5
      Top = 0
      Width = 134
      Height = 13
      Caption = 'Banco Cedente -Layout'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object suiButton2: TAdvGlowButton
      Left = 695
      Top = 9
      Width = 83
      Height = 32
      Caption = '&Buscar'
      ImageIndex = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        00000009000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000002AF510057AB4A
        00B4B95809E5BB5909EDAD4A01D1A03C008AAF44001FFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C65A0023B95A00C9DF8227FFFFA4
        3FFFFFA33BFFFFA036FFFFA030FFF48B21FFBD5708F6B644006FFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D3660030C3660AEAFEA74DFFFFAA4CFFFFA3
        44FFFFA13FFFFFA33BFFFF9D33FFFD9429FFFF9F29FFDC7213FEB6450085FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CB63004FC962
        00A8D96C004BFF00FF00DB66001CC36909E7FFB05BFFFFAD56FFFFA94EFFFFA9
        4CFFF39839FFC5660EF4B54F00ADB4490092B14900B2C55F09F5BF5807FEB947
        004EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C87114EFFFCA
        8DFFCE7718F2C7650027C06300C1FBB468FFFFB366FFFFAD5AFFFFAF5AFFE48E
        33FFAE5900ABC0500015FF00FF00FF00FF00FF00FF00C5430015B04700A4B146
        00D700000001FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C97515DFFFCF
        9AFFFDC285FFBC6000ECE8A053FFFFC487FFFFBA74FFFFB567FFEE9B43FFB15D
        009EFF000001FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C14B
        0088CB470016FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C16500B7FFD4
        A4FFFFCD9BFFF6BB7EFFFFCB95FFFFC58BFFFFC283FFFFBA73FFC26400CEBF60
        0006FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C164008FFCCC
        9BFFFFD1A2FFFFD0A0FFFFCC99FFFFC991FFFFC990FFDA8D32FDCE6A0037FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C56B0067F2BF
        87FFFFD7AEFFFFD2A5FFFFD0A0FFFFCA98FFFDC488FFBD6100DEC4660039DB41
        0004FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C972003FE7AD
        65FFFFE4C8FFFFD5ACFFFFD1A3FFFFCD9AFFFFC993FFF4B26CFFE29339FFC972
        0BE0D8720017FF00FF00FF00FF00FF00FF00C545000CB1490028B13F0047AA3C
        0065A9370082A736008FBA3E0020FF00FF00FF00FF00FF00FF00D87A0018E39C
        3FFEFFF3E4FFFFDCBAFFFFD3A6FFFFCF9FFFFFCC97FFFFC990FFFFC583FFEA98
        41FFBE66004EB55B000CBE5400B4C96918EBC6712EFDCF8447FFDB9862FFE6AE
        7FFFF3C599FFFACC9FFFAE4505C8FF00FF00FF00FF00FF00FF00FF00FF00E58B
        09CFFEDBB6FFFAD6ADFFF3C388FFEDAE62FFE39D46FFDC8D2DFEE28517EED574
        01B7D059000CB04C0052E89F5BFFFFD397FFFFD19BFFFFD4A3FFFFD7ABFFFFD9
        B0FFFFD8B1FFFFDFB6FFC06D34FEAC350013FF00FF00FF00FF00FF00FF00FA8B
        0024E3840095E5830087E4830068DF7E004ADB7B002CED72000FFF00FF00FF00
        FF00FF00FF00CE61001BBF610BE4DB9350FFF2B67DFFFFCE9BFFFFD0A0FFFFD3
        A6FFFFD4A9FFFFDAAEFFD08850FF9A33003AFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00C2610006B24A003FA74200E2FDC791FFFFCC9AFFFFCF
        9EFFFFD0A0FFFFD4A3FFE3A36AFF9D330062FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BB570039D38237FDFFCB92FFFFC78FFFFFCA
        95FFFFCC97FFFFCC96FFF5B981FF9A32008AFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00D0500007B85A00D0FFBB77FFFFC383FFFFC588FFFFC9
        8FFFF4B578FFFFCA8FFFFFCC8EFF9C3700B2FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00EC7D001AEA7F0080FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF000001B35E009EEC9A44FFFFB567FFFFBA72FFFFC381FFDF91
        4BFFA44000EEFEC58DFFFFC987FFAE4E0ED9FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0088970002D27400DDD97A009DE5830012FF00FF00FF00FF00FF00
        FF00D5690013B66500AAE79033FFFFAF59FFFFAC57FFFFB362FFFBAF63FFAF4F
        00C0B447002BBE641BF5FFCF8AFFB2530FEBFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00EC830055DD7E09FEDC7D08F2D57700ABD374008AD06F
        00A8D1760CF2F69838FFFFA84BFFFFA64BFFFFAA50FFFFAC54FFBC5D08E6C54F
        001CFF00FF00C44D0051B14500AFAF410050FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EC89008DEF8B15FFFF982BFFFB9427FFFF9A
        31FFFF9F38FFFFA03BFFFFA13FFFFFA84CFFFDAA55FFC26309EACE600030FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00E9860076DD7F0CF8FB9832FFFFA9
        4AFFFFA94EFFFFAF58FFFFB15EFFE5903AFFBC5C00CBD1630023FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D57A0024C56D0091CC71
        00D8D2780EF6CE710AECBC5F00BABA5C005BB55A0003FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
      OnClick = suiButton2Click
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
    object DateEdit3: TDateEdit
      Left = 77
      Top = 41
      Width = 90
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object DateEdit4: TDateEdit
      Left = 270
      Top = 41
      Width = 90
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 429
      Top = 40
      Width = 59
      Height = 21
      TabOrder = 2
    end
    object suiButton3: TAdvGlowButton
      Left = 825
      Top = 9
      Width = 83
      Height = 32
      Caption = '&Limpar'
      ImageIndex = 4
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424DF60600000000000036000000280000001800000018000000010018000000
        0000C0060000130B0000130B00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFDFDFEFAFBFDF7F8F8F9F0F2F1E7EAE8DFE2E4DEDEDEDBDBDA
        D8DBD9DBDEDCE7E3E8EEEEEDF6FAF7FAFDFCFFFFFFFFFFFFFFFFFFFEFEFEFFFF
        FFFFFFFFFFFFFFFCFCFCEEF4F2E3E6E8D5D6DAC2C0C8B5AFB29F9B998F8D8982
        807F7B787B7774767875767B797884847F989698B6B2B6DDD9DAF3F3F3FDFDFD
        FFFFFFFFFFFFFFFFFFFCFCFCE9E9E9C6C6C6ADA5AC8E898B74736E6264594B5E
        4D4A61464B6843516F4750754754764C51704A476240435244444F45585A577C
        797BB0B0B0E9E9E9FDFDFDFFFFFFFDFDFDE4E4E49F9F9F6868684C6A4647733A
        46852F49962B4CA12A50A62E59AF3C63B74B7CBE628DC8789FD18FAAD69FA5D3
        988CB4785A734E414A455F5F5FA2A2A2E8E8E8FEFEFEF4F6F5A2B09D3A773B30
        862D439C3847893967905B6AA76084C36864995073AE555E965062AE4E6DB55E
        7FBD7090C47B98CB8BA3D096A9D49C7DAE724452425F5D5EB5B4B1EFF2F3CFDA
        CD3C8E3459AB586EB26B6AAD697AAB739DAA968B9F839DBA95A3B3A677897687
        A57D87C37677BA686FB56172B56174B86978B86678B76677B76C5B98513E5141
        80787ED7D9DA79B56C68B25F94BD8A85C07B7EBE757FB876A3B0A5F1F3F4A9AD
        AA9E9D9D7C7B7959605476937289B58492C98C89C2847BBA7474B46961A9564B
        9B423A9A3032702D5D5A61BCBBBA4EA13F42A02F8EC482ACD2A1A6CF9B9BCB8F
        7E877EDCD6D9A7AAA48C878E8987845D5F5D596156C1D8B9BDE1B4B8DDB2B2D9
        B0A8D4AD8ECE9356AF542A90242A88244D604BB2AFB1A4CB9B6FB24A51A32E5D
        B93288C660A8D886C1E3A9B2C79BBFD7AEC4D7B0C1DAAAB5DA9DB4DC9AB4E49C
        AEDD8CABDD86A2CF669BCB5791C43277BA2244AA183A981E4C7544B9B9B9FEF1
        ECF6E3D2A3A1B328487359A1BF36517436788B519AA2516F883468803E879D53
        A5B758A1B8284F6F5E759D344E7866B6D577BEDA29636F3977874E819541787A
        545F62D0C6C8FDFDF6F3D5C8FEF5F242727A2C61782B32512953673C6C782336
        4F2C4F622D606C2D636E2E697A2650633663722A616D5FA4B95B96A62D57553F
        6C6B3E6F7235666563615EDCCECAFCFEFFF9E7DBF9E2D2D6D9D8FDFAF3C7C6C7
        828F9790A3AC61858F53777F244D5A2E5F73223B4A2B5E6A27616C2A616E3B76
        85245864234C4A215153254B4B254A4B887C70E2D3C6FCFDFEFFFEFFF2E3D3FD
        DCCDFBEFE8FEF1EDFFF3EFFCEEE4FCEFE7FDF1EEEDE8E293A5AA8597A35B7E9E
        2C65753C758F3F86A63B7B9015454C204745204849314F57B8AFAAEADBD3FDFE
        FDFEFDFDFFF4EAF9D5C5F9F3EDFDF6F2FEF2EBFAE6DAFBDDCFFAF1E9FDF5ECF5
        E9EBCBD0E24F89C34293D054C7F955CCFF55CFFD57C2E731769A194E5353737E
        E4D1D4F3E7DBFEFEFFFEFEFEFDFCF8EFC9B5FCECE1FBF4ECFEF5EEFDEBE3F8D9
        BFF9D7C5F9DCD3BAB7C5748ABC4890D145C0FD49C6FE50C9FC49C8FC4BC6FE42
        C2FE4EAEE24D7EB68C96C0EEE8F1FCFDFFFEFEFEF9FEFDF8D0BBF8D5C3F8EADF
        FDF5F1FFF3F2FDEBE4FDD3BEFBD5BFC2C6D25D96D93BB0F738B6FF44BEFE40BF
        FE4BC1FF45BEFE41BCFD36B3FB51A8EA85A3D3F8FAFAFFFFFDFBFEFFFFFFFFF5
        E8DFF8DAC8F5E6D2FBD9D1FADAC8F9D8CAFCE4D4F0E5E3A6B5D44886CC30A8F9
        36AFFF38B4FF38B7FD38B7FE37B5FD36B3FC2DAEFF3093E7769DD3DFE0F6FFFF
        FDFBFFFFFDFFFFFFFFF9F9E5DAF4D8C5F9EBDEFBEDDDFAECE7FCECDEF0E5DC8C
        A0C55897DE2EA6FB37AFFF41B4FD3FB5FF3FB4FF3FB3FF3DB1FF33ABFF41A6F1
        5E91D0CBDFECFFFFFFFDFFFFFCFFFFFDFFFEFCFEFCF5D4C3F7EADAF9EEE4FFED
        E6FAE8E3FDDCC8DFCDD6558AD132A5F94BB3FF5ABBFD5CBBFF5CBAFF5BBAFF5A
        B8FF5AB9FD3993E4AABDE8FBF8FEFAFDFDFFFFFFFFFFFFFFFEFFF9FEFEF6DECB
        FFE7D9FAEEE8FCF0E7F9ECE4F7D8C49D9AB25382C6368DE646ADF781C7FE82C8
        FE82C8FE82C8FE81C7FE49A3F04791E35D88C3EAF1F9FFFFFFFFFFFFFFFFFFFF
        FFFFFDFFFFFFFAF3F2D2C4FBEFDEFEF2E8F9EDE9FAE6DDF4D4BEDDBEB13C7EC7
        4BA2F25BAFFC9FD0FEA7D6FD93CEFC6DB4F73995E696B4E7FEFDFCF9FEFDFFFF
        FFFFFFFFFFFFFFFFFFFFFEFFFDFAFEFCFCF4EEEFD6C8F7E2D1FCE9DEFCE7DCF7
        DCCCD5BBBE80A0D189B0E33492EF3994E93399EF4E9DED4D92E1A8BFE591AAD0
        FBFDFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFFFCFEFEFDFDF6FFF6
        EBFCF1E8FFF5EEFFF4EEFEFDFCFEFDFAB9CFE68CA6D7ABBFE54D83CFC8D5F671
        96CFFEFEFBFAFEFDFDFFFFFEFFFAFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFFFFFFE
        F9FFFEFEFBFFFCFFFFFDFEFEFDFEFEFCFEFEFCFFFCFCFDFFF0F7FCF4F8FBEDF2
        F9C1D2EBFFFFF9F1F1F9FDFFFDF9FFFFFFFDFFFDFFFD}
      TabOrder = 4
      OnClick = suiButton3Click
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
    object Edit2: TsEdit
      Left = 494
      Top = 40
      Width = 66
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object Edit3: TsEdit
      Left = 566
      Top = 40
      Width = 33
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object Cliente: TComboEdit
      Left = 5
      Top = 14
      Width = 123
      Height = 24
      Alignment = taCenter
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
      TabOrder = 7
      Text = ''
      OnButtonClick = ClienteButtonClick
      OnChange = ClienteChange
      OnKeyPress = ClienteKeyPress
    end
    object Panel7: TPanel
      Left = 134
      Top = 10
      Width = 465
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 8
      object RxLabel6: TRxLabel
        Left = 0
        Top = 9
        Width = 373
        Height = 15
        AutoSize = False
        Caption = 'BANCO CEDENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object sEdit2: TsEdit
      Left = 134
      Top = -3
      Width = 66
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 472
    Width = 934
    Height = 55
    Align = alBottom
    BevelWidth = 2
    TabOrder = 2
    object btnLocalizar: TAdvGlowButton
      Left = 825
      Top = 5
      Width = 90
      Height = 40
      Action = Sair
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 5
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        00000009000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0077393909835151C37E4B4BE07D4A4A81844A4A1DFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C9C9C02FF00
        FF00FF00FF00965C5C23CDA3A3FFC39696FF8F5C5CFF814E4EFB814B4BB17E4E
        4E4993000002FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0062626281616262F96464
        64EA5D5E5ED4515353C7CDA7A7FFC59898FF9F6C6CFFA16E6EFF956262FF8451
        51FF764545DE7D4444797E4C4C17FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00666666E0807F80FF706E
        6FFFAEA5ACFFB0ABB2FFD9B4B6FFC69999FFA06D6DFFA16E6EFFA26F6FFFA370
        70FF9E6B6BFF8B5757FF6C4343F8453E3E78FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B6B6BF1878586FF5C6E
        62FF2BB651FF38B55BFFCDB6ACFFC69B9AFFA47070FFA47171FFA37070FFA370
        70FFA37070FFA47171FF9D6666FF3F3F3FEAFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00029304E5FF00FF006C6C6CF18C8A8CFF5B6C
        5FFF16A538FF0FA234FFC9B6A9FFC99D9DFFA57272FFA67373FFA67373FFA572
        72FFA47171FFA47171FF9E6767FF424242EBFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0007920EF9029304E6B6B6B6F88E8C8EFF5C6B
        5DFF0F9227FF089023FFCBB3A9FFCB9EA0FFA97576FFA97575FFA67474FFA874
        74FFA87575FFA77474FF9E6767FF464747E8FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000E961AF932B557FF139715FEC5C4C5FF596A
        5BFF078116FF007F13FFCEB4AAFFCCA0A2FFAB7777FFA87575FFA17171FFA774
        74FFA87777FFA97676FFA16A6AFF4B4C4CE6FF00FF00FF00FF00048109F30D8E
        1AFB0C8F17FB0D9118FC0D9117FD129B20FE4DE585FF2FB14FFF169918FFA7AF
        A7FF006800FF006400FFCDB1A7FFCEA3A3FFAB8282FF908989FF937979FFA472
        72FFAA7777FFAB7878FFA36C6CFF505050E6FF00FF00FF00FF001C932CF741DA
        79FF41D776FF44D879FF47DB7CFF48D97AFF4EE982FF50E486FF32B250FF1499
        16FFB5EEDFFF6EDBBFFFDBBFBDFFCDA1A2FFC6BCBCFFDADFDFFFB4ADADFFAC79
        79FFAE7A7AFFAD7A7AFFA66F6FFF535454E6FF00FF00FF00FF0020932FF948E1
        7FFF42DC76FF45DF79FF4AE47DFF4CE780FF4FE982FF54EF88FF58E98CFF37B7
        57FF1AA01FFFDBFFFFFFE4C4C4FFD0A6A6FFC4A5A5FFD4D2D2FFB89D9DFFB07C
        7CFFAF7C7CFFAF7C7CFFA87171FF575858E4FF00FF00FF00FF001F932CFB56E5
        88FF3EDD73FF43E178FF47E57CFF4DE980FF53EC86FF57F08BFF62FE9BFF3CC7
        5AFF29A82DFFF1FFFFFFE7C3C3FFD1A9A9FFB37E7EFFB37D7DFFB37F7FFFB380
        80FFB17E7EFFB17E7EFFAA7373FF5A5B5BE3FF00FF00FF00FF00249B36FA8CF8
        B6FF7FF1A8FF85F5AFFF8AF7B2FF8DF6B3FF63F494FF62FC99FF43DD66FF209F
        23FFFFFFFFFFFFFFFFFFEAC3C4FFD3ABABFFB68383FFB78484FFB68383FFB582
        82FFB48181FFB38080FFAC7474FF5F6161E3FF00FF00FF00FF00058E0AE50C9B
        15F70B9B14F70B9E16F80A9D14F81EA52AFE6DFFA6FF43DE68FF229F24FFBEBD
        BCFFFFFDF5FFFFFAF2FFEAC3C3FFD5ACACFFB98686FFB98686FFB88585FFB784
        84FFB68383FFB58282FFAF7878FF626464E3FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0016A41FFA49E672FE1E9D20FECDCECEFF8583
        80FFFFF7E7FFFFF4E3FFEDC4C3FFD6B0B0FFBD8888FFBA8686FFB78282FFB783
        83FFB68383FFB68383FFAF7878FF636464E1FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00099D10F9029704D9BDBDBDF8A7A7A8FF8984
        81FFFFEFD8FFFFECD6FFEDC4C3FFD6B1B1FFD0A0A0FFFFE3E3FFF1CCCCFFE3B7
        B7FFD6A7A7FFC79494FFB07A7AFF666868DEFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00029805D6FF00FF00818181F1AAAAABFF8A84
        7FFFFFE8CCFFFFE5C9FFEEC5C3FFD8B2B2FFCC9E9EFFFFF3F3FFFFEAEAFFFFE4
        E4FFFFE1E1FFF1C3C3FFB07979FF676A6ADEFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00838383F1ADADAEFF8A84
        7EFFFFE2BDFFFFDFBBFFEEC5C3FFDAB4B4FFC69999FFFDF2F2FFFFF3F3FFFFEC
        ECFFFFE6E6FFEABDBDFFB27B7BFF6B6C6CDEFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00858585F1B0B1B2FF8F86
        7DFFFFDFB2FFFFDDAEFFF3CCCAFFE2C0C0FFC38E8EFFBD8686FFBA8484FFC08E
        8EFFC99A9AFFC79696FFB68080FF6C6E6EDDFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00888888F1B5B6B6FF8584
        83FF86817BFF87847CFFE8B8B8FFE7C1C2FFDBAEAEFFD7A9A9FFD0A2A2FFC795
        95FFBF8C8CFFBD8989FFBA8282FF707070D9FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00898A8AF1CACACAFFAEAE
        AEFFABABACFFA2A4A4FFA49F9FFFA59A9AFFA59696FFA49393FFA89292FFAD95
        95FFB09595FFB19393FFA28080FF727373D9FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00969696A1989898E19696
        96E3969696E5949494E5929292E88E8F8FEA8D8E8EEA8B8C8CED898A8AEE8889
        89EE838686F3828484F07C7D7DDD79797980FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
    object btnNovo: TAdvGlowButton
      Left = 16
      Top = 6
      Width = 139
      Height = 40
      Action = GerarArquivoRemessa
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 10
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D760400000000000036000000280000001600000010000000010018000000
        000040040000120B0000120B00000000000000000000D7D6D59A97959E9C9A97
        9694999795969492989694979594979694969492979594999795959392989694
        9795939896949594929896949593929C9998918E8DDADADA0000F5ECE7938983
        99908BE3D7D0D1C6BFF4E9E0DED3CCE7DCD4E1D6CFEADFD7E4D8D1D4C9C2F1E5
        DDDCD1CAE9DDD5DFD4CCEEE2DBDCD1CAF2E5DDADA39CDDCEC4C2C2C20000FFFA
        F4211D1C2A2826CCC4BE393836A69F9B5C59575F5B58575452DDD4CE8E898600
        0000FFFFF847444374706D605D5BFFF7F04D4A48FFFFF90D0D0DD8CCC4C5C5C5
        0000FFFCF72C2927353231D7D0CB323130A59F9C5451506C69675F5C5AE2DBD6
        9893900E0E0EFFFFFF4A4846807C7A444240E9E2DD4B4847FFFFFF1B1B1ADCD0
        CBC5C5C40000FFFDF92D2A28343231E0D8D4FFFEFAFFFFFFFFFAF6FFFFFBFFFF
        FFD7D1CE9896930F0F0EFFFFFFFFFFFFFFFFFCFFFBF7FFFFFCFFFFFAFFFFFF1C
        1B1ADFD4CDC5C5C50000FFFEFB2D2B293E3C3A7B7775928F8C555352B6B1AF84
        817F101010CDC8C69C9A98181817B5B1AE0D0D0C7A7776B4B1AF403E3E696665
        4F4C4C302F2DE1D7D0C6C4C50000FFFFFD2C2B29403F3D6A68667E7C7A373535
        AAA8A6706E6C000000CECAC79D9C9A1C1A1BA8A5A3000000656462A8A8A51E1D
        1C4E4C4C2C2B29353433E2D8D3C5C5C50000FFFFFE2E2B2A413F3E6E6B6A8281
        7E3B3B3AAFACA9737271000000D1CCCA9E9C9C1C1B1AACA8A70000006A6867AB
        AAAA23222253525131302F363534E3DAD5C5C5C40000FFFFFF2D2C2B41403F6E
        6C6B8281813B3B3BAFADAC737372000000D1CECD9E9D9C1C1B1BACAAA8000000
        696967ABABAA222222545251313030363534E4DCD8C5C5C40000FFFFFF2E2D2B
        4240406F6D6C8282813C3C3BB0AEAD747373000000D2D0CF9D9D9D1C1C1BADAB
        AA0000006A6A69ACABAB242322545352313030363535E6E0DAC5C5C50000FFFF
        FF2E2C2C4241406F6E6D8382823C3C3BB0B0AE747373000000D2D2D09E9E9D1C
        1C1CADACAB0000006B696AACABAB242323545453303130373635E8E1DCC5C6C5
        0000FFFFFF302D2D4241406F6E6F8383823C3C3CB1B0B0747473000000D2D2D2
        9F9E9E1C1C1CADADAC0000006B6A69ACACAB242423545454313131373635EAE2
        DEC5C5C50000FFFFFF2F2E2D424141706E6E8383823C3C3DB2B0B07474740000
        00D3D2D29F9E9E1C1C1CADADAD0000006B6B69ACACAC24242455545431313137
        3635EAE3DFC6C5C50000FFFFFF2F2E2D4241416F6E6E8383823C3C3CB1B0AF74
        7473000000D2D2D19F9E9E1C1C1CADADAC0000006B6A6AACACAB242423545454
        313131373635EAE3DFC5C5C50000FFFFFF2321213635346564627B797930302F
        AAA8A76A696A000000CDCCCA9797960E0E0FA6A4A3000000605F5FA5A4A41615
        154848472323232A2A29E7E1DCC4C4C30000FFFCFAA7A4A1B0ADABC3C0BECBC8
        C7AEACABDDDAD8C5C3C18A8A8AECE7E5D6D4D1A1A09EDDDAD8898988C1BFBEDC
        DAD8A4A2A2B9B6B5AAA8A7ABA8A6EDE5E1D7D6D70000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
  end
  object NxPageControl1: TNxPageControl
    Left = 0
    Top = 73
    Width = 934
    Height = 399
    ActivePage = NxTabSheet1
    ActivePageIndex = 0
    Align = alClient
    TabOrder = 3
    Margin = 0
    Spacing = 0
    TabHeight = 20
    object NxTabSheet1: TNxTabSheet
      Caption = 'Selecione os Titulos para Gera'#231#227'o'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      ExplicitTop = 0
      object XDBGrid1: TXDBGrid
        Left = 0
        Top = 0
        Width = 934
        Height = 375
        Align = alClient
        DataSource = DMCOB.dts_cobranca1
        GridStyle.VisualStyle = vsXPStyle
        TabOrder = 0
        OnCellClick = XDBGrid1CellClick
        OnDrawColumnCell = XDBGrid1DrawColumnCell
        Columns = <
          item
            CheckBoxValues = 'T;F'
            Expanded = False
            FieldName = 'CHEK_BOX'
            Title.Caption = 'Enviar'
            Visible = True
            Width = 37
          end
          item
            Expanded = False
            FieldName = 'FILTRO'
            Title.Caption = 'Protestar?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COM_REGISTRO'
            Title.Caption = 'Com Registro'
            Visible = True
            Width = 71
          end
          item
            Expanded = False
            FieldName = 'NOME_SACADO'
            Title.Caption = 'Nome do Sacado'
            Visible = True
            Width = 232
          end
          item
            Expanded = False
            FieldName = 'CODIGO_COMPRA'
            Title.Caption = 'N'#186' Venda'
            Visible = True
            Width = 55
          end
          item
            Expanded = False
            FieldName = 'PARCELA'
            Title.Caption = 'Parc.'
            Visible = True
            Width = 36
          end
          item
            Expanded = False
            FieldName = 'DATA_COMPRA'
            Title.Caption = 'Data Venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_VENCIMENTO'
            Title.Caption = 'Data Vecto'
            Visible = True
          end
          item
            CheckBoxValues = 'T;F'
            Expanded = False
            FieldName = 'ENVIADO'
            Title.Caption = 'Enviado'
            Visible = True
            Width = 48
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REMESSA'
            Title.Caption = 'Remessa'
            Visible = True
            Width = 53
          end
          item
            Expanded = False
            FieldName = 'NUMBOLETO'
            Title.Caption = 'N'#186' Boleto'
            Visible = True
            Width = 90
          end
          item
            Expanded = False
            FieldName = 'VALOR_COMPRA'
            Title.Caption = 'Valor T'#236'tulo'
            Visible = True
            Width = 83
          end
          item
            Expanded = False
            FieldName = 'VALOR_JUROS'
            Title.Caption = 'Juros'
            Visible = True
            Width = 74
          end
          item
            Expanded = False
            FieldName = 'VALOR_ACRESCIMO'
            Title.Caption = 'Multas'
            Visible = True
            Width = 64
          end
          item
            Expanded = False
            FieldName = 'VALOR_DESCONTO'
            Title.Caption = 'Desconto'
            Visible = True
            Width = 64
          end
          item
            Expanded = False
            FieldName = 'VALOR_PAGAR'
            Title.Caption = 'Valor Total'
            Visible = True
            Width = 64
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Visible = True
          end>
      end
    end
    object NxTabSheet2: TNxTabSheet
      Caption = 'Remesssas Geradas'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object Panel1: TPanel
        Left = 0
        Top = 35
        Width = 934
        Height = 102
        Align = alTop
        TabOrder = 0
        object XDBGrid2: TXDBGrid
          Left = 1
          Top = 1
          Width = 932
          Height = 100
          Align = alClient
          GridStyle.VisualStyle = vsXPStyle
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 172
        Width = 934
        Height = 203
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 1
        object XDBGrid3: TXDBGrid
          Left = 1
          Top = 1
          Width = 932
          Height = 201
          Align = alClient
          GridStyle.VisualStyle = vsXPStyle
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 137
        Width = 934
        Height = 35
        Align = alTop
        TabOrder = 2
        object sLabelFX1: TsLabelFX
          Left = 320
          Top = -3
          Width = 260
          Height = 33
          Caption = 'Titulos Gerados na Remessa'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 934
        Height = 35
        Align = alTop
        TabOrder = 3
        object sLabelFX2: TsLabelFX
          Left = 392
          Top = 2
          Width = 90
          Height = 33
          Caption = 'Remessa'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 559
    Top = 152
    object Incluir: TAction
      Caption = 'I&ncluir'
      Hint = 'Nova conta | Inclui uma nova conta a receber'
      ImageIndex = 0
      ShortCut = 45
    end
    object Alterar: TAction
      Caption = '&Alterar'
      Hint = 'Alterar conta | Altera os dados da conta selecionada'
      ImageIndex = 1
      ShortCut = 13
    end
    object Excluir: TAction
      Caption = '&Excluir'
      Hint = 'Excluir conta | Exclui a conta selecionada'
      ImageIndex = 2
      ShortCut = 46
    end
    object GerarImagemBoleto: TAction
      Caption = '&Imagem do Boleto'
      Hint = 'Gerar arquivo com imagem do boleto'
      ImageIndex = 14
    end
    object EnviarBoletoEMail: TAction
      Caption = 'Boleto por E-&mail'
      Hint = 'Enviar boleto por e-mail'
      ImageIndex = 13
    end
    object VisualizarImpressao: TAction
      Caption = '&Visualizar Impress'#227'o'
      Hint = 'Visualizar Impress'#227'o'
      ImageIndex = 3
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      Hint = 'Imprimir'
      ImageIndex = 4
      ShortCut = 16464
    end
    object Sair: TAction
      Caption = '&Sair'
      Hint = 'Sair | Fecha esta janela'
      ImageIndex = 5
      ShortCut = 27
      OnExecute = SairExecute
    end
    object Atualizar: TAction
      Caption = 'A&tualizar'
      Hint = 'Atualizar | Atualiza os dados mostrados na tela'
      ImageIndex = 6
      ShortCut = 116
    end
    object Filtrar: TAction
      Caption = '&Filtrar'
      Hint = 'Filtrar | Seleciona quais contas dever'#227'o ser mostradas'
      ImageIndex = 7
      ShortCut = 16454
    end
    object AjudaTopicos: TAction
      Caption = '&T'#243'picos da ajuda'
      Hint = 'T'#243'picos da ajuda | Exibe a ajuda'
      ImageIndex = 8
      ShortCut = 112
      OnExecute = AjudaTopicosExecute
    end
    object AjudaSobre: TAction
      Caption = '&Sobre ...'
      Hint = 'Sobre ... | Exibe informa'#231#245'es sobre o programa'
      ImageIndex = 9
      OnExecute = AjudaSobreExecute
    end
    object GerarArquivoRemessa: TAction
      Caption = '&Gerar Arquivo Remessa'
      Hint = 'Gerar arquivo para o banco | Gera arquivo para enviar ao banco'
      ImageIndex = 10
      OnExecute = GerarArquivoRemessaExecute
    end
    object LerArquivoRetorno: TAction
      Caption = '&Ler Arquivo Retorno'
      Hint = 'Ler arquivo retorno do banco | L'#234' o arquivo recebido do banco'
      ImageIndex = 11
    end
    object GerarRelatorioRetorno: TAction
      Caption = 'Gerar &Relatorio Retorno'
      Hint = 
        'Informa'#231#245'es sobre arquivo retorno | Gera arquivo contendo inform' +
        'a'#231#245'es sobre os dados do arquivo retorno'
      ImageIndex = 12
    end
  end
  object OpenDialog1: TOpenDialog
    Ctl3D = False
    DefaultExt = '*.*'
    Filter = 'Todos os arquivos (*.*)|*.*|Somente arquivos texto (*.txt)|*.txt'
    Options = [ofHideReadOnly]
    Title = 'Abrir arquivo retorno'
    Left = 367
    Top = 224
  end
  object SaveDialog1: TSaveDialog
    Ctl3D = False
    DefaultExt = '*.*'
    Filter = 'Todos os arquivos (*.*)|*.*|Somente arquivos texto (*.txt)|*.txt'
    Options = [ofHideReadOnly]
    Left = 447
    Top = 224
  end
  object dlgSalvarImagem: TSavePictureDialog
    Ctl3D = False
    DefaultExt = '*.bmp'
    FileName = 'ImagemBoleto.bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    FilterIndex = 0
    Options = [ofHideReadOnly]
    Title = 'Salvar imagem'
    Left = 519
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 386
    Top = 152
    object Imprimir2: TMenuItem
      Caption = 'Imprimir'
      ImageIndex = 4
    end
    object Visializar1: TMenuItem
      Caption = 'Visializar'
      ImageIndex = 3
    end
  end
  object MessageBanco: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = BlueGlass
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
    Text = 'Digite o C'#243'digo do Banco!!!'
    Left = 656
    Top = 81
  end
  object MsgErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = BlueGlass
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
    Left = 850
    Top = 83
  end
  object MSG_NR: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = BlueGlass
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
    IconType = suiWarning
    Text = 'Nenhum Registro Foi Localizado !!!'
    Left = 722
    Top = 92
  end
  object MSG_ERRO: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = BlueGlass
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
    Text = 'Erro na Consulta'
    Left = 787
    Top = 92
  end
end
