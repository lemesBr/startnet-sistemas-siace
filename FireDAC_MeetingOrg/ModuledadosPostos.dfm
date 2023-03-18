object DMP: TDMP
  OldCreateOrder = False
  Height = 300
  Width = 502
  object sds_frentista: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from FRENTISTA order bY nome asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 16
    Top = 8
    object sds_frentistaCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Required = True
    end
    object sds_frentistaID_FRENTISTA: TIntegerField
      FieldName = 'ID_FRENTISTA'
      Required = True
    end
    object sds_frentistaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sds_frentistaCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 3
    end
    object sds_frentistaPICPATH: TStringField
      FieldName = 'PICPATH'
      Size = 255
    end
    object sds_frentistaULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
    end
    object sds_frentistaULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
    end
    object sds_frentistaULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
    end
    object sds_frentistaDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object sds_frentistaENABLED: TIntegerField
      FieldName = 'ENABLED'
    end
    object sds_frentistaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
  end
  object dts_frentista: TDataSource
    DataSet = sds_frentista
    Left = 136
    Top = 8
  end
  object SDS_Tanques: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from TANQUE order bY COD_TANQUE asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 40
    Top = 72
    object SDS_TanquesCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Required = True
    end
    object SDS_TanquesID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Required = True
    end
    object SDS_TanquesLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Required = True
      DisplayFormat = ',#0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object SDS_TanquesULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      DisplayFormat = ',#0.00'
    end
    object SDS_TanquesULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
    end
    object SDS_TanquesULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
    end
    object SDS_TanquesDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object SDS_TanquesENABLED: TIntegerField
      FieldName = 'ENABLED'
    end
    object SDS_TanquesOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object SDS_TanquesCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
    end
    object SDS_TanquesLITROS_ATUAL: TFMTBCDField
      FieldName = 'LITROS_ATUAL'
      DisplayFormat = ',#0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object SDS_TanquesVLR_SAI: TFMTBCDField
      FieldName = 'VLR_SAI'
      Precision = 15
      Size = 3
    end
    object SDS_TanquesVLR_ENT: TFMTBCDField
      FieldName = 'VLR_ENT'
      Precision = 15
      Size = 3
    end
    object SDS_TanquesEST_INI: TFMTBCDField
      FieldName = 'EST_INI'
      Precision = 15
      Size = 3
    end
    object SDS_TanquesEST_ATU: TFMTBCDField
      FieldName = 'EST_ATU'
      Precision = 15
      Size = 3
    end
    object SDS_TanquesDAT_ULT_ENT: TDateField
      FieldName = 'DAT_ULT_ENT'
    end
    object SDS_TanquesNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
    end
    object SDS_TanquesDAT_ULT_SAI: TDateField
      FieldName = 'DAT_ULT_SAI'
    end
    object SDS_TanquesESTOQUE_MEDICAO: TFMTBCDField
      FieldName = 'ESTOQUE_MEDICAO'
      Precision = 15
    end
  end
  object DTS_TANQUES: TDataSource
    DataSet = SDS_Tanques
    Left = 128
    Top = 72
  end
  object SDS_BOMBA: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from BOMBA order bY COD_BOMBA asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 144
    object SDS_BOMBACOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Required = True
    end
    object SDS_BOMBACOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
    end
    object SDS_BOMBAID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Required = True
    end
    object SDS_BOMBAQNT_BICO: TIntegerField
      FieldName = 'QNT_BICO'
      Required = True
    end
    object SDS_BOMBAPICPATH: TStringField
      FieldName = 'PICPATH'
      Size = 255
    end
    object SDS_BOMBAULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
    end
    object SDS_BOMBAULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
    end
    object SDS_BOMBAULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
    end
    object SDS_BOMBADATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object SDS_BOMBAENABLED: TIntegerField
      FieldName = 'ENABLED'
    end
    object SDS_BOMBAOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object SDS_BOMBAAUTO_AUTORIZA: TSmallintField
      FieldName = 'AUTO_AUTORIZA'
      Required = True
    end
    object SDS_BOMBADESAUTORIZA_APOS_VALOR: TFMTBCDField
      FieldName = 'DESAUTORIZA_APOS_VALOR'
      Precision = 15
      Size = 3
    end
    object SDS_BOMBADESAUTORIZA_APOS_QNT: TIntegerField
      FieldName = 'DESAUTORIZA_APOS_QNT'
    end
    object SDS_BOMBASERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object SDS_BOMBAFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 60
    end
    object SDS_BOMBAMODELO: TStringField
      FieldName = 'MODELO'
      Size = 40
    end
  end
  object DTS_BOMBA: TDataSource
    DataSet = SDS_BOMBA
    Left = 120
    Top = 144
  end
  object SDS_BICOS: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from BICO order bY COD_BICO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 240
    Top = 40
    object SDS_BICOSCOD_BICO: TIntegerField
      FieldName = 'COD_BICO'
      Required = True
    end
    object SDS_BICOSCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Required = True
    end
    object SDS_BICOSCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Required = True
    end
    object SDS_BICOSCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Required = True
    end
    object SDS_BICOSULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
    end
    object SDS_BICOSULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
    end
    object SDS_BICOSULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
    end
    object SDS_BICOSCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
    end
    object SDS_BICOSDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object SDS_BICOSENABLED: TIntegerField
      FieldName = 'ENABLED'
    end
    object SDS_BICOSOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object SDS_BICOSID_BICO: TStringField
      FieldName = 'ID_BICO'
      Size = 2
    end
    object SDS_BICOSPOSICAO: TIntegerField
      FieldName = 'POSICAO'
    end
  end
  object DTS_BICOS: TDataSource
    DataSet = SDS_BICOS
    Left = 304
    Top = 16
  end
end
