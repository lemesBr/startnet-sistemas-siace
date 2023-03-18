object FrmUltimaCompra: TFrmUltimaCompra
  Left = 299
  Top = 246
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #218'ltima Compra / Venda'
  ClientHeight = 358
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object EdtCodPro: TAlignEdit
      Left = 8
      Top = 14
      Width = 65
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
    object EdtNomePro: TEdit
      Left = 80
      Top = 14
      Width = 505
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 599
    Height = 290
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object GroupBox7: TGroupBox
      Left = 8
      Top = 8
      Width = 297
      Height = 241
      Caption = 'Compras'
      TabOrder = 0
      object Label8: TLabel
        Left = 8
        Top = 40
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data Emiss'#227'o:'
      end
      object Label9: TLabel
        Left = 8
        Top = 72
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fornecedor:'
      end
      object Label19: TLabel
        Left = 8
        Top = 88
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota Fiscal:'
      end
      object Label20: TLabel
        Left = 8
        Top = 104
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Quant.:'
      end
      object Label21: TLabel
        Left = 8
        Top = 120
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Unit'#225'rio:'
      end
      object Label22: TLabel
        Left = 8
        Top = 136
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Frete:'
      end
      object Label42: TLabel
        Left = 8
        Top = 200
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ICMS:'
      end
      object Label43: TLabel
        Left = 8
        Top = 216
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'IPI:'
      end
      object LDataEmissao: TLabel
        Left = 88
        Top = 40
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LDataEmissao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LFornec: TLabel
        Left = 88
        Top = 72
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LFornec'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LNF: TLabel
        Left = 88
        Top = 88
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LNF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LQuantCompra: TLabel
        Left = 88
        Top = 104
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LQuantCompra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LUnitCompra: TLabel
        Left = 88
        Top = 120
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LUnitCompra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LFrete: TLabel
        Left = 88
        Top = 136
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LFrete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LICMS: TLabel
        Left = 88
        Top = 200
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LIPI: TLabel
        Left = 88
        Top = 216
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LIPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label56: TLabel
        Left = 8
        Top = 152
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vl.Desconto:'
      end
      object Label57: TLabel
        Left = 8
        Top = 168
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vl.Acr'#233'scimo:'
      end
      object LVlDesconto: TLabel
        Left = 88
        Top = 152
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LVlDesconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LVlAcrescimo: TLabel
        Left = 88
        Top = 168
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LPercDesconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label58: TLabel
        Left = 8
        Top = 56
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data Entrada:'
      end
      object LDataEntrada: TLabel
        Left = 88
        Top = 56
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LDataEntrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label68: TLabel
        Left = 8
        Top = 184
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vl.Sub.Trib.:'
      end
      object LVlSubTrib: TLabel
        Left = 88
        Top = 184
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LVlSubTrib'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 8
        Top = 24
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Empresa:'
      end
      object LEmpresa: TLabel
        Left = 88
        Top = 24
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'LEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox8: TGroupBox
      Left = 320
      Top = 8
      Width = 265
      Height = 241
      Caption = #218'ltima Venda'
      TabOrder = 1
      object Label44: TLabel
        Left = 8
        Top = 24
        Width = 81
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data:'
      end
      object Label45: TLabel
        Left = 8
        Top = 40
        Width = 81
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
      end
      object Label46: TLabel
        Left = 8
        Top = 56
        Width = 81
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
      end
      object Label47: TLabel
        Left = 8
        Top = 88
        Width = 81
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Quant.:'
      end
      object Label48: TLabel
        Left = 8
        Top = 104
        Width = 81
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Unit'#225'rio:'
      end
      object LDataVenda: TLabel
        Left = 96
        Top = 24
        Width = 129
        Height = 13
        AutoSize = False
        Caption = 'LDataVenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LCliente: TLabel
        Left = 96
        Top = 40
        Width = 161
        Height = 13
        AutoSize = False
        Caption = 'LCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LQuantVenda: TLabel
        Left = 96
        Top = 88
        Width = 129
        Height = 13
        AutoSize = False
        Caption = 'LQuantVenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LUnitVenda: TLabel
        Left = 96
        Top = 104
        Width = 129
        Height = 13
        AutoSize = False
        Caption = 'LUnitVenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 8
        Top = 56
        Width = 81
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cupom Fiscal:'
      end
      object Label90: TLabel
        Left = 8
        Top = 72
        Width = 81
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nota Fiscal:'
      end
      object LCOO: TLabel
        Left = 96
        Top = 56
        Width = 129
        Height = 13
        AutoSize = False
        Caption = 'LCOO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LNFSaida: TLabel
        Left = 96
        Top = 72
        Width = 129
        Height = 13
        AutoSize = False
        Caption = 'LNF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox9: TGroupBox
      Left = 8
      Top = 248
      Width = 297
      Height = 33
      TabOrder = 2
      object BtnPrimeiro: TSpeedButton
        Left = 7
        Top = 8
        Width = 65
        Height = 22
        Hint = 'Primeira Compra'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130F0000130F00000001000000010000000094000000
          9C0008009C0000089C0008089C0010189C000000A5000800A5000008A5000808
          A5001010A5001018A5000000AD000008AD001008AD000010AD000018AD000000
          B5000008B5000010B5003131B5003939B5000000BD000008BD000010BD000810
          BD000018BD000818BD001018BD001021BD003139BD004242BD00424ABD004A4A
          BD00525ABD006363BD00736BBD006373BD000008C6000010C6000810C6000018
          C6000021C6000821C6000029C6001031C6005A5AC6006363C6006B63C6006373
          C6000010CE000810CE000018CE000021CE000029CE002129CE002929CE00737B
          CE007384CE008484CE000018D6000818D6000021D6000829D6001029D6001829
          D6002929D6000831D6001031D6001831D6007B84D6008484D6008C84D600848C
          D6000018DE000021DE000029DE001829DE001031DE002931DE002142DE002942
          DE003152DE003952DE00395ADE000018E7000021E7000821E7001029E7000831
          E7001031E7001831E7002131E7001039E7001042E7003142E7000021EF000029
          EF000831EF001031EF001839EF001042EF001842EF002142EF00214AEF00314A
          EF003152EF00425AEF00527BEF00BDC6EF000029F7000839F7001839F7001842
          F7002142F700314AF700425AF700426BF7004A73F700B5CEF700C6D6F700BDDE
          F700D6DEF700FF00FF004A6BFF005273FF00C6D6FF00CED6FF00DED6FF00CEDE
          FF00D6DEFF00DEDEFF00DEE7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B7B7B7B
          7B751B7B7B7B7B7B7B7B7B7B7B7B7B7B752A297B7B7B7B7B7B7B7B7B7B7B7B75
          1A40277B7B7B7B7B7B7B7B7B7B7B752A44341C7B7B7B7B7B7B7B7B7B7B752A6C
          3C3C2718131D212020307B7B752A6C5A35341A2713080308150D7B752A6C564C
          3E342927120F0608010D752A7D68614B3E342918130D0407150D752A6C5E5657
          35342918120D0806010D7B752A75573E3E342918130D0809010D7B7B752A6C44
          3E3429180D0F0907150D7B7B7B751A6C3E352918191D202020247B7B7B7B752A
          3F3D1B7B7B7B7B7B7B7B7B7B7B7B7B751A352A7B7B7B7B7B7B7B7B7B7B7B7B7B
          752A2A7B7B7B7B7B7B7B7B7B7B7B7B7B7B75197B7B7B7B7B7B7B}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnPrimeiroClick
      end
      object BtnAnterior: TSpeedButton
        Left = 78
        Top = 8
        Width = 65
        Height = 22
        Hint = 'Compra Anterior'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B00000001000000010000003100000042
          0000004A000000520000006B0000004A080000630800006B0800007B0800008C
          080000940800009C080000A50800006B10000873100000A51000089C180000A5
          180008A5180008AD180008842100109C210008A5210010AD2100108C290008A5
          290008AD290008B5290010A5310018A5310021A5310008AD310010AD3100189C
          390010AD390010A5420010B5420029A54A0010AD4A0018B54A0021BD4A0042BD
          4A0018B5520021B5520039B5520029BD520042BD52004AC6520029BD5A0039BD
          5A0042BD5A0042C65A0031BD630039BD630042BD63004ABD630039BD6B004ABD
          6B0042C673004AC6730052C673004AC67B0052C67B0073D67B0063CE8C006BCE
          8C006BD68C0084D68C0073D694007BDE9C0084DEA5008CDEAD0094DEB50094E7
          B5009CE7B500ADE7B500B5E7B500A5E7BD00B5E7BD00A5E7C600ADE7C600B5EF
          C600BDEFCE00BDEFD600C6F7DE00D6F7DE00D6F7E700E7F7EF00EFFFEF00F7FF
          F700FF00FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A5A5A5A00
          01030301005A5A5A5A5A5A5A5A0101080B0B0B0B0802025A5A5A5A5A05060F0C
          0B0B0B0B0C0C07005A5A5A050D16120B0B0B0B0B0B0B0C07025A5A05201A120F
          2F5755170B0B0B0C025A0314241C1029595C430F0B0B0B0C0801032327202959
          5C3F0B0B0B0B0B0C0A010D2B2B44585C59514E4B4B4B4B0B0B020E3830525C5C
          5C5C5C5C5C5C5C0B0B030E3E3A304D5C59463232323232120B010E39462B2B48
          5C573C202020191209015A1E50412627475C592D1C191613075A5A1E3C53402B
          2A48502B22202015075A5A5A1541564A3E35303434281C065A5A5A5A5A373748
          534F47453D21215A5A5A5A5A5A5A5A1E2C363625185A5A5A5A5A}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnPrimeiroClick
      end
      object BtnProximo: TSpeedButton
        Left = 150
        Top = 8
        Width = 65
        Height = 22
        Hint = 'Pr'#243'xima Compra'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B00000001000000010000003100000042
          0000004A000000520000006B0000004A080000630800006B0800007B0800008C
          080000940800009C080000A50800006B10000873100000A51000089C180000A5
          180008A5180008AD180008842100109C210008A5210010AD2100108C290008A5
          290008AD290010AD290008B5290010A5310018A5310021A5310010AD310018AD
          3100189C390010AD390010A5420010B5420029A54A0010AD4A0018B54A0021BD
          4A0039BD4A0042BD4A0018B5520021B5520039B552004AC6520029BD5A0052C6
          5A0031BD630039BD630042BD63004ABD630039BD6B004ABD6B0042C673004AC6
          730052C673004AC67B0052C67B0052CE7B0073D67B0052CE840063CE8C006BCE
          8C006BD68C0084D68C007BD694007BDE9C0084DE9C008CDE9C0084DEA50094DE
          A50094DEB50094E7B5009CE7B500ADE7B500A5E7C600ADE7C600B5EFC600BDEF
          C600BDEFCE00BDEFD600C6F7DE00D6F7DE00D6F7E700E7F7EF00EFFFEF00F7FF
          F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A5A5A5A00
          01030301005A5A5A5A5A5A5A5A0101080B0B0B0B0802025A5A5A5A5A05060F0C
          0B0B0B0B0C0C07005A5A5A050D16120B0B0B0B0B0B0B0C07025A5A05201B120F
          1755572F0B0B0B0C025A0314251B100B10435B592B0B0B0C0801032428200F0B
          0B0B3E5B592B0B0C0A010D2D2D525150505050595B58310B0B020E36305B5B5B
          5B5B5B5B5B5B4D0B0B030E3C383C3F3F3F3944595B4921120B010E37482D282D
          2D3C575B4620191209015A1F4F41272836595B4620191613075A5A1F3A53402D
          2D4F4A2823201B15075A5A5A1541564C3C33303232291D065A5A5A5A5A35354A
          534E4A453B22225A5A5A5A5A5A5A5A1F2E343426185A5A5A5A5A}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnPrimeiroClick
      end
      object BtnUltimo: TSpeedButton
        Left = 222
        Top = 8
        Width = 65
        Height = 22
        Hint = #218'ltima Compra'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130F0000130F00000001000000010000000094000000
          9C0008009C0000089C0008089C0010189C000000A5000800A5000008A5000808
          A5001010A5001018A5000000AD000008AD001008AD000010AD000018AD000000
          B5000008B5000010B5003131B5003939B5000000BD000008BD000010BD000810
          BD000018BD000818BD001018BD001021BD003139BD004242BD00424ABD004A4A
          BD00525ABD006363BD00736BBD006373BD000008C6000010C6000810C6000018
          C6000021C6000821C6000029C6001031C6005A5AC6006363C6006B63C6006373
          C6000010CE000810CE000018CE000021CE000029CE002129CE002929CE00737B
          CE007384CE008484CE000018D6000818D6000021D6000829D6001029D6001829
          D6002929D6000831D6001031D6001831D6007B84D6008484D6008C84D600848C
          D6000018DE000021DE000029DE001829DE001031DE002931DE002142DE002942
          DE003152DE003952DE00395ADE000018E7000021E7000821E7001029E7000831
          E7001031E7001831E7002131E7001039E7001042E7003142E7000021EF000029
          EF000831EF001031EF001839EF001042EF001842EF002142EF00214AEF00314A
          EF003152EF00425AEF00527BEF00BDC6EF000029F7000839F7001839F7001842
          F7002142F700314AF700425AF700426BF7004A73F700B5CEF700C6D6F700BDDE
          F700D6DEF700FF00FF004A6BFF005273FF00C6D6FF00CED6FF00DED6FF00CEDE
          FF00D6DEFF00DEDEFF00DEE7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B7B7B7B
          7B1B757B7B7B7B7B7B7B7B7B7B7B7B7B7B292A757B7B7B7B7B7B7B7B7B7B7B7B
          7B27401A757B7B7B7B7B7B7B7B7B7B7B7B1C34442A757B7B7B7B302020211D13
          18273C3C6C2A757B7B7B0D1508030813271A34355A6C2A757B7B0D0108060F12
          2729343E4C566C2A757B0D1507040D131829343E4B61687D2A750D0106080D12
          1829343557565E6C2A750D0109080D131829343E3E57752A757B0D1507090F0D
          1829343E446C2A757B7B242020201D191829353E6C1A757B7B7B7B7B7B7B7B7B
          7B1B3D3F2A757B7B7B7B7B7B7B7B7B7B7B2A351A757B7B7B7B7B7B7B7B7B7B7B
          7B2A2A757B7B7B7B7B7B7B7B7B7B7B7B7B19757B7B7B7B7B7B7B}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnPrimeiroClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 339
    Width = 599
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'ESC p/sair'
  end
  object QCompras: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'SELECT I.*, E.*, F.NOME, EMP.RAZAO_SOCIAL'
      'FROM NOTASFISCAIS_ITENS I'
      'INNER JOIN NOTASFISCAIS E'
      'ON (I.CODIGO_NOTA = E.CODIGO_NOTA)'
      'INNER JOIN FORNECEDORES F'
      'ON (E.COD_FORNECEDOR = F.CODIGO)'
      'INNER JOIN EMPRESA EMP'
      'ON (I.COD_EMPRESA = EMP.CODIGO)'
      'WHERE I.CODIGO_PRODUTO = :CODPRO')
    Left = 368
    Top = 224
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprasCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Origin = 'CODIGO_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprasCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object QComprasCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 13
    end
    object QComprasCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      Required = True
    end
    object QComprasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object QComprasNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object QComprasCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object QComprasCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object QComprasDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object QComprasQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QComprasVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Precision = 18
    end
    object QComprasVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Origin = 'VALOR_DESC'
      Precision = 18
      Size = 2
    end
    object QComprasTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Precision = 18
      Size = 2
    end
    object QComprasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QComprasBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object QComprasPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object QComprasPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QComprasPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object QComprasPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 2
    end
    object QComprasDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DATA_VALIDADE'
    end
    object QComprasDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object QComprasFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QComprasQUANT_FRACIONADA: TBCDField
      FieldName = 'QUANT_FRACIONADA'
      Origin = 'QUANT_FRACIONADA'
      Precision = 18
    end
    object QComprasLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object QComprasMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Origin = 'MARG_LUCRO'
      Precision = 18
      Size = 2
    end
    object QComprasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QComprasBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object QComprasALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Origin = 'ALIC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object QComprasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object QComprasIMOBILZ: TStringField
      FieldName = 'IMOBILZ'
      Origin = 'IMOBILZ'
      Size = 1
    end
    object QComprasBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QComprasPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object QComprasBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QComprasPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object QComprasBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QComprasUN_FRACAO: TStringField
      FieldName = 'UN_FRACAO'
      Origin = 'UN_FRACAO'
      Size = 5
    end
    object QComprasITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object QComprasCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object QComprasNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object QComprasICMS_RETIDO: TStringField
      FieldName = 'ICMS_RETIDO'
      Origin = 'ICMS_RETIDO'
      Size = 1
    end
    object QComprasSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object QComprasDESCONTO_P: TFMTBCDField
      FieldName = 'DESCONTO_P'
      Origin = 'DESCONTO_P'
      Precision = 18
      Size = 2
    end
    object QComprasICMS_REDUCAO: TFMTBCDField
      FieldName = 'ICMS_REDUCAO'
      Origin = 'ICMS_REDUCAO'
      Precision = 18
      Size = 2
    end
    object QComprasICMS_VALORRETIDO: TFMTBCDField
      FieldName = 'ICMS_VALORRETIDO'
      Origin = 'ICMS_VALORRETIDO'
      Precision = 18
      Size = 2
    end
    object QComprasICMS_ISENTO: TFMTBCDField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object QComprasICMS_NAOTRIBUTADO: TFMTBCDField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Origin = 'ICMS_NAOTRIBUTADO'
      Precision = 18
      Size = 2
    end
    object QComprasIPI_TIPO: TStringField
      FieldName = 'IPI_TIPO'
      Origin = 'IPI_TIPO'
      Size = 25
    end
    object QComprasTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object QComprasFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object QComprasOUTRAS: TFMTBCDField
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
      Precision = 18
      Size = 2
    end
    object QComprasSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 18
      Size = 2
    end
    object QComprasCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Origin = 'CLASSIFICACAO_FISCAL'
      Size = 2
    end
    object QComprasSUB_PRODUTOS: TFMTBCDField
      FieldName = 'SUB_PRODUTOS'
      Origin = 'SUB_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object QComprasITEM_ESPECIAL_VALOR: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Origin = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 3
    end
    object QComprasICMS_OUTRAS: TFMTBCDField
      FieldName = 'ICMS_OUTRAS'
      Origin = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object QComprasALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
      Origin = 'ALTERA_ITEM'
    end
    object QComprasCREDITO_ICMS: TFMTBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object QComprasCREDITO_ICMS_BASE: TFMTBCDField
      FieldName = 'CREDITO_ICMS_BASE'
      Origin = 'CREDITO_ICMS_BASE'
      Precision = 18
      Size = 3
    end
    object QComprasPMARGEM: TSingleField
      FieldName = 'PMARGEM'
      Origin = 'PMARGEM'
    end
    object QComprasPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object QComprasCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Origin = 'CODLANCAMENTO'
      Size = 50
    end
    object QComprasCODIGO_NOTA_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_NOTA_1'
      Origin = 'CODIGO_NOTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasNUM_NOTA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_NOTA_1'
      Origin = 'NUM_NOTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasSERIE_NF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERIE_NF'
      Origin = 'SERIE_NF'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QComprasCFOP_NOTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_NOTA'
      Origin = 'CFOP_NOTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QComprasDATA_EMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasCOD_FORNECEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasFORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QComprasDATA_VENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasTOTAL_NOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object QComprasIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE'
      Origin = 'IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasUSUARIO_CADASTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasOBSERVACOES: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasMES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QComprasANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QComprasCHAVE_NFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE_NFE'
      Origin = 'CHAVE_NFE'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object QComprasPROTOCOLO_NFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROTOCOLO_NFE'
      Origin = 'PROTOCOLO_NFE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QComprasBASE_CALCULO_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'BASE_CALCULO_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_ICMS_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS_1'
      Origin = 'VALOR_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasBASE_CALC_ICMS_SUBST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_CALC_ICMS_SUBST'
      Origin = 'BASE_CALC_ICMS_SUBST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_ICMS_SUBST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'VALOR_ICMS_SUBST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_FRETE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_SEGURO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_DESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_OUTRAS_DESPESAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      Origin = 'VALOR_OUTRAS_DESPESAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_IPI_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IPI_1'
      Origin = 'VALOR_IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_TOTAL_PRODUTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'VALOR_TOTAL_PRODUTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_TOTAL_ITENS_NOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      Origin = 'VALOR_TOTAL_ITENS_NOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVLR_ICMS_GARANTIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_ICMS_GARANTIDO'
      Origin = 'VLR_ICMS_GARANTIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprascod_pagto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_pagto'
      Origin = '"cod_pagto"'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasTP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TP'
      Origin = 'TP'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QComprasENDERECO_CLI_FORN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO_CLI_FORN'
      Origin = 'ENDERECO_CLI_FORN'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object QComprasEND_NUM_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_NUM_CLIENTE'
      Origin = 'END_NUM_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasCOD_IBGE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object QComprasCEP_CLIENTE_FORN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP_CLIENTE_FORN'
      Origin = 'CEP_CLIENTE_FORN'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object QComprasBAIRRO_CLIENTE_FORN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Origin = 'BAIRRO_CLIENTE_FORN'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QComprasTIPO_PESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QComprasTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
    object QComprasCIDADE_CLIENTE_FORN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE_CLIENTE_FORN'
      Origin = 'CIDADE_CLIENTE_FORN'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QComprasUF_CLIENTE_FORN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_CLIENTE_FORN'
      Origin = 'UF_CLIENTE_FORN'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QComprasDESC_PAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_PAGTO'
      Origin = 'DESC_PAGTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QComprasVALOR_AVISTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_PRAZO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QCompraspagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pagamento'
      Origin = '"pagamento"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QComprasMODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QComprasEMITENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMITENTE'
      Origin = 'EMITENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QComprasVALOR_COFINS_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COFINS_1'
      Origin = 'VALOR_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_PIS_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PIS_1'
      Origin = 'VALOR_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_PIS_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PIS_ST'
      Origin = 'VALOR_PIS_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasVALOR_COFIS_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COFIS_ST'
      Origin = 'VALOR_COFIS_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasPERC_ICMS_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMS_1'
      Origin = 'PERC_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasCST_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_1'
      Origin = 'CST'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QComprasSUB_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUB_SERIE'
      Origin = 'SUB_SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QComprasTRANSP_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_NOME'
      Origin = 'TRANSP_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasTRANSP_PLACA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_PLACA'
      Origin = 'TRANSP_PLACA'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QComprasTRANSP_PLACAUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_PLACAUF'
      Origin = 'TRANSP_PLACAUF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QComprasTRANSP_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_IE'
      Origin = 'TRANSP_IE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QComprasTRANSP_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_CNPJ'
      Origin = 'TRANSP_CNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QComprasTRANSP_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_ENDERECO'
      Origin = 'TRANSP_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QComprasTRANSP_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_CIDADE'
      Origin = 'TRANSP_CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QComprasTRANSP_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_UF'
      Origin = 'TRANSP_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QComprasTRANSP_QTDE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_QTDE'
      Origin = 'TRANSP_QTDE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasTRANSP_ESPECIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_ESPECIE'
      Origin = 'TRANSP_ESPECIE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasTRANSP_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_MARCA'
      Origin = 'TRANSP_MARCA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasTRANSP_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_NUMERO'
      Origin = 'TRANSP_NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasTRANSP_PESOBRUTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_PESOBRUTO'
      Origin = 'TRANSP_PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasTRANSP_PESOLIQUIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_PESOLIQUIDO'
      Origin = 'TRANSP_PESOLIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasOBS1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS1'
      Origin = 'OBS1'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasOBS2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS2'
      Origin = 'OBS2'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasOBS3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS3'
      Origin = 'OBS3'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasOBS4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS4'
      Origin = 'OBS4'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasOBS5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS5'
      Origin = 'OBS5'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasOBS6: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS6'
      Origin = 'OBS6'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasOBS7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS7'
      Origin = 'OBS7'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasOBS8: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS8'
      Origin = 'OBS8'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QComprasSITUACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasITENS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITENS'
      Origin = 'ITENS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasTIPO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_1'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QComprasNOTA_FISCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTA_FISCAL'
      Origin = 'NOTA_FISCAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QComprasICMS_ISENTO_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_ISENTO_1'
      Origin = 'ICMS_ISENTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasICMS_OUTRAS_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_OUTRAS_1'
      Origin = 'ICMS_OUTRAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasDESCONTO_INCIDENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_INCIDENTE'
      Origin = 'DESCONTO_INCIDENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasITEM_FRETE_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_FRETE_VALOR'
      Origin = 'ITEM_FRETE_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_FRETE_BASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_FRETE_BASE'
      Origin = 'ITEM_FRETE_BASE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_FRETE_ALIQUOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Origin = 'ITEM_FRETE_ALIQUOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_FRETE_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_FRETE_ICMS'
      Origin = 'ITEM_FRETE_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_SEGURO_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SEGURO_VALOR'
      Origin = 'ITEM_SEGURO_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_SEGURO_BASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SEGURO_BASE'
      Origin = 'ITEM_SEGURO_BASE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_SEGURO_ALIQUOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Origin = 'ITEM_SEGURO_ALIQUOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_SEGURO_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SEGURO_ICMS'
      Origin = 'ITEM_SEGURO_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_PIS_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_PIS_VALOR'
      Origin = 'ITEM_PIS_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_PIS_BASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_PIS_BASE'
      Origin = 'ITEM_PIS_BASE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_PIS_ALIQUOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Origin = 'ITEM_PIS_ALIQUOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_PIS_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_PIS_ICMS'
      Origin = 'ITEM_PIS_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_COMPLEMENTO_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Origin = 'ITEM_COMPLEMENTO_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_COMPLEMENTO_BASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Origin = 'ITEM_COMPLEMENTO_BASE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Origin = 'ITEM_COMPLEMENTO_ALIQUOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_COMPLEMENTO_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Origin = 'ITEM_COMPLEMENTO_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_SERVICO_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SERVICO_VALOR'
      Origin = 'ITEM_SERVICO_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_SERVICO_BASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SERVICO_BASE'
      Origin = 'ITEM_SERVICO_BASE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_SERVICO_ALIQUOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Origin = 'ITEM_SERVICO_ALIQUOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_SERVICO_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SERVICO_ICMS'
      Origin = 'ITEM_SERVICO_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_OUTRAS_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_OUTRAS_VALOR'
      Origin = 'ITEM_OUTRAS_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_OUTRAS_BASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_OUTRAS_BASE'
      Origin = 'ITEM_OUTRAS_BASE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_OUTRAS_ALIQUOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Origin = 'ITEM_OUTRAS_ALIQUOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_OUTRAS_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_OUTRAS_ICMS'
      Origin = 'ITEM_OUTRAS_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_ESPECIAL_TOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Origin = 'ITEM_ESPECIAL_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasITEM_ESPECIAL_VALOR_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_ESPECIAL_VALOR_1'
      Origin = 'ITEM_ESPECIAL_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasBASEICMS_PRODUTOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BASEICMS_PRODUTOS'
      Origin = 'BASEICMS_PRODUTOS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasCONF_ITEM_ESPECIAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_ITEM_ESPECIAL'
      Origin = 'CONF_ITEM_ESPECIAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCREDITO_ICMS_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CREDITO_ICMS_1'
      Origin = 'CREDITO_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasOPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QComprasINTEGRACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INTEGRACAO'
      Origin = 'INTEGRACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasAPROVEITA_CREDITO_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Origin = 'APROVEITA_CREDITO_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QComprasCOD_EMPRESA_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_EMPRESA_1'
      Origin = 'COD_EMPRESA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasICMSRETIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSRETIDO'
      Origin = 'ICMSRETIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasPERC_ICMSRETIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMSRETIDO'
      Origin = 'PERC_ICMSRETIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasESPECIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QComprasCODREMETENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODREMETENTE'
      Origin = 'CODREMETENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasREMETENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMETENTE'
      Origin = 'REMETENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QComprasVALOR_MERCADORIAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_MERCADORIAS'
      Origin = 'VALOR_MERCADORIAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasCONF_BASEICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_BASEICMS'
      Origin = 'CONF_BASEICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_VALORICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_VALORICMS'
      Origin = 'CONF_VALORICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_BASESUB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_BASESUB'
      Origin = 'CONF_BASESUB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_VALORSUB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_VALORSUB'
      Origin = 'CONF_VALORSUB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_FRETE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_FRETE'
      Origin = 'CONF_FRETE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_SEGURO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_SEGURO'
      Origin = 'CONF_SEGURO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_OUTRAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_OUTRAS'
      Origin = 'CONF_OUTRAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_IPI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_IPI'
      Origin = 'CONF_IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_DESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_DESCONTO'
      Origin = 'CONF_DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_TOTALPRODUTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_TOTALPRODUTOS'
      Origin = 'CONF_TOTALPRODUTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_TOTALNOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_TOTALNOTA'
      Origin = 'CONF_TOTALNOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_ICMSRETIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_ICMSRETIDO'
      Origin = 'CONF_ICMSRETIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONF_ICMSREDITO_PERC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_ICMSREDITO_PERC'
      Origin = 'CONF_ICMSREDITO_PERC'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QComprasCONFI_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONFI_PIS'
      Origin = 'CONFI_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasCONF_COFINS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONF_COFINS'
      Origin = 'CONF_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QComprasCOD_CENTRO_CUSTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasCOD_IMOVEL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QComprasRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
  end
  object QUltimaVenda: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'SELECT I.QUANTIDADE, I.PRECO_UNITARIO, V.DATA_PEDIDO, V.N_CUPOM,' +
        ' V.NUM_NOTA, C.NOME_RS'
      'FROM PEDIDOS_ITENS I'
      'INNER JOIN PEDIDOS V'
      'ON (I.CODIGO_ID = V.CODIGO)'
      'INNER JOIN CLIENTES C'
      'ON (V.CODIGO_CLIENTE = C.CODIGO)'
      
        'WHERE I.CODIGO_ID = :CODVEN AND I.CODIGO_PROD = :CODPRO AND I.CO' +
        'D_EMPRESA = :CODEMP AND QNT_DEV IS NULL ;')
    Left = 440
    Top = 224
    ParamData = <
      item
        Name = 'CODVEN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QUltimaVendaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QUltimaVendaPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
    object QUltimaVendaDATA_PEDIDO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QUltimaVendaN_CUPOM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_CUPOM'
      Origin = 'N_CUPOM'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
    object QUltimaVendaNUM_NOTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QUltimaVendaNOME_RS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
  end
end
