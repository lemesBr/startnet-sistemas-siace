object FormAutorizacao: TFormAutorizacao
  Left = 374
  Top = 145
  Width = 838
  Height = 511
  Caption = 'FormAutorizacao'
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
    Top = -8
    Width = 794
    Height = 1123
    DataSource = FormClientes.dts_cliente
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 19
      Top = 257
      Width = 756
      Height = 352
      object RLDBText2: TRLDBText
        Left = 92
        Top = 2
        Width = 68
        Height = 16
        DataField = 'NOME_RS'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText3: TRLDBText
        Left = 92
        Top = 85
        Width = 115
        Height = 16
        DataField = 'LOCALTRABALHO'
        DataSource = FormClientes.dts_cliente
      end
      object RLLabel6: TRLLabel
        Left = 0
        Top = 0
        Width = 48
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 16
        Width = 62
        Height = 16
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 69
        Width = 37
        Height = 16
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 0
        Top = 85
        Width = 73
        Height = 16
        Caption = 'Emp. Trab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 92
        Top = 18
        Width = 77
        Height = 16
        DataField = 'ENDERECO'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText5: TRLDBText
        Left = 92
        Top = 69
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = FormClientes.dts_cliente
      end
      object RLLabel10: TRLLabel
        Left = 93
        Top = 53
        Width = 62
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 0
        Top = 112
        Width = 756
        Height = 33
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          
            'Venho por interm'#233'dio desta, autorizar as pessoas abaixo relacion' +
            'FDas a comprar e efetuar qualquer debito sob minha inteira respo' +
            'nsabilidade, sendo a empresa isenta de qualquer problema eventua' +
            'lmente existente entre o cliente e a pessoa autorizada.')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 0
        Top = 160
        Width = 755
        Height = 32
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            'Fica de inteira responsabilidade do cliente ao pagamento de d'#233'bi' +
            'tos efetuados por ele ou por pessoas autorizadas e tamb'#233'm pelos ' +
            'produtos FDquiridos nesta empresa.')
      end
      object RLMemo3: TRLMemo
        Left = 0
        Top = 208
        Width = 754
        Height = 16
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            'E para que surta efeitos legais, assino esta em duas vias de igu' +
            'al teor.')
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 248
        Width = 232
        Height = 16
        Caption = 'PESSOAS AUTORIZADAS PELO CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 1
        Top = 283
        Width = 93
        Height = 16
        DataField = 'AUTORIZADO1'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText10: TRLDBText
        Left = 1
        Top = 299
        Width = 93
        Height = 16
        DataField = 'AUTORIZADO2'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText11: TRLDBText
        Left = 1
        Top = 315
        Width = 93
        Height = 16
        DataField = 'AUTORIZADO3'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText12: TRLDBText
        Left = 1
        Top = 264
        Width = 112
        Height = 16
        DataField = 'NOME_CONJUGE'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText13: TRLDBText
        Left = 274
        Top = 264
        Width = 99
        Height = 16
        DataField = 'CPF_CONJUGE'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText14: TRLDBText
        Left = 274
        Top = 280
        Width = 69
        Height = 16
        DataField = 'CPF_AUT1'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText15: TRLDBText
        Left = 274
        Top = 297
        Width = 69
        Height = 16
        DataField = 'CPF_AUT2'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText16: TRLDBText
        Left = 275
        Top = 313
        Width = 69
        Height = 16
        DataField = 'CPF_AUT3'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText17: TRLDBText
        Left = 92
        Top = 35
        Width = 53
        Height = 16
        DataField = 'BAIRRO'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText18: TRLDBText
        Left = 380
        Top = 18
        Width = 61
        Height = 16
        DataField = 'NUMERO'
        DataSource = FormClientes.dts_cliente
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 219
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      object rldbtxtRAZAO_SOCIAL: TRLDBText
        Left = 43
        Top = 57
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
        Left = 152
        Top = 146
        Width = 440
        Height = 19
        Caption = 'TERMO DE AUTORIZA'#199#195'O DE COMPRA '#192' TERCEIROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 1
        Top = 25
        Width = 68
        Height = 16
        DataField = 'ENDERECO'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 40
        Width = 62
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 56
        Width = 39
        Height = 16
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 609
      Width = 756
      Height = 144
      object RLLabel8: TRLLabel
        Left = 2
        Top = 121
        Width = 372
        Height = 16
        Caption = 'Obs.: Mantenha seu Cr'#233'dito pagando suas contas em dia. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 341
        Top = 58
        Width = 361
        Height = 16
        Caption = '___________________________________________________'
      end
      object RLDBText6: TRLDBText
        Left = 340
        Top = 74
        Width = 68
        Height = 16
        DataField = 'NOME_RS'
        DataSource = FormClientes.dts_cliente
      end
      object RLDBText7: TRLDBText
        Left = 340
        Top = 90
        Width = 70
        Height = 16
        DataField = 'CPF_CNPJ'
        DataSource = FormClientes.dts_cliente
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 464
        Top = 8
        Width = 60
        Height = 16
        Info = itFullDate
      end
      object RLLabel5: TRLLabel
        Left = 344
        Top = 8
        Width = 55
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 422
    Top = 46
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 542
    Top = 14
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 582
    Top = 14
  end
end
