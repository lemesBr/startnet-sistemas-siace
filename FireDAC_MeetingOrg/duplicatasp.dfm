object Formdpl: TFormdpl
  Left = 517
  Top = 184
  Width = 815
  Height = 563
  Caption = 'Formdpl'
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
    Left = -8
    Top = -1
    Width = 794
    Height = 525
    DataSource = DMCOB.dts_cobranca1
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
    PageSetup.PaperHeight = 139.000000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    Transparent = False
    AfterPrint = RLReport1AfterPrint
    OnPageStarting = RLReport1PageStarting
    object RLSubDetail1: TRLSubDetail
      Left = 19
      Top = 19
      Width = 756
      Height = 482
      DataSource = DMCOB.dts_cobranca1
      object RLBand5: TRLBand
        Left = 0
        Top = 94
        Width = 756
        Height = 113
        object rlbl2: TRLLabel
          Left = 3
          Top = 80
          Width = 110
          Height = 16
          Caption = 'Valor por extenso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel19: TRLLabel
          Left = 472
          Top = 0
          Width = 73
          Height = 16
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel18: TRLLabel
          Left = 405
          Top = 0
          Width = 49
          Height = 16
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel17: TRLLabel
          Left = 272
          Top = 0
          Width = 34
          Height = 16
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel16: TRLLabel
          Left = 168
          Top = 0
          Width = 49
          Height = 16
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel15: TRLLabel
          Left = 51
          Top = 0
          Width = 34
          Height = 16
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel14: TRLLabel
          Left = 335
          Top = 0
          Width = 58
          Height = 16
          Caption = 'Duplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel13: TRLLabel
          Left = 123
          Top = 0
          Width = 41
          Height = 16
          Caption = 'Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object rldbtxt1: TRLDBText
          Left = 116
          Top = 78
          Width = 54
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 167
          Top = 26
          Width = 51
          Height = 14
          DataField = 'PARCELA'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText19: TRLDBText
          Left = 401
          Top = 26
          Width = 51
          Height = 14
          DataField = 'PARCELA'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText18: TRLDBText
          Left = 301
          Top = 26
          Width = 93
          Height = 14
          Alignment = taRightJustify
          DataField = 'CODIGO_COMPRA'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText17: TRLDBText
          Left = -6
          Top = 26
          Width = 90
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_COMPRA'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          AfterPrint = RLDBText17AfterPrint
        end
        object RLDBText15: TRLDBText
          Left = 440
          Top = 26
          Width = 103
          Height = 14
          Alignment = taRightJustify
          DataField = 'DATA_VENCIMENTO'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText14: TRLDBText
          Left = 216
          Top = 26
          Width = 90
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_COMPRA'
          DataSource = DMCOB.dts_cobranca1
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
          Left = 71
          Top = 26
          Width = 93
          Height = 14
          Alignment = taRightJustify
          DataField = 'CODIGO_COMPRA'
          DataSource = DMCOB.dts_cobranca1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 207
        Width = 756
        Height = 48
        Transparent = False
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 255
        Width = 756
        Height = 232
        Transparent = False
        object RLLabel26: TRLLabel
          Left = 43
          Top = 3
          Width = 48
          Height = 16
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText22: TRLDBText
          Left = 115
          Top = 3
          Width = 55
          Height = 16
          DataField = 'CODIGO'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel27: TRLLabel
          Left = 154
          Top = 3
          Width = 8
          Height = 16
          Caption = '-'
          Transparent = False
        end
        object RLDBText21: TRLDBText
          Left = 160
          Top = 3
          Width = 68
          Height = 16
          DataField = 'NOME_RS'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel28: TRLLabel
          Left = 43
          Top = 22
          Width = 57
          Height = 16
          Caption = 'Cpf/Cnpj:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText25: TRLDBText
          Left = 115
          Top = 22
          Width = 70
          Height = 16
          DataField = 'CPF_CNPJ'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel29: TRLLabel
          Left = 43
          Top = 42
          Width = 63
          Height = 16
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText24: TRLDBText
          Left = 115
          Top = 42
          Width = 77
          Height = 16
          DataField = 'ENDERECO'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel30: TRLLabel
          Left = 43
          Top = 64
          Width = 48
          Height = 16
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText28: TRLDBText
          Left = 115
          Top = 64
          Width = 52
          Height = 16
          DataField = 'CIDADE'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText23: TRLDBText
          Left = 451
          Top = 3
          Width = 60
          Height = 16
          DataField = 'APELIDO'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel31: TRLLabel
          Left = 451
          Top = 22
          Width = 40
          Height = 16
          Caption = 'Rg/IE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText26: TRLDBText
          Left = 499
          Top = 22
          Width = 42
          Height = 16
          DataField = 'RG_IE'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel32: TRLLabel
          Left = 451
          Top = 42
          Width = 42
          Height = 16
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText27: TRLDBText
          Left = 499
          Top = 42
          Width = 53
          Height = 16
          DataField = 'BAIRRO'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel33: TRLLabel
          Left = 451
          Top = 64
          Width = 25
          Height = 16
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText29: TRLDBText
          Left = 499
          Top = 64
          Width = 21
          Height = 16
          DataField = 'UF'
          DataSource = DMCOB.Dts_clientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel35: TRLLabel
          Left = 43
          Top = 93
          Width = 624
          Height = 16
          Caption = 
            'Reconhe'#231'o(emos) a exatid'#227'o desta DUPLICATA MERCANTIL, na importa' +
            'ncia acima, que pararei(emos) a  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText13: TRLDBText
          Left = 43
          Top = 107
          Width = 102
          Height = 16
          DataField = 'RAZAO_SOCIAL'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel37: TRLLabel
          Left = 307
          Top = 109
          Width = 334
          Height = 16
          Caption = 'ou a sua ordem, na pra'#231'a e vencimento acima indicados.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel38: TRLLabel
          Left = 3
          Top = 136
          Width = 32
          Height = 16
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel39: TRLLabel
          Left = 43
          Top = 136
          Width = 325
          Height = 16
          Caption = 'OBRIGADO PELA PREFER'#202'NCIA - VOLTE SEMPRE.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel40: TRLLabel
          Left = 3
          Top = 160
          Width = 120
          Height = 16
          Caption = 'Em ....../......./........'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel41: TRLLabel
          Left = 11
          Top = 184
          Width = 90
          Height = 16
          Caption = 'Data do Aceite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel43: TRLLabel
          Left = 539
          Top = 184
          Width = 132
          Height = 16
          Caption = 'Assinatura do Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel44: TRLLabel
          Left = 494
          Top = 167
          Width = 228
          Height = 16
          Caption = '________________________________'
          Transparent = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 94
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 296
          Top = 3
          Width = 156
          Height = 16
          Caption = 'DUPLITATA MERCANTIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 256
          Top = 24
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
        object RLDBText1: TRLDBText
          Left = 67
          Top = 24
          Width = 114
          Height = 16
          Alignment = taCenter
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
        object RLDBText5: TRLDBText
          Left = 330
          Top = 26
          Width = 37
          Height = 16
          DataField = 'CNPJ'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 72
          Top = 46
          Width = 102
          Height = 16
          Alignment = taCenter
          DataField = 'RAZAO_SOCIAL'
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
          Left = 88
          Top = 69
          Width = 72
          Height = 16
          Alignment = taCenter
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
        object RLLabel5: TRLLabel
          Left = 257
          Top = 41
          Width = 63
          Height = 16
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 330
          Top = 42
          Width = 77
          Height = 16
          DataField = 'ENDERECO'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 331
          Top = 59
          Width = 52
          Height = 16
          DataField = 'CIDADE'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 617
          Top = 58
          Width = 21
          Height = 16
          DataField = 'UF'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 257
          Top = 57
          Width = 48
          Height = 16
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 544
          Top = 24
          Width = 28
          Height = 16
          Caption = 'I.E.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 544
          Top = 40
          Width = 42
          Height = 16
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 544
          Top = 56
          Width = 25
          Height = 16
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 617
          Top = 42
          Width = 53
          Height = 16
          DataField = 'BAIRRO'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 617
          Top = 26
          Width = 16
          Height = 16
          DataField = 'IE'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 257
          Top = 73
          Width = 59
          Height = 16
          Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = 544
          Top = 72
          Width = 63
          Height = 16
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 640
          Top = 58
          Width = 31
          Height = 16
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText10: TRLDBText
          Left = 676
          Top = 58
          Width = 31
          Height = 16
          DataField = 'CEP'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText11: TRLDBText
          Left = 332
          Top = 75
          Width = 63
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText12: TRLDBText
          Left = 618
          Top = 75
          Width = 49
          Height = 14
          DataField = 'USUARIO'
          DataSource = DMC.DTS_Pedidos
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
  end
end
