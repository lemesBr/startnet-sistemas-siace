object FComposicaoItens: TFComposicaoItens
  Left = 483
  Top = 344
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inserir Itens'
  ClientHeight = 174
  ClientWidth = 679
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 4
    Width = 668
    Height = 55
    Shape = bsFrame
  end
  object Bevel2: TBevel
    Left = 4
    Top = 64
    Width = 669
    Height = 60
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 11
    Top = 9
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
  object Label3: TLabel
    Left = 476
    Top = 7
    Width = 77
    Height = 15
    Caption = 'Quantidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 10
    Top = 73
    Width = 105
    Height = 15
    Caption = 'Custo Unit'#225'rio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 120
    Top = 73
    Width = 84
    Height = 15
    Caption = 'Custo Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 230
    Top = 73
    Width = 98
    Height = 15
    Caption = 'Peso Unit'#225'rio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 340
    Top = 73
    Width = 77
    Height = 15
    Caption = 'Peso Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 450
    Top = 73
    Width = 77
    Height = 15
    Caption = 'Unit'#225'rio R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 561
    Top = 73
    Width = 63
    Height = 15
    Caption = 'Total R$:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object spbCancelar: TSpeedButton
    Left = 424
    Top = 131
    Width = 120
    Height = 33
    Caption = 'Cancelar '
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBF2F300ECCCD700ECCCD700EDCED900EDCE
      D900EDCED900EDCED900EDCED900ECCDD900F1D0D800F4D3D700F3D2D700F3D2
      D700F3D1D700FFDDCC00E9E5F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F6E4EB00E8C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100FFD6CB00727FE800043FFD002552F7002552F7002552F7002B58
      F6002650FB00305CFF000340FF0087A4FF00FFFFFF00FFFFFF00FFFFFF00F6E4
      EB00E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100FFDE
      CA005A62ED000008FF000023FF000023FF000023FF00001FFF00002DFF000041
      FF00003DFF006D90FF00FFFFFF00FFFFFF00FFFFFF00F6E5EB00E8C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100FFD8CA006577EB000031
      FF001046FC001046FC001046FC001348FB001146FD00154AFF00003DFF007A9A
      FF00FFFFFF00FFFFFF00FFFFFF00FEFBFB00F6E5EA00F3E1E700F4E3E900F4E3
      E900F4E3E900F4E3E900F4E3E900F5E4E900F2E1E900EFE0EA00F0E0EA00F0E0
      EA00F0DFE900FFEBE500F1F0FB00FFFFFF00F4F6FF00FAFBFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCF8F900F9F0F300FAF2F500FAF2F500FAF2F500FAF2
      F500FAF2F500FAF2F500FCF3F400FEF4F400FEF4F400FEF4F400FDF3F300FFF8
      F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E8
      ED00E8C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E5C0D200F8E8E800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6E3EB00E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C5D000F3E0E900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6E3EB00E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C5D000F4E0E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8EAEE00E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E8C3
      D100F6E6EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDF9FA00FAF3F600FBF5F700FBF5F700FBF5F700FBF5F700FBF5F700FBF5
      F700FBF5F700FBF5F700FBF5F700FBF5F700FAF3F600FCF7F900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF6F700EFD4DD00EED1
      DB00EFD3DD00EFD3DD00EFD3DD00EFD3DD00EFD3DD00EFD3DD00EFD3DD00EFD3
      DD00EFD3DD00EFD3DD00EED2DC00ECCED900FBF3F400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6E4EB00E8C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E8C4D100F4E1E800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F6E4EB00E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C5
      D000F4E0E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6E5
      EB00E8C3D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E8C4D100F4E1E800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF7F800EFD4DD00EDCE
      D900EED1DB00EED1DB00EED1DB00EED1DB00EED1DB00EED1DB00EED1DB00EED1
      DB00EED1DB00EED1DB00EDD0DA00EDCDD900FBF4F500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00}
    ParentFont = False
    OnClick = spbCancelarClick
  end
  object spbSalvar: TSpeedButton
    Left = 553
    Top = 130
    Width = 120
    Height = 33
    Caption = 'Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    Glyph.Data = {
      C6070000424DC607000000000000360000002800000016000000160000000100
      20000000000090070000120B0000120B00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008CC3890060AD5C00FCFD
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B6D9B400409E3D003E9E3B008BC38800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0095C9
      9300379D350052A8500061AE5F00369D340073B67000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCF5F600EDCFD900EBCAD500ECCDD800ECCD
      D800ECCDD800ECCDD800EDCDD900FFD2E900A5BC99001E971F002C9A2B00C9C3
      B800EDCDDA0049A045002D9A2C0082BE7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F6E4EB00E8C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100EAC4D200FFC9E60088AF7D0016951900B9BAA700FFCCF000FFCCEF00E2C3
      CC0045A04100369C350077B97400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6E4
      EB00E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100EEC5
      D500E5C4CE00C8BDB500FFC9E500EAC4D200E5C3CD00FFCEF600DBDBD2006BB9
      6B0048A0440072B77000FFFFFF00FFFFFF00FFFFFF00F6E5EB00E8C3D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E6C3CF00EFC6D800FDC9
      E400E9C4D100E8C4D000E9C4D100ECC4D400FFEEF800FFFFFF00319B2F0082BF
      7F00FFFFFF00FFFFFF00FFFFFF00FDF8F900F5E3E900F4E2E800F5E3E900F5E3
      E900F5E3E900F5E3E900F5E3E900F5E3E900F5E3E900F5E3E900F5E3E900F5E3
      E900F4E3E900F3E1E700FFFAFE00FFFFFF00E7F4E700F7FBF600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBF5F700F8ECF100F9EFF200F9EFF200F9EFF200F9EF
      F200F9EFF200F9EFF200F9EFF200F9EFF200F9EFF200F9EFF200F8ECF100FBF3
      F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E9
      ED00E8C3D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E8C3D100F7EAED00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6E3EB00E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100F6E5EC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6E3EB00E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100F6E5EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8EBEE00E9C3D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E8C3
      D100F8ECEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FBF5F700F8EBF000F9EEF200F9EEF200F9EEF200F9EEF200F9EEF200F9EE
      F200F9EEF200F9EEF200F9EEF200F9EEF200F8ECF000FBF3F600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF6F600EFD4DE00EED0
      DB00EFD3DD00EFD3DD00EFD3DD00EFD3DD00EFD3DD00EFD3DD00EFD3DD00EFD3
      DD00EFD3DD00EFD3DD00EED2DC00EED2DC00FCF7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6E4EB00E8C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E8C4D100F6E6EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F6E4EB00E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100F6E5EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6E5
      EB00E8C3D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4
      D100E9C4D100E9C4D100E9C4D100E9C4D100E9C4D100E8C4D100F6E6EC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF7F800EFD4DE00EDCE
      D900EED1DB00EED1DB00EED1DB00EED1DB00EED1DB00EED1DB00EED1DB00EED1
      DB00EED1DB00EED1DB00EDCFDA00EED0DB00FDF8F900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00}
    ParentFont = False
    OnClick = spbSalvarClick
  end
  object Image1: TImage
    Left = 443
    Top = 24
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
  object edtNomeProduto: TEdit
    Left = 11
    Top = 25
    Width = 422
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
  object edtQuantidade: TEdit
    Left = 475
    Top = 24
    Width = 190
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '1,000'
    OnExit = edtQuantidadeExit
  end
  object edtCustoUnitario: TEdit
    Left = 11
    Top = 89
    Width = 102
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtCustoTotal: TEdit
    Left = 121
    Top = 89
    Width = 102
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object edtPesoUnitario: TEdit
    Left = 231
    Top = 89
    Width = 102
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object edtPesoTotal: TEdit
    Left = 341
    Top = 89
    Width = 102
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object edtUnitario: TEdit
    Left = 451
    Top = 89
    Width = 102
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object edtTotal: TEdit
    Left = 562
    Top = 89
    Width = 102
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = 6316128
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
end
