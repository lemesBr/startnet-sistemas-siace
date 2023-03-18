object FormContratosBoleto: TFormContratosBoleto
  Left = 381
  Top = 167
  BorderStyle = bsDialog
  Caption = 'Contratos Emiss'#227'o de Boletos'
  ClientHeight = 413
  ClientWidth = 839
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 839
    Height = 52
    Align = alTop
    TabOrder = 0
    object myLabel3d1: TsLabelFX
      Left = 5
      Top = 17
      Width = 637
      Height = 31
      Caption = 'emiss'#227'o de boletos de Contratos'
      Color = clBtnFace
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -25
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Panel4: TPanel
      Left = 683
      Top = 7
      Width = 149
      Height = 43
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 0
      object Label3: TLabel
        Left = 5
        Top = 6
        Width = 42
        Height = 13
        Caption = 'Layout:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 105
        Top = 6
        Width = 30
        Height = 13
        Caption = 'Qtde:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBox3: TComboBox
        Left = 6
        Top = 22
        Width = 99
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        Text = 'Boleto PFDr'#227'o'
        Items.Strings = (
          'Boleto PFDr'#227'o'
          'Carne')
      end
      object MaskEdit1: TMaskEdit
        Left = 110
        Top = 22
        Width = 33
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '1'
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 52
    Width = 839
    Height = 300
    Align = alClient
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 2
      Top = 15
      Width = 831
      Height = 154
      Align = alCustom
      DataSource = DM.dts_contratos
      GridStyle.VisualStyle = vsXPStyle
      TabOrder = 0
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONTRATO'
          Title.Alignment = taCenter
          Title.Caption = 'Contrato'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 60
        end
        item
          Expanded = False
          FieldName = 'COD_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 74
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 303
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor do Contrato'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 110
        end
        item
          Expanded = False
          FieldName = 'DATA_CONTRATO'
          Title.Alignment = taCenter
          Title.Caption = 'Data do Contrato'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 108
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 84
        end
        item
          CheckBox = True
          CheckBoxValues = 'T;F'
          Expanded = False
          FieldName = 'CHEK_BOX'
          Title.Alignment = taCenter
          Title.Caption = 'Gerar'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 43
        end>
    end
    object XDBGrid2: TXDBGrid
      Left = 3
      Top = 184
      Width = 829
      Height = 120
      DataSource = DMCOB.DTS_Titulos
      GridStyle.VisualStyle = vsXPStyle
      TabOrder = 1
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CLIENTE'
          Title.Caption = 'Cod Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_SACADO'
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 202
        end
        item
          Expanded = False
          FieldName = 'DATA_COMPRA'
          Title.Caption = 'Data Lanc'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Caption = 'Vencto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_COMPRA'
          Title.Caption = 'Valor Titulo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 79
        end
        item
          Expanded = False
          FieldName = 'VALOR_JUROS'
          Title.Caption = 'Valor Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 73
        end
        item
          Expanded = False
          FieldName = 'VALOR_ACRESCIMO'
          Title.Caption = 'V. Acrescimo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VALOR_DESCONTO'
          Title.Caption = 'Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGAR'
          Title.Caption = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Caption = 'Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Caption = 'Receber'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Caption = 'Parc'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBOLETO'
          Title.Caption = 'N'#186' Boleto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'BANCO_PORTADOR'
          Title.Caption = 'Banco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 656
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object DateEdit3: TDateEdit
      Left = 528
      Top = 112
      Width = 87
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
      Visible = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 352
    Width = 839
    Height = 61
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 205
      Top = 8
      Width = 78
      Height = 13
      Caption = 'M'#234's de Vecto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 309
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 480
      Top = 8
      Width = 89
      Height = 13
      Caption = 'Data Lac Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 616
      Top = 8
      Width = 81
      Height = 13
      Caption = 'Data Lac Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 584
      Top = 24
      Width = 7
      Height = 13
      Caption = 'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 5
      Top = 8
      Width = 80
      Height = 13
      Caption = 'Tipo Contrato:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnEditar: TsBitBtn
      Left = 723
      Top = 10
      Width = 110
      Height = 40
      Hint = 'Imprime o boleto Selecionado...'
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnEditarClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAE
        AC76736EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4
        716E6A1D19111E1B1419151117120DD6D5D3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF97
        97973A39332523192A261D2F2B22332E272D29242B2725514F4B9C9D9992938E
        B1B2ABF7F7F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C2
        C4605F6039342D7B6342996A4BBB9D8BC0BFBCA8ABA858565018130D84837FBB
        BCB7ABAAA683827F5E5B560703008D8C89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B7B9B92A2C2B695B39BCA64EF7E788DEC152CEA643B0752C5A1B0164402D8984
        7E727471514E4B3D3A38000000807C796D69642B27201D18114C4A45FFFFFFFF
        FFFFFFFFFFFFFFFFC3A38CB07321D5A237D3A839D7B443EBDE96E4CF70D8B65A
        8F471C5F2B123B1502291A12292827110D0C0A070696928E74706B2C29223C38
        2F0A0700FFFFFFFFFFFFEDEBE9673219671C009E5622B87A2DD6A541DFAF45DC
        AF3EDBC97DBFB56B764B1D3317081508030B08061411101915140906059D9995
        726F6A312C2435322A0E0B05FFFFFFFFFFFFFFFFFFFFFFFFFDFBFB622B0CCC81
        33C89536BC953C997C30624312332B1515140D0D0B0C1A17171B181719161519
        1413060302B5B2AE827F7C25211B37332C070400F4F4F4FFFFFFFFFFFFFFFFFF
        FFFFFF2C2E29151013462B15301F081710080C0B0C100E111512121B17161B17
        16191615171413151111050201CCC9C8D8D6D409050024201B3F3C38FFFFFFFF
        FFFFFFFFFFFFFFFFC8C6C56B67650D0A0A1717181413151B17181B1817151312
        1815141B1716171313181514201D1A302C263833296C665CEDE8E7B6B3B10F0B
        086D6B69FFFFFFFFFFFFFFFFFFFFFFFFCFCDCB75716E0D0A091915141A17161A
        17161B17161512121714131F1B192F2B25413C324F493C534C3C706A5CA49F97
        D6D2D0E7E3E3DFDBD9615E5DFFFFFFFFFFFFFFFFFFFFFFFFDCDBD98885820A07
        061815141713131713131C191736312A544D415F584969624F746D5B8F897FC5
        C1BEECE9EADCD8D8DEDAD9C3BFBCD7D4D2F3F3F3FFFFFFFFFFFFFFFFFFFFFFFF
        DFDEDB8A878405020219151425211E39342C4944387E75608D846DA7A08FBBB6
        AFC2BFBDCCC9C7D9D7D4E2E1DEE5E5E3625D52989792FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF2F1F0D5D2D116120B3E392F4C47395B544490897BBDB7AE
        BAB7B5CBC9C7DAD8D6E5E4E2E5E5E2E5E4E1E5E4E1F2F2F0827E7355524CFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DDDCA39E97767164BAB6B0E5
        E2E29E9C9934312FF3F2F0E7E7E4E6E5E2E6E5E3E7E6E4E8E7E5E9E9E6F0F0EE
        C3C0B93A362BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEB
        EBE9E6E6D5D1D0A3A09D6F6C666A6966A7A5A3EFEFECE9E8E6EAEAE7EBEBE8EC
        ECEAEDEDEBF0F0EEFBFBF9362F1FFBFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF464342FCFCFAEDED
        EBEEEEECF0EFEDF1F1EFF2F2F0F3F3F1FFFFFF534D40D5D5D3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        2B2620FFFFFFF2F2F0F2F3F0F3F3F1F3F3F1F3F3F1F3F3F1F6F6F4D7D6D3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF736E64D3D2CEF7F7F6F3F3F1F3F3F1F3F3F1F3F3F1F3F3F1
        F2F2F0F9F9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B3AC949086FBFCFAF3F3F1F3F3F1F3
        F3F1F3F3F1F3F3F1F2F2F0F1F1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
        EFF3F3F1F3F3F1F3F3F1F3F3F1F3F3F1F2F2F0F1F1EFFBFBFAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF3F3F1F2F2F0F3F3F1F2F2F0F2F2F0F1F1EFF1F1EFF5F5F4FCFC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F7F1F1EFF1F1EFF2F2F0F7F7F6FCFCFB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8F8F7FDFDFDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      SkinData.SkinSection = 'BUTTON'
    end
    object btnNovo: TsBitBtn
      Left = 362
      Top = 10
      Width = 111
      Height = 40
      Hint = 'Gera o Boleto Ref. ao registro selecionado...'
      Caption = '&Gerar Boletos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnNovoClick
      Glyph.Data = {
        76040000424D7604000000000000360000002800000016000000100000000100
        18000000000040040000120B0000120B00000000000000000000D7D6D59A9795
        9E9C9A9796949997959694929896949795949796949694929795949997959593
        929896949795939896949594929896949593929C9998918E8DDADADA0000F5EC
        E793898399908BE3D7D0D1C6BFF4E9E0DED3CCE7DCD4E1D6CFEADFD7E4D8D1D4
        C9C2F1E5DDDCD1CAE9DDD5DFD4CCEEE2DBDCD1CAF2E5DDADA39CDDCEC4C2C2C2
        0000FFFAF4211D1C2A2826CCC4BE393836A69F9B5C59575F5B58575452DDD4CE
        8E8986000000FFFFF847444374706D605D5BFFF7F04D4A48FFFFF90D0D0DD8CC
        C4C5C5C50000FFFCF72C2927353231D7D0CB323130A59F9C5451506C69675F5C
        5AE2DBD69893900E0E0EFFFFFF4A4846807C7A444240E9E2DD4B4847FFFFFF1B
        1B1ADCD0CBC5C5C40000FFFDF92D2A28343231E0D8D4FFFEFAFFFFFFFFFAF6FF
        FFFBFFFFFFD7D1CE9896930F0F0EFFFFFFFFFFFFFFFFFCFFFBF7FFFFFCFFFFFA
        FFFFFF1C1B1ADFD4CDC5C5C50000FFFEFB2D2B293E3C3A7B7775928F8C555352
        B6B1AF84817F101010CDC8C69C9A98181817B5B1AE0D0D0C7A7776B4B1AF403E
        3E6966654F4C4C302F2DE1D7D0C6C4C50000FFFFFD2C2B29403F3D6A68667E7C
        7A373535AAA8A6706E6C000000CECAC79D9C9A1C1A1BA8A5A3000000656462A8
        A8A51E1D1C4E4C4C2C2B29353433E2D8D3C5C5C50000FFFFFE2E2B2A413F3E6E
        6B6A82817E3B3B3AAFACA9737271000000D1CCCA9E9C9C1C1B1AACA8A7000000
        6A6867ABAAAA23222253525131302F363534E3DAD5C5C5C40000FFFFFF2D2C2B
        41403F6E6C6B8281813B3B3BAFADAC737372000000D1CECD9E9D9C1C1B1BACAA
        A8000000696967ABABAA222222545251313030363534E4DCD8C5C5C40000FFFF
        FF2E2D2B4240406F6D6C8282813C3C3BB0AEAD747373000000D2D0CF9D9D9D1C
        1C1BADABAA0000006A6A69ACABAB242322545352313030363535E6E0DAC5C5C5
        0000FFFFFF2E2C2C4241406F6E6D8382823C3C3BB0B0AE747373000000D2D2D0
        9E9E9D1C1C1CADACAB0000006B696AACABAB242323545453303130373635E8E1
        DCC5C6C50000FFFFFF302D2D4241406F6E6F8383823C3C3CB1B0B07474730000
        00D2D2D29F9E9E1C1C1CADADAC0000006B6A69ACACAB24242354545431313137
        3635EAE2DEC5C5C50000FFFFFF2F2E2D424141706E6E8383823C3C3DB2B0B074
        7474000000D3D2D29F9E9E1C1C1CADADAD0000006B6B69ACACAC242424555454
        313131373635EAE3DFC6C5C50000FFFFFF2F2E2D4241416F6E6E8383823C3C3C
        B1B0AF747473000000D2D2D19F9E9E1C1C1CADADAC0000006B6A6AACACAB2424
        23545454313131373635EAE3DFC5C5C50000FFFFFF2321213635346564627B79
        7930302FAAA8A76A696A000000CDCCCA9797960E0E0FA6A4A3000000605F5FA5
        A4A41615154848472323232A2A29E7E1DCC4C4C30000FFFCFAA7A4A1B0ADABC3
        C0BECBC8C7AEACABDDDAD8C5C3C18A8A8AECE7E5D6D4D1A1A09EDDDAD8898988
        C1BFBEDCDAD8A4A2A2B9B6B5AAA8A7ABA8A6EDE5E1D7D6D70000}
      SkinData.SkinSection = 'BUTTON'
    end
    object ComboBox1: TComboBox
      Left = 202
      Top = 28
      Width = 89
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Janeiro'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object ComboBox2: TComboBox
      Left = 306
      Top = 28
      Width = 52
      Height = 21
      ItemHeight = 13
      ItemIndex = 4
      TabOrder = 3
      Text = '2014'
      Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object DateEdit1: TsDateEdit
      Left = 480
      Top = 24
      Width = 89
      Height = 21
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
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
      Left = 616
      Top = 24
      Width = 89
      Height = 21
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      Text = '  /  /    '
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
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 4
      Top = 27
      Width = 193
      Height = 21
      DataField = 'PLANO_CONTRATO'
      DataSource = DM.dts_contratos
      KeyField = 'ID_PLANO'
      ListField = 'DESCRICAO'
      ListSource = DM1.DTS_CONT_PLANO
      TabOrder = 6
      OnExit = DBLookupComboBox1Exit
    end
    object Edit2: TEdit
      Left = 120
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 7
      Visible = False
    end
  end
  object SPC_CREDIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_SACADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_GRAFICA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_OS'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO'
    Left = 28
    Top = 36
  end
  object gbTitulo1: TRLBTitulo
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = FDNao
    EspecieDocumento = edDuplicataMercantil
    EmissaoBoleto = ebClienteEmite
    LayoutNN = lnN11
    Versao = '1.1.5'
    Left = 513
    Top = 24
  end
end
