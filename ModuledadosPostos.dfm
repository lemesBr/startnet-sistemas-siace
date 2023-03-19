object DMP: TDMP
  OldCreateOrder = False
  Height = 244
  Width = 188
  object dts_frentista: TDataSource
    DataSet = sds_frentista
    Left = 40
    Top = 64
  end
  object DTS_TANQUES: TDataSource
    DataSet = SDS_Tanques
    Left = 120
    Top = 64
  end
  object DTS_BOMBA: TDataSource
    DataSet = SDS_BOMBA
    Left = 40
    Top = 176
  end
  object DTS_BICOS: TDataSource
    DataSet = SDS_BICOS
    Left = 120
    Top = 176
  end
  object sds_frentista: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * FROM frentista')
    Left = 40
    Top = 16
    object sds_frentistaCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_frentistaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object sds_frentistaCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 3
    end
    object sds_frentistaPICPATH: TStringField
      FieldName = 'PICPATH'
      Origin = 'PICPATH'
      Size = 255
    end
    object sds_frentistaULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object sds_frentistaULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object sds_frentistaULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object sds_frentistaDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object sds_frentistaENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object sds_frentistaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
  end
  object SDS_Tanques: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * FROM TANQUE')
    Left = 120
    Top = 16
    object SDS_TanquesCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_TanquesID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object SDS_TanquesLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Required = True
      Precision = 18
      Size = 3
    end
    object SDS_TanquesULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object SDS_TanquesULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object SDS_TanquesULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object SDS_TanquesDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object SDS_TanquesENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object SDS_TanquesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object SDS_TanquesCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'COD_PRODUTOS'
    end
    object SDS_TanquesLITROS_ATUAL: TFMTBCDField
      FieldName = 'LITROS_ATUAL'
      Origin = 'LITROS_ATUAL'
      Precision = 18
      Size = 3
    end
    object SDS_TanquesVLR_SAI: TFMTBCDField
      FieldName = 'VLR_SAI'
      Origin = 'VLR_SAI'
      Precision = 18
      Size = 3
    end
    object SDS_TanquesVLR_ENT: TFMTBCDField
      FieldName = 'VLR_ENT'
      Origin = 'VLR_ENT'
      Precision = 18
      Size = 3
    end
    object SDS_TanquesEST_INI: TFMTBCDField
      FieldName = 'EST_INI'
      Origin = 'EST_INI'
      Precision = 18
      Size = 3
    end
    object SDS_TanquesEST_ATU: TFMTBCDField
      FieldName = 'EST_ATU'
      Origin = 'EST_ATU'
      Precision = 18
      Size = 3
    end
    object SDS_TanquesDAT_ULT_ENT: TDateField
      FieldName = 'DAT_ULT_ENT'
      Origin = 'DAT_ULT_ENT'
    end
    object SDS_TanquesNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = 'NUM_NF'
    end
    object SDS_TanquesDAT_ULT_SAI: TDateField
      FieldName = 'DAT_ULT_SAI'
      Origin = 'DAT_ULT_SAI'
    end
    object SDS_TanquesESTOQUE_MEDICAO: TBCDField
      FieldName = 'ESTOQUE_MEDICAO'
      Origin = 'ESTOQUE_MEDICAO'
      Precision = 18
    end
  end
  object SDS_BOMBA: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * FROM BOMBA')
    Left = 40
    Top = 120
    object SDS_BOMBACOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_BOMBACOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
    end
    object SDS_BOMBAID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Required = True
    end
    object SDS_BOMBAQNT_BICO: TIntegerField
      FieldName = 'QNT_BICO'
      Origin = 'QNT_BICO'
      Required = True
    end
    object SDS_BOMBAPICPATH: TStringField
      FieldName = 'PICPATH'
      Origin = 'PICPATH'
      Size = 255
    end
    object SDS_BOMBAULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object SDS_BOMBAULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object SDS_BOMBAULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object SDS_BOMBADATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object SDS_BOMBAENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object SDS_BOMBAOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object SDS_BOMBAAUTO_AUTORIZA: TSmallintField
      FieldName = 'AUTO_AUTORIZA'
      Origin = 'AUTO_AUTORIZA'
      Required = True
    end
    object SDS_BOMBADESAUTORIZA_APOS_VALOR: TFMTBCDField
      FieldName = 'DESAUTORIZA_APOS_VALOR'
      Origin = 'DESAUTORIZA_APOS_VALOR'
      Precision = 18
      Size = 3
    end
    object SDS_BOMBADESAUTORIZA_APOS_QNT: TIntegerField
      FieldName = 'DESAUTORIZA_APOS_QNT'
      Origin = 'DESAUTORIZA_APOS_QNT'
    end
    object SDS_BOMBASERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 50
    end
    object SDS_BOMBAFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object SDS_BOMBAMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 40
    end
  end
  object SDS_BICOS: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM BICO')
    Left = 120
    Top = 120
    object SDS_BICOSCOD_BICO: TIntegerField
      FieldName = 'COD_BICO'
      Origin = 'COD_BICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SDS_BICOSCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
      Required = True
    end
    object SDS_BICOSCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      Required = True
    end
    object SDS_BICOSCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
    end
    object SDS_BICOSULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object SDS_BICOSULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object SDS_BICOSULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object SDS_BICOSCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'COD_PRODUTOS'
    end
    object SDS_BICOSDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object SDS_BICOSENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object SDS_BICOSOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object SDS_BICOSID_BICO: TStringField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
      Size = 2
    end
    object SDS_BICOSPOSICAO: TIntegerField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
    end
  end
end
