object frmcontaspagar_ficha: Tfrmcontaspagar_ficha
  Left = 516
  Top = 202
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CONTAS A PAGAR | Ficha de Lan'#231'amento'
  ClientHeight = 410
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 209
    Width = 614
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 358
    Width = 614
    Height = 3
    Align = alBottom
  end
  object Panel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 209
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 156
    object Label1: TLabel
      Left = 11
      Top = 11
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Emiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 11
      Top = 35
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 11
      Top = 59
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Conta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 11
      Top = 128
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 11
      Top = 152
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 11
      Top = 176
      Width = 85
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 232
      Top = 176
      Width = 131
      Height = 13
      Caption = 'Quantidade de Presta'#231#245'es:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label56: TLabel
      Left = 12
      Top = 80
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'Cento de Custos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label57: TLabel
      Left = 60
      Top = 104
      Width = 36
      Height = 13
      AutoSize = False
      BiDiMode = bdRightToLeftNoAlign
      Caption = 'Im'#243'vel:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Transparent = True
    end
    object DateEdit1: TDateEdit
      Left = 100
      Top = 7
      Width = 97
      Height = 21
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      TabOrder = 0
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object efornecedor: TEdit
      Left = 100
      Top = 31
      Width = 71
      Height = 21
      TabOrder = 1
      OnEnter = Edit5Enter
      OnExit = efornecedorExit
      OnKeyPress = DateEdit1KeyPress
    end
    object blocfornecedor: TBitBtn
      Left = 172
      Top = 31
      Width = 25
      Height = 21
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
      TabOrder = 2
      OnClick = blocfornecedorClick
    end
    object enomefornecedor: TEdit
      Left = 198
      Top = 31
      Width = 391
      Height = 21
      TabStop = False
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
    end
    object econta: TEdit
      Left = 100
      Top = 55
      Width = 71
      Height = 21
      TabOrder = 3
      OnEnter = Edit5Enter
      OnExit = econtaExit
      OnKeyDown = econtaKeyDown
      OnKeyPress = DateEdit1KeyPress
    end
    object blocconta: TBitBtn
      Left = 172
      Top = 55
      Width = 25
      Height = 21
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
      TabOrder = 5
      OnClick = bloccontaClick
    end
    object enomeconta: TEdit
      Left = 198
      Top = 55
      Width = 391
      Height = 21
      TabStop = False
      Color = clBtnFace
      Enabled = False
      TabOrder = 10
    end
    object Edit5: TEdit
      Left = 100
      Top = 124
      Width = 93
      Height = 21
      MaxLength = 20
      TabOrder = 8
      OnEnter = Edit5Enter
      OnExit = Edit5Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object Edit6: TEdit
      Left = 100
      Top = 148
      Width = 488
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 60
      TabOrder = 11
      OnEnter = Edit5Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object RVALOR: TRxCalcEdit
      Left = 100
      Top = 172
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909088878786858586868687878688
        8887888787878787878786868585868584969696FFFFFFFFFFFFFFFFFFFFFFFF
        878787C1C1C0BBBBBBBBBBBBBBBBBABBBBBABBBBBABBBBBABBBBBABBBBBAC1C1
        C08A8A89FFFFFFFFFFFFFFFFFFFFFFFF8B8B8AFEFEFEEAEAEAEAEAEAE8E8E8E7
        E7E7E6E6E6E6E6E6E5E5E5E5E5E5FEFEFE8D8C8BFFFFFFFFFFFFFFFFFFFFFFFF
        919090FEFEFEB3B3B3939393E6E6E6B1B1B1929292E2E2E2AFAFAF909090FAFA
        FA919190FFFFFFFFFFFFFFFFFFFFFFFF949494FEFEFEE7E7E7E6E6E6E4E4E4E2
        E2E2E1E1E1DFDFDFDEDEDEDBDBDBFEFEFE949494FFFFFFFFFFFFFFFFFFFFFFFF
        999998FEFEFEB0B0B0909090E1E1E1ACACAC8E8E8EDBDBDBA8A8A88C8C8CFAFA
        FA999898FFFFFFFFFFFFFFFFFFFFFFFF9D9C9CFEFEFEE2E2E2E0E0E0DBDBDBDA
        DADAD6D6D6D2D2D2D2D2D2D0D0D0FEFEFE9D9C9BFFFFFFFFFFFFFFFFFFFFFFFF
        9F9F9FFEFEFEACACAC8D8D8DD7D7D7A4A4A4898989CDCDCD7273E75157DAFAFA
        FA9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FBFBFBD9D9D9D6D6D6D1D1D1CD
        CDCDC8C8C8C4C4C4C1C1C1BEBEBEFEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
        A2A2A2FEFEFEAF7A55C28C66C48E67C58F68C7916AC9936BC9946DAF7A55FEFE
        FEA09F9EFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3FEFEFEAF7A55C08A63C28C65C4
        8E66C58F68C7916AC9936BAF7A55FEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
        A2A2A2FEFEFEA6714CA6714CA6714CA6714CA6714CA6714CA6714CA6714CFEFE
        FE9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA2A2A2FFFFFFFFFFFFFFFFFFFFFFFF
        B2B2B2A8A8A8A7A7A7AAAAAAABABABACACACABABABAAAAAAA7A7A7A3A3A3A2A2
        A2B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      TabOrder = 12
      OnEnter = Edit5Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object Edit7: TEdit
      Left = 372
      Top = 172
      Width = 29
      Height = 21
      TabOrder = 13
      Text = '1'
      OnEnter = Edit5Enter
      OnExit = Edit5Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object BitBtn2: TBitBtn
      Left = 443
      Top = 171
      Width = 105
      Height = 29
      Caption = 'GERAR...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF1742592A61884B89BD6FA8CCE3EDF5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D668493C6F890C8F840
        84C8266AADD8E6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090
        8887878685854288A9DFF1FE5399D71979BD4897C43C82BA7885928685849696
        96FFFFFFFFFFFFFFFFFFFFFFFF878787C1C1C0BBBBBB7D9BAF79B5D48FB6D054
        C8E35ADEF477CFEC4B96D6AFBAC38A8A89FFFFFFFFFFFFFFFFFFFFFFFF8B8B8A
        FEFEFEEAEAEAEAEAEAA4C7D775B8D5C1F5FC62DEF65CE1F778D2EF4998DB828C
        95FFFFFFFFFFFFFFFFFFFFFFFF919090FEFEFEB3B3B3939393E6E6E67DA1B376
        CAE6C6F6FC5DDBF459E0F67AD3F04594D7D6E7F7FFFFFFFFFFFFFFFFFF949494
        FEFEFEE7E7E7E6E6E6E4E4E4E2E2E2AAD2DF78D2EDC6F6FC5EDBF45AE1F679D5
        F150A1E1DCE9F5FFFFFFFFFFFF999998FEFEFEB0B0B0909090E1E1E1ACACAC8E
        8E8EA7D1DD7BD3ECC3F5FC6BDCF56CC9EC62A2D668A2D4E5EFF7FFFFFF9D9C9C
        FEFEFEE2E2E2E0E0E0DBDBDBDADADAD6D6D6D2D2D297C8D77FD4ECB1E2F88ABF
        E6ADD2F5C3DFFB6AA1D3FFFFFF9F9F9FFEFEFEACACAC8D8D8DD7D7D7A4A4A489
        8989CDCDCD7273E74079DD76BDE6B3D1EFE4F2FEABD1EE5895CBFFFFFFA2A2A2
        FBFBFBD9D9D9D6D6D6D1D1D1CDCDCDC8C8C8C4C4C4C1C1C1BEBEBEBBE4F357A4
        D784B0DA459CCFB0D8EEFFFFFFA2A2A2FEFEFEAF7A55C28C66C48E67C58F68C7
        916AC9936BC9946DAF7A55FEFEFEA09F9EFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3
        FEFEFEAF7A55C08A63C28C65C48E66C58F68C7916AC9936BAF7A55FEFEFE9F9F
        9FFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FEFEFEA6714CA6714CA6714CA6714CA6
        714CA6714CA6714CA6714CFEFEFE9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA2A2
        A2FFFFFFFFFFFFFFFFFFFFFFFFB2B2B2A8A8A8A7A7A7AAAAAAABABABACACACAB
        ABABAAAAAAA7A7A7A3A3A3A2A2A2B5B5B5FFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 14
      OnClick = BitBtn2Click
    end
    object EnomeCentro: TEdit
      Left = 198
      Top = 78
      Width = 391
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      TabOrder = 15
    end
    object eCentro: TRzButtonEdit
      Left = 100
      Top = 78
      Width = 98
      Height = 21
      Text = ''
      TabOrder = 6
      OnKeyPress = eCentroKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = eCentroButtonClick
    end
    object EImovel: TRzButtonEdit
      Left = 99
      Top = 100
      Width = 99
      Height = 21
      Text = ''
      TabOrder = 7
      OnKeyPress = EImovelKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = EImovelButtonClick
    end
    object EnomeImovel: TEdit
      Left = 199
      Top = 101
      Width = 390
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      TabOrder = 16
    end
    object comboespecie: TComboBox
      Left = 199
      Top = 124
      Width = 121
      Height = 21
      AutoDropDown = True
      ItemIndex = 5
      TabOrder = 9
      Text = 'DUPLICATA'
      Items.Strings = (
        'BOLETO'
        'CART'#195'O'
        'CHEQUE'
        'CREDI'#193'RIO'
        'D'#201'BITO CONTA'
        'DUPLICATA'
        'NOTA AVULSA'
        'PROMISS'#211'RIA')
    end
  end
  object wwDBGrid1: TXDBGrid
    Left = 0
    Top = 212
    Width = 614
    Height = 146
    Align = alClient
    DataSource = dsgrade
    GridStyle.VisualStyle = vsXPStyle
    ParentFont = False
    TabOrder = 1
    Columns = <
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Visible = True
        Width = 72
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Visible = True
        Width = 72
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Visible = True
        Width = 106
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
        Width = 90
      end
      item
        Expanded = False
        FieldName = 'COD_CONTA'
        ListOptions = [loAutoDropDown, loSelectNextValue, loAllowClearValue, loShowToday]
        LookupKeyField = 'CODIGO'
        LookupListFields = 'CODIGO;NOME'
        PickOptions = [poDropDownList, poSelectPickText, poAcceptPickList]
        Title.Caption = 'COD. CONTA'
        Visible = True
        Width = 137
      end
      item
        Expanded = False
        FieldName = 'ESPECIE'
        Visible = True
        Width = 82
      end
      item
        Expanded = False
        FieldName = 'E'
        Visible = True
        Width = 23
      end
      item
        Expanded = False
        FieldName = 'C'
        Visible = True
        Width = 28
      end>
  end
  object FlatPanel2: TAdvPanel
    Left = 0
    Top = 361
    Width = 614
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 49
    object Label8: TLabel
      Left = 407
      Top = 17
      Width = 27
      Height = 13
      Caption = 'Total:'
      Transparent = True
    end
    object Bevel3: TBevel
      Left = 389
      Top = -9
      Width = 2
      Height = 68
    end
    object bgravar: TAdvGlowButton
      Left = 12
      Top = 0
      Width = 107
      Height = 48
      Caption = 'F10 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 10
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 0
      OnClick = bgravarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
    object bcancelar: TAdvGlowButton
      Left = 129
      Top = 0
      Width = 136
      Height = 48
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 1
      OnClick = bcancelarClick
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
    object RTOTAL: TRxCalcEdit
      Left = 452
      Top = 14
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
  end
  object dsgrade: TDataSource
    DataSet = qrgrade
    Left = 280
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 216
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 121
      OnClick = Gravar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object query: TFDQuery
    Connection = DM.Coneccao
    Left = 216
    Top = 248
  end
  object qrgrade: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from c000047')
    Left = 224
    Top = 216
    object qrgradeVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object qrgradeDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object qrgradeHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 60
    end
    object qrgradeC: TStringField
      FieldName = 'C'
      Origin = 'C'
      Size = 1
    end
    object qrgradeE: TStringField
      FieldName = 'E'
      Origin = 'E'
      Size = 1
    end
    object qrgradeESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
    end
    object qrgradeCOD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Origin = 'COD_CONTA'
    end
    object qrgradeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
end
