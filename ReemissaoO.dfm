object FormReemissaoO: TFormReemissaoO
  Left = 374
  Top = 238
  BorderStyle = bsDialog
  Caption = 'Reemiss'#227'o de Or'#231'amento'
  ClientHeight = 193
  ClientWidth = 474
  Color = clBtnFace
  Constraints.MinWidth = 150
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 474
    Height = 58
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 7
      Top = 3
      Width = 171
      Height = 13
      Caption = 'Entre com o N'#186' do Or'#231'amento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object suiButton1: TsuiButton
      Left = 232
      Top = 8
      Width = 228
      Height = 41
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Visualizar/Imprimir'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFA37875A37875A37875A37875A37875A37875A37875A37875A378
        75A37875A37875A37875A37875A37875A37875A37875A378758A5B5AFF00FFFF
        00FFFF00FFFF00FFFF00FF939798937E8CC9978FCCBFB9FFE2D1FFE0CFFFDFCC
        FFDEC9FFDDC7FFDAC2FFDAC1FFD8BDFFD7BCFFD5B8FFD4B6FFD2B2FFCEB6FFCC
        B38A5B5AFF00FFFF00FFFF00FFFF00FF5381B75381B76572ACA4899FCAABACFF
        EBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFDBB6FFD8B0
        FFD7AFFFD0A1FFCEB68A5B5AFF00FFFF00FFFF00FFFF00FFFF00FF5DBCFD3F86
        DF6572ACA4899FDDB8B2FFEBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFF
        DEBDFFDCB7FFDBB6FFD8B0FFD2A7FFCEB78A5B5AFF00FFFF00FFFF00FFFF00FF
        FF00FFC5E7F35AB4F53F86DF6572ACA4899FDDB8B2FFEBD6FFE9D3FFE7CFFFE5
        CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFDBB6FFD4A9FFD0BA8C5C5BFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF9E8D915FBBFC3F86DF6572ACA4899FDDB8B2
        FFEBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFD7AFFFD0
        BB8E5F5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAF827ACABEB45DB7F63F
        86DF6572ACB7A8ABF5E1D1D9BBB0C4A09AC7A29DCFAAA4DDBBADF5D7BEFFDFBF
        FFDEBDFFD8B0FFD2BE91615FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB486
        7BF6EEE6FFF3E65FBCFC8AA6C89B9191C29E98D9B49AF7E6BBFEFDCBF7F3CBDE
        C9B6C5A099EBCCB6FFDFBFFFDBB6FFD2BF936460FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB88A7DF7F0E9FFF4E9F5F4EFE6D7D1BA938EF4D8AFFFF9C8FFFE
        CDFFFEDAFFFFE0FFFFEDF4EEE6C19C96F5D7BEFFDCB7FFD4C1976763FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFBC8E7FF7F2ECFFF7EDFFF8F0D7B7B5E6C3A5
        FFF6C5FFF1BFFFFFD3FFFFE3FFFFF2FFFFFDFFFFFFE4D7C1CAA59AFFDEBDFFD4
        C29A6A65FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC19381F8F4F0FFF8F0FF
        FAF5CEAAA3F7EAC2FFE2B0FFF2C0FFFFD3FFFFE4FFFFF4FFFFF7FFFFE8F7F3CD
        C09C94FFE0C0FFD5C59E6D67FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC697
        81F9F6F3FFFAF5FFFBF8CCA79DFEF8CBFFD9A6FFE9B7FFFFCFFFFFDDFFFFE7FF
        FFE9FFFFE1FEFDD8BE9D94FFE2C5FFD6C7A17069FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCB9B83FAF9F8FFFBF8FFFEFECEAA9FF7EEC4FFE5B8FFEDBCFFFC
        C9FFFFD0FFFFD7FFFFDAFFFFD4F7EEC8C09B90FFE3C8FFD7C9A5746CFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFCFA085FAFAFAFFFEFEFFFFFFD7B9B2ECDEC1
        FFF5DCFFE2BCFFE1AFFFF5C3FFF6C3FFF8C5FFF6C3ECD7B3C29C93FFE5CCFFD5
        C7A8776EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4A587FBFBFBFFFFFFFF
        FFFFE7D5D5D6BCADF8F5F5FFFFFFFFE1B4FFE8B7FFDEACFFE8B6F8EABED0A997
        E0C4B8FFE7CFFFCEC1AB7A6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9A9
        89FBFBFBFFFFFFFFFFFFFFFFFFD4B5B2D7C1BAECE2DAF7F2D4FEE8B5F7E9BDEC
        D9B6D7AD97C9A39DFFD7CCFFCFC4FFB8B2AE7C71FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFDDAD8BFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFD4BABAC8A599CDAF
        A0CFB0A2D4B3A3D0AA9DD9BBB6FFD7CCFFB8B8FFAAAAFF9B9BB17E73FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFE2B18DFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE6D9D9EDDDDBF1E1DEFFF8F0B28074B28074B28074B28074B280
        74B28074FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE6B58EFDFDFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBF8FFFAF5B28074E9B688
        FDAC3CEF9521CD9168CC9D86FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE9B8
        90FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBF8FFFAF5FF
        F8F0B28074EBC89FFCC67FDAA279CFA188FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFEDBB91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFFFBF8FFFAF5B28074E9CDA5DEB08DD4A58AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFF0BE93FEF1E5FBEEE2F7EBDFF5E9DDF2E5DA
        EEE2D7EBDFD4E9DCD2E6DAD0E2D5CCDFD2C9B28074DCA988D9AA8DFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2C093DCA987DCA987DC
        A987DCA987DCA987DCA987DCA987DCA987DCA987DCA987DCA987B28074DCA987
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object Edit1: TEdit
      Left = 8
      Top = 18
      Width = 205
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 58
    Width = 474
    Height = 135
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    Enabled = False
    TabOrder = 1
    object RxLabel2: TRxLabel
      Left = 2
      Top = 2
      Width = 470
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Informa'#231#245'es do Or'#231'amento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 5
      Top = 25
      Width = 90
      Height = 15
      AutoSize = False
      Caption = 'N'#186' do Or'#231'amento:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText2: TDBText
      Left = 95
      Top = 25
      Width = 87
      Height = 15
      Alignment = taCenter
      Color = clLime
      DataField = 'CODIGO'
      DataSource = DMC.DTS_Orcamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 5
      Top = 50
      Width = 90
      Height = 15
      AutoSize = False
      Caption = 'Data Or'#231'amento: '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText1: TDBText
      Left = 265
      Top = 50
      Width = 199
      Height = 15
      Color = clLime
      DataField = 'PAGAMENTO'
      DataSource = DMC.DTS_Orcamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 5
      Top = 75
      Width = 90
      Height = 15
      AutoSize = False
      Caption = 'Cliente:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText3: TDBText
      Left = 95
      Top = 75
      Width = 56
      Height = 15
      Alignment = taCenter
      Color = clLime
      DataField = 'CODIGO_CLIENTE'
      DataSource = DMC.DTS_Orcamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 156
      Top = 75
      Width = 308
      Height = 15
      Color = clLime
      DataField = 'NOME_CLIENTE'
      DataSource = DMC.DTS_Orcamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 184
      Top = 25
      Width = 80
      Height = 15
      AutoSize = False
      Caption = 'Vendedor:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText5: TDBText
      Left = 265
      Top = 25
      Width = 199
      Height = 15
      Color = clLime
      DataField = 'USUARIO'
      DataSource = DMC.DTS_Orcamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 184
      Top = 50
      Width = 80
      Height = 15
      AutoSize = False
      Caption = 'Pagamento:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText6: TDBText
      Left = 95
      Top = 50
      Width = 87
      Height = 15
      Alignment = taCenter
      Color = clLime
      DataField = 'DATA'
      DataSource = DMC.DTS_Orcamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 200
      Top = 99
      Width = 80
      Height = 15
      AutoSize = False
      Caption = 'Valor a Pagar:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText7: TDBText
      Left = 281
      Top = 99
      Width = 182
      Height = 15
      Alignment = taRightJustify
      Color = clLime
      DataField = 'VALOR_TOTAL'
      DataSource = DMC.DTS_Orcamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object MessageLocCli: TsuiMessageDialog
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
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Or'#231'amento Inexistente !!! Tente Outro N'#250'mero!!!'
    Left = 248
    Top = 1
  end
  object MessageCli: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o!!!'
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
    Text = 'Digite o N'#250'mero do Or'#231'amento !'
    Left = 280
    Top = 1
  end
end
