object FormORCA80COL: TFormORCA80COL
  Left = 594
  Top = 74
  Width = 427
  Height = 697
  Caption = 'FormORCA80COL'
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
    Left = 0
    Top = 0
    Width = 283
    Height = 528
    DataSource = DMC.DTS_Orcamento_Itens
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 3.000000000000000000
    Margins.RightMargin = 1.000000000000000000
    Margins.BottomMargin = 1.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 75.000000000000000000
    PageSetup.PaperHeight = 139.700000000000000000
    PageSetup.ForceEmulation = True
    PreviewOptions.FormStyle = fsStayOnTop
    PreviewOptions.ShowModal = True
    PreviewOptions.Caption = 'Venda de Produtos'
    ExpressionParser = RLExpressionParser1
    Transparent = False
    object RLBand1: TRLBand
      Left = 4
      Top = 11
      Width = 275
      Height = 168
      BandType = btTitle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      object RLLabel40: TRLLabel
        Left = -1
        Top = 138
        Width = 273
        Height = 12
        Caption = '______________________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel21: TRLLabel
        Left = -8
        Top = 154
        Width = 278
        Height = 12
        Caption = '_______________________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 0
        Top = 74
        Width = 272
        Height = 13
        Caption = '_______________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 56
        Width = 272
        Height = 13
        Caption = '_______________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 10
        Width = 272
        Height = 13
        Caption = '_______________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 78
        Top = 7
        Width = 129
        Height = 11
        Caption = 'OR'#199'AMENTO/CONDICIONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 48
        Top = 24
        Width = 80
        Height = 12
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 193
        Top = 53
        Width = 51
        Height = 12
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 173
        Top = 39
        Width = 56
        Height = 12
        DataField = 'ENDERECO'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 33
        Top = 55
        Width = 39
        Height = 12
        DataField = 'CIDADE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 24
        Top = 39
        Width = 28
        Height = 12
        DataField = 'CNPJ'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 39
        Width = 25
        Height = 12
        Caption = 'Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 24
        Width = 43
        Height = 12
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 146
        Top = 39
        Width = 22
        Height = 12
        Caption = 'End:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 147
        Top = 53
        Width = 17
        Height = 13
        DataField = 'UF'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 126
        Top = 53
        Width = 15
        Height = 13
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 0
        Top = 72
        Width = 21
        Height = 12
        Caption = 'Orc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 28
        Top = 72
        Width = 41
        Height = 12
        DataField = 'CODIGO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 79
        Top = 72
        Width = 44
        Height = 12
        Caption = 'Data Orc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 130
        Top = 72
        Width = 27
        Height = 12
        DataField = 'DATA'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 195
        Top = 72
        Width = 27
        Height = 12
        Caption = 'Vend:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 223
        Top = 72
        Width = 46
        Height = 12
        DataField = 'USUARIO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 151
        Width = 36
        Height = 13
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 33
        Top = 150
        Width = 96
        Height = 13
        AutoSize = False
        Caption = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 136
        Top = 150
        Width = 21
        Height = 13
        AutoSize = False
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 190
        Top = 149
        Width = 33
        Height = 13
        AutoSize = False
        Caption = 'Vlr Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel20: TRLLabel
        Left = 235
        Top = 149
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Vlr Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel24: TRLLabel
        Left = 0
        Top = 89
        Width = 35
        Height = 12
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText21: TRLDBText
        Left = 68
        Top = 90
        Width = 74
        Height = 12
        DataField = 'NOME_CLIENTE'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText22: TRLDBText
        Left = 40
        Top = 90
        Width = 18
        Height = 11
        Alignment = taRightJustify
        DataField = 'CODIGO_CLIENTE'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel25: TRLLabel
        Left = 60
        Top = 90
        Width = 6
        Height = 12
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel26: TRLLabel
        Left = 0
        Top = 104
        Width = 44
        Height = 12
        Caption = 'Cpf/Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel27: TRLLabel
        Left = 0
        Top = 120
        Width = 45
        Height = 12
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText24: TRLDBText
        Left = 39
        Top = 119
        Width = 56
        Height = 12
        DataField = 'ENDERECO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText25: TRLDBText
        Left = 37
        Top = 104
        Width = 52
        Height = 12
        DataField = 'CPF_CNPJ'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel28: TRLLabel
        Left = 166
        Top = 104
        Width = 30
        Height = 12
        Caption = 'Rg/IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText26: TRLDBText
        Left = 199
        Top = 104
        Width = 31
        Height = 12
        DataField = 'RG_IE'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel29: TRLLabel
        Left = 171
        Top = 135
        Width = 30
        Height = 12
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText27: TRLDBText
        Left = 197
        Top = 135
        Width = 39
        Height = 12
        DataField = 'BAIRRO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel30: TRLLabel
        Left = 0
        Top = 135
        Width = 35
        Height = 12
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText28: TRLDBText
        Left = 39
        Top = 134
        Width = 39
        Height = 12
        DataField = 'CIDADE'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rlbl1: TRLLabel
        Left = 155
        Top = 149
        Width = 26
        Height = 13
        AutoSize = False
        Caption = 'Und.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel18: TRLLabel
        Left = 0
        Top = 54
        Width = 35
        Height = 12
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 4
      Top = 179
      Width = 275
      Height = 25
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      object RLDBText11: TRLDBText
        Left = 0
        Top = 2
        Width = 36
        Height = 11
        AutoSize = False
        DataField = 'CODIGO_PROD'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 37
        Top = 2
        Width = 228
        Height = 9
        AutoSize = False
        DataField = 'DESCRICAO_PRODUTO'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText13: TRLDBText
        Left = 112
        Top = 13
        Width = 43
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QUANTIDADE'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText14: TRLDBText
        Left = 184
        Top = 13
        Width = 41
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_UNITARIO'
        DataSource = DMC.DTS_Orcamento_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText17: TRLDBText
        Left = 226
        Top = 14
        Width = 44
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_TOTAL'
        DataSource = DMC.DTS_Orcamento_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rldbtxtQUANTIDADE: TRLDBText
        Left = 159
        Top = 13
        Width = 19
        Height = 11
        AutoSize = False
        DataField = 'UNIDADE'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 4
      Top = 204
      Width = 275
      Height = 81
      BandType = btSummary
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      object RLLabel38: TRLLabel
        Left = 0
        Top = 52
        Width = 268
        Height = 12
        Caption = '_____________________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText18: TRLDBText
        Left = 208
        Top = 1
        Width = 62
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_ITENS'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText20: TRLDBText
        Left = 208
        Top = 32
        Width = 62
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_TOTAL'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 116
        Top = 4
        Width = 92
        Height = 12
        Caption = 'Valor Total dos Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel23: TRLLabel
        Left = 118
        Top = 33
        Width = 90
        Height = 12
        Caption = 'Valor total da Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel45: TRLLabel
        Left = 1
        Top = 18
        Width = 57
        Height = 12
        Caption = 'Quant. Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel46: TRLLabel
        Left = 2
        Top = 3
        Width = 63
        Height = 12
        Caption = 'Total de Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult1: TRLDBResult
        Left = -59
        Top = 2
        Width = 164
        Height = 12
        Alignment = taRightJustify
        DataFormula = 'count(CODIGO_PRODUTO)'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = -26
        Top = 17
        Width = 131
        Height = 12
        Alignment = taRightJustify
        DataFormula = 'sum(QUANTIDADE)'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel47: TRLLabel
        Left = 157
        Top = 19
        Width = 51
        Height = 12
        Caption = 'Descontos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText39: TRLDBText
        Left = 208
        Top = 17
        Width = 63
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DESCONTO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel37: TRLLabel
        Left = 1
        Top = 47
        Width = 85
        Height = 12
        Caption = 'Condi'#231#227'o de Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText19: TRLDBText
        Left = 94
        Top = 46
        Width = 155
        Height = 14
        AutoSize = False
        DataField = 'PAGAMENTO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel19: TRLLabel
        Left = -6
        Top = -9
        Width = 293
        Height = 12
        Caption = '__________________________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel43: TRLLabel
        Left = 237
        Top = 64
        Width = 32
        Height = 14
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel44: TRLLabel
        Left = 147
        Top = 64
        Width = 55
        Height = 12
        Caption = 'Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel42: TRLLabel
        Left = 99
        Top = 64
        Width = 28
        Height = 12
        Caption = 'Parc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 1
        Top = 64
        Width = 85
        Height = 12
        Caption = 'Condi'#231#227'o de Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object rlsbdtl1: TRLSubDetail
      Left = 4
      Top = 285
      Width = 275
      Height = 34
      Background.Align = faNone
      DataSource = DMC.Dts_parcelas_orc
      FooterMeasuring = fmBeforeDetail
      Positioning = btSummary
      Transparent = False
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 275
        Height = 17
        Background.Align = faNone
        Transparent = False
        object RLDBText35: TRLDBText
          Left = 216
          Top = 1
          Width = 53
          Height = 12
          Alignment = taRightJustify
          DataField = 'VALOR_PARC'
          DataSource = DMC.Dts_parcelas_orc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText34: TRLDBText
          Left = 145
          Top = 1
          Width = 58
          Height = 12
          Alignment = taRightJustify
          DataField = 'DATA_VENC'
          DataSource = DMC.Dts_parcelas_orc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText33: TRLDBText
          Left = 99
          Top = 1
          Width = 27
          Height = 12
          Alignment = taRightJustify
          DataField = 'PARCELA'
          DataSource = DMC.Dts_parcelas_orc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object rldbtxtPAGAMENTO: TRLDBText
          Left = 2
          Top = 2
          Width = 85
          Height = 12
          DataField = 'DESC_COND_PGTO'
          DataSource = DMC.Dts_parcelas_orc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 17
        Width = 275
        Height = 16
        Background.Align = faNone
        Background.AutoSize = False
        BandType = btFooter
        Transparent = False
        object RLLabel41: TRLLabel
          Left = 155
          Top = 2
          Width = 50
          Height = 12
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBResult3: TRLDBResult
          Left = 208
          Top = 2
          Width = 61
          Height = 12
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_PARC)'
          DataSource = DMC.Dts_parcelas_orc
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 4
      Top = 319
      Width = 275
      Height = 81
      DataSource = DMC.DTS_Pedido_Itens
      Positioning = btSummary
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 275
        Height = 80
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        object RLLabel36: TRLLabel
          Left = 0
          Top = -9
          Width = 283
          Height = 12
          Caption = '________________________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 0
          Top = 39
          Width = 73
          Height = 11
          DataField = 'OBSERVACOES'
          DataSource = DMC.DTS_Orcamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel22: TRLLabel
          Left = 2
          Top = 28
          Width = 63
          Height = 11
          Caption = 'Observa'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel32: TRLLabel
          Left = 97
          Top = 58
          Width = 70
          Height = 11
          Caption = 'Siace Sistemas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel31: TRLLabel
          Left = 113
          Top = 27
          Width = 50
          Height = 11
          Caption = 'Assinatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel33: TRLLabel
          Left = 73
          Top = 16
          Width = 133
          Height = 11
          Caption = '__________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 306
    Top = 19
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 307
    Top = 58
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 443
    Top = 6
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 412
    Top = 11
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 485
    Top = 7
  end
end
