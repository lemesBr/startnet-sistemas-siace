object FormAniversariantes: TFormAniversariantes
  Left = 155
  Top = 213
  Width = 848
  Height = 563
  VertScrollBar.Position = 485
  Caption = 'FormAni'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = -499
    Width = 794
    Height = 1123
    DataSource = DMC.dts_clientes
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 85
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 67
        Width = 717
        Height = 15
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object rlbl5: TRLLabel
        Left = 0
        Top = 46
        Width = 717
        Height = 15
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object rldbtxtRAZAO_SOCIAL: TRLDBText
        Left = 1
        Top = 41
        Width = 62
        Height = 16
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL1: TRLDBText
        Left = 0
        Top = 25
        Width = 34
        Height = 16
        DataField = 'CNPJ'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 0
        Top = 2
        Width = 175
        Height = 23
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 168
        Top = 26
        Width = 306
        Height = 19
        Caption = 'SIACE - Relat'#243'rio de Aniversariantes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl12: TRLLabel
        Left = 605
        Top = 17
        Width = 40
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl1: TRLLabel
        Left = 61
        Top = 62
        Width = 171
        Height = 16
        Caption = 'Nome do Cliente / Apelido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 494
        Top = 63
        Width = 72
        Height = 16
        Caption = 'Data Aniv.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl2: TRLLabel
        Left = 0
        Top = 62
        Width = 47
        Height = 16
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl9: TRLLabel
        Left = 504
        Top = 46
        Width = 67
        Height = 13
        Caption = 'Data Inical:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object datai: TRLLabel
        Left = 583
        Top = 45
        Width = 26
        Height = 14
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlbl10: TRLLabel
        Left = 616
        Top = 46
        Width = 62
        Height = 13
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dataf: TRLLabel
        Left = 684
        Top = 46
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 608
        Top = 0
        Width = 26
        Height = 15
        Caption = 'P'#225'g:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 639
        Top = 1
        Width = 79
        Height = 15
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 682
        Top = 17
        Width = 36
        Height = 15
        Alignment = taRightJustify
      end
      object RLLabel6: TRLLabel
        Left = 282
        Top = 62
        Width = 64
        Height = 16
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 577
        Top = 62
        Width = 59
        Height = 16
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 651
        Top = 62
        Width = 48
        Height = 16
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 155
      Width = 718
      Height = 16
      BandType = btSummary
      object RLLabel18: TRLLabel
        Left = 0
        Top = -1
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel23: TRLLabel
        Left = 407
        Top = -1
        Width = 169
        Height = 16
        Caption = 'Total de Aniversariantes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 579
        Top = 0
        Width = 136
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'count(codigo)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object RLLabel20: TRLLabel
        Left = -7
        Top = 17
        Width = 729
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '_________________________________________________________'
      end
      object RLDBText22: TRLDBText
        Left = 8
        Top = 0
        Width = 45
        Height = 14
        DataField = 'CODIGO'
        DataSource = DMC.dts_clientes
      end
      object RLDBText23: TRLDBText
        Left = 64
        Top = 0
        Width = 54
        Height = 14
        DataField = 'NOME_RS'
        DataSource = DMC.dts_clientes
      end
      object RLLabel21: TRLLabel
        Left = 56
        Top = 0
        Width = 7
        Height = 14
        Caption = '-'
      end
      object RLDBText24: TRLDBText
        Left = 63
        Top = 14
        Width = 52
        Height = 14
        DataField = 'APELIDO'
        DataSource = DMC.dts_clientes
      end
      object RLDBText25: TRLDBText
        Left = 577
        Top = 0
        Width = 61
        Height = 14
        DataField = 'TELEFONE'
        DataSource = DMC.dts_clientes
      end
      object RLDBText26: TRLDBText
        Left = 651
        Top = 0
        Width = 54
        Height = 14
        DataField = 'CELULAR'
        DataSource = DMC.dts_clientes
      end
      object RLDBText27: TRLDBText
        Left = 577
        Top = 14
        Width = 25
        Height = 14
        DataField = 'FAX'
        DataSource = DMC.dts_clientes
      end
      object RLDBText28: TRLDBText
        Left = 281
        Top = 0
        Width = 62
        Height = 14
        DataField = 'ENDERECO'
        DataSource = DMC.dts_clientes
      end
      object RLDBText29: TRLDBText
        Left = 282
        Top = 14
        Width = 44
        Height = 14
        DataField = 'BAIRRO'
        DataSource = DMC.dts_clientes
      end
      object RLDBText30: TRLDBText
        Left = 401
        Top = 14
        Width = 45
        Height = 14
        DataField = 'CIDADE'
        DataSource = DMC.dts_clientes
      end
      object RLDBText31: TRLDBText
        Left = 473
        Top = 14
        Width = 17
        Height = 14
        DataField = 'UF'
        DataSource = DMC.dts_clientes
      end
      object RLDBText1: TRLDBText
        Left = 496
        Top = 0
        Width = 94
        Height = 14
        DataField = 'NASCIMENTO_IA'
        DataSource = DMC.dts_clientes
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'matricial'
    Left = 486
    Top = 20
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 646
    Top = 20
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 606
    Top = 20
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 542
    Top = 20
  end
end
