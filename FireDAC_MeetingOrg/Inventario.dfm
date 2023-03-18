object Forminventario: TForminventario
  Left = 465
  Top = 228
  Caption = 'Gera'#231#227'o do invent'#225'rio'
  ClientHeight = 321
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnldados: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 271
    Align = alClient
    Enabled = False
    TabOrder = 0
    object RxLabel6: TRxLabel
      Left = 394
      Top = 3
      Width = 97
      Height = 13
      Caption = 'Valor Invent'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 210
      Top = 2
      Width = 95
      Height = 13
      Caption = 'Data Invent'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 3
      Top = 2
      Width = 82
      Height = 13
      Caption = 'N'#186' Invent'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 3
      Top = 40
      Width = 110
      Height = 13
      Caption = 'Itens do Invent'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBDateEdit1: TDBDateEdit
      Left = 208
      Top = 16
      Width = 121
      Height = 21
      DataField = 'DT_INV'
      DataSource = DM1.Dts_inventario
      NumGlyphs = 2
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 16
      Width = 107
      Height = 21
      Hint = 'Descri'#231#227'o do Grupo de Produtos'
      HelpType = htKeyword
      CharCase = ecUpperCase
      DataField = 'ID_INV'
      DataSource = DM1.Dts_inventario
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object db_nome: TDBEdit
      Left = 400
      Top = 16
      Width = 120
      Height = 21
      Hint = 'Descri'#231#227'o do Grupo de Produtos'
      HelpType = htKeyword
      CharCase = ecUpperCase
      DataField = 'VL_INV'
      DataSource = DM1.Dts_inventario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object XDBGrid2: TXDBGrid
      Left = 3
      Top = 60
      Width = 577
      Height = 206
      DataSource = DM1.Dts_inventario_itens
      GridStyle.VisualStyle = vsXPStyle
      TabOrder = 3
      Columns = <
        item
          Expanded = False
          FieldName = 'SEQUENCIA'
          Title.Caption = 'Seq.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_INV'
          Title.Caption = 'N'#186' Inv.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_ITEM'
          Title.Caption = 'C'#243'd. Iten'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UND_ITEN'
          Title.Caption = 'Unid.'
          Visible = True
          Width = 34
        end
        item
          Expanded = False
          FieldName = 'QTD_ITEN'
          Title.Caption = 'Qtde'
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VLR_UNIT'
          Title.Caption = 'Valor Unitario'
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VL_ITEM_TOTAL'
          Title.Caption = 'Valor Total'
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'TXT_COMPLEN'
          Title.Caption = 'Descri'#231#227'o Complementar'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CONTA'
          Title.Caption = 'Cod Conta'
          Visible = True
        end>
    end
    object CheckBox1: TCheckBox
      Left = 144
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Estoque Atual'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 264
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Estoque 31/12'
      TabOrder = 5
      OnClick = CheckBox2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 271
    Width = 591
    Height = 50
    Align = alBottom
    BevelInner = bvLowered
    Color = 15263976
    TabOrder = 1
    object btnNovo: TsuiButton
      Left = 109
      Top = 5
      Width = 108
      Height = 40
      Hint = 'Novo Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Novo'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00529C6B00106B1000106B1000529C
        6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00529C
        6B00106B1000106B1000106B1000106B1000106B10007BD6730021A53900106B
        1000106B1000106B1000106B1000106B1000529C6B00FF00FF00FF00FF004A8C
        4A0021A5390021A5390021A5390021A5390021A5390021A5390021A5390021A5
        390021A5390021A5390021A5390021A53900106B1000FF00FF00FF00FF004A8C
        4A007BD673007BD673007BD673007BD673007BD673007BD6730021A539007BD6
        73007BD673007BD673007BD673007BD67300106B1000FF00FF00FF00FF00529C
        6B004A8C4A004A8C4A004A8C4A004A8C4A004A8C4A007BD6730021A53900106B
        1000106B1000106B1000106B1000106B1000529C6B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004A8C4A007BD6730021A53900106B
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00529C6B004A8C4A004A8C4A00529C
        6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnNovoClick
      ResHandle = 0
    end
    object btnCancelar: TsuiButton
      Left = 234
      Top = 5
      Width = 110
      Height = 40
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Cancelar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF000000
        B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF000000
        B5000000B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000D6000000BD000000B5000000B500FF00FF00FF00FF00FF00FF00FF00
        FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000B5000000B5000000B500FF00FF000000B5000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000C6000000C6000000CE000000
        B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000C6000000C6000000DE00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000D6000000CE000000DE000000
        EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000E7000000DE000000D600FF00FF00FF00FF000000
        E7000000EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000DE000000EF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000F7000000F7000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF000000
        F7000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000F700FF00FF00FF00FF000000F7000000
        F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000F7000000
        F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnCancelarClick
      ResHandle = 0
    end
    object btnSalvar: TsuiButton
      Left = 474
      Top = 5
      Width = 110
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = ' &Gerar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F2F2F2EDEDEDE4E4E4C8C9C9
        92B9A3CFD0CFEAEAEAEFEFEFF2F2F2F4F4F4F7F7F7F9F9F9FCFCFCFDFDFDFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFC
        FCFCFBFBFB98D9B315BE5DB7E3CAFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFE
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA2E0BC18C05F18C46133C470F5FBF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFEFC7ED6A311C05B10C25B11C25B10C15A74D3
        9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F5EA49C87F0CC0580CC15812BE5A
        52C9840CC1580EBF58B1E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8E7CC1BBF600CC1580C
        C1580CC15863CF90D9F2E411BE5A0CC1581ABF60D2EFDEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F4
        E955CB8713C05C17C36014BF5CD8F1E2FFFFFF63D09117C36018C4612CC26CDC
        F2E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFBEE9D047C87D6DD197FFFFFFFFFFFFDEF3E729C4
        6B34CC7533CB7439C775CBEDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFFFFFFFFFF
        FFFFFFFFFFFF87D8A94AD08457D48D53D38A43CB7D97DDB4F9FDFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBF756CD896BD99A71DB9F6FDB9D5CD590
        68CF94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEDDA56D08A7A
        DDA57DDEA774DCA183D8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA6E2BF61D49381DFA96EDA9DACE3C3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93DBB163D59458D18CDEF2E6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2E0BC3FC377
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE8F6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnSalvarClick
      ResHandle = 0
    end
    object btnExcluir: TsuiButton
      Left = 355
      Top = 5
      Width = 110
      Height = 40
      Hint = 'Excluir Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'E&xcluir'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ADAD9C009C9C84009C9C84009C9C84009C846B009C84
        6B00AD9C7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00EFDED600FFEFBD00FFDEB500FFDEAD00FFDEB500FFEFBD00FFF7
        CE00FFDEB5009C846B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EFDED600FFFFD600FFDEAD00FFD69C00FFCE8C0029A52900FFF7DE00FFF7
        DE00FFFFDE00FFFFD6009C846B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00DEB58400FFDEA500FFF7CE00FFD6A500FFCE8C0029A52900008400000084
        0000108C1000BDEFB500FFFFD6009C846B00FF00FF00FF00FF00FF00FF00FF00
        FF00F7B57300F7AD6B00FFBD8400FFDEAD00FFF7BD0029A529000084000039AD
        3900EFFFEF0029A52900FFDEB500AD9C7B00FF00FF00FF00FF00FF00FF00EFDE
        D600FFB57B00FFB57B00FFB57B00FFB57B00FFD6A50029A5290029A52900108C
        1000D6EFCE0073CE7300BDCE8C00AD9C7B00FF00FF00FF00FF00FF00FF00EFD6
        B500FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFDEBD006BBD6300FFF7DE005AB5
        5A0029A5290029A52900D6DEAD00CEBD9C00FF00FF00FF00FF00FF00FF00F7D6
        FD00FFD6A500FFD6A500FFD6A500FFD6A500FFDEAD0039AD39006BBD63006BBD
        6B000084000029A52900FFDEB500CEBD9C00FF00FF00FF00FF00FF00FF00FFDE
        FD00FFEFB500FFEFB500FFEFB500FFEFB500FFEFB500D6EFB500108C10000084
        00000084000029A52900FFEFCE00CEBD9C00FF00FF00FF00FF00FF00FF00FFDE
        FD00FFFFD600FFFFD600FFFFD600FFFFD600FFFFD600FFFFD600EFFFD600ADDE
        A500BDEFB50029A52900FFFFDE00D6D6B500FF00FF00FF00FF00FF00FF00FFCE
        9C00FFFFD600FFFFD600FFFFD600FFFFD600FFF7CE00FFEFB500FFD6A500FFDE
        A500FFEFBD00FFFFD600FFFFD600D6D6B500FF00FF00FF00FF00FF00FF00FFDE
        BD00FFCE9C00FFCE9C00FFCE9C00EFBD8C00EFA55A00EFA55200EFA55A00F7AD
        6300F7AD6300F7B57300FFDEAD00D6D6B500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFCE9C00EFBD8C00F7AD
        6B00F7AD6B00F7B57300F7B57300FFD69C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFCE9C00FFB57B00FFB57B00F7BD8C00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnExcluirClick
      ResHandle = 0
    end
    object DBNavigator: TsuiDBNavigator
      Left = 5
      Top = 5
      Width = 100
      Height = 30
      Cursor = crDefault
      UIStyle = WinXP
      DataSource = DM1.Dts_inventario
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        '')
      TabOrder = 4
      TabStop = True
    end
  end
  object MsgErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
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
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 474
    Top = 27
  end
  object MsgAtencao: TsuiMessageDialog
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
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiWarning
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 502
    Top = 27
  end
  object MsgConfirmacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
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
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Exclus'#227'o?'
    Left = 530
    Top = 27
  end
  object MsgInformacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
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
    Text = 'Hello world!'
    Left = 558
    Top = 27
  end
  object SPC_Inv: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_INV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODPRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_CONTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_SPED_INVENTARIO'
    Left = 360
    Top = 16
  end
  object Qrysaldo: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select first 1 t.* from produtos_estoques_log t where t.data = (' +
        'select first 1 t2.data from produtos_estoques_log t2 where data ' +
        'BETWEEN :INICIO AND :FIM and id_produto =:cod_pro order by t2.da' +
        'ta desc) and data BETWEEN :INICIO AND :FIM and id_produto =:cod_' +
        'pro')
    Left = 320
    Top = 184
    ParamData = <
      item
        Name = 'INICIO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'COD_PRO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QrysaldoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrysaldoID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrysaldoID_AJUSTE: TIntegerField
      FieldName = 'ID_AJUSTE'
      Origin = 'ID_AJUSTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrysaldoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object QrysaldoID_LOTE: TStringField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object QrysaldoID_PRODUTO_SERIE: TStringField
      FieldName = 'ID_PRODUTO_SERIE'
      Origin = 'ID_PRODUTO_SERIE'
      Size = 30
    end
    object QrysaldoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QrysaldoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object QrysaldoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      Required = True
    end
    object QrysaldoFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QrysaldoESTOQUE_ANTERIOR: TBCDField
      FieldName = 'ESTOQUE_ANTERIOR'
      Origin = 'ESTOQUE_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QrysaldoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 3
    end
    object QrysaldoESTOQUE_POSTERIOR: TBCDField
      FieldName = 'ESTOQUE_POSTERIOR'
      Origin = 'ESTOQUE_POSTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QrysaldoSITUACAO_ESTOQUE: TIntegerField
      FieldName = 'SITUACAO_ESTOQUE'
      Origin = 'SITUACAO_ESTOQUE'
    end
    object QrysaldoOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 1
    end
    object QrysaldoACAO_BD: TStringField
      FieldName = 'ACAO_BD'
      Origin = 'ACAO_BD'
      Size = 1
    end
    object QrysaldoSITUACAO_ESTOQUE_OLD: TIntegerField
      FieldName = 'SITUACAO_ESTOQUE_OLD'
      Origin = 'SITUACAO_ESTOQUE_OLD'
    end
    object QrysaldoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
    end
    object QrysaldoCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
      Origin = 'COD_COMPRA'
    end
    object QrysaldoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 100
    end
    object QrysaldoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
  end
end
