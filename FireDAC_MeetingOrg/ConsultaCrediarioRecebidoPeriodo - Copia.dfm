object FormConsultaCrediarioRecebidoPeriodo: TFormConsultaCrediarioRecebidoPeriodo
  Left = 312
  Top = 164
  BorderStyle = bsDialog
  Caption = 'Consulta - Credi'#225'rio Recebido por Per'#237'odo'
  ClientHeight = 461
  ClientWidth = 776
  Color = clBtnFace
  Constraints.MinWidth = 270
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
  ShowHint = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 414
    Width = 776
    Height = 47
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 0
    object RxLabel8: TRxLabel
      Left = 235
      Top = 2
      Width = 539
      Height = 43
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Color = clAqua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 2
      Top = 2
      Width = 315
      Height = 43
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor Recebido:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 56
    Width = 776
    Height = 358
    Align = alClient
    BevelInner = bvLowered
    Color = 15263976
    TabOrder = 1
    object DBGrid1: TsDBGrid
      Left = 2
      Top = 2
      Width = 772
      Height = 354
      TabStop = False
      Align = alClient
      BorderStyle = bsNone
      DataSource = DMC5.DTS_CrediarioRecebidoP
      DefaultDrawing = False
      FixedColor = 15717318
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
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
          Width = 73
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
          Width = 307
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGAR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end>
    end
  end
  object pnpesq: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 56
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 2
    object Navigator: TsDBNavigator
      Left = 618
      Top = 7
      Width = 144
      Height = 27
      FullRepaint = False
      TabOrder = 2
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DMC5.DTS_CrediarioRecebidoP
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object BTPrint: TsBitBtn
      Left = 462
      Top = 7
      Width = 150
      Height = 36
      Caption = 'Gerar Relat'#243'rio'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BTPrintClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
        00FFFF00FFFF00FF646365314B62AC7D7EF6DAB6F3D5ADF2D1A5F0CE9EEFCB97
        EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
        7F9F6F60FF00FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AF2D5B1F0
        D1AAEFCFA3EECB9DEDC796EDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF32A0FE37A1FF106F
        E2325F8BB67D79F2D4B1F0D1AAEFCFA4EECB9DEDC796EDC58FEBC189EABF82E9
        BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF37A4FE379FFF0E6DDE355F89BB7F79F2D4B0F0D1AAEFCEA3EECB9CEDC7
        95EDC58FEBC189E9BD81E9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FF93656037A4FE359EFF0F6FDE35608BA67B7FF2D5B1
        F0D1AAEFCEA3EECB9CEDC796EDC590EBC189E9BF82E9BD7FE9BD7FEABF7FE7BC
        7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D338A5FE329DFF15
        6DCE444F5BDAB8A0925D5A986660935E5B9A6663B88A74D7AB82EBC189E9BD81
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
        DAFAEEDE3BABFFA1CAE78F6D6B96665FC2A38CE9DCB7FBF8CBE7DCB6BF9A899D
        6B66CB9E7BEBC189E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF9E6E64F4EAE1FBF2E6F8EADCB49291A06D66EDD4A4FFFCCAFFFFCFFFFF
        CFFFFFD5FFFFEAE3D3CC96635FD5AB82EBC188EABF82E7BB7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3A16C67C79F81F6D095
        FCF4C2FFFFCFFFFFD8FFFFEEFFFFFAFFFFFFB79387B88A73EBC48EEBC288E7BC
        809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EB9D
        6A64E7C28EEEB87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6DCCEAD996560
        EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
        F4FFFFFEFEF8F3935F5BF7D495EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFFE3FF
        FFD7F6F2C9935E5BEECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
        FF00FFB17E6BFAF6F4FFFFFFFFFEFB9E6B65E9C793EAA96AEFBD80FAE9B4FFFF
        D0FFFFD3FFFFD1FFFFD1E1D1B0996660EFCEA1EECB9CEBC592A07264FF00FFFF
        00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFA4706BCBA989F8E2B5
        F0C690F0C286F7DCA5FEF3C1FEF8C6FFFFCFBB9984BB8F7EF0D1A9F0CFA3EDC9
        999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFE5
        D5D5A07068EDE3E2FFF4E2EFBD80EBAB6FF0C086FBDEA3EBD9A9986760DAB89F
        F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
        F4FFFFFFFFFFFFFFFFFFD7C0BF9E6F6BC6A999EAD19EFADA9CE9C793C59D829D
        6A64D0AC9CF3DCBDE5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
        FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFE5D5D5A4766A9A6862935F
        5B9E6A64BD988FE0C4B5FAE9D0E0D0BAB8AB9AA79C8BA49786846964FF00FFFF
        00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5E9D3C49E675B98665B95655B96655B9665
        5B986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FBF7F6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCF7F0FFFAEFDAC0B69F675BDAA16B
        DD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FCF8
        F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFFEF7DD
        C4BC9F675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFDDC7C29F675BEAB273EFA751A5686BFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFD49875FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0CE9F675BEDB572A5686BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68CF8E68CF8E68CF8E68CF
        8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E689F675BA5686B
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      SkinData.SkinSection = 'BUTTON'
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 429
      Height = 52
      Align = alLeft
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 0
      object Bevel1: TBevel
        Left = 5
        Top = 4
        Width = 252
        Height = 44
      end
      object Label4: TLabel
        Left = 130
        Top = 8
        Width = 102
        Height = 13
        Caption = 'Vencimento Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 109
        Height = 13
        Caption = 'Vencimento Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DateEdit1: TsDateEdit
        Left = 9
        Top = 23
        Width = 110
        Height = 22
        AutoSize = False
        Color = clWhite
        Ctl3D = True
        EditMask = '!99/99/9999;1; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
      end
      object DateEdit2: TsDateEdit
        Left = 130
        Top = 23
        Width = 110
        Height = 22
        AutoSize = False
        Color = clWhite
        Ctl3D = True
        EditMask = '!99/99/9999;1; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnEnter = DateEdit2Enter
        OnExit = DateEdit2Exit
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
      end
      object suiButton1: TsBitBtn
        Left = 268
        Top = 6
        Width = 125
        Height = 39
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = suiButton1Click
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
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
end
