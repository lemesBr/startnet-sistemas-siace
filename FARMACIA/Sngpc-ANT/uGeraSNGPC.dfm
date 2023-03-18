object frmSNGPC: TfrmSNGPC
  Left = 363
  Top = 201
  Width = 594
  Height = 545
  Caption = 'Gera'#231#227'o e Envio de Arquivo SNGPC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 78
    Top = 91
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Usu'#225'rio:'
  end
  object Label2: TLabel
    Left = 83
    Top = 115
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
  end
  object Label3: TLabel
    Left = 35
    Top = 139
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'CPF Transmissor:'
  end
  object Label4: TLabel
    Left = 66
    Top = 35
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Final:'
  end
  object Label5: TLabel
    Left = 61
    Top = 11
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Inicial:'
  end
  object Label6: TLabel
    Left = 28
    Top = 59
    Width = 89
    Height = 13
    Alignment = taRightJustify
    Caption = 'CNPJ Transmissor:'
  end
  object Memo1: TMemo
    Left = 8
    Top = 165
    Width = 569
    Height = 339
    TabOrder = 8
  end
  object Button1: TButton
    Left = 376
    Top = 8
    Width = 97
    Height = 70
    Caption = 'Gerar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object cbHomologacao: TCheckBox
    Left = 480
    Top = 140
    Width = 97
    Height = 17
    Caption = 'cbHomologacao'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object Button2: TButton
    Left = 376
    Top = 88
    Width = 97
    Height = 70
    Caption = 'Enviar'
    TabOrder = 7
    OnClick = Button2Click
  end
  object edtDataInicial: TJvDateEdit
    Left = 120
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtDataFinal: TJvDateEdit
    Left = 120
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtCPF: TEdit
    Left = 120
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '54081319049'
  end
  object edtUsuario: TEdit
    Left = 120
    Top = 88
    Width = 249
    Height = 21
    TabOrder = 4
    Text = 'edmar@sesistemas.com.br'
  end
  object edtSenha: TEdit
    Left = 120
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '12345678'
  end
  object edtCNPJ: TEdit
    Left = 120
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '00134745000143'
  end
  object Button3: TButton
    Left = 480
    Top = 8
    Width = 97
    Height = 70
    Caption = 'Consultar'
    TabOrder = 10
    OnClick = Button3Click
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 
      'http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?WSD' +
      'L'
    Service = 'sngpc'
    Port = 'sngpcSoap'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 32
    Top = 88
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=127.0.0.1:c:\banco\banco.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 296
    Top = 16
  end
  object QryItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_MOVIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' I.*,'
      ' P.registroms'
      'from ITENS_MOVIMENTO I'
      'inner join PRODUTOS P on P.cod_produto = I.cod_produto'
      'where 1=1'
      'and I.cod_movimento = :COD_MOVIMENTO'
      'and P.registroms is not null'
      'and P.localizacao = '#39'CONTROLADO'#39)
    SQLConnection = SQLConnection1
    Left = 456
    Top = 336
    object QryItensCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Required = True
    end
    object QryItensCOD_ITEM_MOVIMENTO: TIntegerField
      FieldName = 'COD_ITEM_MOVIMENTO'
      Required = True
    end
    object QryItensCOD_FISCAL: TIntegerField
      FieldName = 'COD_FISCAL'
    end
    object QryItensCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object QryItensCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object QryItensCOD_GRADE: TIntegerField
      FieldName = 'COD_GRADE'
    end
    object QryItensDES_PRODUTO: TStringField
      FieldName = 'DES_PRODUTO'
      Size = 100
    end
    object QryItensCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 1000
    end
    object QryItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object QryItensDOSAGEM: TIntegerField
      FieldName = 'DOSAGEM'
    end
    object QryItensETIQUETAS: TIntegerField
      FieldName = 'ETIQUETAS'
    end
    object QryItensPESO: TFloatField
      FieldName = 'PESO'
    end
    object QryItensLOTE: TStringField
      FieldName = 'LOTE'
    end
    object QryItensVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object QryItensAPROVEITAMENTO: TFloatField
      FieldName = 'APROVEITAMENTO'
    end
    object QryItensVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
    end
    object QryItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object QryItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object QryItensALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object QryItensREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object QryItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object QryItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object QryItensALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
    end
    object QryItensREDUCAO_IPI: TFloatField
      FieldName = 'REDUCAO_IPI'
    end
    object QryItensVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object QryItensTT_ICMS: TStringField
      FieldName = 'TT_ICMS'
      FixedChar = True
      Size = 1
    end
    object QryItensTT_IPI: TStringField
      FieldName = 'TT_IPI'
      FixedChar = True
      Size = 1
    end
    object QryItensREGISTROMS: TStringField
      FieldName = 'REGISTROMS'
    end
  end
  object dspItens: TDataSetProvider
    DataSet = QryItens
    Options = [poRetainServerOrder]
    Left = 492
    Top = 336
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_MOVIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspItens'
    Left = 528
    Top = 336
    object cdsItensCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Required = True
    end
    object cdsItensCOD_ITEM_MOVIMENTO: TIntegerField
      FieldName = 'COD_ITEM_MOVIMENTO'
      Required = True
    end
    object cdsItensCOD_FISCAL: TIntegerField
      FieldName = 'COD_FISCAL'
    end
    object cdsItensCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object cdsItensCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object cdsItensCOD_GRADE: TIntegerField
      FieldName = 'COD_GRADE'
    end
    object cdsItensDES_PRODUTO: TStringField
      FieldName = 'DES_PRODUTO'
      Size = 100
    end
    object cdsItensCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 1000
    end
    object cdsItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItensDOSAGEM: TIntegerField
      FieldName = 'DOSAGEM'
    end
    object cdsItensETIQUETAS: TIntegerField
      FieldName = 'ETIQUETAS'
    end
    object cdsItensPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsItensLOTE: TStringField
      FieldName = 'LOTE'
    end
    object cdsItensVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object cdsItensAPROVEITAMENTO: TFloatField
      FieldName = 'APROVEITAMENTO'
    end
    object cdsItensVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
    end
    object cdsItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object cdsItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsItensALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object cdsItensREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
    end
    object cdsItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object cdsItensALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
    end
    object cdsItensREDUCAO_IPI: TFloatField
      FieldName = 'REDUCAO_IPI'
    end
    object cdsItensVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsItensTT_ICMS: TStringField
      FieldName = 'TT_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsItensTT_IPI: TStringField
      FieldName = 'TT_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsItensREGISTROMS: TStringField
      FieldName = 'REGISTROMS'
    end
  end
  object QryEntrada: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' M.COD_MOVIMENTO,'
      ' M.DT_DOCUMENTO,'
      ' M.DT_LANCAMENTO,'
      ' M.NUMERO,'
      ' E.cnpj as CNPJ_DESTINO,'
      ' P.cnpj as CNPJ_ORIGEM'
      'from MOVIMENTOS M'
      'inner join CMOVIMENTOS C on C.cod_movimento = M.cod_cmovimento'
      'inner join PESSOAS E on E.cod_pessoa = M.cod_empresa'
      'inner join PESSOAS P on P.cod_pessoa = M.cod_pessoa'
      'where C.ENTRADA_SAIDA = '#39'E'#39
      'and M.DT_LANCAMENTO > :DATA_INICIAL'
      'and M.DT_LANCAMENTO < :DATA_FINAL')
    SQLConnection = SQLConnection1
    Left = 456
    Top = 184
    object QryEntradaCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Required = True
    end
    object QryEntradaDT_DOCUMENTO: TSQLTimeStampField
      FieldName = 'DT_DOCUMENTO'
    end
    object QryEntradaDT_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DT_LANCAMENTO'
    end
    object QryEntradaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QryEntradaCNPJ_DESTINO: TStringField
      FieldName = 'CNPJ_DESTINO'
      Size = 18
    end
    object QryEntradaCNPJ_ORIGEM: TStringField
      FieldName = 'CNPJ_ORIGEM'
      Size = 18
    end
  end
  object dspEntrada: TDataSetProvider
    DataSet = QryEntrada
    Left = 491
    Top = 184
  end
  object cdsEntrada: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspEntrada'
    Left = 528
    Top = 184
    object cdsEntradaCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Required = True
    end
    object cdsEntradaDT_DOCUMENTO: TSQLTimeStampField
      FieldName = 'DT_DOCUMENTO'
    end
    object cdsEntradaDT_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DT_LANCAMENTO'
    end
    object cdsEntradaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsEntradaCNPJ_DESTINO: TStringField
      FieldName = 'CNPJ_DESTINO'
      Size = 18
    end
    object cdsEntradaCNPJ_ORIGEM: TStringField
      FieldName = 'CNPJ_ORIGEM'
      Size = 18
    end
  end
  object QrySaida: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' M.COD_MOVIMENTO,'
      ' M.DT_DOCUMENTO,'
      ' M.DT_LANCAMENTO,'
      ' M.NUMERO,'
      ' S.tipo_receituario,'
      ' S.numero_receituario,'
      ' S.dt_receituario,'
      ' S.profissional,'
      ' S.numero_registro,'
      ' S.conselho,'
      ' S.uf_conselho,'
      ' S.uso_medicamento,'
      ' S.comprador,'
      ' S.tipo_documento,'
      ' S.numero_documento,'
      ' S.orgao_expedidor,'
      ' S.uf_orgao_expedidor'
      'from MOVIMENTOS M'
      'inner join CMOVIMENTOS C on C.cod_movimento = M.cod_cmovimento'
      'inner join SNGPC S on S.cod_movimento = M.cod_movimento'
      'where C.ENTRADA_SAIDA = '#39'S'#39
      'and M.DT_LANCAMENTO > :DATA_INICIAL'
      'and M.DT_LANCAMENTO < :DATA_FINAL'
      'and S.motivo_perda = 0')
    SQLConnection = SQLConnection1
    Left = 456
    Top = 232
    object QrySaidaCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Required = True
    end
    object QrySaidaDT_DOCUMENTO: TSQLTimeStampField
      FieldName = 'DT_DOCUMENTO'
    end
    object QrySaidaDT_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DT_LANCAMENTO'
    end
    object QrySaidaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QrySaidaTIPO_RECEITUARIO: TIntegerField
      FieldName = 'TIPO_RECEITUARIO'
    end
    object QrySaidaNUMERO_RECEITUARIO: TIntegerField
      FieldName = 'NUMERO_RECEITUARIO'
    end
    object QrySaidaDT_RECEITUARIO: TDateField
      FieldName = 'DT_RECEITUARIO'
    end
    object QrySaidaPROFISSIONAL: TStringField
      FieldName = 'PROFISSIONAL'
      Size = 50
    end
    object QrySaidaNUMERO_REGISTRO: TStringField
      FieldName = 'NUMERO_REGISTRO'
      Size = 10
    end
    object QrySaidaCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object QrySaidaUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Size = 2
    end
    object QrySaidaUSO_MEDICAMENTO: TIntegerField
      FieldName = 'USO_MEDICAMENTO'
    end
    object QrySaidaCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 50
    end
    object QrySaidaTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
    end
    object QrySaidaNUMERO_DOCUMENTO: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
    end
    object QrySaidaORGAO_EXPEDIDOR: TStringField
      FieldName = 'ORGAO_EXPEDIDOR'
      Size = 10
    end
    object QrySaidaUF_ORGAO_EXPEDIDOR: TStringField
      FieldName = 'UF_ORGAO_EXPEDIDOR'
      Size = 2
    end
  end
  object dspSaida: TDataSetProvider
    DataSet = QrySaida
    Left = 492
    Top = 232
  end
  object cdsSaida: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspSaida'
    Left = 528
    Top = 232
    object cdsSaidaCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Required = True
    end
    object cdsSaidaDT_DOCUMENTO: TSQLTimeStampField
      FieldName = 'DT_DOCUMENTO'
    end
    object cdsSaidaDT_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DT_LANCAMENTO'
    end
    object cdsSaidaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsSaidaTIPO_RECEITUARIO: TIntegerField
      FieldName = 'TIPO_RECEITUARIO'
    end
    object cdsSaidaNUMERO_RECEITUARIO: TIntegerField
      FieldName = 'NUMERO_RECEITUARIO'
    end
    object cdsSaidaDT_RECEITUARIO: TDateField
      FieldName = 'DT_RECEITUARIO'
    end
    object cdsSaidaPROFISSIONAL: TStringField
      FieldName = 'PROFISSIONAL'
      Size = 50
    end
    object cdsSaidaNUMERO_REGISTRO: TStringField
      FieldName = 'NUMERO_REGISTRO'
      Size = 10
    end
    object cdsSaidaCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object cdsSaidaUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Size = 2
    end
    object cdsSaidaUSO_MEDICAMENTO: TIntegerField
      FieldName = 'USO_MEDICAMENTO'
    end
    object cdsSaidaCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 50
    end
    object cdsSaidaTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
    end
    object cdsSaidaNUMERO_DOCUMENTO: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
    end
    object cdsSaidaORGAO_EXPEDIDOR: TStringField
      FieldName = 'ORGAO_EXPEDIDOR'
      Size = 10
    end
    object cdsSaidaUF_ORGAO_EXPEDIDOR: TStringField
      FieldName = 'UF_ORGAO_EXPEDIDOR'
      Size = 2
    end
  end
  object QryPerda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' M.COD_MOVIMENTO,'
      ' M.DT_DOCUMENTO,'
      ' M.DT_LANCAMENTO,'
      ' M.NUMERO,'
      ' S.motivo_perda,'
      ' S.tipo_receituario,'
      ' S.numero_receituario,'
      ' S.dt_receituario,'
      ' S.profissional,'
      ' S.numero_registro,'
      ' S.conselho,'
      ' S.uf_conselho,'
      ' S.uso_medicamento,'
      ' S.comprador,'
      ' S.tipo_documento,'
      ' S.numero_documento,'
      ' S.orgao_expedidor,'
      ' S.uf_orgao_expedidor'
      'from MOVIMENTOS M'
      'inner join CMOVIMENTOS C on C.cod_movimento = M.cod_cmovimento'
      'inner join SNGPC S on S.cod_movimento = M.cod_movimento'
      'where C.ENTRADA_SAIDA = '#39'S'#39
      'and M.DT_LANCAMENTO > :DATA_INICIAL'
      'and M.DT_LANCAMENTO < :DATA_FINAL'
      'and S.motivo_perda <> 0')
    SQLConnection = SQLConnection1
    Left = 456
    Top = 280
    object IntegerField1: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DT_DOCUMENTO'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DT_LANCAMENTO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUMERO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TIPO_RECEITUARIO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'NUMERO_RECEITUARIO'
    end
    object DateField1: TDateField
      FieldName = 'DT_RECEITUARIO'
    end
    object StringField1: TStringField
      FieldName = 'PROFISSIONAL'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'NUMERO_REGISTRO'
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'UF_CONSELHO'
      Size = 2
    end
    object IntegerField5: TIntegerField
      FieldName = 'USO_MEDICAMENTO'
    end
    object StringField5: TStringField
      FieldName = 'COMPRADOR'
      Size = 50
    end
    object IntegerField6: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
    end
    object StringField6: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
    end
    object StringField7: TStringField
      FieldName = 'ORGAO_EXPEDIDOR'
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'UF_ORGAO_EXPEDIDOR'
      Size = 2
    end
    object QryPerdaMOTIVO_PERDA: TIntegerField
      FieldName = 'MOTIVO_PERDA'
    end
  end
  object dspPerda: TDataSetProvider
    DataSet = QryPerda
    Left = 494
    Top = 280
  end
  object cdsPerda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspPerda'
    Left = 528
    Top = 280
    object cdsPerdaCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Required = True
    end
    object cdsPerdaDT_DOCUMENTO: TSQLTimeStampField
      FieldName = 'DT_DOCUMENTO'
    end
    object cdsPerdaDT_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DT_LANCAMENTO'
    end
    object cdsPerdaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsPerdaTIPO_RECEITUARIO: TIntegerField
      FieldName = 'TIPO_RECEITUARIO'
    end
    object cdsPerdaNUMERO_RECEITUARIO: TIntegerField
      FieldName = 'NUMERO_RECEITUARIO'
    end
    object cdsPerdaDT_RECEITUARIO: TDateField
      FieldName = 'DT_RECEITUARIO'
    end
    object cdsPerdaPROFISSIONAL: TStringField
      FieldName = 'PROFISSIONAL'
      Size = 50
    end
    object cdsPerdaNUMERO_REGISTRO: TStringField
      FieldName = 'NUMERO_REGISTRO'
      Size = 10
    end
    object cdsPerdaCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object cdsPerdaUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Size = 2
    end
    object cdsPerdaUSO_MEDICAMENTO: TIntegerField
      FieldName = 'USO_MEDICAMENTO'
    end
    object cdsPerdaCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 50
    end
    object cdsPerdaTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
    end
    object cdsPerdaNUMERO_DOCUMENTO: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
    end
    object cdsPerdaORGAO_EXPEDIDOR: TStringField
      FieldName = 'ORGAO_EXPEDIDOR'
      Size = 10
    end
    object cdsPerdaUF_ORGAO_EXPEDIDOR: TStringField
      FieldName = 'UF_ORGAO_EXPEDIDOR'
      Size = 2
    end
    object cdsPerdaMOTIVO_PERDA: TIntegerField
      FieldName = 'MOTIVO_PERDA'
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.XML'
    Filter = 'Arquivos XML|*.XML'
    Left = 512
    Top = 88
  end
end
