object FormRelOrcamentos: TFormRelOrcamentos
  Left = 191
  Top = 154
  Width = 798
  Height = 564
  VertScrollBar.Position = 19
  Caption = 'Or'#231'amentos'
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
    Left = 1
    Top = -18
    Width = 794
    Height = 527
    DataSource = DMC.DTS_Orcamento_Itens
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 139.500000000000000000
    ExpressionParser = RLExpressionParser1
    object RLBand5: TRLBand
      Left = 19
      Top = 305
      Width = 756
      Height = 59
      BandType = btFooter
      Transparent = False
      object RLDBText30: TRLDBText
        Left = 0
        Top = 26
        Width = 105
        Height = 16
        DataField = 'OBSERVACOES'
        DataSource = DMC.DTS_Pedidos
        Transparent = False
      end
      object RLLabel39: TRLLabel
        Left = 0
        Top = 10
        Width = 72
        Height = 14
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel33: TRLLabel
        Left = 488
        Top = 26
        Width = 291
        Height = 16
        Caption = '_________________________________________'
        Transparent = False
      end
      object RLLabel34: TRLLabel
        Left = 552
        Top = 42
        Width = 151
        Height = 16
        Caption = 'Assinatura do Comprador'
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 211
      Width = 756
      Height = 60
      BandType = btSummary
      Transparent = False
      object RLLabel22: TRLLabel
        Left = -37
        Top = 47
        Width = 801
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText18: TRLDBText
        Left = 648
        Top = 3
        Width = 89
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_ITENS'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText20: TRLDBText
        Left = 656
        Top = 37
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_TOTAL'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 528
        Top = 4
        Width = 105
        Height = 14
        Caption = 'Valor Total dos Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel23: TRLLabel
        Left = 509
        Top = 39
        Width = 124
        Height = 14
        Caption = 'Valor total do or'#231'amento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel35: TRLLabel
        Left = 0
        Top = -10
        Width = 801
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel32: TRLLabel
        Left = 515
        Top = 21
        Width = 119
        Height = 14
        Caption = 'Descontos/Acrescimos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText31: TRLDBText
        Left = 635
        Top = 20
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DESCONTO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel45: TRLLabel
        Left = 289
        Top = 4
        Width = 64
        Height = 14
        Caption = 'Quant. Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel46: TRLLabel
        Left = 2
        Top = 3
        Width = 70
        Height = 14
        Caption = 'Total de Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult1: TRLDBResult
        Left = 54
        Top = 3
        Width = 184
        Height = 14
        Alignment = taCenter
        DataFormula = 'count(CODIGO_PRODUTO)'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 249
        Top = 3
        Width = 147
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(QUANTIDADE)'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel37: TRLLabel
        Left = 1
        Top = 23
        Width = 96
        Height = 14
        Caption = 'Condi'#231#227'o de Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText19: TRLDBText
        Left = 99
        Top = 23
        Width = 241
        Height = 14
        AutoSize = False
        DataField = 'PAGAMENTO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 1
        Top = 44
        Width = 96
        Height = 14
        Caption = 'Condi'#231#227'o de Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel42: TRLLabel
        Left = 147
        Top = 44
        Width = 31
        Height = 14
        Caption = 'Parc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel44: TRLLabel
        Left = 211
        Top = 44
        Width = 63
        Height = 14
        Caption = 'Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel43: TRLLabel
        Left = 340
        Top = 44
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
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 193
      Width = 756
      Height = 18
      Transparent = False
      object RLDBText11: TRLDBText
        Left = 0
        Top = 2
        Width = 65
        Height = 14
        AutoSize = False
        DataField = 'CODIGO_PRODUTO'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 69
        Top = 2
        Width = 281
        Height = 12
        AutoSize = False
        DataField = 'DESCRICAO_PRODUTO'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText13: TRLDBText
        Left = 354
        Top = 2
        Width = 43
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QUANTIDADE'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText14: TRLDBText
        Left = 448
        Top = 2
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_UNITARIO'
        DataSource = DMC.DTS_Orcamento_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 528
        Top = 2
        Width = 53
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ENC_FINANCEIRO'
        DataSource = DMC.DTS_Orcamento_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText16: TRLDBText
        Left = 593
        Top = 2
        Width = 59
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DESCONTO'
        DataSource = DMC.DTS_Orcamento_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText17: TRLDBText
        Left = 653
        Top = 2
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_TOTAL'
        DataSource = DMC.DTS_Orcamento_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rldbtxtQUANTIDADE: TRLDBText
        Left = 402
        Top = 2
        Width = 43
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'UNIDADE'
        DataSource = DMC.DTS_Orcamento_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 174
      BandType = btTitle
      Transparent = False
      object RLLabel40: TRLLabel
        Left = 2
        Top = 140
        Width = 801
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel21: TRLLabel
        Left = 0
        Top = 159
        Width = 801
        Height = 14
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 0
        Top = 70
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 45
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 7
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 256
        Top = 2
        Width = 226
        Height = 18
        Caption = 'ORCAMENTO / CONDICIONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 65
        Top = 24
        Width = 113
        Height = 16
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 584
        Top = 24
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 258
        Top = 42
        Width = 77
        Height = 16
        DataField = 'ENDERECO'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 543
        Top = 41
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 66
        Top = 42
        Width = 37
        Height = 16
        DataField = 'CNPJ'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 40
        Width = 34
        Height = 16
        Caption = 'Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 24
        Width = 60
        Height = 16
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 225
        Top = 41
        Width = 31
        Height = 16
        Caption = 'End:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 713
        Top = 42
        Width = 21
        Height = 16
        DataField = 'UF'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 662
        Top = 43
        Width = 8
        Height = 16
        Caption = '-'
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 0
        Top = 66
        Width = 25
        Height = 14
        Caption = 'Or'#231':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 57
        Top = 66
        Width = 43
        Height = 14
        DataField = 'CODIGO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 120
        Top = 66
        Width = 99
        Height = 14
        Caption = 'Data do Or'#231'amento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 228
        Top = 67
        Width = 32
        Height = 14
        DataField = 'DATA'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 543
        Top = 67
        Width = 54
        Height = 14
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 614
        Top = 67
        Width = 49
        Height = 14
        DataField = 'USUARIO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 156
        Width = 36
        Height = 14
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 75
        Top = 156
        Width = 107
        Height = 14
        AutoSize = False
        Caption = 'Descricao do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 371
        Top = 156
        Width = 26
        Height = 14
        AutoSize = False
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 488
        Top = 156
        Width = 41
        Height = 14
        AutoSize = False
        Caption = 'Vlr Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel18: TRLLabel
        Left = 539
        Top = 156
        Width = 47
        Height = 14
        AutoSize = False
        Caption = 'Enc. Fin.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel19: TRLLabel
        Left = 619
        Top = 156
        Width = 34
        Height = 14
        AutoSize = False
        Caption = 'Desc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel20: TRLLabel
        Left = 692
        Top = 156
        Width = 46
        Height = 14
        AutoSize = False
        Caption = 'Vlr Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel24: TRLLabel
        Left = 0
        Top = 88
        Width = 38
        Height = 14
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText21: TRLDBText
        Left = 112
        Top = 88
        Width = 78
        Height = 14
        DataField = 'NOME_CLIENTE'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText22: TRLDBText
        Left = 13
        Top = 88
        Width = 89
        Height = 14
        Alignment = taRightJustify
        DataField = 'CODIGO_CLIENTE'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel25: TRLLabel
        Left = 104
        Top = 88
        Width = 8
        Height = 16
        Caption = '-'
        Transparent = False
      end
      object RLLabel26: TRLLabel
        Left = 0
        Top = 104
        Width = 47
        Height = 14
        Caption = 'Cpf/Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText23: TRLDBText
        Left = 408
        Top = 88
        Width = 46
        Height = 14
        DataField = 'APELIDO'
        DataSource = DMC.DTS_CLIENTEO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel27: TRLLabel
        Left = 0
        Top = 120
        Width = 52
        Height = 14
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText24: TRLDBText
        Left = 72
        Top = 120
        Width = 57
        Height = 14
        DataField = 'ENDERECO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText25: TRLDBText
        Left = 72
        Top = 104
        Width = 53
        Height = 14
        DataField = 'CPF_CNPJ'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel28: TRLLabel
        Left = 408
        Top = 104
        Width = 30
        Height = 14
        Caption = 'Rg/IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText26: TRLDBText
        Left = 456
        Top = 104
        Width = 32
        Height = 14
        DataField = 'RG_IE'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel29: TRLLabel
        Left = 408
        Top = 120
        Width = 35
        Height = 14
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText27: TRLDBText
        Left = 456
        Top = 120
        Width = 42
        Height = 14
        DataField = 'BAIRRO'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel30: TRLLabel
        Left = 0
        Top = 136
        Width = 39
        Height = 14
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText28: TRLDBText
        Left = 72
        Top = 136
        Width = 40
        Height = 14
        DataField = 'CIDADE'
        DataSource = DMC.DTS_Orcamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel31: TRLLabel
        Left = 408
        Top = 136
        Width = 19
        Height = 14
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText29: TRLDBText
        Left = 456
        Top = 136
        Width = 16
        Height = 14
        DataField = 'UF'
        DataSource = DMC.DTS_CLIENTEO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rlbl1: TRLLabel
        Left = 419
        Top = 156
        Width = 26
        Height = 14
        AutoSize = False
        Caption = 'Und.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object rlsbdtl1: TRLSubDetail
      Left = 19
      Top = 271
      Width = 756
      Height = 34
      Background.Align = faNone
      DataSource = DMC.Dts_parcelas_orc
      Positioning = btSummary
      Transparent = False
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 17
        Background.Align = faNone
        Transparent = False
        object RLDBText35: TRLDBText
          Left = 299
          Top = 1
          Width = 74
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_PARC'
          DataSource = DMC.Dts_parcelas_orc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText34: TRLDBText
          Left = 209
          Top = 1
          Width = 66
          Height = 14
          Alignment = taRightJustify
          DataField = 'DATA_VENC'
          DataSource = DMC.Dts_parcelas_orc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText33: TRLDBText
          Left = 128
          Top = 1
          Width = 51
          Height = 14
          Alignment = taRightJustify
          DataField = 'PARCELA'
          DataSource = DMC.Dts_parcelas_orc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object rldbtxtPAGAMENTO: TRLDBText
          Left = 9
          Top = 2
          Width = 99
          Height = 14
          DataField = 'DESC_COND_PGTO'
          DataSource = DMC.Dts_parcelas_orc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 17
        Width = 756
        Height = 16
        Background.Align = faNone
        Background.AutoSize = False
        BandType = btFooter
        Transparent = False
        object RLLabel41: TRLLabel
          Left = 217
          Top = 2
          Width = 58
          Height = 14
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBResult3: TRLDBResult
          Left = 296
          Top = 2
          Width = 77
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR_PARC)'
          DataSource = DMC.Dts_parcelas_orc
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 546
    Top = 3
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 595
    Top = 10
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 580
    Top = 105
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 660
    Top = 105
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 540
    Top = 121
  end
end
