object FormFichaCliente: TFormFichaCliente
  Left = 180
  Top = 173
  Width = 844
  Height = 543
  VertScrollBar.Position = 282
  Caption = 'FormFichaCliente'
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
    Top = -290
    Width = 794
    Height = 1123
    DataSource = FormClientes.dts_cliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 758
      object RLLabel70: TRLLabel
        Left = -176
        Top = 600
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel66: TRLLabel
        Left = -83
        Top = 43
        Width = 839
        Height = 17
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel64: TRLLabel
        Left = -83
        Top = 15
        Width = 839
        Height = 17
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel57: TRLLabel
        Left = -155
        Top = 572
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel56: TRLLabel
        Left = -179
        Top = 519
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel54: TRLLabel
        Left = -83
        Top = 488
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel42: TRLLabel
        Left = -3
        Top = 386
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel40: TRLLabel
        Left = -3
        Top = 358
        Width = 830
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel31: TRLLabel
        Left = -3
        Top = 243
        Width = 759
        Height = 17
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel20: TRLLabel
        Left = -3
        Top = 215
        Width = 759
        Height = 17
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 0
        Top = 184
        Width = 755
        Height = 17
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = -75
        Top = 63
        Width = 839
        Height = 17
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 304
        Top = 3
        Width = 204
        Height = 24
        Caption = 'FICHA CADASTRAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 72
        Top = 82
        Width = 56
        Height = 16
        DataField = 'CODIGO'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 2
        Top = 82
        Width = 53
        Height = 16
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 136
        Top = 82
        Width = 45
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 200
        Top = 82
        Width = 54
        Height = 14
        DataField = 'NOME_RS'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = -83
        Top = -14
        Width = 838
        Height = 18
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel30: TRLLabel
        Left = 2
        Top = 132
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
      object RLLabel27: TRLLabel
        Left = 2
        Top = 116
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
      object RLLabel26: TRLLabel
        Left = 2
        Top = 100
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
      object RLDBText25: TRLDBText
        Left = 72
        Top = 100
        Width = 53
        Height = 14
        DataField = 'CPF_CNPJ'
        DataSource = FormClientes.dts_cliente
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
        Top = 116
        Width = 57
        Height = 14
        DataField = 'ENDERECO'
        DataSource = FormClientes.dts_cliente
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
        Top = 132
        Width = 40
        Height = 14
        DataField = 'CIDADE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText23: TRLDBText
        Left = 416
        Top = 84
        Width = 49
        Height = 14
        DataField = 'APELIDO'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel28: TRLLabel
        Left = 416
        Top = 100
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
        Left = 464
        Top = 100
        Width = 32
        Height = 14
        DataField = 'RG_IE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel29: TRLLabel
        Left = 416
        Top = 116
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
        Left = 464
        Top = 116
        Width = 42
        Height = 14
        DataField = 'BAIRRO'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 416
        Top = 132
        Width = 25
        Height = 14
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 464
        Top = 132
        Width = 22
        Height = 14
        DataField = 'CEP'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 627
        Top = 153
        Width = 24
        Height = 14
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 729
        Top = 152
        Width = 24
        Height = 14
        Alignment = taRightJustify
        DataField = 'FAX'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 2
        Top = 148
        Width = 31
        Height = 14
        Caption = 'Nasc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 72
        Top = 148
        Width = 85
        Height = 14
        DataField = 'NASCIMENTO_IA'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 2
        Top = 164
        Width = 31
        Height = 14
        Caption = 'Sexo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 72
        Top = 164
        Width = 31
        Height = 14
        DataField = 'SEXO'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 416
        Top = 148
        Width = 39
        Height = 14
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 464
        Top = 148
        Width = 50
        Height = 14
        DataField = 'CELULAR'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 416
        Top = 164
        Width = 34
        Height = 14
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText11: TRLDBText
        Left = 464
        Top = 164
        Width = 33
        Height = 14
        DataField = 'EMAIL'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 416
        Top = 180
        Width = 40
        Height = 14
        Caption = 'Natural:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 464
        Top = 180
        Width = 82
        Height = 14
        DataField = 'NATURALIDADE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel18: TRLLabel
        Left = 2
        Top = 180
        Width = 56
        Height = 14
        Caption = 'Ponto Ref.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText14: TRLDBText
        Left = 72
        Top = 180
        Width = 106
        Height = 14
        DataField = 'PONTO_REFERENCIA'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel19: TRLLabel
        Left = 312
        Top = 202
        Width = 170
        Height = 24
        Caption = 'Dados Familiares'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 4
        Top = 235
        Width = 20
        Height = 14
        Caption = 'Pai:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 74
        Top = 235
        Width = 19
        Height = 14
        DataField = 'PAI'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel22: TRLLabel
        Left = 418
        Top = 235
        Width = 26
        Height = 14
        Caption = 'M'#227'e:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText16: TRLDBText
        Left = 466
        Top = 235
        Width = 25
        Height = 14
        DataField = 'MAE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel23: TRLLabel
        Left = 2
        Top = 291
        Width = 33
        Height = 14
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText17: TRLDBText
        Left = 74
        Top = 291
        Width = 86
        Height = 14
        DataField = 'NOME_CONJUGE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel25: TRLLabel
        Left = -179
        Top = 272
        Width = 935
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 627
        Top = 115
        Width = 71
        Height = 14
        Caption = 'Org'#227'o Emisor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 627
        Top = 99
        Width = 62
        Height = 14
        Caption = 'Dt. Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel24: TRLLabel
        Left = 347
        Top = 260
        Width = 93
        Height = 24
        Caption = 'C'#244'njugue'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 627
        Top = 182
        Width = 56
        Height = 14
        Caption = 'Natural UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 627
        Top = 132
        Width = 30
        Height = 14
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 663
        Top = 115
        Width = 93
        Height = 14
        Alignment = taRightJustify
        DataField = 'ORGAO_EMISSOR'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 651
        Top = 99
        Width = 105
        Height = 14
        Alignment = taRightJustify
        DataField = 'DATA_EMISSAO_RG'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText13: TRLDBText
        Left = 674
        Top = 182
        Width = 82
        Height = 14
        Alignment = taRightJustify
        DataField = 'NATURALIDADE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 702
        Top = 132
        Width = 54
        Height = 14
        Alignment = taRightJustify
        DataField = 'TELEFONE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel32: TRLLabel
        Left = 2
        Top = 322
        Width = 48
        Height = 14
        Caption = 'Trabalho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText18: TRLDBText
        Left = 74
        Top = 322
        Width = 114
        Height = 14
        DataField = 'TRABALHO_CONJUGE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel33: TRLLabel
        Left = 418
        Top = 291
        Width = 23
        Height = 14
        Caption = 'Cpf:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText19: TRLDBText
        Left = 490
        Top = 291
        Width = 76
        Height = 14
        DataField = 'CPF_CONJUGE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel34: TRLLabel
        Left = 418
        Top = 307
        Width = 21
        Height = 14
        Caption = 'RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText20: TRLDBText
        Left = 490
        Top = 307
        Width = 79
        Height = 14
        DataField = 'RG_CONJUGUE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel35: TRLLabel
        Left = 2
        Top = 307
        Width = 31
        Height = 14
        Caption = 'Nasc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText21: TRLDBText
        Left = 74
        Top = 307
        Width = 123
        Height = 14
        DataField = 'NASCIMENTO_CONJUGE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel36: TRLLabel
        Left = 418
        Top = 323
        Width = 54
        Height = 14
        Caption = 'FDmiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText22: TRLDBText
        Left = 490
        Top = 323
        Width = 161
        Height = 14
        DataField = 'DATA_ADMINSSAO_CONJUGUE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel37: TRLLabel
        Left = 2
        Top = 339
        Width = 52
        Height = 14
        Caption = 'Profiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText29: TRLDBText
        Left = 74
        Top = 339
        Width = 116
        Height = 14
        DataField = 'PROFISSAO_CONJUGE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel38: TRLLabel
        Left = 418
        Top = 339
        Width = 37
        Height = 14
        Caption = 'Renda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText30: TRLDBText
        Left = 490
        Top = 339
        Width = 99
        Height = 14
        DataField = 'RENDA_CONJUGUE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel39: TRLLabel
        Left = 2
        Top = 355
        Width = 30
        Height = 14
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText31: TRLDBText
        Left = 74
        Top = 355
        Width = 91
        Height = 14
        DataField = 'FONE_CONJUGUE'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel41: TRLLabel
        Left = 299
        Top = 374
        Width = 232
        Height = 24
        Caption = 'Ref'#234'rencias Comerciais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel43: TRLLabel
        Left = 2
        Top = 403
        Width = 57
        Height = 14
        Caption = 'Empresa 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText32: TRLDBText
        Left = 74
        Top = 403
        Width = 106
        Height = 14
        DataField = 'NOME1_REFERENCIA'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel44: TRLLabel
        Left = 418
        Top = 403
        Width = 57
        Height = 14
        Caption = 'Empresa 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText33: TRLDBText
        Left = 490
        Top = 403
        Width = 106
        Height = 14
        DataField = 'NOME2_REFERENCIA'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel45: TRLLabel
        Left = 2
        Top = 418
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
      object RLDBText34: TRLDBText
        Left = 74
        Top = 419
        Width = 131
        Height = 14
        DataField = 'ENDERECO_REFERENCIA1'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel46: TRLLabel
        Left = 418
        Top = 418
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
      object RLDBText35: TRLDBText
        Left = 490
        Top = 419
        Width = 131
        Height = 14
        DataField = 'ENDERECO_REFERENCIA2'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel47: TRLLabel
        Left = 2
        Top = 434
        Width = 30
        Height = 14
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText36: TRLDBText
        Left = 74
        Top = 435
        Width = 128
        Height = 14
        DataField = 'TELEFONE1_REFERENCIA'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel48: TRLLabel
        Left = 2
        Top = 450
        Width = 54
        Height = 14
        Caption = 'FDmiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText37: TRLDBText
        Left = 74
        Top = 451
        Width = 167
        Height = 14
        DataField = 'DATA_ADMISSAO_REFERENCIA1'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText38: TRLDBText
        Left = 74
        Top = 467
        Width = 59
        Height = 14
        DataField = 'CONTATO1'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel49: TRLLabel
        Left = 2
        Top = 466
        Width = 43
        Height = 14
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel50: TRLLabel
        Left = 418
        Top = 434
        Width = 30
        Height = 14
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText39: TRLDBText
        Left = 490
        Top = 435
        Width = 128
        Height = 14
        DataField = 'TELEFONE2_REFERENCIA'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel51: TRLLabel
        Left = 418
        Top = 450
        Width = 54
        Height = 14
        Caption = 'FDmiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText40: TRLDBText
        Left = 490
        Top = 451
        Width = 167
        Height = 14
        DataField = 'DATA_ADMISSAO_REFERENCIA2'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel52: TRLLabel
        Left = 418
        Top = 466
        Width = 43
        Height = 14
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText41: TRLDBText
        Left = 490
        Top = 467
        Width = 59
        Height = 14
        DataField = 'CONTATO2'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel53: TRLLabel
        Left = 2
        Top = 482
        Width = 26
        Height = 14
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText42: TRLDBText
        Left = 74
        Top = 483
        Width = 59
        Height = 14
        DataField = 'CONTATO1'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel55: TRLLabel
        Left = 303
        Top = 505
        Width = 173
        Height = 24
        Caption = 'Local de Trabalho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel58: TRLLabel
        Left = 2
        Top = 539
        Width = 48
        Height = 14
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText43: TRLDBText
        Left = 74
        Top = 539
        Width = 95
        Height = 14
        DataField = 'LOCALTRABALHO'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel60: TRLLabel
        Left = 2
        Top = 555
        Width = 30
        Height = 14
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText45: TRLDBText
        Left = 74
        Top = 556
        Width = 128
        Height = 14
        DataField = 'TELEFONE1_REFERENCIA'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel61: TRLLabel
        Left = 418
        Top = 555
        Width = 73
        Height = 14
        Caption = 'Remunera'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText46: TRLDBText
        Left = 490
        Top = 556
        Width = 82
        Height = 14
        DataField = 'REMUNERACAO'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel62: TRLLabel
        Left = 418
        Top = 539
        Width = 52
        Height = 14
        Caption = 'Profiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText47: TRLDBText
        Left = 490
        Top = 540
        Width = 83
        Height = 14
        DataField = 'PROFISSAO_RA'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel63: TRLLabel
        Left = 2
        Top = 571
        Width = 26
        Height = 14
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText48: TRLDBText
        Left = 74
        Top = 572
        Width = 145
        Height = 14
        DataField = 'OBSERVACOES_TRABALHO'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel59: TRLLabel
        Left = -83
        Top = 71
        Width = 6
        Height = 16
        Caption = #39
        Transparent = False
      end
      object RLLabel65: TRLLabel
        Left = 328
        Top = 33
        Width = 136
        Height = 24
        Caption = 'Dados Gerais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel67: TRLLabel
        Left = 2
        Top = 59
        Width = 62
        Height = 16
        Caption = 'Data Cad:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText44: TRLDBText
        Left = 72
        Top = 59
        Width = 65
        Height = 16
        DataField = 'DATACAD'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel68: TRLLabel
        Left = 416
        Top = 60
        Width = 59
        Height = 16
        Caption = 'Data Alt.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText49: TRLDBText
        Left = 486
        Top = 60
        Width = 123
        Height = 16
        DataField = 'DATA_ALTERACAO'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel69: TRLLabel
        Left = 294
        Top = 590
        Width = 219
        Height = 24
        Caption = 'Autorizados a Comprar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel71: TRLLabel
        Left = 7
        Top = 626
        Width = 42
        Height = 14
        Caption = 'Pessoa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText50: TRLDBText
        Left = 55
        Top = 626
        Width = 77
        Height = 14
        DataField = 'AUTORIZADO1'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel72: TRLLabel
        Left = 419
        Top = 621
        Width = 25
        Height = 14
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText51: TRLDBText
        Left = 452
        Top = 621
        Width = 55
        Height = 14
        DataField = 'CPF_AUT1'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel73: TRLLabel
        Left = 7
        Top = 643
        Width = 42
        Height = 14
        Caption = 'Pessoa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText52: TRLDBText
        Left = 55
        Top = 643
        Width = 77
        Height = 14
        DataField = 'AUTORIZADO2'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel74: TRLLabel
        Left = 419
        Top = 638
        Width = 25
        Height = 14
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText53: TRLDBText
        Left = 452
        Top = 638
        Width = 55
        Height = 14
        DataField = 'CPF_AUT2'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel75: TRLLabel
        Left = 7
        Top = 662
        Width = 42
        Height = 14
        Caption = 'Pessoa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText54: TRLDBText
        Left = 55
        Top = 662
        Width = 77
        Height = 14
        DataField = 'AUTORIZADO2'
        DataSource = FormClientes.dts_cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel76: TRLLabel
        Left = 419
        Top = 657
        Width = 25
        Height = 14
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText55: TRLDBText
        Left = 452
        Top = 657
        Width = 55
        Height = 14
        DataField = 'CPF_AUT2'
        DataSource = FormClientes.dts_cliente
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
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 648
    Top = 8
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 616
    Top = 8
  end
  object Matricial: TRLDraftFilter
    Left = 584
    Top = 8
  end
end
