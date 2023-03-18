object FormClientesAddVendas: TFormClientesAddVendas
  Left = 644
  Top = 219
  Width = 497
  Height = 328
  Caption = 'Dados FDicionais do cliente na venda'
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 289
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 23
      Width = 81
      Height = 13
      Caption = 'Nome do Cliente:'
    end
    object Label2: TLabel
      Left = 4
      Top = 51
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label3: TLabel
      Left = 4
      Top = 136
      Width = 55
      Height = 13
      Caption = 'CPF/CNPJ:'
    end
    object Label4: TLabel
      Left = 215
      Top = 134
      Width = 34
      Height = 13
      Caption = 'RG/IE:'
    end
    object Label5: TLabel
      Left = 352
      Top = 135
      Width = 27
      Height = 13
      Caption = 'Fone:'
    end
    object Label6: TLabel
      Left = 4
      Top = 81
      Width = 30
      Height = 13
      Caption = 'Bairro:'
    end
    object Label7: TLabel
      Left = 228
      Top = 81
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object Label8: TLabel
      Left = 4
      Top = 161
      Width = 60
      Height = 13
      Caption = 'Propiredade:'
    end
    object Label9: TLabel
      Left = 4
      Top = 186
      Width = 49
      Height = 13
      Caption = 'Cod. Ibge:'
    end
    object Label10: TLabel
      Left = 412
      Top = 81
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label11: TLabel
      Left = 414
      Top = 51
      Width = 15
      Height = 13
      Caption = 'N'#186':'
    end
    object Label12: TLabel
      Left = 239
      Top = 185
      Width = 22
      Height = 13
      Caption = 'Cep:'
    end
    object Label13: TLabel
      Left = 4
      Top = 110
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label14: TLabel
      Left = 189
      Top = 220
      Width = 69
      Height = 13
      Caption = 'IE Prod. Rural:'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 21
      Width = 378
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME_CLIENTE'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 48
      Width = 322
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 133
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF_CNPJ'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 7
      OnEnter = DBEdit3Enter
    end
    object DBEdit4: TDBEdit
      Left = 252
      Top = 133
      Width = 99
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RG_IE'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 382
      Top = 133
      Width = 83
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FONE'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 9
    end
    object DBEdit6: TDBEdit
      Left = 88
      Top = 80
      Width = 133
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 269
      Top = 79
      Width = 140
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 88
      Top = 158
      Width = 378
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PROPRIEDADE'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 10
    end
    object DBEdit9: TDBEdit
      Left = 88
      Top = 183
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COD_IBGE'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 11
    end
    object DBEdit10: TDBEdit
      Left = 432
      Top = 76
      Width = 33
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 5
    end
    object DBEdit11: TDBEdit
      Left = 432
      Top = 47
      Width = 33
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 269
      Top = 183
      Width = 99
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 12
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 88
      Top = 97
      Width = 377
      Height = 32
      Columns = 2
      DataField = 'TIPO'
      DataSource = formVendas.Dts_pedidos
      Items.Strings = (
        'C&PF'
        '&CNPJ')
      TabOrder = 6
      TabStop = True
      Values.Strings = (
        'F'
        'J')
      OnClick = DBRadioGroup1Click
      OnExit = DBRadioGroup1Exit
    end
    object suiDBCheckBox1: TsuiDBCheckBox
      Left = 89
      Top = 217
      Width = 95
      Height = 19
      UIStyle = WinXP
      AutoSize = True
      Checked = False
      Caption = 'Produtor Rural?'
      TabOrder = 13
      TabStop = True
      State = cbUnchecked
      Transparent = False
      DataField = 'PROD_RURAL'
      DataSource = formVendas.Dts_pedidos
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit13: TDBEdit
      Left = 269
      Top = 215
      Width = 99
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IE_PRODUTOR'
      DataSource = formVendas.Dts_pedidos
      TabOrder = 14
    end
    object btnimprimir: TAdvGlowButton
      Left = 326
      Top = 248
      Width = 123
      Height = 30
      Hint = 
        'Desbloquear o Cliente p/ compra a prazo e ou libera'#231#227'o de limite' +
        ' de cr'#233'dito'
      Caption = 'Ficha &Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 110
      Images = FormPrincipal.sAlphaImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 15
      OnClick = btnimprimirClick
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
    object BitBtn1: TAdvGlowButton
      Left = 46
      Top = 248
      Width = 123
      Height = 30
      Hint = 
        'Desbloquear o Cliente p/ compra a prazo e ou libera'#231#227'o de limite' +
        ' de cr'#233'dito'
      Caption = '&OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 113
      Images = FormPrincipal.sAlphaImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 16
      OnClick = BitBtn1Click
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
    object BitBtn2: TAdvGlowButton
      Left = 186
      Top = 248
      Width = 123
      Height = 30
      Hint = 
        'Desbloquear o Cliente p/ compra a prazo e ou libera'#231#227'o de limite' +
        ' de cr'#233'dito'
      Caption = '&Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 118
      Images = FormPrincipal.sAlphaImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 17
      OnClick = BitBtn2Click
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
  object Qry_cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from clientes')
    SQLConnection = DM.SQLC
    Left = 144
    object Qry_clienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_clienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object Qry_clienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 44
    end
    object Qry_clienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Qry_clienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_clienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Qry_clienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object Qry_clienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object Qry_clienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Qry_clienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object Qry_clienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object Qry_clienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object Qry_clienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Qry_clienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object Qry_clienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object Qry_clienteUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Qry_clienteDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Qry_clienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object Qry_clienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object Qry_clienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object Qry_clienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object Qry_clienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object Qry_clientePAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object Qry_clienteMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object Qry_clienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object Qry_clienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object Qry_clienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object Qry_clienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object Qry_clientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object Qry_clienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object Qry_clientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object Qry_clienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object Qry_clienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object Qry_clienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object Qry_clienteBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object Qry_clienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object Qry_clienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object Qry_clienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object Qry_clienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object Qry_clienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object Qry_clienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object Qry_clienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object Qry_clienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object Qry_clienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object Qry_clienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qry_clienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object Qry_clienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object Qry_clientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object Qry_clientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object Qry_clientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object Qry_clienteREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object Qry_clienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object Qry_clienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object Qry_clienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_clienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object Qry_clienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object Qry_clienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object Qry_clienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object Qry_clienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object Qry_clienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object Qry_clienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object Qry_clienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object Qry_clientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object Qry_clienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object Qry_clienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object Qry_clienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object Qry_clienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object Qry_clienteVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object Qry_clienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object Qry_clienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object Qry_clienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object Qry_clienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object Qry_clienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object Qry_clienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object Qry_clienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object Qry_clienteRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object Qry_clienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object Qry_clienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object Qry_clienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object Qry_clienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object Qry_clienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object Qry_clienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object Qry_clienteLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object Qry_clienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object Qry_clientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object Qry_clienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object Qry_clienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object Qry_clienteCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object Qry_clienteBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object Qry_clienteUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object Qry_clienteCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object Qry_clienteNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object Qry_clienteNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object Qry_clienteSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object Qry_clienteCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object Qry_clienteDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object Qry_clienteSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object Qry_clienteCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object Qry_clienteDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object Qry_clienteSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object Qry_clienteCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object Qry_clienteDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object Qry_clienteSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object Qry_clienteCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object Qry_clienteDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object Qry_clienteDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object Qry_clienteCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object Qry_clienteFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object Qry_clienteREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object Qry_clienteENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object Qry_clienteRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object Qry_clienteENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object Qry_clienteRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object Qry_clienteENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object Qry_clienteRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object Qry_clienteENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object Qry_clienteRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object Qry_clienteAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object Qry_clienteAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object Qry_clienteAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object Qry_clienteCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object Qry_clienteCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object Qry_clienteCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object Qry_clienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object Qry_clienteCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
    object Qry_clienteTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Size = 1
    end
    object Qry_clienteTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Size = 1
    end
    object Qry_clienteRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
    end
    object Qry_clienteCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object Qry_clienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object Qry_clienteDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
    end
    object Qry_clienteFUNC_SALARIO: TFMTBCDField
      FieldName = 'FUNC_SALARIO'
      Precision = 15
      Size = 2
    end
    object Qry_clienteFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
    end
    object Qry_clienteFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Size = 1
    end
    object Qry_clienteFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
    end
    object Qry_clienteFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Size = 30
    end
  end
  object dsp_clientes: TDataSetProvider
    DataSet = Qry_cliente
    Left = 168
  end
  object cds_cliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_clientes'
    Left = 200
    object cds_clienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_clienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object cds_clienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 44
    end
    object cds_clienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cds_clienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cds_clienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cds_clienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cds_clienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cds_clienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cds_clienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object cds_clienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object cds_clienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object cds_clienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_clienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cds_clienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cds_clienteUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object cds_clienteDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object cds_clienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object cds_clienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object cds_clienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object cds_clienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object cds_clienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object cds_clientePAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object cds_clienteMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object cds_clienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object cds_clienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object cds_clienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object cds_clienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object cds_clientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object cds_clienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object cds_clientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object cds_clienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object cds_clienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object cds_clienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object cds_clienteBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object cds_clienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object cds_clienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object cds_clienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object cds_clienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object cds_clienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object cds_clienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object cds_clienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object cds_clienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object cds_clienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object cds_clienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_clienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object cds_clienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object cds_clientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object cds_clientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cds_clientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object cds_clienteREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object cds_clienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object cds_clienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_clienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_clienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object cds_clienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object cds_clienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object cds_clienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object cds_clienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object cds_clienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object cds_clienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object cds_clienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object cds_clientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object cds_clienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cds_clienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object cds_clienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object cds_clienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object cds_clienteVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object cds_clienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object cds_clienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object cds_clienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object cds_clienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object cds_clienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object cds_clienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object cds_clienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object cds_clienteRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object cds_clienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object cds_clienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object cds_clienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object cds_clienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object cds_clienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object cds_clienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object cds_clienteLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object cds_clienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cds_clientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object cds_clienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object cds_clienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object cds_clienteCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object cds_clienteBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object cds_clienteUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object cds_clienteCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object cds_clienteNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object cds_clienteNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object cds_clienteSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object cds_clienteCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object cds_clienteDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object cds_clienteSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object cds_clienteCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object cds_clienteDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object cds_clienteSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object cds_clienteCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object cds_clienteDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object cds_clienteSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object cds_clienteCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object cds_clienteDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object cds_clienteDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object cds_clienteCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object cds_clienteFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object cds_clienteREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object cds_clienteENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object cds_clienteRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object cds_clienteENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object cds_clienteRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object cds_clienteENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object cds_clienteRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object cds_clienteENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object cds_clienteRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object cds_clienteAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object cds_clienteAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object cds_clienteAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object cds_clienteCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object cds_clienteCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object cds_clienteCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object cds_clienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object cds_clienteCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
    object cds_clienteTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Size = 1
    end
    object cds_clienteTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Size = 1
    end
  end
  object DTS_cliente: TDataSource
    DataSet = cds_cliente
    Left = 232
  end
end
