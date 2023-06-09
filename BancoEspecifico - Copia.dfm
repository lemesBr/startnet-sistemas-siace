object FormBancoEspecifico: TFormBancoEspecifico
  Left = 439
  Top = 226
  BorderStyle = bsDialog
  Caption = 'Controle Banc'#225'rio Espec'#237'fico'
  ClientHeight = 426
  ClientWidth = 742
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 46
    Align = alTop
    BevelWidth = 2
    Color = 15263970
    TabOrder = 0
    object RxLabel6: TRxLabel
      Left = 180
      Top = 5
      Width = 72
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 300
      Top = 5
      Width = 65
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 10
      Top = 6
      Width = 58
      Height = 13
      Caption = 'N'#186' Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BTVisualizar: TBitBtn
      Left = 419
      Top = 6
      Width = 125
      Height = 36
      Caption = 'Consultar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BTVisualizarClick
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C0D4EEB4D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7CCC724576EB511F7C1F7C1F7C836A836A836A836A836A836A
        836A1F7C1F7C1F7C1F7CEA7E4676EC4D1F7C836A907F717F4F7B2B770977E876
        E772836A1F7C1F7C1F7C1F7CEA7E466EED498A6216671767336F4E7B2A770977
        E876836A1F7C1F7C1F7C1F7C1F7C0E7B964E5C5BFF6BFF6B9E6714674C7B2A7B
        0977836A1F7C1F7C1F7C1F7C1F7C915E5E57DF63FF6FFF73FF7F7D6FD25E4C7B
        4B7B836A1F7C1F7C1F7C1F7C1F7CBA4E5F537F57FF6FFF77FF7BFF6F1A5B6E7B
        6D7B836A1F7C1F7C1F7C1F7C1F7CBA527F531E47DF67FF73FF73FF6F1A5B8F7F
        8F7F836A1F7C1F7C1F7C1F7C1F7C72529D63BF673E4F7E5BFF67BE631463B07F
        B07F836A1F7C1F7C1F7C1F7C1F7C1F7CB756BE6F9F5B5F537E571863917FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C6C5A39635B67596BB67FB17FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AF67FFB7FFB7FD77FB27FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AD67FB77F957B727B6E7B6E7B
        B07F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A2E772F774F774F772D772B77
        2A77836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A7277D77FD57FD47FD27FB17F
        6E7B836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A
        836A1F7C1F7C}
    end
    object DateEdit3: TDateEdit
      Left = 180
      Top = 20
      Width = 110
      Height = 21
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = DateEdit3Enter
      OnExit = DateEdit3Exit
    end
    object DateEdit4: TDateEdit
      Left = 300
      Top = 20
      Width = 110
      Height = 21
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = DateEdit4Enter
      OnExit = DateEdit4Exit
    end
    object LCP: TDBLookupComboBox
      Left = 11
      Top = 20
      Width = 154
      Height = 21
      KeyField = 'CONTA'
      ListField = 'CONTA'
      ListSource = DM.DTS_Conta_Bancaria
      TabOrder = 0
      OnEnter = LCPEnter
      OnExit = LCPExit
    end
    object Edit2: TEdit
      Left = 568
      Top = 9
      Width = 121
      Height = 21
      TabOrder = 4
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 370
    Width = 742
    Height = 56
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object myLabel3d1: TmyLabel3d
      Left = 33
      Top = 8
      Width = 300
      Height = 38
      Caption = 'BANCO ESPEC'#205'FICO'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeRightBottom = clOlive
      AShadeLTSet = False
    end
    object BTRelatorio: TBitBtn
      Left = 604
      Top = 8
      Width = 125
      Height = 39
      Caption = 'Relat'#243'rio'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BTRelatorioClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FEFEFE01EDEDED12C6C6C639ADADAD52D5D5D52AEFEFEF10F8F8F807FBFB
        FB04E7E7E718C0C0C03FB4B4B44BE1E1E11EF5F5F50AFEFEFE01FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3
        F30CD5D5D52A848484844B4B4BCA4A4A4AB75F5F5FA08C8C8C73B6B6B649BCBC
        BC436E6E6E9D494949C8525252AD7171718EA7A7A758D8D8D827F0F0F00FFCFC
        FC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F906E1E1E11EA0A0
        A0624D4D4DD04D4D4DFF5C5C5CFF353535FF393939E7434343CD4A4A4ABE4441
        41EA806666FFB0A6A6FF666666F73C3C3CD94D4D4DB56767679898989867CECE
        CE31EDEDED12FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03E9E9E916BCBCBC435E5E5EB94444
        44FA969696FFF2F2F2FFC0C0C0FFA3A3A3FF6E6E6EFF504D4DFF806666FFC293
        93FFB89292FFDAD4D4FFFFFFFFFFE6E6E6FF818181FB464646E2474747BE5E5E
        5EA18F8F8F70C6C6C639E9E9E916F9F9F906FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FEFEFE01F0F0F00FCCCCCC3376767697404040EE828282FFEAEA
        EAFFF2F2F2FFEEEEEEFFBDBDBDFFB0B0B0FFB3B3B3FFBBAEAEFFAD8686FF7A6D
        6DFF6F6F6FFF7E7E7EFF9B9B9BFFD2D2D2FFF3F3F3FFF2F2F2FFA6A6A6FF5151
        51E7444444C4595959A68282827DC3C3C33CF9F9F906FFFFFF00FFFFFF00FFFF
        FF00FEFEFE01E1E1E11E92929274494949DF6D6D6DFFD6D6D6FFF6F6F6FFF2F2
        F2FFEEEEEEFFEAEAEAFFBABABAFFADADADFFB0B0B0FFABABABFF3D3D3DFF5050
        50FF5F5F5FFF6F6F6FFF7E7E7EFF8E8E8EFF9D9D9DFFC5C5C5FFEAEAEAFFFFFF
        FFFFCCCCCCFF767676EF454545C68B8B8B74EDEDED12FFFFFF00FFFFFF00FFFF
        FF00E8E8E81B757575AA595959F9C3C3C3FFFBFBFBFFF6F6F6FFF2F2F2FFEEEE
        EEFFEAEAEAFFE6E6E6FFB6B6B6FFAAAAAAFFADADADFFB0B0B0FF8B8B8BFF6D6D
        6DFF575757FF5F5F5FFF6F6F6FFF7E7E7EFF8E8E8EFF9D9D9DFFAFAFAFFFC6C6
        C6FFE6E6E6FFFAFAFAFF6B6B6BED8E8E8E71F0F0F00FFFFFFF00FFFFFF00FFFF
        FF009A9A9A86A1A1A1FFFEFEFEFFFBFBFBFFF6F6F6FFF2F2F2FFEEEEEEFFEAEA
        EAFFE6E6E6FFE2E2E2FFABABABFFA7A7A7FFAAAAAAFFADADADFFB0B0B0FFB3B3
        B3FFB6B6B6FF999999FF848484FF757575FF7E7E7EFF8E8E8EFF9D9D9DFFA7A7
        A7FF8D8D8DFF717171FF494949E29C9C9C63F3F3F30CFFFFFF00FFFFFF00FFFF
        FF009C9C9C86D0D0D0FFFBFBFBFFF6F6F6FFF2F2F2FFEEEEEEFFEAEAEAFFE6E6
        E6FFB4B4B4FF757575FF666666FF7A7A7AFF8B8B8BFFA2A2A2FFADADADFFB0B0
        B0FFB3B3B3FFB6B6B6FFB9B9B9FFB7B7B7FFA2A2A2FF909090FF4E4E4EFF3333
        33FFB9B9B9FF787878FF484848D99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
        FF009D9D9D86CECECEFFF6F6F6FFF2F2F2FFEEEEEEFFE1E1E1FFA7A7A7FF7676
        76FF929292FFC3C3C3FFADADADFF8F8F8FFF818181FF6E6E6EFF737373FF8F8F
        8FFFA7A7A7FFB3B3B3FFB6B6B6FFB9B9B9FFBCBCBCFFBFBFBFFFC3C3C3FFA1A1
        A1FFC8C8C8FF898989FF4A4A4AD99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
        FF009D9D9D88CBCBCBFFF2F2F2FFE5E5E5FFA9A9A9FF767676FF949494FFCECE
        CEFFDADADAFFD6D6D6FFB3B3B3FF9E9E9EFFA2A2A2FFA4A4A4FF9A9A9AFF8383
        83FF737373FF747474FF888888FFA7A7A7FFB9B9B9FFBCBCBCFFBFBFBFFF70A0
        80FF59AF76FF777777FF4C4C4CD99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
        FF007F7F7FB5B7B7B7FF999999FF6E6E6EFFA5A5A5FFDADADAFFDEDEDEFFDADA
        DAFFD6D6D6FFD3D3D3FFEBEBEBFFE1E1E1FFCECECEFFB8B8B8FFA8A8A8FFA7A7
        A7FFAAAAAAFFA4A4A4FF8F8F8FFF747474FF707070FF8B8B8BFFACACACFF6E9E
        7EFF56BF79FF656565FF4D4D4DD99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
        FF00777777C4777777FFB8B8B8FFE6E6E6FFE2E2E2FFDEDEDEFFDADADAFFD6D6
        D6FFD1D1D1FFDEDEDEFFEEEEEEFFE2E2E2FFEBEBEBFFEAEAEAFFE8E8E8FFDADA
        DAFFC7C7C7FFB5B5B5FFADADADFFB0B0B0FFAEAEAEFF979797FF808080FF6363
        63FF656565FF797979FF4E4E4ED99F9F9F60F3F3F30CFFFFFF00FFFFFF00FFFF
        FF007A7A7AC4D7D7D7FFE6E6E6FFE2E2E2FFDEDEDEFFDADADAFFD6D6D6FFD1D1
        D1FFD4D4D4FFF1F1F1FFBFBFBFFFB9B9B9FFB3B3B3FFB8B8B8FFD1D1D1FFE3E3
        E3FFE7E7E7FFE6E6E6FFE1E1E1FFCFCFCFFFC3C3C3FFB6B6B6FFB6B6B6FFB4B4
        B4FFA1A1A1FF737373FF4F4F4FD9A2A2A25DF3F3F30CFFFFFF00FFFFFF00FFFF
        FF007D7D7DC3E6E6E6FFE2E2E2FFDEDEDEFFDADADAFFD6D6D6FFD1D1D1FFCFCF
        CFFFEFEFEFFFD1D1D1FFC5C5C5FFEFEFEFFFEEEEEEFFE8E8E8FFD2D2D2FFBDBD
        BDFFB2B2B2FFBBBBBBFFCECECEFFE0E0E0FFE3E3E3FFE1E1E1FFD8D8D8FFCDCD
        CDFFC3C3C3FF898989FF545454D6B7B7B748F6F6F609FFFFFF00FFFFFF00FFFF
        FF008B8B8BB1D9D9D9FFDEDEDEFFDADADAFFD6D6D6FFD1D1D1FFD0D0D0FFEFEF
        EFFFD3D3D3FFBBBBBBFFF2F2F2FFF1F1F1FFEFEFEFFFEEEEEEFFEDEDEDFFEBEB
        EBFFEAEAEAFFDFDFDFFFCACACAFFB6B6B6FFB1B1B1FFBEBEBEFFCFCFCFFFE0E0
        E0FFDEDEDEFF888888FF6F6F6FB1E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00D6D6D6408D8D8DFFDADADAFFD6D6D6FFD1D1D1FFD6D6D6FFDFDFDFFFB0B0
        B0FF9A9A9AFFD1D1D1FFF4F4F4FFF2F2F2FFF1F1F1FFEFEFEFFFEEEEEEFFEDED
        EDFFEBEBEBFFEAEAEAFFE8E8E8FFE7E7E7FFE6E6E6FFDBDBDBFFBEBEBEFFABAB
        ABFFD0D0D0FF606060EAC3C3C33CFBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C2C2C2607F7F7FF0969696FF979797FFAAAAAAFF9B9B9BFFB0B0
        B0FFAFAFAFFF949494FF8A8A8AFF969696FFA3A3A3FFBDBDBDFFD5D5D5FFEEEE
        EEFFEDEDEDFFEBEBEBFFEAEAEAFFE8E8E8FFE7E7E7FFE6E6E6FFB5B5B5FFC8C8
        C8FF787878F8ADADAD63F6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F5F5F510D6D6D6419E9E9ED4EAEAEAFFEAEAEAFFEAEA
        EAFFB6B6B6FFABABABFFB2B2B2FFB9B9B9FFBFBFBFFFADADADFF9F9F9FFF8E8E
        8EFF9D9D9DFFA1A1A1FFC1C1C1FFE2E2E2FFDEDEDEFFB6B6B6FFC5C5C5FF7C7C
        7CF7B7B7B75AF8F8F807FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00999999E2F7F7F7FFF8F8F8FFFAFA
        FAFFDADADAFFC7C7C7FFC1C1C1FFB2B2B2FFB9B9B9FFBFBFBFFFC6C6C6FFCDCD
        CDFFD3D3D3FFD3D3D3FFA2A2A2FFABABABFFB1B1B1FFA2A2A2FF868686CBD9D9
        D932FCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00969696DFB9B3B3FFE6B6ADFFFFB3
        A6FFFFB3A6FFFFC5B9FFFFD6CCFFFFE6DFFFF1E3DEFFEAEAEAFFE0E0E0FFD5D5
        D5FFD3D3D3FFD5D5D5FFA0A0A0FF6E6E6EC4A8A8A883E2E2E229FCFCFC03FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3AAAA88E6BA9BFFFFD6
        FDFFFFD0AAFFFFCCA8FFFFC8A5FFFFC5A2FFFFC29FFFFFBC99FFFFCAACFFFFD3
        B9FFF2D4C6FFD6CCCCFF848484F4E1E1E11EFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B08E8EB7F9D4B2FFFFDB
        B7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDBB7FFFFDAB5FFFFD7
        B0FFE6BA9BFF695858C6CECECE31FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03AC827EE5FFDFBEFFFFDF
        BEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDFBEFFFFDF
        BEFFCCA292FF685E5EB3E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E2E229BF958BFFFFE4C8FFFFE4
        C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4C8FFFFE4
        C8FFBF958AFF7D7D7D82EDEDED12FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7B1B17AD9B7A8FFFFE7CFFFFFE7
        CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7CFFFFFE7
        CFFF916E6BECA7A7A758F5F5F50AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01AB8989BCF2DBCAFFFFECD9FFFFEC
        D9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFFFECD9FFF2DB
        CAFF745E5ECECBCBCB34FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00ECE9E91CAC807DFFFFF0E0FFFFF0E0FFFFF0
        E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFFFF0E0FFD9BC
        B2FF7E75759DE7E7E718FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FEFEFE01B69C9C96D9BFB8FFFFF5EAFFFFF5EAFFFFF5
        EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5EAFFA587
        83EFB0B0B04FF6F6F609FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E6E3E322A67C7BF5FFF8F1FFFFF8F1FFFFF8F1FFFFF8
        F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFF2E6DFFF8976
        76AFE3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FCFCFC03B18E8EB6ECE1DFFFFFFDFBFFFFFDFBFFFFFDFBFFFFFD
        FBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFAD908FE7D2D2
        D22DFEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F2EBEB20D6C3C362C7AEAE84C5ACAC86DFD2D286C8AFAFC2C6AD
        FDC4CDB6B6C4DCCBCBD2CCB3B3FFCCB3B3FFCCB3B3FFC6ADADD4E6E3E322FEFE
        FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object suiDBNavigator1: TDBNavigator
      Left = 391
      Top = 8
      Width = 200
      Height = 28
      DataSource = DMC2.DTS_Mov_BancoEspecifico
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 46
    Width = 742
    Height = 324
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 2
    object RxLabel4: TRxLabel
      Left = 4
      Top = 211
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor das Entradas:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 273
      Top = 211
      Width = 445
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 4
      Top = 247
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor das Saidas:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 273
      Top = 247
      Width = 445
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 4
      Top = 283
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Saldo da Conta:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 273
      Top = 283
      Width = 445
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 4
      Top = 175
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Saldo Anterior:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 273
      Top = 175
      Width = 445
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 5
      Width = 714
      Height = 167
      TabStop = False
      BorderStyle = bsNone
      Color = 15263976
      Ctl3D = True
      DataSource = DMC2.DTS_Mov_BancoEspecifico
      FixedColor = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico do Lan'#231'amento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 303
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Usu'#225'rio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor da Entrada'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_SAIDA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor da Saida'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end>
    end
  end
  object MsgNenhumRegistro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
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
    IconType = suiWarning
    Text = 'Nenhum Registro Foi Localizado. Tente Novamente!!!'
    Left = 587
    Top = 32
  end
  object MsgData: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
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
    IconType = suiWarning
    Text = 'A data final n'#227'o pode ser menor que a data inicial.'
    Left = 619
    Top = 32
  end
end
