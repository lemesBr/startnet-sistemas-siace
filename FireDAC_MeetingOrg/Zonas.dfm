object FormZonas: TFormZonas
  Left = 472
  Top = 128
  Caption = 'Cadastro de Bairros'
  ClientHeight = 307
  ClientWidth = 704
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
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 252
    Align = alClient
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    ExplicitHeight = 253
    object PageControl1: TPageControl
      Left = 4
      Top = 4
      Width = 696
      Height = 244
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 245
      object TabSheet1: TTabSheet
        Caption = 'Cadastro'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 688
          Height = 29
          Align = alTop
          BevelWidth = 2
          ParentColor = True
          TabOrder = 0
          object Label5: TLabel
            Left = 149
            Top = 4
            Width = 266
            Height = 23
            Caption = 'Cadastro de zONAS / LINHAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'BatmanForeverAlternate'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 29
          Width = 688
          Height = 188
          Align = alClient
          TabOrder = 1
          object Label3: TLabel
            Left = 8
            Top = 80
            Width = 79
            Height = 13
            Caption = 'Zonas/Linhas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 8
            Top = 28
            Width = 41
            Height = 13
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit2: TDBEdit
            Left = 97
            Top = 77
            Width = 577
            Height = 21
            Color = 15263976
            DataField = 'DESCRICAO'
            DataSource = DM.DTS_ZONAS
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 97
            Top = 24
            Width = 73
            Height = 21
            Color = 15263976
            DataField = 'COD_ZONA'
            DataSource = DM.DTS_ZONAS
            Enabled = False
            TabOrder = 1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Consulta'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label4: TLabel
          Left = 8
          Top = 10
          Width = 58
          Height = 13
          Caption = 'Pesquisar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxDBGrid1: TRxDBGrid
          Left = 0
          Top = 36
          Width = 674
          Height = 124
          Align = alCustom
          Color = clWhite
          DataSource = DM.DTS_ZONAS
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = RxDBGrid1DblClick
          OnKeyPress = RxDBGrid1KeyPress
          RowColor2 = 16776176
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_ZONA'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Nome do Zona Venda / Linha'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 556
              Visible = True
            end>
        end
        object Edit1: TEdit
          Left = 72
          Top = 8
          Width = 602
          Height = 21
          TabOrder = 1
          OnChange = Edit1Change
          OnExit = Edit1Exit
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 252
    Width = 704
    Height = 55
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    ExplicitTop = 253
    object btnNovo: TsuiButton
      Left = 106
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Novo Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ShowHint = True
      Caption = '&Novo'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = Protein
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
      Left = 203
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Editar Registro '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ShowHint = True
      Caption = '&Editar'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = Protein
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
      Left = 300
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ShowHint = True
      Caption = '&Cancelar'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = Protein
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
      Left = 397
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ShowHint = True
      Caption = '&Salvar'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = Protein
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
      Left = 494
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Excluir Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ShowHint = True
      Caption = 'E&xcluir'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = Protein
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
    object DBNavigator: TsuiDBNavigator
      Left = 5
      Top = 7
      Width = 92
      Height = 30
      Cursor = crDefault
      UIStyle = Protein
      DataSource = DM.DTS_ZONAS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        ''
        '')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      TabStop = True
    end
    object btnLocalizar: TsuiButton
      Left = 589
      Top = 7
      Width = 90
      Height = 40
      Hint = 'Localizar Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ShowHint = True
      Caption = '&Localizar F2'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = Protein
      Enabled = False
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
      ResHandle = 0
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
    Left = 330
    Top = 3
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
    Left = 358
    Top = 3
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
    Left = 386
    Top = 3
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
    Left = 414
    Top = 3
  end
end
