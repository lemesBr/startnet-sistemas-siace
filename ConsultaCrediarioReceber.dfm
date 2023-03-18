object FormConsultaCrediarioReceber: TFormConsultaCrediarioReceber
  Left = 442
  Top = 221
  BorderStyle = bsDialog
  Caption = 'Consulta - Credi'#225'rio a Receber por Per'#237'odo'
  ClientHeight = 462
  ClientWidth = 778
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
  ShowHint = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TsPanel
    Left = 0
    Top = 415
    Width = 778
    Height = 47
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object RxLabel8: TsLabel
      Left = 237
      Top = 2
      Width = 539
      Height = 43
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$ 0,00'
      Color = clActiveCaption
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object RxLabel4: TsLabel
      Left = 2
      Top = 2
      Width = 233
      Height = 43
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor Total:'
      Color = clBlack
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
  end
  object Panel4: TsPanel
    Left = 0
    Top = 56
    Width = 778
    Height = 359
    Align = alClient
    BevelInner = bvLowered
    Color = 15263976
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object DBGrid1: TsDBGrid
      Left = 2
      Top = 2
      Width = 774
      Height = 355
      TabStop = False
      Align = alClient
      BorderStyle = bsNone
      Color = 15263976
      Ctl3D = True
      DataSource = DMC5.DTS_CrediarioReceber
      DefaultDrawing = False
      FixedColor = 10504772
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
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
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Compra/Pedido'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 92
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
          Width = 222
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Data Compra'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Vencimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end>
    end
  end
  object pnpesq: TsPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 56
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object Navigator: TsDBNavigator
      Left = 618
      Top = 13
      Width = 144
      Height = 34
      FullRepaint = False
      TabOrder = 2
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DMC5.DTS_CrediarioReceber
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object BTPrint: TsBitBtn
      Left = 491
      Top = 12
      Width = 123
      Height = 36
      Caption = 'Gerar Relat'#243'rio'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 1
      OnClick = BTPrintClick
      SkinData.SkinSection = 'BUTTON'
    end
    object Panel2: TsPanel
      Left = 2
      Top = 2
      Width = 355
      Height = 52
      Align = alLeft
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object Label2: TsLabel
        Left = 8
        Top = 8
        Width = 109
        Height = 13
        Caption = 'Vencimento Inicial:'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
      object Label4: TsLabel
        Left = 130
        Top = 8
        Width = 102
        Height = 13
        Caption = 'Vencimento Final:'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
      object Bevel1: TsBevel
        Left = 5
        Top = 4
        Width = 249
        Height = 44
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
        BoundLabel.ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
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
        BoundLabel.ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
      end
      object suiButton1: TsBitBtn
        Left = 258
        Top = 9
        Width = 91
        Height = 39
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 2
        OnClick = suiButton1Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object BTJuros: TsBitBtn
      Left = 364
      Top = 12
      Width = 123
      Height = 36
      Hint = 'Remover Encargos Financeiros (Juros).'
      Caption = 'Remover E. F.'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
        00FFFF00FFFF00FFFF00FF93655EEFD3B4F6DAB6F3D5ADF2D1A5F0CE9EEFCB97
        EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
        7F9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED4B8F4DABBF2D5B1F0
        D1AAA5BB70E0C793DEC48CEDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED7
        C0F6E0C1F2D9B8F2D4B1C0C588008201E0C79352A035259217259116519D2EB2
        B262DABB77E9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF93655FEFDAC5F7E2C7F3DCBFF2D8B7E3D0A50082010686050082010082
        010082010082010082017AA643DABB77E9BD7FEABF7FE7BC7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FF936560F0DECCF8E6CFF6E0C6F3DCBDE3D4AC008201
        008201008201008201008201008201008201008201AFB15FE9BD7FEABF7FE7BC
        7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D3FAEAD7F6E3CEF4
        DEC5E5D8B200820100820100820126931BB2BC76B1BA72529F33008201249015
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
        DAFAEEDEF7E7D4F6E2CBE5DAB80082010082010082011C9014E1CA99E0C793DE
        C48C90AF57068604E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF9E6E64F4EAE1FBF2E6F8EADCF7E6D3E6DDC00082010082010082010082
        01008201E1CA9AEDCB9CEDC796EBC58F5FC065EABF82E7BB7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3F7EADAE7E1C6E6DDC0
        E5D9B8E5D8B2E3D4ABE2D1A5E2CE9FEFCEA3EECA9CEDC7955FC065EBC288E7BC
        809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EB5F
        C065F8EBDCF7E7D3F6E2CCE5DAB8E5D8B2E3D4ACE3D0A6E2CE9EE1CA99DEC792
        EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
        F4FFFFFEFEF8F35FC065F8EEE3F8EBDAF7E6D3E7DDC000820100820100820100
        8201008201E1CA99EECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
        FF00FFB17E6BFAF6F4FFFFFFFFFEFBFEF7F006880698CB8BE9E5CCE7E2C6E6DD
        BF1C9217008201008201008201E2CE9EEFCEA1EECB9CEBC592A07264FF00FFFF
        00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFFFFCFB289D27008201
        56B04FBAD5A5BAD19E279821008201008201008201E3D0A4F0D1A9F0CFA3EDC9
        999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFFF
        FFFFBFE3BC008201008201008201008201008201008201008201008201E3D4AB
        F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
        F4FFFFFFFFFFFFFFFFFFEFF8EF87CC8400820100820100820100820100820106
        8706008201E5D8B2E5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
        FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFEFF8EFC4E5C157B554289C
        25279A2456AF4CE9E2C7008201B2C495B8AB9AA79C8BA49786846964FF00FFFF
        00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5DACFB7956856696C4095655B96655B9665
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
      ParentFont = False
      TabOrder = 3
      OnClick = BTJurosClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object MsgInformacao: TsuiMessageDialog
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
    Text = 'Hello world!'
    Left = 472
    Top = 1
  end
  object MsgErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
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
    IconType = suiStop
    Text = 'Hello world!'
    Left = 500
    Top = 1
  end
  object RemoveJuros: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
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
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 
      'Confirma Remo'#231#227'o de Encargos Financeiros (Juros) para as Contas ' +
      'Vencidas?'
    Left = 528
    Top = 1
  end
  object SPC_ATUALIZA: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'MULTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO_REMOVE_JUROS'
    Left = 556
    Top = 1
  end
  object SPC_Juros: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'MULTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIAS_VENC'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO_JUROS_DIA'
    Left = 584
    Top = 1
  end
end
