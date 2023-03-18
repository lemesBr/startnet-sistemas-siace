object FormConsultaCrediarioRecebido: TFormConsultaCrediarioRecebido
  Left = 345
  Top = 236
  BorderStyle = bsDialog
  Caption = 'Consulta  Credi'#225'rio Recebido por Cliente'
  ClientHeight = 334
  ClientWidth = 789
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object Panel6: TPanel
      Left = 7
      Top = 7
      Width = 97
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 0
      object RxLabel5: TRxLabel
        Left = 4
        Top = 6
        Width = 88
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel7: TPanel
      Left = 106
      Top = 7
      Width = 450
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel6: TRxLabel
        Left = 4
        Top = 6
        Width = 440
        Height = 15
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel8: TPanel
      Left = 559
      Top = 7
      Width = 219
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      object RxLabel7: TRxLabel
        Left = 4
        Top = 6
        Width = 205
        Height = 15
        AutoSize = False
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 92
    Width = 789
    Height = 242
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object RxLabel4: TRxLabel
      Left = 2
      Top = 192
      Width = 309
      Height = 48
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total Recebido:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 315
      Top = 192
      Width = 472
      Height = 48
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$ 0.000.000,00'
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 785
      Height = 190
      Align = alTop
      BevelInner = bvLowered
      Color = 15263976
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 2
        Width = 781
        Height = 186
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Color = 15263976
        Ctl3D = True
        DataSource = DMC5.DTS_CrediarioRecebido
        DefaultDrawing = False
        FixedColor = 15263976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA_VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_BAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Pagamento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 228
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_COMPRA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Compra/Pedido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PAGAR'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor a Pagar com E. F. '
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PAGO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Recebido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end>
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 789
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 2
    object BTPrint: TsSpeedButton
      Left = 434
      Top = 4
      Width = 140
      Height = 35
      Caption = 'Gerar Relat'#243'rio'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = BTPrintClick
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object Navigato: TsDBNavigator
      Left = 584
      Top = 4
      Width = 192
      Height = 26
      FullRepaint = False
      TabOrder = 1
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DMC5.DTS_CrediarioRecebido
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object Button1: TButton
      Left = 339
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 425
      Height = 51
      Align = alLeft
      BevelInner = bvRaised
      BevelWidth = 2
      Color = 15263976
      TabOrder = 0
      object RxLabel1: TRxLabel
        Left = 10
        Top = 6
        Width = 148
        Height = 13
        Caption = 'Entre com o C'#243'digo do Cliente:'
      end
      object Cliente: TComboEdit
        Left = 11
        Top = 21
        Width = 147
        Height = 22
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
        OnButtonClick = ClienteButtonClick
        OnEnter = ClienteEnter
        OnExit = ClienteExit
      end
    end
  end
  object MessageCli: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = DeepBlue
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
    Text = 'Digite o C'#243'digo do Cliente!!!'
    Left = 572
    Top = 1
  end
  object MessageLocCli: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o!'
    UIStyle = DeepBlue
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
    Text = 'Cliente N'#227'o Consta no Cadastro !'
    Left = 600
    Top = 1
  end
end
