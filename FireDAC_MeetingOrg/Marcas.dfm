object FormMarcas: TFormMarcas
  Left = 302
  Top = 232
  BorderStyle = bsDialog
  Caption = 'Cadastro de Marcas'
  ClientHeight = 137
  ClientWidth = 675
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
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 86
    Width = 675
    Height = 51
    Align = alBottom
    BevelInner = bvLowered
    Color = 15263976
    TabOrder = 0
    object btnNovo: TsuiButton
      Left = 110
      Top = 6
      Width = 85
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
      UIStyle = FromThemeFile
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
    object btnEditar: TsuiButton
      Left = 198
      Top = 6
      Width = 85
      Height = 40
      Hint = 'Editar Registro '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Editar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C64A
        0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A
        0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFCE00FFE7B50039526300CEC6
        9C00F7CE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00ADB5B500ADB5B500ADB5B500ADB5B500ADB5B500395263000000
        00009CB5C600ADB5B500ADB5B500ADB5B500FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700395263000000
        000000000000FFCE9C00F7CE9C00FFCE9C00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00ADB5B500ADB5B500ADB5B500ADB5B500ADB5B50039526300FFEF
        D600D673210000000000A5B5B500ADB5B500FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0063848C00FFEF
        D600D673210000000000FFCE9C00FFCE9C00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00ADB5B500ADB5B500ADB5B500ADB5B500ADB5B500ADB5B5003952
        6300FFEFD600D6732100000000009CA5AD00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006384
        8C00FFEFD600D673210000000000FFCE9C00FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00ADB5B500ADB5B500ADB5B500ADB5B500ADB5B500ADB5B500ADB5
        B50039526300FFEFD600D673210000000000FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0063848C00FFEFD600D673210000000800FFCE9C00C64A0000FF00FF00C64A
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF003952630000000000104AD60000000000C64A0000FF00FF00C64A
        0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A
        0000C64A00008C521000104AD600104AD60021001000C64A0000FF00FF00FF00
        FF00C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A0000C64A
        0000C64A0000C64A00000000840000008400E7214A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnEditarClick
      ResHandle = 0
    end
    object btnCancelar: TsuiButton
      Left = 286
      Top = 6
      Width = 90
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
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 2
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
      Left = 379
      Top = 6
      Width = 85
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Salvar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF009C423900943939008C313100947B7B00B5BDB500BDBDBD00C6BDBD00BDBD
        B500B5BDBD00A5848400842929008429290094313100FF00FF00FF00FF00AD5A
        5200C64A4A00C64A4A00A542420084636300AD8C8C00DEC6C600FFF7F700FFFF
        FF00EFF7F700C69C9C007B18180084181800B54242009C393900FF00FF00AD5A
        5200BD4A4A00C64A4A00A54242008463630084292900A55A5A00E7D6D600FFFF
        F700FFFFFF00CEA5A5007B18180084181800AD4242009C393900FF00FF00AD5A
        5200BD4A4A00C64A4A00A5424200946B6B008421210084212100BDADAD00EFEF
        EF00FFFFFF00DEB5B5007B18180084181800AD4242009C393900FF00FF00AD5A
        5200BD4A4A00C64A4A00A54242009C7373008C2929007B18180094848400CED6
        CE00FFFFFF00DEBDBD007B1818007B181800AD3939009C393900FF00FF00AD5A
        5200BD4A4A00C64A4A00AD424200B5737300B57B7B009C6B6B0094737300A58C
        8C00DEBDBD00D69494008C2121008C212100B54242009C393900FF00FF00AD5A
        5200BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD42
        4200BD424200BD424200BD4A4A00BD4A4A00C64A4A0094393900FF00FF00AD5A
        5200A53931009C423900B56B6B00C68C8C00CE949400CE949400CE949400CE8C
        8C00CE949400CE949400CE9C9400C6848400BD4A4A0094393900FF00FF00AD5A
        52009C313100DEBDBD00FFF7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700FFFFFF00D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CECE00FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00F7EFEF00FFF7F700D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CEC600EFEFEF00CECEC600CECECE00CECECE00CECECE00CECE
        CE00CECECE00CECECE00E7E7E700D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CECE00EFEFEF00D6CECE00D6D6D600D6D6D600D6D6D600D6D6
        D600D6D6D600D6CECE00EFEFEF00D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CECE00F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDE
        D600DEDED600DED6D600EFEFEF00D6ADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CECE00EFEFEF00CECECE00CECECE00CECECE00CECECE00CECE
        CE00CECECE00CECECE00E7E7E700DEADAD00B54242009C393900FF00FF00AD5A
        52009C313100E7CEC600FFFFFF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEF
        EF00FFEFEF00FFEFEF00FFFFF700D6ADAD00B54242009C393900FF00FF00FF00
        FF0094313100BDA5A500C6CEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600BD9C9C008C313100FF00FF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnSalvarClick
      ResHandle = 0
    end
    object btnExcluir: TsuiButton
      Left = 467
      Top = 6
      Width = 85
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
      UIStyle = FromThemeFile
      TabOrder = 4
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
    object btnLocalizar: TsuiButton
      Left = 555
      Top = 6
      Width = 113
      Height = 40
      Hint = 'Localizar Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Localizar - F2'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 5
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
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
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnLocalizarClick
      ResHandle = 0
    end
    object DBNavigator: TsuiDBNavigator
      Left = 5
      Top = 6
      Width = 100
      Height = 30
      Cursor = crDefault
      UIStyle = FromThemeFile
      DataSource = DM.DTS_Marcas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro')
      TabOrder = 6
      TabStop = True
    end
  end
  object pnldados: TPanel
    Left = 0
    Top = 0
    Width = 675
    Height = 86
    Align = alClient
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 1
    object RxLabel1: TRxLabel
      Left = 10
      Top = 11
      Width = 46
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 10
      Top = 42
      Width = 60
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbt_codigo: TsuiDBEdit
      Left = 78
      Top = 11
      Width = 86
      Height = 20
      TabStop = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'CODIGO'
      DataSource = DM.DTS_Marcas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object db_nome: TDBEdit
      Left = 78
      Top = 42
      Width = 587
      Height = 21
      Hint = 'Nome da Marca'
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'DESCRICAO'
      DataSource = DM.DTS_Marcas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnEnter = db_nomeEnter
      OnExit = db_nomeExit
    end
  end
  object MsgInformacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
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
    IconType = suiInformation
    Text = 'Hello world!'
    Left = 630
    Top = 51
  end
  object MsgConfirmacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
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
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Exclus'#227'o?'
    Left = 602
    Top = 51
  end
  object MsgAtencao: TsuiMessageDialog
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
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiWarning
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 574
    Top = 51
  end
  object MsgErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
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
    IconType = suiStop
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 546
    Top = 51
  end
end
