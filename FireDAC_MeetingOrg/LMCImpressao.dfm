object frmLMCImpressao: TfrmLMCImpressao
  Left = 450
  Top = 259
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o LMC'
  ClientHeight = 155
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgravar: TFlatPanel
    Left = 0
    Top = 123
    Width = 534
    Height = 32
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 0
    object bcancelar: TAdvGlowButton
      Left = 269
      Top = 3
      Width = 108
      Height = 24
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E74944415478DA
        62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
        FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
        5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
        6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
        2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
        721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
        1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
        0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
        4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
        3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
        3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
        9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
        7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
        DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
        865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
        9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
        68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
        73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
        8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
        2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
        0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
        01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
        9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
        008C5756165E6F8C750000000049454E44AE426082}
      TabOrder = 0
      OnClick = bcancelarClick
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object brelatorio: TAdvGlowButton
      Left = 150
      Top = 3
      Width = 108
      Height = 24
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002B64944415478DA
        62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
        B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
        44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
        CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
        1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
        6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
        40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
        03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
        EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
        C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
        1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
        B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
        7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
        F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
        2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
        E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
        0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
        01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
        F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
        194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
        62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
        13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
        AE426082}
      TabOrder = 1
      OnClick = brelatorioClick
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
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 497
    Height = 105
    TabOrder = 1
    object Label3: TLabel
      Left = 32
      Top = 56
      Width = 75
      Height = 13
      Caption = 'Combust'#237'vel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Data Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 291
      Top = 24
      Width = 63
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eproduto: TRzButtonEdit
      Left = 112
      Top = 50
      Width = 57
      Height = 21
      Text = ''
      TabOrder = 2
      OnEnter = RzButtonEdit1Enter
      OnExit = RzButtonEdit1Exit
      OnKeyPress = RzButtonEdit1KeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = RzButtonEdit1ButtonClick
    end
    object edtini: TDateEdit
      Left = 111
      Top = 16
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnEnter = edtiniEnter
      OnExit = edtiniExit
      OnKeyPress = edtiniKeyPress
    end
    object edtfinal: TDateEdit
      Left = 357
      Top = 16
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnEnter = edtfinalEnter
      OnExit = edtfinalExit
      OnKeyPress = edtfinalKeyPress
    end
    object TProduto: TEdit
      Left = 173
      Top = 50
      Width = 305
      Height = 21
      TabOrder = 3
    end
  end
  object qrLMC: TFDQuery
    Active = True
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from LMC')
    Left = 400
    Top = 88
    object qrLMCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrLMCTANQUE: TIntegerField
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
    end
    object qrLMCBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
    end
    object qrLMCBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 5
    end
    object qrLMCABERTURA: TIntegerField
      FieldName = 'ABERTURA'
      Origin = 'ABERTURA'
    end
    object qrLMCENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Origin = 'ENCERRANTE'
    end
    object qrLMCCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
    end
    object qrLMCDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrLMCPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 3
    end
    object qrLMCQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object qrLMCSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object qrLMCNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
    end
    object qrLMCNOTAFISCAL1: TStringField
      FieldName = 'NOTAFISCAL1'
      Origin = 'NOTAFISCAL1'
      Size = 10
    end
    object qrLMCNOTAFISCAL2: TStringField
      FieldName = 'NOTAFISCAL2'
      Origin = 'NOTAFISCAL2'
      Size = 10
    end
    object qrLMCNOTAFISCAL3: TStringField
      FieldName = 'NOTAFISCAL3'
      Origin = 'NOTAFISCAL3'
      Size = 10
    end
    object qrLMCNOTAFISCAL4: TStringField
      FieldName = 'NOTAFISCAL4'
      Origin = 'NOTAFISCAL4'
      Size = 10
    end
    object qrLMCQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
      Origin = 'QUANTNF1'
    end
    object qrLMCQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
      Origin = 'QUANTNF2'
    end
    object qrLMCQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
      Origin = 'QUANTNF3'
    end
    object qrLMCQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
      Origin = 'QUANTNF4'
    end
    object qrLMCBICO1: TIntegerField
      FieldName = 'BICO1'
      Origin = 'BICO1'
    end
    object qrLMCBICO2: TIntegerField
      FieldName = 'BICO2'
      Origin = 'BICO2'
    end
    object qrLMCBICO3: TIntegerField
      FieldName = 'BICO3'
      Origin = 'BICO3'
    end
    object qrLMCBICO4: TIntegerField
      FieldName = 'BICO4'
      Origin = 'BICO4'
    end
    object qrLMCBICO5: TIntegerField
      FieldName = 'BICO5'
      Origin = 'BICO5'
    end
    object qrLMCBICO6: TIntegerField
      FieldName = 'BICO6'
      Origin = 'BICO6'
    end
    object qrLMCBICO7: TIntegerField
      FieldName = 'BICO7'
      Origin = 'BICO7'
    end
    object qrLMCBICO8: TIntegerField
      FieldName = 'BICO8'
      Origin = 'BICO8'
    end
    object qrLMCABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
      Origin = 'ABER_BICO1'
    end
    object qrLMCABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
      Origin = 'ABER_BICO2'
    end
    object qrLMCABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
      Origin = 'ABER_BICO3'
    end
    object qrLMCABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
      Origin = 'ABER_BICO4'
    end
    object qrLMCABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
      Origin = 'ABER_BICO5'
    end
    object qrLMCABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
      Origin = 'ABER_BICO6'
    end
    object qrLMCABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
      Origin = 'ABER_BICO7'
    end
    object qrLMCABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
      Origin = 'ABER_BICO8'
    end
    object qrLMCENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
      Origin = 'ENC_BICO1'
    end
    object qrLMCENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
      Origin = 'ENC_BICO2'
    end
    object qrLMCENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
      Origin = 'ENC_BICO3'
    end
    object qrLMCENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
      Origin = 'ENC_BICO4'
    end
    object qrLMCENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
      Origin = 'ENC_BICO5'
    end
    object qrLMCENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
      Origin = 'ENC_BICO6'
    end
    object qrLMCENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
      Origin = 'ENC_BICO7'
    end
    object qrLMCENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
      Origin = 'ENC_BICO8'
    end
    object qrLMCAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
      Origin = 'AFER_BICO1'
    end
    object qrLMCAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
      Origin = 'AFER_BICO2'
    end
    object qrLMCAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
      Origin = 'AFER_BICO3'
    end
    object qrLMCAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
      Origin = 'AFER_BICO4'
    end
    object qrLMCAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
      Origin = 'AFER_BICO5'
    end
    object qrLMCAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
      Origin = 'AFER_BICO6'
    end
    object qrLMCAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
      Origin = 'AFER_BICO7'
    end
    object qrLMCAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
      Origin = 'AFER_BICO8'
    end
    object qrLMCQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
      Origin = 'QTEVEND_1'
    end
    object qrLMCQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
      Origin = 'QTEVEND_2'
    end
    object qrLMCQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
      Origin = 'QTEVEND_3'
    end
    object qrLMCQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
      Origin = 'QTEVEND_4'
    end
    object qrLMCQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
      Origin = 'QTEVEND_5'
    end
    object qrLMCQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
      Origin = 'QTEVEND_6'
    end
    object qrLMCQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
      Origin = 'QTEVEND_7'
    end
    object qrLMCQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
      Origin = 'QTEVEND_8'
    end
    object qrLMCTOTALVEND_1: TBCDField
      FieldName = 'TOTALVEND_1'
      Origin = 'TOTALVEND_1'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_2: TBCDField
      FieldName = 'TOTALVEND_2'
      Origin = 'TOTALVEND_2'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_3: TBCDField
      FieldName = 'TOTALVEND_3'
      Origin = 'TOTALVEND_3'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_4: TBCDField
      FieldName = 'TOTALVEND_4'
      Origin = 'TOTALVEND_4'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_5: TBCDField
      FieldName = 'TOTALVEND_5'
      Origin = 'TOTALVEND_5'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_6: TBCDField
      FieldName = 'TOTALVEND_6'
      Origin = 'TOTALVEND_6'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_7: TBCDField
      FieldName = 'TOTALVEND_7'
      Origin = 'TOTALVEND_7'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_8: TBCDField
      FieldName = 'TOTALVEND_8'
      Origin = 'TOTALVEND_8'
      Precision = 18
      Size = 3
    end
    object qrLMCESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
      Origin = 'ESTOQ_ABERTURA'
    end
    object qrLMCESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
      Origin = 'ESTOQ_ESCRITURAL'
    end
    object qrLMCESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
      Origin = 'ESTOQ_FECHAMENTO'
    end
    object qrLMCPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
      Origin = 'PERDA_SOBRA'
    end
    object qrLMCOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
    object qrLMCPAGINA: TIntegerField
      FieldName = 'PAGINA'
      Origin = 'PAGINA'
    end
    object qrLMCID_BICO1: TStringField
      FieldName = 'ID_BICO1'
      Origin = 'ID_BICO1'
      Size = 2
    end
    object qrLMCID_BICO2: TStringField
      FieldName = 'ID_BICO2'
      Origin = 'ID_BICO2'
      Size = 2
    end
    object qrLMCID_BICO3: TStringField
      FieldName = 'ID_BICO3'
      Origin = 'ID_BICO3'
      Size = 2
    end
    object qrLMCID_BICO4: TStringField
      FieldName = 'ID_BICO4'
      Origin = 'ID_BICO4'
      Size = 2
    end
    object qrLMCID_BICO5: TStringField
      FieldName = 'ID_BICO5'
      Origin = 'ID_BICO5'
      Size = 2
    end
    object qrLMCID_BICO6: TStringField
      FieldName = 'ID_BICO6'
      Origin = 'ID_BICO6'
      Size = 2
    end
    object qrLMCID_BICO7: TStringField
      FieldName = 'ID_BICO7'
      Origin = 'ID_BICO7'
      Size = 2
    end
    object qrLMCID_BICO8: TStringField
      FieldName = 'ID_BICO8'
      Origin = 'ID_BICO8'
      Size = 2
    end
    object qrLMCVENDAS_DIA: TLargeintField
      FieldName = 'VENDAS_DIA'
      Origin = 'VENDAS_DIA'
    end
    object qrLMCRECEBIDO_DIA: TLargeintField
      FieldName = 'RECEBIDO_DIA'
      Origin = 'RECEBIDO_DIA'
    end
    object qrLMCDISPONIVEL_DIA: TLargeintField
      FieldName = 'DISPONIVEL_DIA'
      Origin = 'DISPONIVEL_DIA'
    end
    object qrLMCTOTALVENDAS_DIA: TBCDField
      FieldName = 'TOTALVENDAS_DIA'
      Origin = 'TOTALVENDAS_DIA'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVENDAS_ACU: TBCDField
      FieldName = 'TOTALVENDAS_ACU'
      Origin = 'TOTALVENDAS_ACU'
      Precision = 18
      Size = 3
    end
  end
  object qrCombustiveis: TFDQuery
    Connection = DM.Coneccao
    Left = 472
    Top = 112
  end
end
