object dmEFD: TdmEFD
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 698
  Width = 989
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\StartNet_Sistemas\STARTNET.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginDialog = FDGUIxLoginDialog1
    LoginPrompt = False
    Left = 104
    Top = 32
  end
  object FD0000: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_0000')
    Left = 104
    Top = 96
    object FD0000NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object FD0000CNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object FD0000UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FD0000IE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object FD0000COD_MUN: TStringField
      FieldName = 'COD_MUN'
      Origin = 'COD_MUN'
      Size = 10
    end
    object FD0000IM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object FD0000SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 15
    end
    object FD0000IND_ATIV: TStringField
      FieldName = 'IND_ATIV'
      Origin = 'IND_ATIV'
      FixedChar = True
      Size = 1
    end
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 760
    Top = 192
  end
  object FD0005: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_0005')
    Left = 104
    Top = 152
    object FD0005FANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 70
    end
    object FD0005CEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object FD0005ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object FD0005NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
    end
    object FD0005COMPL: TStringField
      FieldName = 'COMPL'
      Origin = 'COMPL'
      Size = 44
    end
    object FD0005BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object FD0005FONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 16
    end
    object FD0005FAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object FD0005EMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object FD0100: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_0100')
    Left = 104
    Top = 208
    object FD0100NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object FD0100CPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      FixedChar = True
      Size = 18
    end
    object FD0100CRC: TStringField
      FieldName = 'CRC'
      Origin = 'CRC'
      Size = 15
    end
    object FD0100CNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object FD0100CEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object FD0100ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object FD0100NUM: TIntegerField
      FieldName = 'NUM'
      Origin = 'NUM'
    end
    object FD0100COMPL: TStringField
      FieldName = 'COMPL'
      Origin = 'COMPL'
      Size = 44
    end
    object FD0100BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FD0100FONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 16
    end
    object FD0100FAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object FD0100EMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FD0100COD_MUN: TStringField
      FieldName = 'COD_MUN'
      Origin = 'COD_MUN'
      Size = 7
    end
  end
  object FD0150: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_0150 where mes =:mes and ano =:ano')
    Left = 104
    Top = 264
    ParamData = <
      item
        Name = 'MES'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
    object FD0150COD_PART: TStringField
      FieldName = 'COD_PART'
      Origin = 'COD_PART'
      Size = 50
    end
    object FD0150NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object FD0150COD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
      FixedChar = True
      Size = 5
    end
    object FD0150CPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      FixedChar = True
      Size = 0
    end
    object FD0150CNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object FD0150IE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object FD0150COD_MUN: TStringField
      FieldName = 'COD_MUN'
      Origin = 'COD_MUN'
      Size = 11
    end
    object FD0150SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      FixedChar = True
      Size = 0
    end
    object FD0150ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object FD0150NUM: TStringField
      FieldName = 'NUM'
      Origin = 'NUM'
      Size = 11
    end
    object FD0150COMPL: TStringField
      FieldName = 'COMPL'
      Origin = 'COMPL'
      Size = 30
    end
    object FD0150BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object FD0150MES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object FD0150ANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
  end
  object FD0190: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_0190 where mes =:mes and ano =:ano')
    Left = 104
    Top = 320
    ParamData = <
      item
        Name = 'MES'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
    object FD0190UNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 6
    end
    object FD0190DESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 70
    end
    object FD0190MES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object FD0190ANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
  end
  object FD0200: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_0200 where mes =:mes and ano =:ano')
    Left = 104
    Top = 376
    ParamData = <
      item
        Name = 'MES'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
    object FD0200COD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
    end
    object FD0200DESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      Origin = 'DESCR_ITEM'
      Size = 70
    end
    object FD0200COD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      FixedChar = True
      Size = 13
    end
    object FD0200COD_ANT_ITEM: TStringField
      FieldName = 'COD_ANT_ITEM'
      Origin = 'COD_ANT_ITEM'
      FixedChar = True
      Size = 0
    end
    object FD0200TIPO_ITEM: TStringField
      FieldName = 'TIPO_ITEM'
      Origin = 'TIPO_ITEM'
      Size = 11
    end
    object FD0200UNID_INV: TStringField
      FieldName = 'UNID_INV'
      Origin = 'UNID_INV'
      Size = 6
    end
    object FD0200COD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      Size = 12
    end
    object FD0200EX_IPI: TStringField
      FieldName = 'EX_IPI'
      Origin = 'EX_IPI'
      FixedChar = True
      Size = 0
    end
    object FD0200COD_GEN: TStringField
      FieldName = 'COD_GEN'
      Origin = 'COD_GEN'
      Size = 12
    end
    object FD0200COD_LST: TStringField
      FieldName = 'COD_LST'
      Origin = 'COD_LST'
      FixedChar = True
      Size = 0
    end
    object FD0200MES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object FD0200ANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object FD0200ALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
  end
  object FDC100: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_C100 where mes =:mes and ano =:ano')
    Left = 184
    Top = 96
    ParamData = <
      item
        Name = 'MES'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
    object FDC100NOTA_ID: TStringField
      FieldName = 'NOTA_ID'
      Origin = 'NOTA_ID'
      Size = 50
    end
    object FDC100IND_OPER: TStringField
      FieldName = 'IND_OPER'
      Origin = 'IND_OPER'
      FixedChar = True
      Size = 1
    end
    object FDC100IND_EMIT: TStringField
      FieldName = 'IND_EMIT'
      Origin = 'IND_EMIT'
      FixedChar = True
      Size = 1
    end
    object FDC100COD_PART: TStringField
      FieldName = 'COD_PART'
      Origin = 'COD_PART'
      Size = 50
    end
    object FDC100COD_MOD: TStringField
      FieldName = 'COD_MOD'
      Origin = 'COD_MOD'
      FixedChar = True
      Size = 2
    end
    object FDC100COD_SIT: TStringField
      FieldName = 'COD_SIT'
      Origin = 'COD_SIT'
      FixedChar = True
      Size = 2
    end
    object FDC100SER: TStringField
      FieldName = 'SER'
      Origin = 'SER'
      Size = 15
    end
    object FDC100NUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Origin = 'NUM_DOC'
    end
    object FDC100CHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Origin = 'CHV_NFE'
      Size = 44
    end
    object FDC100DT_DOC: TDateField
      FieldName = 'DT_DOC'
      Origin = 'DT_DOC'
    end
    object FDC100DT_E_S: TDateField
      FieldName = 'DT_E_S'
      Origin = 'DT_E_S'
    end
    object FDC100IND_PGTO: TStringField
      FieldName = 'IND_PGTO'
      Origin = 'IND_PGTO'
      FixedChar = True
      Size = 1
    end
    object FDC100MES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object FDC100ANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object FDC100VL_DOC: TFMTBCDField
      FieldName = 'VL_DOC'
      Origin = 'VL_DOC'
      Precision = 18
      Size = 2
    end
    object FDC100VL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Origin = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object FDC100VL_ABAT_NT: TFMTBCDField
      FieldName = 'VL_ABAT_NT'
      Origin = 'VL_ABAT_NT'
      Precision = 18
      Size = 2
    end
    object FDC100VL_MERC: TFMTBCDField
      FieldName = 'VL_MERC'
      Origin = 'VL_MERC'
      Precision = 18
      Size = 2
    end
    object FDC100IND_FRT: TStringField
      FieldName = 'IND_FRT'
      Origin = 'IND_FRT'
      FixedChar = True
      Size = 1
    end
    object FDC100VL_FRT: TFMTBCDField
      FieldName = 'VL_FRT'
      Origin = 'VL_FRT'
      Precision = 18
      Size = 2
    end
    object FDC100VL_SEG: TFMTBCDField
      FieldName = 'VL_SEG'
      Origin = 'VL_SEG'
      Precision = 18
      Size = 2
    end
    object FDC100VL_OUT_DA: TFMTBCDField
      FieldName = 'VL_OUT_DA'
      Origin = 'VL_OUT_DA'
      Precision = 18
      Size = 2
    end
    object FDC100VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      Precision = 18
      Size = 2
    end
    object FDC100VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      Precision = 18
      Size = 2
    end
    object FDC100VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object FDC100VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object FDC100VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object FDC100VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object FDC100VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object FDC100VL_PIS_ST: TFMTBCDField
      FieldName = 'VL_PIS_ST'
      Origin = 'VL_PIS_ST'
      Precision = 18
      Size = 2
    end
    object FDC100VL_COFINS_ST: TFMTBCDField
      FieldName = 'VL_COFINS_ST'
      Origin = 'VL_COFINS_ST'
      Precision = 18
      Size = 2
    end
  end
  object FDC170: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_C170 where nota_id =:nota_id')
    Left = 184
    Top = 152
    ParamData = <
      item
        Name = 'NOTA_ID'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object FDC170NOTA_ID: TStringField
      FieldName = 'NOTA_ID'
      Origin = 'NOTA_ID'
      Size = 50
    end
    object FDC170NUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      Origin = 'NUM_ITEM'
    end
    object FDC170COD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
    end
    object FDC170DESCR_COMPL: TStringField
      FieldName = 'DESCR_COMPL'
      Origin = 'DESCR_COMPL'
      Size = 70
    end
    object FDC170QTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
    end
    object FDC170UNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 6
    end
    object FDC170IND_MOV: TStringField
      FieldName = 'IND_MOV'
      Origin = 'IND_MOV'
      FixedChar = True
      Size = 1
    end
    object FDC170CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 11
    end
    object FDC170CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object FDC170COD_NAT: TStringField
      FieldName = 'COD_NAT'
      Origin = 'COD_NAT'
      FixedChar = True
      Size = 0
    end
    object FDC170VL_ITEM: TFMTBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      Precision = 18
      Size = 2
    end
    object FDC170VL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Origin = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object FDC170VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      Precision = 18
      Size = 2
    end
    object FDC170ALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object FDC170VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      Precision = 18
      Size = 2
    end
    object FDC170VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object FDC170ALIQ_ST: TFMTBCDField
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      Precision = 18
      Size = 2
    end
    object FDC170VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object FDC170IND_APUR: TStringField
      FieldName = 'IND_APUR'
      Origin = 'IND_APUR'
      FixedChar = True
      Size = 1
    end
    object FDC170CST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 2
    end
    object FDC170COD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      Origin = 'COD_ENQ'
      FixedChar = True
      Size = 0
    end
    object FDC170VL_BC_IPI: TFMTBCDField
      FieldName = 'VL_BC_IPI'
      Origin = 'VL_BC_IPI'
      Precision = 18
      Size = 2
    end
    object FDC170ALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object FDC170VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object FDC170CST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 2
    end
    object FDC170VL_BC_PIS: TFMTBCDField
      FieldName = 'VL_BC_PIS'
      Origin = 'VL_BC_PIS'
      Precision = 18
      Size = 2
    end
    object FDC170ALIQ_PIS_PERC: TFMTBCDField
      FieldName = 'ALIQ_PIS_PERC'
      Origin = 'ALIQ_PIS_PERC'
      Precision = 18
      Size = 6
    end
    object FDC170QUANT_BC_PIS: TFMTBCDField
      FieldName = 'QUANT_BC_PIS'
      Origin = 'QUANT_BC_PIS'
      Precision = 18
      Size = 2
    end
    object FDC170ALIQ_PIS_R: TFMTBCDField
      FieldName = 'ALIQ_PIS_R'
      Origin = 'ALIQ_PIS_R'
      Precision = 18
      Size = 2
    end
    object FDC170VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object FDC170CST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 2
    end
    object FDC170VL_BC_COFINS: TFMTBCDField
      FieldName = 'VL_BC_COFINS'
      Origin = 'VL_BC_COFINS'
      Precision = 18
      Size = 2
    end
    object FDC170ALIQ_COFINS_PERC: TFMTBCDField
      FieldName = 'ALIQ_COFINS_PERC'
      Origin = 'ALIQ_COFINS_PERC'
      Precision = 18
      Size = 6
    end
    object FDC170QUANT_BC_COFINS: TFMTBCDField
      FieldName = 'QUANT_BC_COFINS'
      Origin = 'QUANT_BC_COFINS'
      Precision = 18
      Size = 3
    end
    object FDC170ALIQ_COFINS_R: TFMTBCDField
      FieldName = 'ALIQ_COFINS_R'
      Origin = 'ALIQ_COFINS_R'
      Precision = 18
      Size = 2
    end
    object FDC170VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object FDC170COD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'COD_CTA'
      FixedChar = True
      Size = 11
    end
  end
  object FDC190: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_C190 where nota_id =:nota_id')
    Left = 184
    Top = 208
    ParamData = <
      item
        Name = 'NOTA_ID'
        DataType = ftString
        ParamType = ptInput
        Size = 26
        Value = Null
      end>
    object FDC190NOTA_ID: TStringField
      FieldName = 'NOTA_ID'
      Origin = 'NOTA_ID'
      Size = 50
    end
    object FDC190CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 11
    end
    object FDC190CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 10
    end
    object FDC190ALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object FDC190VL_OPR: TFMTBCDField
      FieldName = 'VL_OPR'
      Origin = 'VL_OPR'
      Precision = 18
      Size = 6
    end
    object FDC190VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      Precision = 18
      Size = 2
    end
    object FDC190VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      Precision = 18
      Size = 2
    end
    object FDC190VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object FDC190VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object FDC190VL_RED_BC: TFMTBCDField
      FieldName = 'VL_RED_BC'
      Origin = 'VL_RED_BC'
      Precision = 18
      Size = 2
    end
    object FDC190VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
  end
  object EFD: TACBrSPEDFiscal
    Path = 'C:\Program Files (x86)\Embarcadero\Studio\16.0\bin\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 760
    Top = 256
  end
  object FDSEFD: TFDStoredProc
    Connection = Conexao
    StoredProcName = 'EFD_IU'
    Left = 760
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object FDH010: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_h010')
    Left = 248
    Top = 96
    object FDH010COD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
    end
    object FDH010UNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 6
    end
    object FDH010QTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 2
    end
    object FDH010VL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Origin = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object FDH010VL_ITEM: TBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      Precision = 18
    end
    object FDH010IND_PROP: TStringField
      FieldName = 'IND_PROP'
      Origin = 'IND_PROP'
      FixedChar = True
      Size = 1
    end
  end
  object FD0500: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from view_sped_0500')
    Left = 104
    Top = 432
    object FD0500DT_ALT: TDateField
      FieldName = 'DT_ALT'
      Origin = 'DT_ALT'
    end
    object FD0500COD_NAT_CC: TStringField
      FieldName = 'COD_NAT_CC'
      Origin = 'COD_NAT_CC'
      Size = 2
    end
    object FD0500IND_CTA: TStringField
      FieldName = 'IND_CTA'
      Origin = 'IND_CTA'
      Size = 1
    end
    object FD0500NIVEL: TStringField
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
      Size = 5
    end
    object FD0500COD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'COD_CTA'
    end
    object FD0500NOME_CTA: TStringField
      FieldName = 'NOME_CTA'
      Origin = 'NOME_CTA'
      Size = 70
    end
  end
  object FDEXISTS: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT COUNT(*) QTDE'
      'FROM RDB$RELATIONS'
      'WHERE RDB$FLAGS=1 AND RDB$RELATION_NAME=:TABLE_NAME')
    Left = 496
    Top = 96
    ParamData = <
      item
        Name = 'TABLE_NAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 31
        Value = Null
      end>
    object FDEXISTSQTDE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDCREATETABLEEFD: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE TABLE EFD ('
      '    REFERENCIA  VARCHAR(6) NOT NULL'
      ');')
    Left = 496
    Top = 152
  end
  object FDQuery: TFDQuery
    Connection = Conexao
    Left = 496
    Top = 208
  end
  object FDCREATEORALTERPROCEDUREEFDIU: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER PROCEDURE EFD_IU ('
      '    REFERENCIA VARCHAR(6))'
      'AS'
      'BEGIN'
      '  UPDATE OR INSERT INTO EFD (REFERENCIA)'
      '                         VALUES (:REFERENCIA)'
      '                       MATCHING (REFERENCIA);'
      'END')
    Left = 496
    Top = 264
    ParamData = <
      item
        Name = 'REFERENCIA'
        ParamType = ptInput
      end>
  end
  object FDCREATEORALTERVIEWVIEWSPED0000: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_0000('
      '    NOME,'
      '    CNPJ,'
      '    UF,'
      '    IE,'
      '    COD_MUN,'
      '    IM,'
      '    SUFRAMA,'
      '    IND_ATIV)'
      'AS'
      'SELECT'
      '    FIRST 1'
      '    E.RAZAO_SOCIAL AS NOME,'
      '    E.CNPJ AS CNPJ,'
      '    E.UF AS UF,'
      '    E.IE AS IE,'
      '    E.COD_CID_IBGE AS COD_MUN,'
      '    E.IM AS IM,'
      '    E.SUFRAMA AS SUFRAMA,'
      '    '#39'1'#39' AS IND_ATIV'
      'FROM EMPRESA E')
    Left = 498
    Top = 321
  end
  object FDCREATEORALTERVIEWVIEWSPED0005: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_0005('
      '    FANTASIA,'
      '    CEP,'
      '    ENDERECO,'
      '    NUM,'
      '    COMPL,'
      '    BAIRRO,'
      '    FONE,'
      '    FAX,'
      '    EMAIL)'
      'AS'
      'SELECT'
      '    FIRST 1'
      '    E.NOME_FANTASIA AS FANTASIA,'
      '    E.CEP AS CEP,'
      '    E.ENDERECO AS ENDERECO,'
      '    E.NUMERO AS NUM,'
      '    E.COMPLEMENTO AS COMPL,'
      '    E.BAIRRO AS BAIRRO,'
      '    E.TELEFONE AS FONE,'
      '    E.FAX AS FAX,'
      '    E.EMAIL AS EMAIL'
      'FROM EMPRESA E')
    Left = 499
    Top = 376
  end
  object FDCREATEORALTERVIEWVIEWSPED0100: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_0100('
      '    NOME,'
      '    CPF,'
      '    CRC,'
      '    CNPJ,'
      '    CEP,'
      '    ENDERECO,'
      '    NUM,'
      '    COMPL,'
      '    BAIRRO,'
      '    FONE,'
      '    FAX,'
      '    EMAIL,'
      '    COD_MUN)'
      'AS'
      'SELECT'
      '    FIRST 1'
      '    E.NOME_CONTADOR AS NOME,'
      '    E.CPF_CONTADOR AS CPF,'
      '    E.CRC_CONTADOR AS CRC,'
      '    E.CNPJ_CONTADOR AS CNPJ,'
      '    E.CEP_CONTADOR AS CEP,'
      '    E.ENDERECO_CONTADOR AS ENDERECO,'
      '    E.NUM_CONTADOR AS NUM,'
      '    E.COMPL_CONTADOR AS COMPL,'
      '    E.BAIRRO_CONTADOR AS BAIRRO,'
      '    E.FONE_CONTADOR AS FONE,'
      '    E.FAX_CONTADOR AS FAX,'
      '    E.EMAIL_CONTADOR AS EMAIL,'
      '    E.COD_IBGE_CONTADOR AS COD_MUN'
      'FROM EMPRESA E')
    Left = 502
    Top = 432
  end
  object FDCREATEORALTERVIEWVIEWSPED0150: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_0150('
      '    COD_PART,'
      '    NOME,'
      '    COD_PAIS,'
      '    CPF,'
      '    CNPJ,'
      '    IE,'
      '    COD_MUN,'
      '    SUFRAMA,'
      '    ENDERECO,'
      '    NUM,'
      '    COMPL,'
      '    BAIRRO,'
      '    MES,'
      '    ANO)'
      'AS'
      'SELECT'
      '    X.COD_PART,'
      '    X.NOME,'
      '    X.COD_PAIS,'
      '    X.CPF,'
      '    X.CNPJ,'
      '    X.IE,'
      '    X.COD_MUN,'
      '    X.SUFRAMA,'
      '    X.ENDERECO,'
      '    X.NUM,'
      '    X.COMPL,'
      '    X.BAIRRO,'
      '    X.MES,'
      '    X.ANO'
      '    FROM ('
      'SELECT'
      '    DISTINCT'
      '    CAST('#39'F'#39' || F.CODIGO AS VARCHAR(50)) AS COD_PART,'
      '    F.NOME AS NOME,'
      '    '#39'01058'#39' AS COD_PAIS,'
      '    '#39#39' AS CPF,'
      '    F.CNPJ AS CNPJ,'
      '    F.IE AS IE,'
      '    F."codigo_ibge" AS COD_MUN,'
      '    '#39#39' AS SUFRAMA,'
      '    F.ENDERECO AS ENDERECO,'
      '    F.NUMERO AS NUM,'
      '    F.COMPLEMENTO AS COMPL,'
      '    F.BAIRRO AS BAIRRO,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM N.DATA_EMISSAO),2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM N.DATA_EMISSAO),4,'#39'0'#39') AS VARCHA' +
        'R(4)) AS ANO'
      'FROM NOTASFISCAIS N'
      'JOIN FORNECEDORES F ON(F.CODIGO = N.COD_FORNECEDOR)'
      'WHERE N.DATA_EMISSAO >= '#39'2017-01-01'#39
      'AND N.SITUACAO = 2'
      'AND N.INTEGRACAO IN(0,1)'
      'AND N.MODELO = '#39'55'#39
      'AND N.OPERACAO IN('#39'P'#39','#39'V'#39')'
      ''
      'UNION'
      ''
      'SELECT'
      '    DISTINCT'
      '    CAST('#39'C'#39' || C.CODIGO AS VARCHAR(50)) AS COD_PART,'
      '    C.NOME_RS AS NOME,'
      '    '#39'01058'#39' AS COD_PAIS,'
      '    '#39#39' AS CPF,'
      '    C.CPF_CNPJ AS CNPJ,'
      '    C.RG_IE AS IE,'
      '    CD.COD_IBGE AS COD_MUN,'
      '    '#39#39' AS SUFRAMA,'
      '    C.ENDERECO AS ENDERECO,'
      '    C.NUMERO AS NUM,'
      '    C.COMPLEMENTO AS COMPL,'
      '    C.BAIRRO AS BAIRRO,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM N.DT_EMISSAO),2,'#39'0'#39') AS VARCHAR' +
        '(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM N.DT_EMISSAO),4,'#39'0'#39') AS VARCHAR(' +
        '4)) AS ANO'
      'FROM NFE_NOTA N'
      'JOIN CLIENTES C ON (C.CODIGO = N.COD_CLIENTE)'
      'JOIN CIDADES CD ON(CD.COD_CIDADE = C.COD_CIDADE)'
      'WHERE N.DT_EMISSAO >= '#39'2017-01-01'#39
      'AND N.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND N.CHAVE_ACESSO_NFE <> '#39#39
      'AND N.STATUS = '#39'S'#39
      'AND N.STATUS_CANCELADO IS NULL'
      'AND N.STATUS_INUTILIZADO IS NULL'
      'AND N.NR_PROTOCOLO_NFE IS NOT NULL'
      ''
      'UNION'
      ''
      'SELECT'
      '    DISTINCT'
      '    CAST('#39'C'#39' || C.CODIGO AS VARCHAR(50)) AS COD_PART,'
      '    C.NOME_RS AS NOME,'
      '    '#39'01058'#39' AS COD_PAIS,'
      '    '#39#39' AS CPF,'
      '    C.CPF_CNPJ AS CNPJ,'
      '    C.RG_IE AS IE,'
      '    CD.COD_IBGE AS COD_MUN,'
      '    '#39#39' AS SUFRAMA,'
      '    C.ENDERECO AS ENDERECO,'
      '    C.NUMERO AS NUM,'
      '    C.COMPLEMENTO AS COMPL,'
      '    C.BAIRRO AS BAIRRO,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM PD.DATA_PEDIDO),2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM PD.DATA_PEDIDO),4,'#39'0'#39') AS VARCHA' +
        'R(4)) AS ANO'
      'FROM PEDIDOS PD'
      'JOIN CLIENTES C ON (C.CODIGO = PD.CODIGO_CLIENTE)'
      'JOIN CIDADES CD ON(CD.COD_CIDADE = C.COD_CIDADE)'
      'WHERE PD.DATA_PEDIDO >= '#39'2017-01-01'#39
      'AND PD.MODELO_NF IN('#39'01'#39', '#39'1B'#39')'
      'AND PD.NUM_NOTA > 0) X'
      'ORDER BY X.NOME')
    Left = 504
    Top = 488
  end
  object FDCREATEORALTERVIEWVIEWSPED0190: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_0190('
      '    UNID,'
      '    DESCR,'
      '    MES,'
      '    ANO)'
      'AS'
      'SELECT'
      '    X.UNID,'
      '    UPPER(X.DESCR),'
      '    X.MES,'
      '    X.ANO'
      'FROM'
      '('
      'SELECT'
      '    DISTINCT'
      '    U.ABREVIATURA AS UNID,'
      '    U.DESCRICAO AS DESCR,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM N.DATA_EMISSAO),2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM N.DATA_EMISSAO),4,'#39'0'#39') AS VARCHA' +
        'R(4)) AS ANO'
      'FROM PRODUTOS P'
      'JOIN UNIDADES U ON(U.CODIGO = P.UNIDADE)'
      'JOIN NOTASFISCAIS_ITENS NI ON (NI.CODIGO_PRODUTO = P.CODIGO)'
      'JOIN NOTASFISCAIS N ON (N.CODIGO_NOTA = NI.CODIGO_NOTA)'
      'WHERE N.DATA_EMISSAO >= '#39'2017-01-01'#39
      'AND N.SITUACAO = 2'
      'AND N.INTEGRACAO IN(0,1)'
      'AND N.MODELO = '#39'55'#39
      'AND N.OPERACAO IN('#39'P'#39','#39'V'#39')'
      ''
      'UNION'
      ''
      'SELECT'
      '    DISTINCT'
      '    U.ABREVIATURA AS UNID,'
      '    U.DESCRICAO AS DESCR,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM PD.DATA_PEDIDO),2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM PD.DATA_PEDIDO),4,'#39'0'#39') AS VARCHA' +
        'R(4)) AS ANO'
      'FROM PRODUTOS P'
      'JOIN UNIDADES U ON(U.CODIGO = P.UNIDADE)'
      'JOIN PEDIDOS_ITENS PDI ON (PDI.CODIGO_PROD = P.CODIGO)'
      'JOIN PEDIDOS PD ON (PD.CODIGO = PDI.CODIGO_ID)'
      'WHERE PD.DATA_PEDIDO >= '#39'2017-01-01'#39
      'AND PD.MODELO_NF IN('#39'01'#39', '#39'1B'#39')'
      'AND PD.NUM_NOTA > 0'
      ''
      'UNION'
      ''
      'SELECT'
      '   DISTINCT'
      '   H.UNID,'
      '   U.DESCRICAO AS DESCR,'
      
        '   CAST(LPAD(EXTRACT(MONTH FROM CURRENT_DATE) -1,2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '   CAST(LPAD(EXTRACT(YEAR FROM CURRENT_DATE),4,'#39'0'#39') AS VARCHAR(4' +
        ')) AS ANO'
      'FROM VIEW_SPED_H010 H'
      'JOIN UNIDADES U ON(U.ABREVIATURA = H.UNID)'
      ') X'
      'ORDER BY X.ANO, X.MES, X.DESCR')
    Left = 504
    Top = 544
  end
  object FDCREATEORALTERVIEWVIEWSPED0200: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_0200('
      '    COD_ITEM,'
      '    DESCR_ITEM,'
      '    COD_BARRA,'
      '    COD_ANT_ITEM,'
      '    TIPO_ITEM,'
      '    UNID_INV,'
      '    COD_NCM,'
      '    EX_IPI,'
      '    COD_GEN,'
      '    COD_LST,'
      '    ALIQ_ICMS,'
      '    MES,'
      '    ANO)'
      'AS'
      'SELECT'
      '    X.COD_ITEM,'
      '    X.DESCR_ITEM,'
      '    X.COD_BARRA,'
      '    X.COD_ANT_ITEM,'
      
        '    IIF(IIF((X.TIPO_ITEM = '#39#39') OR (X.TIPO_ITEM IS NULL) , 99, X.' +
        'TIPO_ITEM) > 10, 99, X.TIPO_ITEM),'
      '    X.UNID_INV,'
      
        '    IIF((X.COD_NCM = '#39#39') OR (X.COD_NCM = '#39'99999999'#39'), '#39'19011090'#39 +
        ', X.COD_NCM),'
      '    X.EX_IPI,'
      
        '    SUBSTRING(IIF((X.COD_NCM = '#39#39') OR (X.COD_NCM = '#39'99999999'#39'), ' +
        #39'19011090'#39', X.COD_NCM) FROM 1 FOR 2),'
      '    X.COD_LST,'
      '    X.ALIQ_ICMS,'
      '    X.MES,'
      '    X.ANO'
      'FROM'
      '('
      'SELECT'
      '    DISTINCT'
      '    P.CODIGO AS COD_ITEM,'
      '    P.DESCRICAO AS DESCR_ITEM,'
      '    P.CODIGO_BARRAS AS COD_BARRA,'
      '    '#39#39' AS COD_ANT_ITEM,'
      '    P.TIPO_ATIVIDADE AS TIPO_ITEM,'
      '    U.ABREVIATURA AS UNID_INV,'
      '    P.NCM_SH AS COD_NCM,'
      '    '#39#39' AS EX_IPI,'
      '    '#39#39' AS COD_LST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_ICMS,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM N.DATA_EMISSAO),2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM N.DATA_EMISSAO),4,'#39'0'#39') AS VARCHA' +
        'R(4)) AS ANO'
      'FROM PRODUTOS P'
      'JOIN UNIDADES U ON(U.CODIGO = P.UNIDADE)'
      'JOIN NOTASFISCAIS_ITENS NI ON (NI.CODIGO_PRODUTO = P.CODIGO)'
      'JOIN NOTASFISCAIS N ON (N.CODIGO_NOTA = NI.CODIGO_NOTA)'
      'WHERE N.DATA_EMISSAO >= '#39'2017-01-01'#39
      'AND N.SITUACAO = 2'
      'AND N.INTEGRACAO IN(0,1)'
      'AND N.MODELO = '#39'55'#39
      'AND N.OPERACAO IN('#39'P'#39','#39'V'#39')'
      ''
      'UNION'
      ''
      'SELECT'
      '    DISTINCT'
      '    P.CODIGO AS COD_ITEM,'
      '    P.DESCRICAO AS DESCR_ITEM,'
      '    P.CODIGO_BARRAS AS COD_BARRA,'
      '    '#39#39' AS COD_ANT_ITEM,'
      '    P.TIPO_ATIVIDADE AS TIPO_ITEM,'
      '    U.ABREVIATURA AS UNID_INV,'
      '    P.NCM_SH AS COD_NCM,'
      '    '#39#39' AS EX_IPI,'
      '    '#39#39' AS COD_LST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_ICMS,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM PD.DATA_PEDIDO),2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM PD.DATA_PEDIDO),4,'#39'0'#39') AS VARCHA' +
        'R(4)) AS ANO'
      'FROM PRODUTOS P'
      'JOIN UNIDADES U ON(U.CODIGO = P.UNIDADE)'
      'JOIN PEDIDOS_ITENS PDI ON (PDI.CODIGO_PROD = P.CODIGO)'
      'JOIN PEDIDOS PD ON (PD.CODIGO = PDI.CODIGO_ID)'
      'WHERE PD.DATA_PEDIDO >= '#39'2017-01-01'#39
      'AND PD.MODELO_NF IN('#39'01'#39', '#39'1B'#39')'
      'AND PD.NUM_NOTA > 0'
      ''
      'UNION'
      ''
      'SELECT'
      '    H.COD_ITEM,'
      '    P.DESCRICAO AS DESCR_ITEM,'
      '    P.CODIGO_BARRAS AS COD_BARRA,'
      '    '#39#39' AS COD_ANT_ITEM,'
      '    P.TIPO_ATIVIDADE AS TIPO_ITEM,'
      '    H.UNID AS UNID_INV,'
      '    P.NCM_SH AS COD_NCM,'
      '    '#39#39' AS EX_IPI,'
      '    '#39#39' AS COD_LST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_ICMS,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM CURRENT_DATE) -1,2,'#39'0'#39') AS VARC' +
        'HAR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM CURRENT_DATE),4,'#39'0'#39') AS VARCHAR(' +
        '4)) AS ANO'
      'FROM VIEW_SPED_H010 H'
      'JOIN PRODUTOS P ON(P.CODIGO = H.COD_ITEM)'
      ') X ORDER BY X.ANO, X.MES, X.DESCR_ITEM')
    Left = 504
    Top = 600
  end
  object FDCREATEORALTERVIEWVIEWSPED0500: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_0500('
      '    DT_ALT,'
      '    COD_NAT_CC,'
      '    IND_CTA,'
      '    NIVEL,'
      '    COD_CTA,'
      '    NOME_CTA)'
      'AS'
      'SELECT'
      '    P.DATACAD AS DT_ALT,'
      '    P.COD_NATUREZA AS COD_NAT_CC,'
      '    P.INDICADOR AS IND_CTA,'
      '    P.NIVEL_CTA AS NIVEL,'
      '    P.COD_COMPLETO AS COD_CTA,'
      '    P.NOME AS NOME_CTA'
      'FROM PLANOCONTAS P'
      'ORDER BY COD_COMPLETO ASC')
    Left = 760
    Top = 384
  end
  object FDCREATEORALTERVIEWVIEWSPEDC100: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_C100('
      '    NOTA_ID,'
      '    IND_OPER,'
      '    IND_EMIT,'
      '    COD_PART,'
      '    COD_MOD,'
      '    COD_SIT,'
      '    SER,'
      '    NUM_DOC,'
      '    CHV_NFE,'
      '    DT_DOC,'
      '    DT_E_S,'
      '    VL_DOC,'
      '    IND_PGTO,'
      '    VL_DESC,'
      '    VL_ABAT_NT,'
      '    VL_MERC,'
      '    IND_FRT,'
      '    VL_FRT,'
      '    VL_SEG,'
      '    VL_OUT_DA,'
      '    VL_BC_ICMS,'
      '    VL_ICMS,'
      '    VL_BC_ICMS_ST,'
      '    VL_ICMS_ST,'
      '    VL_IPI,'
      '    VL_PIS,'
      '    VL_COFINS,'
      '    VL_PIS_ST,'
      '    VL_COFINS_ST,'
      '    MES,'
      '    ANO)'
      'AS'
      'SELECT'
      '    X.NOTA_ID,'
      '    X.IND_OPER,'
      '    X.IND_EMIT,'
      '    X.COD_PART,'
      '    X.COD_MOD,'
      '    X.COD_SIT,'
      '    X.SER,'
      '    X.NUM_DOC,'
      '    X.CHV_NFE,'
      '    X.DT_DOC,'
      '    X.DT_E_S,'
      '    X.VL_DOC,'
      '    X.IND_PGTO,'
      '    X.VL_DESC,'
      '    X.VL_ABAT_NT,'
      '    X.VL_MERC,'
      '    X.IND_FRT,'
      '    X.VL_FRT,'
      '    X.VL_SEG,'
      '    X.VL_OUT_DA,'
      '    X.VL_BC_ICMS,'
      '    X.VL_ICMS,'
      '    X.VL_BC_ICMS_ST,'
      '    X.VL_ICMS_ST,'
      '    X.VL_IPI,'
      '    X.VL_PIS,'
      '    X.VL_COFINS,'
      '    X.VL_PIS_ST,'
      '    X.VL_COFINS_ST,'
      '    X.MES,'
      '    X.ANO'
      '    FROM ('
      'SELECT'
      '    CAST('#39'E55-'#39' || N.CODIGO_NOTA AS VARCHAR(50)) AS NOTA_ID,'
      '    '#39'0'#39' AS IND_OPER,'
      '    '#39'1'#39' AS IND_EMIT,'
      '    CAST('#39'F'#39' || N.COD_FORNECEDOR AS VARCHAR(50)) AS COD_PART,'
      '    '#39'55'#39' AS COD_MOD,'
      '    '#39'00'#39' AS COD_SIT,'
      '    N.SERIE_NF AS SER,'
      '    N.NUM_NOTA AS NUM_DOC,'
      '    N.CHAVE_NFE AS CHV_NFE,'
      '    N.DATA_EMISSAO AS DT_DOC,'
      
        '    IIF(CAST(LPAD(EXTRACT(MONTH FROM N.DATA_EMISSAO),2,'#39'0'#39') AS V' +
        'ARCHAR(2)) ='
      
        '        CAST(LPAD(EXTRACT(MONTH FROM N.DATA_CADASTRO),2,'#39'0'#39') AS ' +
        'VARCHAR(2)), N.DATA_CADASTRO, N.DATA_EMISSAO) AS DT_E_S,'
      '    COALESCE(N.TOTAL_NOTA, 0) AS VL_DOC,'
      '    IIF(COALESCE(N.VALOR_PRAZO, 0) > 0, '#39'1'#39', '#39'0'#39') AS IND_PGTO,'
      '    COALESCE(N.VALOR_DESCONTO, 0) AS VL_DESC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ABAT_NT,'
      '    COALESCE(N.VALOR_TOTAL_PRODUTOS, 0) AS VL_MERC,'
      '    '#39'9'#39' AS IND_FRT,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_FRT,'
      '    COALESCE(N.VALOR_SEGURO, 0) AS VL_SEG,'
      
        '    COALESCE(N.VALOR_OUTRAS_DESPESAS, 0) + COALESCE(N.VALOR_ICMS' +
        '_SUBST, 0) AS VL_OUT_DA,'
      '    COALESCE(N.BASE_CALCULO_ICMS, 0) AS VL_BC_ICMS,'
      '    COALESCE(N.VALOR_ICMS, 0) AS VL_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS_ST,'
      '    COALESCE(N.VALOR_IPI, 0) AS VL_IPI,'
      '    COALESCE(N.VALOR_PIS, 0) AS VL_PIS,'
      '    COALESCE(N.VALOR_COFINS, 0) AS VL_COFINS,'
      '    COALESCE(N.VALOR_PIS_ST, 0) AS VL_PIS_ST,'
      '    COALESCE(N.VALOR_COFIS_ST, 0) AS VL_COFINS_ST,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM N.DATA_EMISSAO),2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM N.DATA_EMISSAO),4,'#39'0'#39') AS VARCHA' +
        'R(4)) AS ANO'
      'FROM NOTASFISCAIS N'
      'WHERE N.DATA_EMISSAO >= '#39'2017-01-01'#39
      'AND N.SITUACAO = 2'
      'AND N.INTEGRACAO IN(0,1)'
      'AND N.MODELO = '#39'55'#39
      'AND N.OPERACAO IN('#39'P'#39','#39'V'#39')'
      ''
      'UNION'
      ''
      'SELECT'
      '    CAST('#39'S55-'#39' || N.NR_NOTA AS VARCHAR(50)) AS NOTA_ID,'
      '    '#39'1'#39' AS IND_OPER,'
      '    '#39'0'#39' AS IND_EMIT,'
      '    CAST('#39'C'#39' || N.COD_CLIENTE AS VARCHAR(50)) AS COD_PART,'
      '    '#39'55'#39' AS COD_MOD,'
      
        '    CASE (N.STATUS || IIF(N.STATUS_INUTILIZADO = '#39'S'#39', '#39'S'#39', '#39'N'#39') ' +
        '|| IIF(N.STATUS_CANCELADO = '#39'S'#39', '#39'S'#39', '#39'N'#39'))'
      '        WHEN '#39'SNN'#39' THEN '#39'00'#39
      '        WHEN '#39'NSN'#39' THEN '#39'05'#39
      '        WHEN '#39'SNS'#39' THEN '#39'02'#39
      '    END AS COD_SIT,'
      '    N.SERIE_NF AS SER,'
      '    N.NR_NOTA AS NUM_DOC,'
      '    N.CHAVE_ACESSO_NFE AS CHV_NFE,'
      '    N.DT_EMISSAO AS DT_DOC,'
      '    N.DT_EMISSAO AS DT_E_S,'
      '    COALESCE(N.VL_TOTAL, 0) AS VL_DOC,'
      '    IIF(COALESCE(N.VL_PRAZO, 0) > 0, '#39'1'#39', '#39'0'#39') AS IND_PGTO,'
      '    COALESCE(N.VL_DESCONTOS, 0) AS VL_DESC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ABAT_NT,'
      '    COALESCE(N.VL_MERCADORIAS, 0) AS VL_MERC,'
      '    '#39'9'#39' AS IND_FRT,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_FRT,'
      '    COALESCE(N.VL_SEGURO, 0) AS VL_SEG,'
      '    COALESCE(N.VL_ACRESCIMOS, 0) AS VL_OUT_DA,'
      '    COALESCE(N.VL_BASE_ICM, 0) AS VL_BC_ICMS,'
      '    COALESCE(N.VL_ICM, 0) AS VL_ICMS,'
      '    COALESCE(N.VL_BASE_ICM_SUBST, 0) AS VL_BC_ICMS_ST,'
      '    COALESCE(N.VL_ICM_SUBST, 0) AS VL_ICMS_ST,'
      '    COALESCE(N.VL_IPI, 0) AS VL_IPI,'
      '    COALESCE(N.VL_PIS, 0) AS VL_PIS,'
      '    COALESCE(N.VL_COFINS, 0) AS VL_COFINS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_PIS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_COFINS_ST,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM N.DT_EMISSAO),2,'#39'0'#39') AS VARCHAR' +
        '(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM N.DT_EMISSAO),4,'#39'0'#39') AS VARCHAR(' +
        '4)) AS ANO'
      'FROM NFE_NOTA N'
      'WHERE N.DT_EMISSAO >= '#39'2017-01-01'#39
      'AND N.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND N.CHAVE_ACESSO_NFE <> '#39#39
      
        'AND (((N.STATUS = '#39'S'#39') AND (N.STATUS_INUTILIZADO IS NULL) AND (N' +
        '.STATUS_CANCELADO IS NULL) AND (N.NR_PROTOCOLO_NFE IS NOT NULL))'
      
        '            OR ((N.STATUS = '#39'N'#39') AND (N.STATUS_INUTILIZADO = '#39'S'#39 +
        ') AND (N.STATUS_CANCELADO IS NULL))'
      
        '                OR ((N.STATUS = '#39'S'#39') AND (N.STATUS_INUTILIZADO I' +
        'S NULL) AND (N.STATUS_CANCELADO = '#39'S'#39')))'
      ''
      'UNION'
      ''
      'SELECT'
      
        '    CAST('#39'S65-'#39' || N.CD_EMPRESA || N.NR_NOTA AS VARCHAR(50)) AS ' +
        'NOTA_ID,'
      '    '#39'1'#39' AS IND_OPER,'
      '    '#39'0'#39' AS IND_EMIT,'
      '    '#39#39' AS COD_PART,'
      '    '#39'65'#39' AS COD_MOD,'
      
        '    CASE (N.STATUS || IIF(N.STATUS_INUTILIZADO = '#39'S'#39', '#39'S'#39', '#39'N'#39') ' +
        '|| IIF(N.STATUS_CANCELADO = '#39'S'#39', '#39'S'#39', '#39'N'#39'))'
      '        WHEN '#39'SNN'#39' THEN '#39'00'#39
      '        WHEN '#39'NSN'#39' THEN '#39'05'#39
      '        WHEN '#39'SNS'#39' THEN '#39'02'#39
      '    END AS COD_SIT,'
      '    N.SERIE_NF AS SER,'
      '    N.NR_NOTA AS NUM_DOC,'
      '    N.CHAVE_ACESSO_NFE AS CHV_NFE,'
      '    N.DT_EMISSAO AS DT_DOC,'
      '    N.DT_EMISSAO AS DT_E_S,'
      '    COALESCE(N.VL_TOTAL, 0) AS VL_DOC,'
      '    IIF(COALESCE(N.VL_PRAZO, 0) > 0, '#39'1'#39', '#39'0'#39') AS IND_PGTO,'
      '    COALESCE(N.VL_DESCONTOS, 0) AS VL_DESC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ABAT_NT,'
      '    COALESCE(N.VL_MERCADORIAS, 0) AS VL_MERC,'
      '    '#39'9'#39' AS IND_FRT,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_FRT,'
      '    COALESCE(N.VL_SEGURO, 0) AS VL_SEG,'
      '    COALESCE(N.VL_ACRESCIMOS, 0) AS VL_OUT_DA,'
      '    COALESCE(N.VL_BASE_ICM, 0) AS VL_BC_ICMS,'
      '    COALESCE(N.VL_ICM, 0) AS VL_ICMS,'
      '    COALESCE(N.VL_BASE_ICM_SUBST, 0) AS VL_BC_ICMS_ST,'
      '    COALESCE(N.VL_ICM_SUBST, 0) AS VL_ICMS_ST,'
      '    COALESCE(N.VL_IPI, 0) AS VL_IPI,'
      '    COALESCE(N.VL_PIS, 0) AS VL_PIS,'
      '    COALESCE(N.VL_COFINS, 0) AS VL_COFINS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_PIS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_COFINS_ST,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM N.DT_EMISSAO),2,'#39'0'#39') AS VARCHAR' +
        '(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM N.DT_EMISSAO),4,'#39'0'#39') AS VARCHAR(' +
        '4)) AS ANO'
      'FROM NFECE_NOTA N'
      'WHERE N.DT_EMISSAO >= '#39'2017-01-01'#39
      'AND N.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND N.CHAVE_ACESSO_NFE <> '#39#39
      'AND N.MODELO = '#39'65'#39
      
        'AND (((N.STATUS = '#39'S'#39') AND (N.STATUS_INUTILIZADO IS NULL) AND (N' +
        '.STATUS_CANCELADO IS NULL) AND (N.NR_PROTOCOLO_NFE IS NOT NULL))'
      
        '            OR ((N.STATUS = '#39'N'#39') AND (N.STATUS_INUTILIZADO = '#39'S'#39 +
        ') AND (N.STATUS_CANCELADO IS NULL))'
      
        '                OR ((N.STATUS = '#39'S'#39') AND (N.STATUS_INUTILIZADO I' +
        'S NULL) AND (N.STATUS_CANCELADO = '#39'S'#39')))'
      ''
      'UNION'
      ''
      'SELECT'
      '    CAST('#39'S01-'#39' || PD.CODIGO AS VARCHAR(50)) AS NOTA_ID,'
      '    '#39'1'#39' AS IND_OPER,'
      '    '#39'0'#39' AS IND_EMIT,'
      '    CAST('#39'C'#39' || PD.CODIGO_CLIENTE AS VARCHAR(50)) AS COD_PART,'
      
        '    IIF((PD.MODELO_NF = '#39#39') OR (PD.MODELO_NF IS NULL), '#39'01'#39', PD.' +
        'MODELO_NF) AS COD_MOD,'
      '    '#39'00'#39' AS COD_SIT,'
      '    '#39'01'#39' AS SER,'
      '    PD.NUM_NOTA AS NUM_DOC,'
      '    CAST(NULL AS VARCHAR(44)) AS CHV_NFE,'
      '    PD.DATA_PEDIDO AS DT_DOC,'
      '    PD.DATA_PEDIDO AS DT_E_S,'
      '    COALESCE(PD.VALOR_TOTAL, 0) AS VL_DOC,'
      
        '    CASE (IIF(COALESCE(PD.VALOR_AVISTA, 0) > 0, 0, IIF(COALESCE(' +
        'PD.VALOR_PRAZO, 0) > 0, 1, 2)))'
      '        WHEN 0 THEN '#39'0'#39
      '        WHEN 1 THEN '#39'1'#39
      '        WHEN 2 THEN '#39'2'#39
      '    END AS IND_PGTO,'
      '    COALESCE(PD.VALOR_DESCONTO, 0) AS VL_DESC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ABAT_NT,'
      '    COALESCE(PD.VALOR_ITENS, 0) AS VL_MERC,'
      '    '#39'9'#39' AS IND_FRT,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_FRT,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_SEG,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_OUT_DA,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_IPI,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_PIS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_COFINS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_PIS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_COFINS_ST,'
      
        '    CAST(LPAD(EXTRACT(MONTH FROM PD.DATA_PEDIDO),2,'#39'0'#39') AS VARCH' +
        'AR(2)) AS MES,'
      
        '    CAST(LPAD(EXTRACT(YEAR FROM PD.DATA_PEDIDO),4,'#39'0'#39') AS VARCHA' +
        'R(4)) AS ANO'
      'FROM PEDIDOS PD'
      'WHERE PD.DATA_PEDIDO >= '#39'2017-01-01'#39
      'AND PD.MODELO_NF IN('#39'01'#39', '#39'1B'#39')'
      'AND PD.NUM_NOTA > 0) X'
      'ORDER BY X.IND_OPER, X.COD_MOD')
    Left = 760
    Top = 440
  end
  object FDCREATEORALTERVIEWVIEWSPEDC170: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_C170('
      '    NOTA_ID,'
      '    NUM_ITEM,'
      '    COD_ITEM,'
      '    DESCR_COMPL,'
      '    QTD,'
      '    UNID,'
      '    VL_ITEM,'
      '    VL_DESC,'
      '    IND_MOV,'
      '    CST_ICMS,'
      '    CFOP,'
      '    COD_NAT,'
      '    VL_BC_ICMS,'
      '    ALIQ_ICMS,'
      '    VL_ICMS,'
      '    VL_BC_ICMS_ST,'
      '    ALIQ_ST,'
      '    VL_ICMS_ST,'
      '    IND_APUR,'
      '    CST_IPI,'
      '    COD_ENQ,'
      '    VL_BC_IPI,'
      '    ALIQ_IPI,'
      '    VL_IPI,'
      '    CST_PIS,'
      '    VL_BC_PIS,'
      '    ALIQ_PIS_PERC,'
      '    QUANT_BC_PIS,'
      '    ALIQ_PIS_R,'
      '    VL_PIS,'
      '    CST_COFINS,'
      '    VL_BC_COFINS,'
      '    ALIQ_COFINS_PERC,'
      '    QUANT_BC_COFINS,'
      '    ALIQ_COFINS_R,'
      '    VL_COFINS,'
      '    COD_CTA)'
      'AS'
      'SELECT'
      '    CAST('#39'E55-'#39' || NI.CODIGO_NOTA AS VARCHAR(50)) AS NOTA_ID,'
      '    NI.ITEM AS NUM_ITEM,'
      '    NI.CODIGO_PRODUTO AS COD_ITEM,'
      '    NI.DESCRICAO AS DESCR_COMPL,'
      '    COALESCE(NI.QUANTIDADE, 0) AS QTD,'
      '    U.ABREVIATURA AS UNID,'
      '    COALESCE(NI.SUBTOTAL, 0) AS VL_ITEM,'
      '    COALESCE(NI.VALOR_DESC, 0) AS VL_DESC,'
      '    '#39'0'#39' AS IND_MOV,'
      '    IIF((SELECT E.REGIME FROM EMPRESA E) = '#39'S'#39','
      '    CASE NI.CST'
      '        WHEN '#39'000'#39' THEN '#39'101'#39
      '        WHEN '#39'010'#39' THEN '#39'203'#39
      '        WHEN '#39'020'#39' THEN '#39'101'#39
      '        WHEN '#39'030'#39' THEN '#39'202'#39
      '        WHEN '#39'040'#39' THEN '#39'103'#39
      '        WHEN '#39'041'#39' THEN '#39'103'#39
      '        WHEN '#39'050'#39' THEN '#39'103'#39
      '        WHEN '#39'051'#39' THEN '#39'103'#39
      '        WHEN '#39'060'#39' THEN '#39'500'#39
      '        WHEN '#39'070'#39' THEN '#39'202'#39
      '        WHEN '#39'080'#39' THEN '#39'202'#39
      '        WHEN '#39'090'#39' THEN '#39'900'#39
      '        ELSE NI.CST'
      '    END,0) AS CST_ICMS,'
      '    IIF(NI.CFOP = '#39#39', '#39'1102'#39', NI.CFOP) AS CFOP,'
      '    '#39#39' AS COD_NAT,'
      '    COALESCE(NI.BASE_ICMS, 0) AS VL_BC_ICMS,'
      '    COALESCE(NI.PERC_ICMS, 0) AS ALIQ_ICMS,'
      '    COALESCE(NI.VALOR_ICMS, 0) AS VL_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS_ST,'
      '    '#39'0'#39' AS IND_APUR,'
      '    COALESCE(G.CST_IPI_ENTRADA,'#39'02'#39') AS CST_IPI,'
      '    '#39#39' AS COD_ENQ,'
      '    COALESCE(NI.BASE_IPI, 0) AS VL_BC_IPI,'
      '    COALESCE(NI.PERC_IPI, 0) AS ALIQ_IPI,'
      '    COALESCE(NI.VALOR_IPI, 0) AS VL_IPI,'
      '    COALESCE(G.SIT_PIS_COMPRA, '#39'98'#39') AS CST_PIS,'
      '    COALESCE(NI.BASE_PIS, 0) AS VL_BC_PIS,'
      
        '    CAST(IIF(COALESCE(NI.BASE_PIS, 0) > 0,((COALESCE(NI.VALOR_PI' +
        'S, 0) * 100) / COALESCE(NI.BASE_PIS, 0)),0) AS DECIMAL(18,6)) AS' +
        ' ALIQ_PIS_PERC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS QUANT_BC_PIS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_PIS_R,'
      '    COALESCE(NI.VALOR_PIS, 0) AS VL_PIS,'
      '    COALESCE(G.SIT_COFINS_COMPRA, '#39'98'#39') AS CST_COFINS,'
      '    COALESCE(NI.BASE_COFINS, 0) AS VL_BC_COFINS,'
      
        '    CAST(IIF(COALESCE(NI.BASE_COFINS, 0) > 0,((COALESCE(NI.VALOR' +
        '_COFINS, 0) * 100) / COALESCE(NI.BASE_COFINS, 0)),0) AS DECIMAL(' +
        '18,6)) AS ALIQ_COFINS_PERC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,3)) AS QUANT_BC_COFINS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_COFINS_R,'
      '    COALESCE(NI.VALOR_COFINS, 0) AS VL_COFINS,'
      '    '#39#39' AS COD_CTA'
      'FROM NOTASFISCAIS_ITENS NI'
      'JOIN NOTASFISCAIS N ON(N.CODIGO_NOTA = NI.CODIGO_NOTA)'
      'JOIN PRODUTOS P ON(P.CODIGO = NI.CODIGO_PRODUTO)'
      'JOIN UNIDADES U ON(U.CODIGO = P.UNIDADE)'
      'JOIN GRUPO_TRIBUTACAO G ON(G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'WHERE N.DATA_EMISSAO >= '#39'2017-01-01'#39
      'AND N.SITUACAO = 2'
      'AND N.INTEGRACAO IN(0,1)'
      'AND N.MODELO = '#39'55'#39
      'AND N.OPERACAO IN('#39'P'#39','#39'V'#39')'
      ''
      'UNION'
      ''
      'SELECT'
      '    CAST('#39'S01-'#39' || PDI.CODIGO_ID AS VARCHAR(50)) AS NOTA_ID,'
      '    PDI.ITEN AS NUM_ITEM,'
      '    PDI.CODIGO_PROD AS COD_ITEM,'
      '    PDI.DESCRICAO_PRODUTO AS DESCR_COMPL,'
      '    COALESCE(PDI.QUANTIDADE, 0) AS QTD,'
      '    U.ABREVIATURA AS UNID,'
      
        '    CAST(COALESCE(PDI.PRECO_UNITARIO, 0) AS NUMERIC(18,2)) AS VL' +
        '_ITEM,'
      '    COALESCE(PDI.DESCONTO, 0) AS VL_DESC,'
      '    '#39'1'#39' AS IND_MOV,'
      '    '#39'202'#39' AS CST_ICMS,'
      
        '    IIF((PD.CFOP_NF = '#39#39') OR (PD.CFOP_NF IS NULL) , '#39'5102'#39', PD.C' +
        'FOP_NF) AS CFOP,'
      '    '#39#39' AS COD_NAT,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS_ST,'
      '    '#39'0'#39' AS IND_APUR,'
      '    '#39'52'#39' AS CST_IPI,'
      '    '#39#39' AS COD_ENQ,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_IPI,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_IPI,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_IPI,'
      '    '#39'49'#39' AS CST_PIS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_PIS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_PIS_PERC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS QUANT_BC_PIS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_PIS_R,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_PIS,'
      '    '#39'49'#39' AS CST_COFINS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_COFINS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_COFINS_PERC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS QUANT_BC_COFINS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_COFINS_R,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_COFINS,'
      '    '#39'3.1.1.01.01'#39' AS COD_CTA'
      'FROM PEDIDOS_ITENS PDI'
      'JOIN PEDIDOS PD ON(PD.CODIGO = PDI.CODIGO_ID)'
      'JOIN PRODUTOS P ON(P.CODIGO = PDI.CODIGO_PROD)'
      'JOIN UNIDADES U ON(U.CODIGO = P.UNIDADE)'
      
        'LEFT JOIN GRUPO_TRIBUTACAO G ON(G.COD_GRUPO = P.GRUPO_TRIBUTACAO' +
        ')'
      'WHERE PD.DATA_PEDIDO >= '#39'2017-01-01'#39
      'AND PD.MODELO_NF IN('#39'01'#39', '#39'1B'#39')'
      'AND PD.NUM_NOTA > 0')
    Left = 760
    Top = 496
  end
  object FDCREATEORALTERVIEWVIEWSPEDC190: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_C190('
      '    NOTA_ID,'
      '    CST_ICMS,'
      '    CFOP,'
      '    ALIQ_ICMS,'
      '    VL_OPR,'
      '    VL_BC_ICMS,'
      '    VL_ICMS,'
      '    VL_BC_ICMS_ST,'
      '    VL_ICMS_ST,'
      '    VL_RED_BC,'
      '    VL_IPI)'
      'AS'
      'SELECT'
      '    X.NOTA_ID AS NOTA_ID,'
      '    X.CST_ICMS,'
      '    X.CFOP AS CFOP,'
      '    X.ALIQ_ICMS,'
      '    SUM(X.VL_ITEM) AS VL_OPR,'
      '    SUM(X.VL_BC_ICMS) AS VL_BC_ICMS,'
      '    SUM(X.VL_ICMS) AS VL_ICMS,'
      '    SUM(X.VL_BC_ICMS_ST) AS VL_BC_ICMS_ST,'
      '    SUM(X.VL_ICMS_ST) AS VL_ICMS_ST,'
      '    SUM(X.VL_RED_BC) AS VL_RED_BC,'
      '    SUM(X.VL_IPI) AS VL_IPI'
      '    FROM ('
      'SELECT'
      '    CAST('#39'E55-'#39' || NI.CODIGO_NOTA AS VARCHAR(50)) AS NOTA_ID,'
      '    IIF((SELECT E.REGIME FROM EMPRESA E) = '#39'S'#39','
      '    CASE NI.CST'
      '        WHEN '#39'000'#39' THEN '#39'101'#39
      '        WHEN '#39'010'#39' THEN '#39'203'#39
      '        WHEN '#39'020'#39' THEN '#39'101'#39
      '        WHEN '#39'030'#39' THEN '#39'202'#39
      '        WHEN '#39'040'#39' THEN '#39'103'#39
      '        WHEN '#39'041'#39' THEN '#39'103'#39
      '        WHEN '#39'050'#39' THEN '#39'103'#39
      '        WHEN '#39'051'#39' THEN '#39'103'#39
      '        WHEN '#39'060'#39' THEN '#39'500'#39
      '        WHEN '#39'070'#39' THEN '#39'202'#39
      '        WHEN '#39'080'#39' THEN '#39'202'#39
      '        WHEN '#39'090'#39' THEN '#39'900'#39
      '        ELSE NI.CST'
      '    END,0) AS CST_ICMS,'
      '    IIF(NI.CFOP = '#39#39', '#39'1102'#39', NI.CFOP) AS CFOP,'
      '    COALESCE(NI.PERC_ICMS, 0) AS ALIQ_ICMS,'
      
        '    CAST((COALESCE(NI.SUBTOTAL, 0) - COALESCE(NI.VALOR_DESC, 0))' +
        ' +'
      
        '        COALESCE(NI.OUTRAS, 0) + COALESCE(NI.FRETE, 0) + COALESC' +
        'E(NI.SEGURO, 0) +'
      
        '            COALESCE(NI.VALOR_ICMS_ST, 0) + COALESCE(NI.VALOR_IP' +
        'I, 0) AS DECIMAL(18,6)) AS VL_ITEM,'
      '    COALESCE(NI.BASE_ICMS, 0) AS VL_BC_ICMS,'
      '    COALESCE(NI.VALOR_ICMS, 0) AS VL_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_RED_BC,'
      '    COALESCE(NI.VALOR_IPI, 0) AS VL_IPI'
      'FROM NOTASFISCAIS_ITENS NI'
      'JOIN NOTASFISCAIS N ON(N.CODIGO_NOTA = NI.CODIGO_NOTA)'
      'WHERE N.DATA_EMISSAO >= '#39'2017-01-01'#39
      'AND N.SITUACAO = 2'
      'AND N.INTEGRACAO IN(0,1)'
      'AND N.MODELO = '#39'55'#39
      'AND N.OPERACAO IN('#39'P'#39','#39'V'#39')) X'
      'GROUP BY'
      '    X.NOTA_ID,'
      '    X.CST_ICMS,'
      '    X.CFOP,'
      '    X.ALIQ_ICMS'
      ''
      'UNION'
      ''
      'SELECT'
      '    X.NOTA_ID AS NOTA_ID,'
      '    X.CST_ICMS,'
      '    X.CFOP AS CFOP,'
      '    X.ALIQ_ICMS,'
      '    SUM(X.VL_ITEM) AS VL_OPR,'
      '    SUM(X.VL_BC_ICMS) AS VL_BC_ICMS,'
      '    SUM(X.VL_ICMS) AS VL_ICMS,'
      '    SUM(X.VL_BC_ICMS_ST) AS VL_BC_ICMS_ST,'
      '    SUM(X.VL_ICMS_ST) AS VL_ICMS_ST,'
      '    SUM(X.VL_RED_BC) AS VL_RED_BC,'
      '    SUM(X.VL_IPI) AS VL_IPI'
      '    FROM ('
      'SELECT'
      '    CAST('#39'S55-'#39' || N.NR_NOTA AS VARCHAR(50)) AS NOTA_ID,'
      '    IIF((SELECT E.REGIME FROM EMPRESA E) = '#39'S'#39','
      '    CASE NI.CST'
      '        WHEN '#39'900'#39' THEN '#39'202'#39
      '        WHEN '#39'500'#39' THEN '#39'202'#39
      '        ELSE NI.CST'
      '    END,0) AS CST_ICMS,'
      '    NI.CFOP AS CFOP,'
      '    COALESCE(NI.ALIQ_ICM, 0) AS ALIQ_ICMS,'
      
        '    CAST(((COALESCE(NI.QT_PRODUTO, 0) * COALESCE(NI.VL_UNITARIO,' +
        ' 0)) -'
      
        '        COALESCE(NI.VL_DESCONTO, 0)) + COALESCE(NI.VL_OUTROS, 0)' +
        ' +'
      
        '            COALESCE(NI.VL_ICM_SUBST, 0) + COALESCE(NI.VL_IPI, 0' +
        ') AS DECIMAL(18,6)) AS VL_ITEM,'
      '    COALESCE(NI.VL_BASE_ICM, 0)AS VL_BC_ICMS,'
      '    COALESCE(NI.VL_ICM, 0) AS VL_ICMS,'
      '    COALESCE(NI.VL_BASE_ICM_SUBST, 0) AS VL_BC_ICMS_ST,'
      '    COALESCE(NI.VL_ICM_SUBST, 0) AS VL_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_RED_BC,'
      '    COALESCE(NI.VL_IPI, 0) AS VL_IPI'
      'FROM NFE_ITENS NI'
      'JOIN NFE_NOTA N ON (N.NR_NOTA = NI.NR_NOTA)'
      'WHERE N.DT_EMISSAO >= '#39'2017-01-01'#39
      'AND N.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND N.CHAVE_ACESSO_NFE <> '#39#39
      'AND N.STATUS = '#39'S'#39
      'AND N.STATUS_CANCELADO IS NULL'
      'AND N.STATUS_INUTILIZADO IS NULL'
      'AND N.NR_PROTOCOLO_NFE IS NOT NULL) X'
      'GROUP BY'
      '    X.NOTA_ID,'
      '    X.CST_ICMS,'
      '    X.CFOP,'
      '    X.ALIQ_ICMS'
      ''
      'UNION'
      ''
      'SELECT'
      '    X.NOTA_ID AS NOTA_ID,'
      '    X.CST_ICMS,'
      '    X.CFOP AS CFOP,'
      '    X.ALIQ_ICMS,'
      '    SUM(X.VL_ITEM) AS VL_OPR,'
      '    SUM(X.VL_BC_ICMS) AS VL_BC_ICMS,'
      '    SUM(X.VL_ICMS) AS VL_ICMS,'
      '    SUM(X.VL_BC_ICMS_ST) AS VL_BC_ICMS_ST,'
      '    SUM(X.VL_ICMS_ST) AS VL_ICMS_ST,'
      '    SUM(X.VL_RED_BC) AS VL_RED_BC,'
      '    SUM(X.VL_IPI) AS VL_IPI'
      '    FROM ('
      'SELECT'
      
        '    CAST('#39'S65-'#39' || N.CD_EMPRESA || N.NR_NOTA AS VARCHAR(50)) AS ' +
        'NOTA_ID,'
      '    IIF((SELECT E.REGIME FROM EMPRESA E) = '#39'S'#39','
      '    CASE NI.CST'
      '        WHEN '#39'900'#39' THEN '#39'202'#39
      '        WHEN '#39'500'#39' THEN '#39'202'#39
      '        ELSE NI.CST'
      '    END,0) AS CST_ICMS,'
      '    NI.CFOP AS CFOP,'
      '    COALESCE(NI.ALIQ_ICM, 0) AS ALIQ_ICMS,'
      
        '    CAST(((COALESCE(NI.QT_PRODUTO, 0) * COALESCE(NI.VL_UNITARIO,' +
        ' 0)) -'
      
        '        COALESCE(NI.VL_DESCONTO, 0)) + COALESCE(NI.VL_OUTROS, 0)' +
        ' +'
      
        '            COALESCE(NI.VL_ICM_SUBST, 0) + COALESCE(NI.VL_IPI, 0' +
        ') AS DECIMAL(18,6)) AS VL_ITEM,'
      '    COALESCE(NI.VL_BASE_ICM, 0) AS VL_BC_ICMS,'
      '    COALESCE(NI.VL_ICM, 0) AS VL_ICMS,'
      '    COALESCE(NI.VL_BASE_ICM_SUBST, 0) AS VL_BC_ICMS_ST,'
      '    COALESCE(NI.VL_ICM_SUBST, 0) AS VL_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_RED_BC,'
      '    COALESCE(NI.VL_IPI, 0) AS VL_IPI'
      'FROM NFECE_ITENS NI'
      
        'JOIN NFECE_NOTA N ON (N.NR_NOTA = NI.NR_NOTA AND N.CD_EMPRESA = ' +
        'NI.COD_EMPRESA)'
      'WHERE N.DT_EMISSAO >= '#39'2017-01-01'#39
      'AND N.CHAVE_ACESSO_NFE IS NOT NULL'
      'AND N.CHAVE_ACESSO_NFE <> '#39#39
      'AND N.MODELO = '#39'65'#39
      'AND N.STATUS = '#39'S'#39
      'AND N.STATUS_CANCELADO IS NULL'
      'AND N.STATUS_INUTILIZADO IS NULL'
      'AND N.NR_PROTOCOLO_NFE IS NOT NULL) X'
      'GROUP BY'
      '    X.NOTA_ID,'
      '    X.CST_ICMS,'
      '    X.CFOP,'
      '    X.ALIQ_ICMS'
      ''
      'UNION'
      ''
      'SELECT'
      '    X.NOTA_ID AS NOTA_ID,'
      '    X.CST_ICMS,'
      '    X.CFOP AS CFOP,'
      '    X.ALIQ_ICMS,'
      '    SUM(X.VL_ITEM) AS VL_OPR,'
      '    SUM(X.VL_BC_ICMS) AS VL_BC_ICMS,'
      '    SUM(X.VL_ICMS) AS VL_ICMS,'
      '    SUM(X.VL_BC_ICMS_ST) AS VL_BC_ICMS_ST,'
      '    SUM(X.VL_ICMS_ST) AS VL_ICMS_ST,'
      '    SUM(X.VL_RED_BC) AS VL_RED_BC,'
      '    SUM(X.VL_IPI) AS VL_IPI'
      '    FROM ('
      'SELECT'
      '    CAST('#39'S01-'#39' || PD.CODIGO AS VARCHAR(50)) AS NOTA_ID,'
      '    '#39'202'#39' AS CST_ICMS,'
      
        '    IIF((PD.CFOP_NF = '#39#39') OR (PD.CFOP_NF IS NULL) , '#39'5102'#39', PD.C' +
        'FOP_NF) AS CFOP,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS ALIQ_ICMS,'
      
        '    COALESCE(PDI.PRECO_TOTAL, 0) - COALESCE(PDI.DESCONTO, 0) AS ' +
        'VL_ITEM,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_BC_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_ICMS_ST,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_RED_BC,'
      '    CAST('#39'0'#39' AS DECIMAL(18,2)) AS VL_IPI'
      'FROM PEDIDOS_ITENS PDI'
      'JOIN PEDIDOS PD ON(PD.CODIGO = PDI.CODIGO_ID)'
      'JOIN PRODUTOS P ON(P.CODIGO = PDI.CODIGO_PROD)'
      'JOIN GRUPO_TRIBUTACAO G ON(G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'WHERE PD.DATA_PEDIDO >= '#39'2017-01-01'#39
      'AND PD.MODELO_NF IN('#39'01'#39', '#39'1B'#39')'
      'AND PD.NUM_NOTA > 0) X'
      'GROUP BY'
      '    X.NOTA_ID,'
      '    X.CST_ICMS,'
      '    X.CFOP,'
      '    X.ALIQ_ICMS')
    Left = 760
    Top = 552
  end
  object FDCREATEORALTERVIEWVIEWSPEDH010: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'CREATE OR ALTER VIEW VIEW_SPED_H010('
      '    COD_ITEM,'
      '    UNID,'
      '    QTD,'
      '    VL_UNIT,'
      '    VL_ITEM,'
      '    IND_PROP)'
      'AS'
      'SELECT'
      '    X.COD_ITEM,'
      '    X.UNID,'
      '    X.QTD,'
      '    X.VL_UNIT,'
      '    (X.QTD * X.VL_UNIT) AS VL_ITEM,'
      '    '#39'0'#39' AS IND_PROP'
      'FROM'
      '(SELECT'
      '    P.CODIGO AS COD_ITEM,'
      '    U.ABREVIATURA AS UNID,'
      '    COALESCE((SELECT'
      '        FIRST 1'
      '        EL.ESTOQUE_POSTERIOR'
      '    FROM PRODUTOS_ESTOQUES_LOG EL'
      '    WHERE EL.ID_PRODUTO = P.CODIGO'
      
        '    AND EL.DATA >= LPAD(EXTRACT(YEAR FROM CURRENT_DATE) -1,4,'#39'0'#39 +
        ') || '#39'-01-01'#39
      
        '    AND EL.DATA <= LPAD(EXTRACT(YEAR FROM CURRENT_DATE) -1,4,'#39'0'#39 +
        ') || '#39'-12-31'#39
      '    ORDER BY EL.DATA DESC), 0) AS QTD,'
      '    COALESCE(P.PRECO_CUSTO,0) AS VL_UNIT'
      'FROM PRODUTOS P'
      'JOIN UNIDADES U ON(U.CODIGO = P.UNIDADE)) X'
      'WHERE LPAD(EXTRACT(MONTH FROM CURRENT_DATE),2,'#39'0'#39') = '#39'03'#39
      'AND X.QTD > 0')
    Left = 760
    Top = 608
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Console'
    Left = 736
    Top = 24
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Console'
    Left = 752
    Top = 96
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Console'
    Left = 760
    Top = 152
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\StartNet_Sistemas\fbclient.dll'
    Left = 608
    Top = 88
  end
end
