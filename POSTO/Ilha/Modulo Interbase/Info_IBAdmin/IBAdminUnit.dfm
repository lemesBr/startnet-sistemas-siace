object InfoIBDBFrm: TInfoIBDBFrm
  Left = 32
  Top = 133
  Width = 694
  Height = 419
  Caption = 'Listagem :: Informa'#231#245'es Gerais do Banco de Dados'
  Color = clBtnFace
  Constraints.MinHeight = 419
  Constraints.MinWidth = 586
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 508
    Height = 366
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = Memo1Change
    OnKeyDown = Memo1KeyDown
  end
  object Panel1: TPanel
    Left = 508
    Top = 0
    Width = 178
    Height = 366
    Align = alRight
    Alignment = taRightJustify
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 147
      Height = 41
      Caption = 'Estat'#237'sticas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA35228A35228A35228A35228A352
        28A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A3
        5228A35228A35228A35228A35228A35228A35228A35228A35228A35228FFF7EE
        FEF5EBFFF4E7FFF2E4FEF0DFFFEFDCFEECD7FFEBD4FFE9D0FEE7CCFEE5C8FFE3
        C5FFE1C1FEDFBEFEDEBAFEDDB7FEDBB4FEDAB1FED9AFFFD8ADFED7ABFED7ABA3
        5228A35228FEF8F0FFF6EDFFF5E9FFF3E6737373FEEFDEFEEEDBFFECD7737373
        FFE7CFFFE6CBFEE4C7737373FFE1BFFEDFBCFEDDB9737373FEDBB3FEDAB0FED8
        AE737373FED7ABA35228A35228FFF9F2FFF7EF73737373737373737373737373
        7373737373737373737373737373737373737373737373737373737373737373
        737373737373737373737373737373A35228A35228FFFAF4FEF9F1737373FFF6
        EBFFF4E7C0CCFB0033FF0B227DFEECD89AD79A0099000E470EFFE4C8EBBFBFCC
        66675D2A2BFFDEBAA5CFFA3499FF1A4571FED9AEFED8ADA35228A35228FFFBF6
        737373737373FFF6EDFFF4E9C0CCFB0033FF0B227DFFEDDA9AD79A0099000E47
        0EFEE6CAEBBFBFCC66675D2A2BFEDFBBA5CFFA3499FF1A4571FED9B0FED8AEA3
        5228A35228FFFCF8FFFAF5737373FFF8EFFEF5ECC0CCFB0033FF0B227DFFEEDD
        9AD79A0099000E470EFEE7CDEBBFBFCC66675D2A2BFFE0BEA5CFFA3499FF1A45
        71FEDAB2FED9AFA35228A35228FFFCF9737373737373FFF8F1FEF7EEC0CCFB00
        33FF0B227DFFEFDE9AD79A0099000E470EFFE8CFEBBFBFCC66675D2A2BFEE1C0
        A5CFFA3499FF1A4571FFDBB3FEDAB1A35228A35228FFFDFBFFFBF9737373FFF9
        F3FFF8F0C0CCFB0033FF0B227DFFF1E19AD79A0099000E470EFFE9D1FFE7CDFE
        E6CAFEE4C6FEE2C3A5CFFA3499FF1A4571FEDCB5FEDAB3A35228A35228FFFDFD
        737373737373FFFAF5FFF9F1C0CCFB0033FF0B227DFEF2E39AD79A0099000E47
        0EFFEAD4FFE8D0FEE7CCFEE5C9FFE3C5A5CFFA3499FF1A4571FEDCB7FEDBB4A3
        5228A35228FFFEFDFFFDFC737373FFFBF7FFF9F4C0CCFB0033FF0B227DFFF3E6
        9AD79A0099000E470EFEECD7FEEAD2FEE8CEFEE6CBFEE4C7A5CFFA3499FF1A45
        71FEDDB9FEDDB6A35228A35228FFFEFF737373737373FFFCF8FFFAF6C0CCFB00
        33FF0B227DFEF4E89AD79A0099000E470EFFEDD9FFEBD5FFE9D1FEE8CDFEE6CA
        FEE3C6FEE2C2FEE1BEFEDEBBFFDDB8A35228A35228FFFFFFFFFEFE737373FFFD
        FAFFFCF8C0CCFB0033FF0B227DFFF5EB9AD79A0099000E470EFEEEDBFEECD8FF
        EAD4FFE8D0FFE6CCFFE5C8FFE3C4FEE1C0FEDFBEFFDEBAA35228A35228FFFFFF
        737373737373FFFDFBFFFCF9FFFAF6FFF9F3FFF8F0FFF6ED9AD79A0099000E47
        0EFFEFDEFFEEDAFEEBD6FEEAD2FEE8CEFEE6CAFEE4C7FEE2C3FEE0BFFEDFBCA3
        5228A35228FFFFFFFFFFFF737373FFFEFCFFFDFBFFFBF8FEFBF5FFF9F2FFF7EF
        FFF6ECFEF4E8FFF2E4FFF0E0FFEFDDFEEDD9FFEBD5FEE9D1FEE7CDFFE5C9FEE3
        C5FEE2C1FFE0BEA35228A35228EAC078EAC078EAC078EAC078EAC078EAC078EA
        C078EAC078EAC078EAC078EAC078EAC078EAC078EAC078EAC078EAC078EAC078
        EAC078EAC078EAC078EAC078EAC078A35228A35228CA6E18D77712D77712D777
        12D77712D77712D77712D77712D77712D77712D77712D77712D77712D77712FC
        C080EE9E40E58616FCC080EE9E40AE7A4E4E6ED4CA6E18A35228A35228C67738
        D2833ED2833ED2833ED2833ED2833ED2833ED2833ED2833ED2833ED2833ED283
        3ED2833ED2833EF6BB80E29140D47616FCC080E291409E6A4E4E6ED4C67738A3
        5228FF00FFA35228A35228A35228A35228A35228A35228A35228A35228A35228
        A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A352
        28A35228A35228FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 56
      Width = 147
      Height = 41
      Caption = 'Log'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF92635DEFE0CCEFE0CCEFE0CCEFE0CCEFE0CCEFE0CC
        EFE0CCEFE0CCEBD9C1EBD9C1EBD9C1EBD9C1EBD9C1EBD9C1EBD9C1EBD9C1A467
        69FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF92635DEFE0CCEEDECBFCEAD7FC
        EAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7
        EBD9C1EBD9C1A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF92635DEFE1
        D0EFE0CEFEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FE
        BD82FEBD82FEBD82EBD9C1EBD9C1A46769FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF92635DF0E3D4F0E2D1EFE1CFEFE0CEEEDECBEEDDC9EDDCC7EDDCC5EBDA
        C2EBD9C1EBD9C1EBD9C1EBD9C1EBD9C1EBD9C1EBD9C1A46769FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF92635DF0E5D7EFE2D4FCEAD7FCEAD7FCEAD7FCEAD7
        FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7EAD8C0EAD8C0A467
        69FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF92635DE7DDD0E7DCCFFEBD82FE
        BD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD82
        E1CFB8E1CFB8A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E6E64CEC6
        BCCEC5BACEC4B7CCC2B7CBC1B5CBC0B4CAC0B1CABFAFCABDADCABCACCABBAAC9
        BAA7C9B8A6C7B7A5C7B7A4C7B7A4A46769FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF895F56A19A95A09993A09891A09790A0978E9F978C9E968B9E958A9D93
        899D93879C92869C92849C91829C90829C8F819A8E808E595BFF00FFFF00FFFF
        00FF8C38168C38168C38168C38168C38168C38168C38168C38168C38168C3816
        8C38168C38168C38168C38168C38168C38168C38168C38168C38168C38168C38
        168C38168C38168C38168C3816FF00FFFF00FFA77568E0D9D3E0D9D0DED7CFDE
        D7CEDDD4CBDDD4C9DDD3C7DDD0C5DCD0C4DACEC1DACEBFD9CEBDD9CCBCD8CABA
        D8CAB7D8C9B6A46769FF00FFFF00FF8C38168C3816FF00FFFF00FFA77568D1CC
        C7D1CAC5CC5A2ACC5A2ACC5A2ACC5A2ACC5A2ACC5A2ACC5A2ACC5A2ACC5A2ACC
        5A2ACC5A2ACC5A2AC9BCADC9BBABA46769FF00FFFF00FF8C38168C3816FF00FF
        FF00FF996D5CA4A19DA3A09CF3BB9FF3BB9FF3BB9FF3BB9FF3BB9FF3BB9FF3BB
        9FF3BB9FF3BB9FF3BB9FF3BB9FF3BB9F9D958A9D93888E595BFF00FFFF00FF8C
        38168C38168C38168C38168C38168C38168C38168C38168C38168C38168C3816
        8C38168C38168C38168C38168C38168C38168C38168C38168C38168C38168C38
        168C38168C38168C3816FF00FFFF00FFFF00FFB17E6BFFFEFCFFFEFCFFFEFCFF
        FEFCFFFEFCFAF4EFFAF4EFF8F2EAF8F2EAF6EDE5F6EDE5F4EDE2F4EDE2F3E6D9
        F3E6D9F3E6D9A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBB846EFEFC
        FBFCFBF8FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FC
        EAD7FCEAD7FCEAD7F2E6DAF2E5D8A46769FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFC0896FFFFFFFFFFFFFFEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD
        82FEBD82FEBD82FEBD82FEBD82FEBD82F3EADEF3E9DDA46769FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFC58C70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EDE2F4EBE0A467
        69FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB9173FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFCFEFBF8FEFAF6FBF7F3FAF6F0FAF4EFF8F3EDF8F0EAF7EFE9
        F7EEE6F4EDE3A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF9674FFFF
        FFFFFFFFFCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FCEAD7FC
        EAD7FCEAD7FCEAD7F7F0EAF7EFE7A46769FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFD49875FFFFFFFFFFFFFEBD82FEBD82FEBD82FEBD82FEBD82FEBD82FEBD
        82FEBD82FEBD82FEBD82FEBD82FEBD82F8F3EDF8F2EAA46769FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFD49875FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFEFBF8FCFAF6FBF7F3FAF6F0F8F3EEA467
        69FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD49875FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFAFEFAF7
        FCF8F4FAF6F2A46769FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD49876CF8E
        68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF
        8E68CF8E68CF8E68CF8E68CF8E68956662FF00FFFF00FFFF00FF}
    end
    object BitBtn3: TBitBtn
      Left = 16
      Top = 104
      Width = 147
      Height = 41
      Caption = 'Propriedades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFD5A285D29F84CF9C82CB9A81C89780C5947FC2917EBF
        8F7DBC8C7CB8897BB5877AB28479AF8178AC7F77A97C76A67A75FF00FF000000
        000000000000000000000000FF00FFFF00FFD5A285FEFAF6FCF6EFFBF2E9FAEE
        E1F9EBDAF8E7D3F6E4CDF5E0C6F4DEBFF3DAB8F2D7B1F1D4ABF0D1A4EFCE9DA6
        7A75FF00FF000000FF00FF0335FB0335FB000000FF00FFFF00FFD5A285FEFAF6
        FCF6EFFBF2E9FAEEE1F9EBDAF8E7D3F6E4CDF5E0C6F4DEBFF3DAB8F2D7B1F1D4
        ABF0D1A4EFCE9DA67A75FF00FF0000000335FB0335FB0335FB00071FFF00FFFF
        00FFD5A285FEFAF6FCF6EFFBF2E9FAEEE1F9EBDAF8E7D3F6E4CDF5E0C6F4DEBF
        F3DAB8F2D7B1F1D4ABF0D1A4EFCE9DA67A75FF00FF000000FF00FFFF00FFFF00
        FF0330E4FF00FFFF00FFD5A285D29F84CF9C82CB9A81C89780C5947FC2917EBF
        8F7DBC8C7CB8897BB5877AB28479AF8178AC7F77A97C76A67A75FF00FF000000
        0000000000000000000330E40335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFD5A285D29F84CF9C82CB9A81C89780C5947FC2917EBF8F7DBC8C7CB8897B
        B5877AB28479AF8178AC7F77A97C76A67A75FF00FF0000000000000000000000
        00000000FF00FFFF00FFD5A285FEFAF6FCF6EFFBF2E9FAEEE1F9EBDAF8E7D3F6
        E4CDF5E0C6F4DEBFF3DAB8F2D7B1F1D4ABF0D1A4EFCE9DA67A75FF00FF000000
        FF00FF0335FB0335FB000000FF00FFFF00FFD5A285FEFAF6FCF6EFFBF2E9FAEE
        E1F9EBDAF8E7D3F6E4CDF5E0C6F4DEBFF3DAB8F2D7B1F1D4ABF0D1A4EFCE9DA6
        7A75FF00FF0000000335FB0335FB0335FB00071FFF00FFFF00FFD5A285FEFAF6
        FCF6EFFBF2E9FAEEE1F9EBDAF8E7D3F6E4CDF5E0C6F4DEBFF3DAB8F2D7B1F1D4
        ABF0D1A4EFCE9DA67A75FF00FF000000FF00FFFF00FFFF00FF0330E4FF00FFFF
        00FFD5A285D29F84CF9C82CB9A81C89780C5947FC2917EBF8F7DBC8C7CB8897B
        B5877AB28479AF8178AC7F77A97C76A67A75FF00FF0000000000000000000000
        000330E40335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD5A285D29F84
        CF9C82CB9A81C89780C5947FC2917EBF8F7DBC8C7CB8897BB5877AB28479AF81
        78AC7F77A97C76A67A75FF00FF000000000000000000000000000000FF00FFFF
        00FFD5A285FEFAF6FCF6EFFBF2E9FAEEE1F9EBDAF8E7D3F6E4CDF5E0C6F4DEBF
        F3DAB8F2D7B1F1D4ABF0D1A4EFCE9DA67A75FF00FF000000FF00FF0335FB0335
        FB000000FF00FFFF00FFD5A285FEFAF6FCF6EFFBF2E9FAEEE1F9EBDAF8E7D3F6
        E4CDF5E0C6F4DEBFF3DAB8F2D7B1F1D4ABF0D1A4EFCE9DA67A75FF00FF000000
        0335FB0335FB0335FB00071FFF00FFFF00FFD5A285FEFAF6FCF6EFFBF2E9FAEE
        E1F9EBDAF8E7D3F6E4CDF5E0C6F4DEBFF3DAB8F2D7B1F1D4ABF0D1A4EFCE9DA6
        7A75FF00FF000000FF00FFFF00FFFF00FF0330E4FF00FFFF00FFD5A285D29F84
        CF9C82CB9A81C89780C5947FC2917EBF8F7DBC8C7CB8897BB5877AB28479AF81
        78AC7F77A97C76A67A75FF00FF0000000000000000000000000330E40335FBFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn5: TBitBtn
      Left = 16
      Top = 320
      Width = 146
      Height = 41
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0005B70005B70005B7FF00FFFF00FFFF00FF0005B70005B70005
        B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0005B70005B70005B7FF00FFFF00FFFF00FFFF00FF
        0005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00FFFF00FFFF
        00FFFF00FFFF00FF0005B70005B70005B70005B70005B7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B700
        05B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B7
        0005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006
        F60005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF0005B700
        05B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0005B70005B70005B70005B7FF00FFFF00FF0005
        B70005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B7
        0005B70005B70005B70005B70005B70005B7FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0005B70005B70006F60005B70006F60005B70005B7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B70006F60005B7FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70006F60005B70005
        B70006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70006F6
        0005B70006F60006F60006F60005B70006F6FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F600
        06F60006F60005B70006F6FF00FFFF00FF0006F60006F60006F60006F6FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0006F60006F60005B70006F60006F6FF00FFFF00FFFF00FFFF00FF0006F600
        06F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0006F60006F60006F60006F60006F6FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0006F60006F60006F60006F60006F6FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F6FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F60006F60006F6FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0006F6FF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F60006
        F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F6
        0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn4: TBitBtn
      Left = 16
      Top = 216
      Width = 146
      Height = 41
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn4Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        995951883838823435843535812E2F8C5859A4A5A5A5A3A3A6A4A4A7A5A4A7A4
        A4A6A4A4A5A3A3A4A3A3A5A5A58E5656802D2D813132813233823435823435FF
        00FFFF00FFA0675BB25350BA4949BA4949BC4A4AA43D3D824E4F9C9D9DBFBFBC
        DDDAD8EEEAE7F7F2EEF7F2EDE9E5E3DAD9D7D4D5D5A35B5B7D1818801F1F8723
        23B04141AF4546823334FF00FFA0675BB25350BF4A4ABF4B4BC04C4CA73E3F83
        51518A7474A16766C19A97D5BDBBF7F2EDFFFBF7FAF4F2EAE7E5E1E2E1A65B5C
        7B1716801E1E872323B14141B14747823334FF00FFA0675BB25350BD4A4ABC4B
        4BC04C4CA53E3E8756568A6364872625A05553BA8986E6E1DDFAF4F2FEF8F4F7
        F2EEEBEBEAA95E5D7B1717801E1E872323B14141B14747823334FF00FFA0675B
        B25350BD4A4ABC4B4BC04C4CA53E3E8B5959916A6A7F1B1B882828A15A58D4CC
        CBEEEAE7FAF4F2FEFAF6F8F8F4AC62627B1617801E1E872323B14141B1474782
        3334FF00FFA0675BB25350BD4A4ABC4B4BC04C4CA53E3E8F5B5B986F6E801D1D
        7F1B1B892F2FBAB1B0DDDAD8EFEBE7FCF7F3FFFFFCB165647A1616801E1E8723
        23B14141B14747823334FF00FFA0675BB25350BD4A4ABC4B4BC04C4CA43D3D96
        5F5EA173727F18187F18187F1D1D989090C1C1C0DEDAD7F3EFEBFFFFFCB46866
        7A1616801E1E872323B14141B14747823334FF00FFA0675BB25350BD4A4ABC4B
        4BC04C4CA13C3C996260B59592904A4A8A4545864949878888A0A6A5C6CAC7E6
        EAE6FFFFFFB268677714147D1C1C842121B04141B14747823334FF00FFA0675B
        B25350BD4A4ABC4B4BC04C4CAB4141A65657C6918FBA8989AD8181A57B7B9D74
        749D7474B28887CC9E9DDEB1AFB55C5B912828952D2D993030B64545B1464782
        3334FF00FFA0675BB25350BF4B4BBF4B4BBF4B4BBD4A4ABD4848BC4646BC4747
        BC4747BD4647BD4647BC4646BB4444BB4444BA4444BC4747BD4A4ABD4848BF4B
        4BC04C4CAF4546823334FF00FFA0675BB25350B64545B04241B44846B85150BC
        5757BF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5B
        BF5C5BBF5E5DBF5454BF4B4BAF4546823334FF00FFA0685BB454519C35318F30
        2CA1514DB47673C29693CBAAA9CCADACCCACABCCACABCCACABCCACABCCACABCC
        ACABCCACABCCACABCCACABCCB2B1C47777BD4646AF4546823334FF00FFA0685B
        B45350972D29C08782F8F2EFF3E7E6F4EAE9F6EDEBF6EDEBF6EDEBF6EDEBF6ED
        EBF6EDEBF6EDEBF6EDEBF6EDEBF6EDEBF8EFEEE9DDDCBF7574B23F3FAF454682
        3435FF00FFA0685BB45350972D29C5908CFFFFFFFAF2F0FAF2F0FAF2F0FAF2F0
        FAF2F0FAF2F0FAF2F0FAF2F0FAF2F0FAF2F0FAF2F0FAF2F0FCF4F3EAE0DEBD74
        73B03D3DAF4546823435FF00FFA0685BB45350972D29C48E8AFFFFFCF6EEEDF6
        EDEBF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EDEB
        FAF2F0EADEDDBD7473B03D3DAF4546823435FF00FFA0685BB45350972D29C48E
        8AFFFFFEE2DCDABDBBBBBFBDBDBFBDBDBFBDBDBFBDBDBFBDBDBFBDBDBFBDBDBF
        BDBDBFBDBDBBBAB8DED9D9EEE1E0BD7473B03D3DAF4546823435FF00FFA0685B
        B45350972D29C48E8AFFFFFEF2E9E9E7E1E0E7E1E0E7E1E0E7E1E0E7E1E0E7E1
        E0E7E1E0E7E1E0E7E1E0E7E1E0E6E0DEF2EBEBEDE0DEBD7473B03D3DAF454682
        3435FF00FFA0685BB45350972D29C48E8AFFFFFEE6E0DEC7C4C4C9C5C5C9C5C5
        C9C5C5C9C5C5C9C5C5C9C5C5C9C5C5C9C5C5C9C5C5C5C2C2E2DDDDEDE1E0BD74
        73B03D3DAF4546823435FF00FFA0685BB45350972D29C48E8AFFFFFEEEE6E5DD
        D7D5DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DCD5D5
        EEE7E6EDE0DEBD7473B03D3DAF4546823435FF00FFA0685BB45350972D29C48E
        8AFFFFFEEEE6E5DDD7D5DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DD
        D8D7DDD8D7DCD5D5EEE7E6EDE0DEBD7473B03D3DAF4546823435FF00FFA0685B
        B45350972D29C48E8AFFFFFEE5DDDDC5C1C1C6C4C2C6C4C2C6C4C2C6C4C2C6C4
        C2C6C4C2C6C4C2C6C4C2C6C4C2C2C0C0E2DCDAEEE1E0BD7473B03D3DAF454682
        3435FF00FFA0685BB45350972D29C58F8BFFFFFFFBF2F0FCF3F2FCF3F2FCF3F2
        FCF3F2FCF3F2FCF3F2FCF3F2FCF3F2FCF3F2FCF3F2FCF3F2FFF6F4EDE0DEBD74
        73B23F3FB04647823435FF00FFA0685BAD5450952D29BC8783EFEFEEEAE2E1EA
        E2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1
        EBE6E5E1D7D5B87270A53939A54142823435FF00FFFF00FF9858518A2D28A36F
        6DB6BCBCB4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4
        B2B2B4B2B2B4B2B2B2B2B2C1BAB8A56A6A7E2C2D823334FF00FF}
    end
    object BitBtn6: TBitBtn
      Left = 16
      Top = 264
      Width = 146
      Height = 41
      Caption = 'Abrir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn6Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1392CA1392CA1392CA3EBBE12BAAD8199ACF10
        91CA0C8CC7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A8CC693D5EBA5FFFF81FE
        FF7EF7FF78EEFC67E0F650CBEB3BBAE228A7D81698CE0F90C90B8BC6FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF078BC6
        48ADD8BCFEFF76FAFF7BF8FF7BF8FF7DF8FF80F8FF7FF7FF77F0FF6FE7FB5AD5
        F044C2E731B1DE1FA0D31293CB0D8FC90D8FC7FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF1092CA28A0D1B5EDF782FCFF79F7FF7AF6FF79F4FF78F3FF77F2FF
        76F3FF77F0FF78F2FF7AF3FF77EFFF70E9FC67E0F849C6ED1A9CD3FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1797CC40B8E07AC9E5A4FFFF76F7FF7AF6FF79
        F4FF78F3FF77F2FF75F2FF75EFFF74EEFE73EDFE72EBFE72EDFE74EEFF66E0FE
        3FBDEB0F91CAFF00FFFF00FFFF00FFFF00FFFF00FF1595CB64D9EF45B4DCBBF8
        FE77F8FF79F6FF79F4FF78F3FF77F2FF75F2FF75EFFF74EEFE73EDFE72EBFE70
        EBFE72EBFE5DD9FA58D3F825A9D7FF00FFFF00FFFF00FFFF00FFFF00FF1493CB
        7FEDFA38BCDEA5DEF088FCFF78F6FF79F4FF78F3FF77F2FF75F2FF75EFFF74EE
        FE73EDFE72EBFE73EDFE72EBFE5DD8FA5DD8FB4BCAEA0B8BC6FF00FFFF00FFFF
        00FFFF00FF1493CB84EFFB4CD5ED6EC1E1ACFFFF73F6FF78F4FF78F3FF77F2FF
        75F2FF75EFFF74EEFE73EDFE72EBFE70EBFE72EBFE5DD8FA59D4F870E9FB1698
        CEFF00FFFF00FFFF00FFFF00FF1493CB80EBF873F6FC32A9D5C1F0FA8CFCFF7A
        F7FF76F4FF72F2FF6FF2FF73EFFF74EEFE73EDFE72EBFE70EBFE72EBFE5DD8FA
        046009086A0F33B6DEFF00FFFF00FFFF00FFFF00FF1593CB7FEBF883FFFF40C7
        E644ABD7A7E0EFB0EDF7B2F2FBAFF3FCACFAFF88F6FF6EEDFE73EDFE72EBFE70
        EBFE72EBFE01570428AD4735C75E07670D0D8FC7FF00FFFF00FFFF00FF1695CB
        86EEFA7EFEFF7DFAFF49CFEA3CBCE13DB7DE44B6DD4BB5DC57B6DCAAE1F09DF8
        FF6CEDFE6FEBFE70EBFE0050001D9A3643E17840DD7223AC40035A05FF00FFFF
        00FFFF00FF1695CB86EFFA7DFCFF7DF8FF81FCFF7FFBFF78F4FF70EFFE6BEDFB
        46CEEB28A5D49AD5EBB6FAFF79EFFF0157031B953244E57A3BD4692FC6541199
        1F119222025804FF00FFFF00FF1695CB84EFFA7EFCFF7BF8FF7AF7FF7AF6FF7A
        F6FF79F4FF78F3FF7DF7FF62E3F729ABD864BBDD01570311991F1F9A3724A941
        2CC04E23B74019AA3011991F11991F015503FF00FF1696CB87F0FB7EFCFF7BF8
        FF7AF7FF7AF6FF79F4FF78F3FF77F2FF75F2FF79F3FF73EEFE42C9E901570301
        5703015703035C061CA9341AB132025C04025C04015703015603FF00FF1896CC
        8FF6FC7BFCFF7BF8FF7AF7FF7AF6FF79F4FF78F3FF76F3FF74F3FF74F0FF74EF
        FF78F2FF6FEDFF65E6FB66E6FB02580412982311A522025C04FF00FFFF00FFFF
        00FFFF00FF1795CB9FF0F87EFCFF7AF8FF7AF7FF7AF6FF78F4FF79F4FF88EFFC
        8AEEFC88EEFC86EDFC83EDFC82EDFE80EFFF86F3FF035C060C9318079511025C
        04FF00FFFF00FFFF00FFFF00FF0A8CC65FBFE1A1FFFF7FFEFF7DFBFF7AF8FF7A
        FAFF6BE9FA1C9CCF1C98CC229ED027A0D12BA4D42FA7D535AAD83CAFDA036908
        07951004860C025C04FF00FFFF00FFFF00FFFF00FFFF00FF1190C968C9E67BDD
        EF7FE1F387E7F791F0FA40BCE1098AC5FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF025A0405860C06920E036D07025C04FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0C8CC71190C91491CA1793CA1895CB0F90C9FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF036A0705870C06900D037008015503FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF01550302590404690A05780C047F0B037709036305025C04FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF025C04025B05025B04025904015503FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 366
    Width = 686
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object FormStorage1: TFormStorage
    IniSection = 'InfoIBDBFrm'
    Options = []
    StoredProps.Strings = (
      'BitBtn1.Hint'
      'BitBtn2.Hint'
      'BitBtn3.Hint'
      'BitBtn4.Hint'
      'BitBtn5.Hint'
      'BitBtn6.Hint'
      'StatusBar1.SimplePanel')
    StoredValues = <>
    Left = 472
    Top = 8
  end
end