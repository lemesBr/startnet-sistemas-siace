object FormRelAbertuaOs: TFormRelAbertuaOs
  Left = 321
  Top = 94
  Width = 837
  Height = 628
  Caption = 'FormRelAbertuaOs'
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
    Top = -2
    Width = 794
    Height = 525
    DataSource = DMOS.DTS_REL_OS
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 139.000000000000000000
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 156
      BandType = btHeader
      Transparent = False
      object RLLabel16: TRLLabel
        Left = -64
        Top = 48
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
      object RLLabel22: TRLLabel
        Left = -59
        Top = 71
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
      object RLLabel12: TRLLabel
        Left = 0
        Top = 70
        Width = 801
        Height = 13
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 45
        Width = 801
        Height = 13
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 7
        Width = 801
        Height = 17
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '_____'
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 231
        Top = 2
        Width = 267
        Height = 18
        Caption = 'ABERTURA DA ORDEM DE SERVICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 65
        Top = 24
        Width = 129
        Height = 18
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 566
        Top = 24
        Width = 85
        Height = 18
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 280
        Top = 42
        Width = 74
        Height = 16
        DataField = 'ENDERECO'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 561
        Top = 42
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 66
        Top = 42
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
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 42
        Width = 37
        Height = 16
        Caption = 'Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 24
        Width = 63
        Height = 16
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 241
        Top = 42
        Width = 32
        Height = 16
        Caption = 'End:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 673
        Top = 42
        Width = 21
        Height = 16
        DataField = 'UF'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 665
        Top = 42
        Width = 8
        Height = 16
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 0
        Top = 66
        Width = 43
        Height = 14
        Caption = 'Numero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 56
        Top = 66
        Width = 57
        Height = 14
        DataField = 'ID_OS_ORDEMSERVICO'
        DataSource = DMOS.DTS_REL_OS
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
        Width = 49
        Height = 14
        Caption = 'Abertura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 551
        Top = 67
        Width = 44
        Height = 14
        Caption = 'Tecnico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 335
        Top = 66
        Width = 48
        Height = 14
        Caption = 'Previs'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 387
        Top = 66
        Width = 126
        Height = 14
        DataField = 'CAMPO_DATACHEGADA'
        DataSource = DMOS.DTS_REL_OS
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
        Top = 66
        Width = 49
        Height = 14
        DataField = 'USUARIO'
        DataSource = DMOS.DTS_REL_OS
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
        Left = 113
        Top = 88
        Width = 106
        Height = 14
        DataField = 'CONSUMIDOR_NOME'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText22: TRLDBText
        Left = 44
        Top = 88
        Width = 58
        Height = 14
        Alignment = taRightJustify
        DataField = 'ID_CLIENTE'
        DataSource = DMOS.DTS_OS
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
        Width = 6
        Height = 13
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
        DataSource = DMOS.dts_clientes
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
        Width = 131
        Height = 14
        DataField = 'CONSUMIDOR_ENDERECO'
        DataSource = DMOS.DTS_REL_OS
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
        Width = 121
        Height = 14
        DataField = 'CONSUMIDOR_CPFCNPJ'
        DataSource = DMOS.DTS_REL_OS
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
        Width = 122
        Height = 14
        DataField = 'CONSUMIDOR_RGINSCR'
        DataSource = DMOS.DTS_REL_OS
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
        DataSource = DMOS.dts_clientes
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
        DataSource = DMOS.dts_clientes
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
        DataSource = DMOS.dts_clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText11: TRLDBText
        Left = 256
        Top = 66
        Width = 86
        Height = 14
        DataField = 'HORA_ENTRADA'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 456
        Top = 66
        Width = 127
        Height = 14
        DataField = 'CAMPO_HORACHEGADA'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 174
        Top = 66
        Width = 75
        Height = 14
        DataField = 'DATA_ENTRADA'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel39: TRLLabel
        Left = 592
        Top = 102
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
      object RLDBText34: TRLDBText
        Left = 624
        Top = 102
        Width = 54
        Height = 14
        DataField = 'TELEFONE'
        DataSource = DMOS.dts_clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel41: TRLLabel
        Left = 592
        Top = 118
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
      object RLDBText35: TRLDBText
        Left = 624
        Top = 118
        Width = 60
        Height = 14
        DataField = 'TELEFONE2'
        DataSource = DMOS.dts_clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel45: TRLLabel
        Left = 592
        Top = 134
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
        Left = 624
        Top = 134
        Width = 128
        Height = 14
        DataField = 'CONSUMIDOR_TELEFONE'
        DataSource = DMOS.dts_clientes
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
      Left = 38
      Top = 194
      Width = 718
      Height = 255
      object RLLabel36: TRLLabel
        Left = 497
        Top = 191
        Width = 213
        Height = 14
        Caption = '___________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel21: TRLLabel
        Left = -87
        Top = 63
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
      object RLLabel13: TRLLabel
        Left = 1
        Top = 1
        Width = 36
        Height = 14
        AutoSize = False
        Caption = 'Bem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 46
        Top = 1
        Width = 210
        Height = 14
        DataField = 'MODELO1'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 374
        Top = 1
        Width = 26
        Height = 14
        AutoSize = False
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel18: TRLLabel
        Left = 531
        Top = 1
        Width = 47
        Height = 14
        AutoSize = False
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel19: TRLLabel
        Left = 531
        Top = 22
        Width = 34
        Height = 14
        AutoSize = False
        Caption = 'Local:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rlbl1: TRLLabel
        Left = 374
        Top = 22
        Width = 26
        Height = 14
        AutoSize = False
        Caption = 'Cor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 374
        Top = 44
        Width = 49
        Height = 14
        AutoSize = False
        Caption = 'Garantia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText16: TRLDBText
        Left = 238
        Top = 22
        Width = 116
        Height = 14
        DataField = 'EQUIPAMENTO_NSERIE'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText17: TRLDBText
        Left = 243
        Top = 44
        Width = 25
        Height = 14
        DataField = 'OBS'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel33: TRLLabel
        Left = 196
        Top = 44
        Width = 59
        Height = 14
        AutoSize = False
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 196
        Top = 22
        Width = 59
        Height = 14
        AutoSize = False
        Caption = 'Serie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText14: TRLDBText
        Left = 43
        Top = 22
        Width = 78
        Height = 14
        DataField = 'IDENTIFICADOR'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel23: TRLLabel
        Left = 1
        Top = 44
        Width = 36
        Height = 14
        AutoSize = False
        Caption = 'Ident.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel32: TRLLabel
        Left = 1
        Top = 22
        Width = 36
        Height = 14
        AutoSize = False
        Caption = 'Modelo.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText13: TRLDBText
        Left = 49
        Top = 44
        Width = 46
        Height = 14
        DataField = 'MODELO'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel20: TRLLabel
        Left = 8
        Top = 76
        Width = 67
        Height = 14
        AutoSize = False
        Caption = 'Ocorr'#234'ncias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText18: TRLDBText
        Left = 9
        Top = 90
        Width = 347
        Height = 79
        DataField = 'OCORRENCIA'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel38: TRLLabel
        Left = 380
        Top = 76
        Width = 67
        Height = 14
        AutoSize = False
        Caption = 'Local:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText19: TRLDBText
        Left = 381
        Top = 90
        Width = 332
        Height = 77
        DataField = 'OBSEQUIPAMENTO'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel35: TRLLabel
        Left = 27
        Top = 191
        Width = 213
        Height = 14
        Caption = '___________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel34: TRLLabel
        Left = 104
        Top = 207
        Width = 67
        Height = 14
        AutoSize = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel37: TRLLabel
        Left = 574
        Top = 207
        Width = 67
        Height = 14
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText20: TRLDBText
        Left = 423
        Top = 1
        Width = 96
        Height = 14
        DataField = 'TIPOATENDIMENTO'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText30: TRLDBText
        Left = 425
        Top = 22
        Width = 25
        Height = 14
        DataField = 'COR'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText31: TRLDBText
        Left = 423
        Top = 44
        Width = 57
        Height = 14
        DataField = 'GARANTIA'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText32: TRLDBText
        Left = 581
        Top = 1
        Width = 41
        Height = 14
        DataField = 'MARCA'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText33: TRLDBText
        Left = 582
        Top = 22
        Width = 38
        Height = 14
        DataField = 'LOCAL'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel42: TRLLabel
        Left = 2
        Top = 61
        Width = 36
        Height = 14
        AutoSize = False
        Caption = 'KM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText36: TRLDBText
        Left = 50
        Top = 61
        Width = 18
        Height = 14
        DataField = 'KM'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel43: TRLLabel
        Left = 197
        Top = 61
        Width = 59
        Height = 14
        AutoSize = False
        Caption = 'Placa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText37: TRLDBText
        Left = 244
        Top = 61
        Width = 38
        Height = 14
        DataField = 'PLACA'
        DataSource = DMOS.DTS_REL_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel44: TRLLabel
        Left = 375
        Top = 61
        Width = 49
        Height = 14
        AutoSize = False
        Caption = 'Ve'#237'culo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText38: TRLDBText
        Left = 424
        Top = 61
        Width = 47
        Height = 14
        DataField = 'VEICULO'
        DataSource = DMOS.DTS_REL_OS
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
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 469
    Top = 11
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 566
    Top = 11
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 635
    Top = 25
  end
end