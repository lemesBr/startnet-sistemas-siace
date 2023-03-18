object FormLogEstoque: TFormLogEstoque
  Left = 618
  Top = 256
  Caption = 'Extrato de Estoque - Movimenta'#231#245'es de Produtos'
  ClientHeight = 441
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clWhite
    TabOrder = 0
    object Bevel1: TBevel
      Left = 5
      Top = 5
      Width = 902
      Height = 60
      Shape = bsFrame
    end
    object Label2: TLabel
      Left = 493
      Top = 12
      Width = 98
      Height = 15
      Caption = 'Estoque Atual:'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 13
      Top = 14
      Width = 56
      Height = 15
      Caption = 'Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 376
      Top = 16
      Width = 84
      Height = 14
      Caption = 'Pressione F1'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object imgSearchOrigem: TImage
      Left = 464
      Top = 30
      Width = 24
      Height = 24
      Cursor = crHandPoint
      Picture.Data = {
        0B54504E474772617068696336090000424D3609000000000000360000002800
        0000180000001800000001002000000000000009000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F3972040F4962070F4962070F39720400000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000F3972040F39620D0F39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39620D0F397204000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000F395
        2090F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF3952080000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F39620D0F396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39620D00000000000000000000000000000
        00000000000000000000000000000000000000000000F3952090F39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF6B86AFFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF395208000000000000000000000
        000000000000000000000000000000000000F3972040F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF6AD51FFFADBB3FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF3972040000000000000
        000000000000000000000000000000000000F39620D0F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF8C482FFFDF2E3FFF4A239FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39620D0000000000000
        000000000000000000000000000000000000F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFFADBB3FFFDF2E3FFF9CA8EFFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF000000000000
        0000000000000000000000000000F3972040F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39C2DFFF7B35DFFFDECD7FFFDF2E3FFFDECD7FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39720400000
        0000000000000000000000000000F4962070F39621FFF39621FFF39621FFF4A2
        39FFFAD09AFFFCE6CBFFFDF2E3FFFDF2E3FFFDF2E3FFFDF2E3FFFDF2E3FFF6B8
        6AFFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF49620700000
        0000000000000000000000000000F4962070F39621FFF39621FFF39621FFF396
        21FFF39C2DFFF7BD75FFFCE6CAFFFDF2E3FFFDF2E3FFFDF2E3FFFDF2E3FFFADB
        B3FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF49620700000
        0000000000000000000000000000F3972040F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF6AD51FFFACF99FFFDF2E3FFFDF2E3FFFDF2
        E3FFF5A745FFF39621FFF39621FFF39621FFF39621FFF39621FFF39720400000
        000000000000000000000000000000000000F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF4A239FFF8C481FFFCE6
        CAFFFAD09AFFF39621FFF39621FFF39621FFF39621FFF39621FF000000000000
        000000000000000000000000000000000000F39620D0F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF6AD51FFF39621FFF39621FFF39621FFF39621FFF39520CF000000000000
        000000000000000000000000000000000000F3972040F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF3972040000000000000
        00000000000000000000000000000000000000000000F3952090F39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF395209000000000000000000000
        00000000000000000000000000000000000000000000FF8F2010F39520CFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39520CF0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000F395
        2090F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF396208F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000F3972040F39520CFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39520CFF397204000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F3972040F495206FF495206FF396203F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = imgSearchOrigemClick
    end
    object Image1: TImage
      Left = 872
      Top = 30
      Width = 24
      Height = 24
      Cursor = crHandPoint
      Picture.Data = {
        0B54504E474772617068696336090000424D3609000000000000360000002800
        0000180000001800000001002000000000000009000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F3972040F4962070F4962070F39720400000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000F3972040F39620D0F39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39620D0F397204000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000F395
        2090F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF3952080000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F39620D0F396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39620D00000000000000000000000000000
        00000000000000000000000000000000000000000000F3952090F39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF6B86AFFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF395208000000000000000000000
        000000000000000000000000000000000000F3972040F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF6AD51FFFADBB3FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF3972040000000000000
        000000000000000000000000000000000000F39620D0F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF8C482FFFDF2E3FFF4A239FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39620D0000000000000
        000000000000000000000000000000000000F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFFADBB3FFFDF2E3FFF9CA8EFFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF000000000000
        0000000000000000000000000000F3972040F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39C2DFFF7B35DFFFDECD7FFFDF2E3FFFDECD7FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39720400000
        0000000000000000000000000000F4962070F39621FFF39621FFF39621FFF4A2
        39FFFAD09AFFFCE6CBFFFDF2E3FFFDF2E3FFFDF2E3FFFDF2E3FFFDF2E3FFF6B8
        6AFFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF49620700000
        0000000000000000000000000000F4962070F39621FFF39621FFF39621FFF396
        21FFF39C2DFFF7BD75FFFCE6CAFFFDF2E3FFFDF2E3FFFDF2E3FFFDF2E3FFFADB
        B3FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF49620700000
        0000000000000000000000000000F3972040F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF6AD51FFFACF99FFFDF2E3FFFDF2E3FFFDF2
        E3FFF5A745FFF39621FFF39621FFF39621FFF39621FFF39621FFF39720400000
        000000000000000000000000000000000000F39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF4A239FFF8C481FFFCE6
        CAFFFAD09AFFF39621FFF39621FFF39621FFF39621FFF39621FF000000000000
        000000000000000000000000000000000000F39620D0F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF6AD51FFF39621FFF39621FFF39621FFF39621FFF39520CF000000000000
        000000000000000000000000000000000000F3972040F39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF3972040000000000000
        00000000000000000000000000000000000000000000F3952090F39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39621FFF395209000000000000000000000
        00000000000000000000000000000000000000000000FF8F2010F39520CFF396
        21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF39621FFF39520CF0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000F395
        2090F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39621FFF39621FFF396208F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000F3972040F39520CFF39621FFF39621FFF39621FFF39621FFF39621FFF396
        21FFF39520CFF397204000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F3972040F495206FF495206FF396203F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = Image1Click
    end
    object Label1: TLabel
      Left = 620
      Top = 13
      Width = 91
      Height = 15
      Caption = 'Data Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 748
      Top = 14
      Width = 77
      Height = 15
      Caption = 'Data Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 493
      Top = 30
      Width = 97
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtProduto: TEdit
      Left = 12
      Top = 30
      Width = 450
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnKeyDown = edtProdutoKeyDown
    end
    object edtDataInicial: TDateEdit
      Left = 618
      Top = 31
      Width = 121
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object edtDataFinal: TDateEdit
      Left = 746
      Top = 31
      Width = 121
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = 6316128
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 385
    Width = 912
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object spbImprimir: TSpeedButton
      Left = 11
      Top = 11
      Width = 142
      Height = 33
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        20000000000090070000120B0000120B00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FADA
        B400FAD6AA00FEE2BC00FFE6C300FFE5C100FFE5C100FFE5C100FFE6C400FCDD
        B600FAD8AF00FBD8AD00FADAB400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFD59A00FDD39D00E7A3
        5900DA873200DE903E00DE903E00DE903E00DA873100F1B97900FDD29B00F9C9
        8F00FFD59A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F9F9F900F4F3F200FFDA9D00FFD39B00ECAF6A00E39C4F00E6A2
        5700E6A25700E6A25700E29A4B00F8CA9000FFE1B200FDCE9400FFD89B00F4F3
        F200F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF009C9C9C003F40
        41002B313800EBC08C00FFDBA200EBAC6600E1964700E49D5100E49D5100E49D
        5100E59F5500DE913F00D9863100FFCB8B00EDC593002B3138003F4041009C9C
        9C00EFEFEF00FFFFFF00FFFFFF0097979700424242003D3E400042424300F5C9
        9100FFE1A500F1AF6600E7984500EA9F4F00EA9F4F00EA9F4F00EA9F4F00EA9E
        4E00E89B4A00FFD29000F7CD9600424243003D3E40004242420097979700FFFF
        FF00FFFFFF008A8A8A00424242003F41440028292B00E89F4400FFAD4700FBB3
        5700FEBA6100FDB85E00FDB85E00FDB85E00FDB85E00FDB85E00FDB95F00FFB2
        4E00E79D4200292A2B003F414400424242008A8A8A00FFFFFF00FFFFFF008A8A
        8A0042424200434444003233330045392A004A3D2C00493C2C00493C2C00493C
        2C00493C2C00493C2C00493C2C00493C2C00493C2C004A3D2C0045392A003333
        330044444400424242008A8A8A00FFFFFF00FFFFFF00868686003C3C3C003C3C
        3C0041404000303740002D353F002E363F002E363F002E363F002E363F002E36
        3F002E363F002E363F002E363F002D353F0030374000414040003C3C3C003C3C
        3C0086868600FFFFFF00FFFFFF00939393005151510051515100515151005151
        5100515151005151510051515100515151005151510051515100515151005151
        510051515100515151005151510051515100515151005151510093939300FFFF
        FF00FFFFFF00A1A1A10067676700676767006767670067676700676767006767
        6700676767006767670067676700676767006767670067676700676767006767
        67006768660066636A006559710067696500A1A2A000FFFFFF00FFFFFF009D9D
        9D00616161006161610061616100616161006161610061616100616161006161
        6100616161006161610061616100616161006161610061616100605E6400636D
        5800688C4100605A66009C9AA000FFFFFF00FFFFFF00A6A6A600616161006161
        6100626262005C5D5F005C5D5F005C5D5F005C5D5F005C5D5F005C5D5F005C5D
        5F005C5D5F005C5D5F005C5D5F005C5D5F005B586300657554006CA92D005F56
        6900A5A1AA00FFFFFF00FFFFFF00EDEDED00A1A1A10066666600636363005B5D
        5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D5F005B5D
        5F005B5D5F005B5D5F005B5E5E00625F660063567100A1A3A000EEEEED00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700484C5100D5B08300EFC38E00E5BC
        8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00E5BC8A00EFC3
        8E00D5B08300484C5100F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00CDCCCB00FFDB9A00FFD99800FFD49500FFD49500FFD4
        9500FFD49500FFD49500FFD49500FFD49500FFD49500FFD99800FFDB9A00CDCC
        CB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFD89C00F9C98F00F9CA9000F9CA9000F9CA9000F9CA9000F9CA
        9000F9CA9000F9CA9000F9CA9000F9C98F00FFD89C00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8CA
        9400F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA
        9000F9CA9000F9CA9000F8CA9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBDCB500FBD8AD00FBDA
        B100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBDAB100FBD8
        FD00FBDCB500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00}
      ParentFont = False
      OnClick = spbImprimirClick
    end
  end
  object XDBGrid1: TDBGrid
    Left = 0
    Top = 72
    Width = 912
    Height = 313
    Align = alClient
    DataSource = Dts_Estoque
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    OnDrawColumnCell = XDBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_AJUSTE'
        Title.Caption = 'Seq.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'Cod. Produto'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Caption = 'Horas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_ANTERIOR'
        Title.Caption = 'Est. Anterior'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Qtde'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_POSTERIOR'
        Title.Caption = 'Est. Posterior'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERACAO'
        Title.Caption = 'Op.'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACAO_BD'
        Title.Caption = 'Ac.'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_VENDA'
        Title.Caption = 'N'#186' Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_COMPRA'
        Title.Caption = 'N'#186' Compra'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Width = 348
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_MOVIMENTO'
        Title.Caption = 'Cod Movimento'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'C'#243'd Usu'#225'rio'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Usu'#225'rio'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRACAO'
        Title.Caption = 'Fra'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_ESTOQUE'
        Width = 72
        Visible = True
      end>
  end
  object Dts_Estoque: TDataSource
    DataSet = qrEstoque
    Left = 496
    Top = 244
  end
  object frxReport: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42515.386731782400000000
    ReportOptions.LastChange = 42593.620137268500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 528
    Top = 209
    Datasets = <
      item
        DataSet = qrRel
        DataSetName = 'qrRel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 119.165430000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 177.637910000000000000
          Top = 12.559060000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Extrato de estoque - Movimenta'#231#227'o de Produto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 96.267780000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 109.606370000000000000
          Top = 96.267780000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Est.Anterior')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 208.874150000000000000
          Top = 96.267780000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Qtd.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 272.905690000000000000
          Top = 96.267780000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Est.Posterior')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 361.055350000000000000
          Top = 96.267780000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#176' Venda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 448.764070000000000000
          Top = 96.488250000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#176' Compra')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 536.693260000000000000
          Top = 96.488250000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Usu'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 650.079160000000000000
          Top = 96.267780000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Fra'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Align = baCenter
          Left = 34.015770000000000000
          Top = 49.133890000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[NOME_PRODUTO]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo33: TfrxMemoView
          Align = baCenter
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2434341
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina: [Page#]/[TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = qrRel
        DataSetName = 'qrRel'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[qrRel."DATA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 109.606370000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[qrRel."ESTOQUE_ANTERIOR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 208.874150000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[qrRel."QUANTIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 272.905690000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[qrRel."ESTOQUE_POSTERIOR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 361.055350000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[qrRel."COD_VENDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 448.764070000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[qrRel."COD_COMPRA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 536.693260000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[qrRel."USUARIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 650.079160000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[qrRel."FRACAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qrRel: TfrxDBDataset
    UserName = 'qrRel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'USUARIO=USUARIO'
      'ID_EMPRESA=ID_EMPRESA'
      'ID_FILIAL=ID_FILIAL'
      'ID_AJUSTE=ID_AJUSTE'
      'ID_PRODUTO=ID_PRODUTO'
      'ID_LOTE=ID_LOTE'
      'ID_PRODUTO_SERIE=ID_PRODUTO_SERIE'
      'DATA=DATA'
      'ID_USUARIO=ID_USUARIO'
      'ID_MOVIMENTO=ID_MOVIMENTO'
      'OPERACAO=OPERACAO'
      'ACAO_BD=ACAO_BD'
      'SITUACAO_ESTOQUE_OLD=SITUACAO_ESTOQUE_OLD'
      'COD_VENDA=COD_VENDA'
      'COD_COMPRA=COD_COMPRA'
      'HISTORICO=HISTORICO'
      'HORA=HORA'
      'FRACAO=FRACAO'
      'ESTOQUE_ANTERIOR=ESTOQUE_ANTERIOR'
      'QUANTIDADE=QUANTIDADE'
      'ESTOQUE_POSTERIOR=ESTOQUE_POSTERIOR'
      'SITUACAO_ESTOQUE=SITUACAO_ESTOQUE')
    DataSource = Dts_Estoque
    BCDToCurrency = False
    Left = 528
    Top = 245
  end
  object qrEstoque: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '  USUARIOS.USUARIO,'
      '  PRODUTOS_ESTOQUES_LOG.*'
      'FROM'
      ' PRODUTOS_ESTOQUES_LOG  '
      
        ' INNER JOIN USUARIOS ON (PRODUTOS_ESTOQUES_LOG.ID_USUARIO=USUARI' +
        'OS.CODIGO)  where produtos_estoques_log.id_produto = :cod_pro')
    Left = 496
    Top = 208
    ParamData = <
      item
        Name = 'COD_PRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrEstoqueUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object qrEstoqueID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrEstoqueID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrEstoqueID_AJUSTE: TIntegerField
      FieldName = 'ID_AJUSTE'
      Origin = 'ID_AJUSTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrEstoqueID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qrEstoqueID_LOTE: TStringField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object qrEstoqueID_PRODUTO_SERIE: TStringField
      FieldName = 'ID_PRODUTO_SERIE'
      Origin = 'ID_PRODUTO_SERIE'
      Size = 30
    end
    object qrEstoqueDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrEstoqueID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object qrEstoqueID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      Required = True
    end
    object qrEstoqueFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object qrEstoqueESTOQUE_ANTERIOR: TBCDField
      FieldName = 'ESTOQUE_ANTERIOR'
      Origin = 'ESTOQUE_ANTERIOR'
      Required = True
      DisplayFormat = '#,,0.00'
      Precision = 18
      Size = 2
    end
    object qrEstoqueQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      DisplayFormat = '#,,0.00'
      Precision = 18
      Size = 3
    end
    object qrEstoqueESTOQUE_POSTERIOR: TBCDField
      FieldName = 'ESTOQUE_POSTERIOR'
      Origin = 'ESTOQUE_POSTERIOR'
      Required = True
      DisplayFormat = '#,,0.00'
      Precision = 18
      Size = 2
    end
    object qrEstoqueSITUACAO_ESTOQUE: TIntegerField
      FieldName = 'SITUACAO_ESTOQUE'
      Origin = 'SITUACAO_ESTOQUE'
    end
    object qrEstoqueOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 1
    end
    object qrEstoqueACAO_BD: TStringField
      FieldName = 'ACAO_BD'
      Origin = 'ACAO_BD'
      Size = 1
    end
    object qrEstoqueSITUACAO_ESTOQUE_OLD: TIntegerField
      FieldName = 'SITUACAO_ESTOQUE_OLD'
      Origin = 'SITUACAO_ESTOQUE_OLD'
    end
    object qrEstoqueCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
    end
    object qrEstoqueCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
      Origin = 'COD_COMPRA'
    end
    object qrEstoqueHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 100
    end
    object qrEstoqueHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
  end
end
