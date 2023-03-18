object FormNcmInv: TFormNcmInv
  Left = 306
  Top = 230
  Width = 924
  Height = 480
  Caption = 'FormNcmInv'
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
    Left = 8
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 84
      AutoSize = True
      BandType = btColumnHeader
      object rlbl5: TRLLabel
        Left = -1
        Top = 49
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel4: TRLLabel
        Left = -1
        Top = 69
        Width = 717
        Height = 15
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 208
        Top = 36
        Width = 376
        Height = 23
        Caption = 'Relatorio de Produtos com Ncms inv'#225'lidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 66
        Width = 81
        Height = 14
        Caption = 'C'#243'd de barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 502
        Top = 66
        Width = 27
        Height = 14
        Alignment = taRightJustify
        Caption = 'Ncm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 556
        Top = 66
        Width = 71
        Height = 14
        Alignment = taRightJustify
        Caption = 'Pre'#231'o Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 640
        Top = 66
        Width = 73
        Height = 14
        Alignment = taRightJustify
        Caption = 'Pre'#231'o Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 594
        Top = 2
        Width = 31
        Height = 16
        Caption = 'P'#225'g:'
      end
      object RLDBText8: TRLDBText
        Left = 0
        Top = 4
        Width = 169
        Height = 22
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL: TRLDBText
        Left = 1
        Top = 39
        Width = 71
        Height = 16
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbtxtRAZAO_SOCIAL1: TRLDBText
        Left = 0
        Top = 25
        Width = 38
        Height = 16
        DataField = 'CNPJ'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl12: TRLLabel
        Left = 589
        Top = 17
        Width = 37
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 125
        Top = 66
        Width = 60
        Height = 14
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 631
        Top = 2
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 664
        Top = 19
        Width = 54
        Height = 16
        Alignment = taRightJustify
      end
      object RLLabel9: TRLLabel
        Left = -1
        Top = -15
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 122
      Width = 718
      Height = 16
      AutoSize = True
      Transparent = False
      object RLDBText11: TRLDBText
        Left = 0
        Top = 2
        Width = 97
        Height = 14
        AutoSize = False
        DataField = 'CODIGO_BARRAS'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 125
        Top = 2
        Width = 308
        Height = 12
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText13: TRLDBText
        Left = 544
        Top = 2
        Width = 83
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_CUSTO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 440
        Top = 2
        Width = 89
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'NCM_SH'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText17: TRLDBText
        Left = 629
        Top = 2
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_VENDA'
        DataSource = DataSource1
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.70B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 744
    Top = 48
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 808
    Top = 80
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 776
    Top = 128
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 832
    Top = 160
  end
  object FDQuery1: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT PRODUTOS.CODIGO, PRODUTOS.CODIGO_BARRAS, PRODUTOS.DESCRIC' +
        'AO, PRODUTOS.PRECO_CUSTO, PRODUTOS.PRECO_VENDA, PRODUTOS.ATIVO, ' +
        'PRODUTOS.NCM_SH'
      
        'FROM PRODUTOS LEFT JOIN TABELA_NCM ON PRODUTOS.NCM_SH = TABELA_N' +
        'CM.CODIGO_NCM'
      'WHERE (((TABELA_NCM.CODIGO_NCM) Is Null));')
    Left = 816
    Top = 32
    object FDQuery1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1CODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object FDQuery1PRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object FDQuery1PRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object FDQuery1ATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object FDQuery1NCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 848
    Top = 64
  end
end
