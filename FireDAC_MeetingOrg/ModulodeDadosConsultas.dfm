object DMC: TDMC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 728
  Width = 1001
  object SDS_Estoque_Atual: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 36
    Top = 10
    object SDS_Estoque_AtualCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Estoque_AtualDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Estoque_AtualPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object SDS_Estoque_AtualVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object SDS_Estoque_AtualESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Estoque_AtualESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object SDS_Estoque_AtualATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
  end
  object DTS_Estoque_Atual: TDataSource
    DataSet = SDS_Estoque_Atual
    Left = 39
    Top = 72
  end
  object SDS_Estoque_Atual_Minimo: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL_MINIMO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 131
    Top = 96
    object SDS_Estoque_Atual_MinimoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Estoque_Atual_MinimoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Estoque_Atual_MinimoESTOQUE_MINIMO: TIntegerField
      Alignment = taCenter
      FieldName = 'ESTOQUE_MINIMO'
    end
    object SDS_Estoque_Atual_MinimoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Estoque_Atual_MinimoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
  end
  object DTS_Estoque_Atual_Minimo: TDataSource
    DataSet = SDS_Estoque_Atual_Minimo
    Left = 133
    Top = 144
  end
  object SDS_Estoque_Atual_Maximo: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL_MAXIMO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 37
    Top = 121
    object SDS_Estoque_Atual_MaximoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Estoque_Atual_MaximoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Estoque_Atual_MaximoESTOQUE_MAXIMO: TIntegerField
      Alignment = taCenter
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object SDS_Estoque_Atual_MaximoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Estoque_Atual_MaximoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
  end
  object DTS_Estoque_Atual_Maximo: TDataSource
    DataSet = SDS_Estoque_Atual_Maximo
    Left = 37
    Top = 170
  end
  object SQLD_Estoque_Atual_Periodo: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_CAD_PERIODO(:DATAI,:DATAF) order' +
      ' by DATACAD asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DATAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAF'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 253
    Top = 25
    object SQLD_Estoque_Atual_PeriodoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SQLD_Estoque_Atual_PeriodoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_PeriodoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SQLD_Estoque_Atual_PeriodoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SQLD_Estoque_Atual_PeriodoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object SQLD_Estoque_Atual_PeriodoPRECO_VENDA: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object SQLD_Estoque_Atual_PeriodoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object DTSP_Estoque_Atual_Periodo: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_Periodo
    Left = 253
    Top = 71
  end
  object CDS_Estoque_Atual_Periodo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Estoque_Atual_Periodo'
    Left = 253
    Top = 115
    object CDS_Estoque_Atual_PeriodoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDS_Estoque_Atual_PeriodoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object CDS_Estoque_Atual_PeriodoDATACAD: TDateField
      Alignment = taCenter
      FieldName = 'DATACAD'
    end
    object CDS_Estoque_Atual_PeriodoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object CDS_Estoque_Atual_PeriodoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_PeriodoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_PeriodoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object DTS_Estoque_Atual_Periodo: TDataSource
    DataSet = CDS_Estoque_Atual_Periodo
    Left = 254
    Top = 159
  end
  object SQLD_Estoque_Atual_Fornecedor: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_FORNECEDOR(:param) order by DESC' +
      'RICAO asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 369
    Top = 1
    object SQLD_Estoque_Atual_FornecedorNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object SQLD_Estoque_Atual_FornecedorCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SQLD_Estoque_Atual_FornecedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object SQLD_Estoque_Atual_FornecedorPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
    end
    object SQLD_Estoque_Atual_FornecedorESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
      Size = 2
    end
    object SQLD_Estoque_Atual_FornecedorVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_Estoque_Atual_FornecedorPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_Estoque_Atual_FornecedorVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTSP_Estoque_Atual_Fornecedor: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_Fornecedor
    Left = 369
    Top = 45
  end
  object CDS_Estoque_Atual_Fornecedor: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Estoque_Atual_Fornecedor'
    Left = 370
    Top = 89
    object CDS_Estoque_Atual_FornecedorPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_Estoque_Atual_FornecedorVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_Estoque_Atual_FornecedorCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDS_Estoque_Atual_FornecedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object CDS_Estoque_Atual_FornecedorPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_FornecedorNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object CDS_Estoque_Atual_FornecedorESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object CDS_Estoque_Atual_FornecedorVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
    end
  end
  object DTS_Estoque_Atual_For_Fornecedor: TDataSource
    DataSet = CDS_Estoque_Atual_Fornecedor
    Left = 371
    Top = 133
  end
  object SQLD_Estoque_Atual_Marca: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_MARCA (:param) order by DESCRICA' +
      'O asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 482
    Top = 24
    object SQLD_Estoque_Atual_MarcaCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SQLD_Estoque_Atual_MarcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object SQLD_Estoque_Atual_MarcaPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
    end
    object SQLD_Estoque_Atual_MarcaESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_MarcaVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_MarcaNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
  end
  object DSTP_Estoque_Atual_Marca: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_Marca
    Left = 482
    Top = 67
  end
  object CDS_Estoque_Atual_Marca: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSTP_Estoque_Atual_Marca'
    Left = 483
    Top = 111
    object CDS_Estoque_Atual_MarcaCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDS_Estoque_Atual_MarcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object CDS_Estoque_Atual_MarcaPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_MarcaESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object CDS_Estoque_Atual_MarcaVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_MarcaNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
  end
  object DTS_Estoque_Atual_Marca: TDataSource
    DataSet = CDS_Estoque_Atual_Marca
    Left = 484
    Top = 155
  end
  object SQLD_Estoque_Atual_Grupo: TSQLDataSet
    CommandText = 
      'select CODIGO_BARRAS,DESCRICAO,NOME_GRUPO,PRECO_VENDA,ESTOQUE_AT' +
      'UAL,VALOR_ESTOQUE_ATUAL'#13#10'   from PRODUTOS ORDER BY DESCRICAO ASC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLC
    Left = 587
    Top = 3
    object StringField4: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object StringField5: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
    end
    object SQLD_Estoque_Atual_GrupoESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_GrupoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
    end
    object StringField7: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
  end
  object DSTP_Estoque_Atual_Grupo: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_Grupo
    Left = 587
    Top = 46
  end
  object CDS_Estoque_Atual_Grupo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSTP_Estoque_Atual_Grupo'
    Left = 588
    Top = 90
    object CDS_Estoque_Atual_GrupoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object StringField8: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object StringField9: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_GrupoESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object StringField11: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
  end
  object DTS_Estoque_Atual_Grupo: TDataSource
    DataSet = CDS_Estoque_Atual_Grupo
    Left = 589
    Top = 134
  end
  object SQLD_Estoque_Atual_SubGrupo: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_SUBGRUPO (:param) order by DESCR' +
      'ICAO asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 716
    Top = 27
    object SQLD_Estoque_Atual_SubGrupoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SQLD_Estoque_Atual_SubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object SQLD_Estoque_Atual_SubGrupoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
    end
    object SQLD_Estoque_Atual_SubGrupoESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_SubGrupoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
    end
    object StringField15: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
  end
  object DSTP_Estoque_Atual_SubGrupo: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_SubGrupo
    Left = 716
    Top = 70
  end
  object CDS_Estoque_Atual_SubGrupo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSTP_Estoque_Atual_SubGrupo'
    Left = 717
    Top = 114
    object CDS_Estoque_Atual_SubGrupoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDS_Estoque_Atual_SubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object CDS_Estoque_Atual_SubGrupoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_SubGrupoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object CDS_Estoque_Atual_SubGrupoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_SubGrupoNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
  end
  object DTS_Estoque_Atual_SubGrupo: TDataSource
    DataSet = CDS_Estoque_Atual_SubGrupo
    Left = 726
    Top = 158
  end
  object SDS_Estoque_Atual_Zerado: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL_ZERADO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 140
    Top = 3
    object SDS_Estoque_Atual_ZeradoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Estoque_Atual_ZeradoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Estoque_Atual_ZeradoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object SDS_Estoque_Atual_ZeradoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object SDS_Estoque_Atual_ZeradoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Estoque_Atual_ZeradoATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_Estoque_Atual_ZeradoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
  end
  object DTS_Estoque_Atual_Zerado: TDataSource
    DataSet = SDS_Estoque_Atual_Zerado
    Left = 132
    Top = 49
  end
  object SDS_PDV: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_PRODUTO_PDV order by DESCRICAO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 41
    Top = 400
    object SDS_PDVCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_PDVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_PDVABREVIADO: TStringField
      FieldName = 'ABREVIADO'
    end
    object SDS_PDVPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object SDS_PDVCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object SDS_PDVFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object SDS_PDVCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PDVDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Precision = 15
    end
    object SDS_PDVESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_PDVESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Precision = 15
    end
    object SDS_PDVESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object SDS_PDVSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_PDVDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_PDVREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object SDS_PDVPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 15
      Size = 2
    end
    object SDS_PDVFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_PDVNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 12
    end
    object SDS_PDVPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
  end
  object DTS_PDV: TDataSource
    DataSet = SDS_PDV
    Left = 40
    Top = 456
  end
  object SQLD_Pedidos: TSQLDataSet
    CommandText = 'select * from pedidos where codigo =:param'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 734
    Top = 399
    object SQLD_PedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_PedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_PedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_PedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SQLD_PedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_PedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_PedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object SQLD_PedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosOBSERVACOES: TStringField
      DisplayWidth = 255
      FieldName = 'OBSERVACOES'
      Size = 255
    end
    object SQLD_PedidosTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object SQLD_PedidosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object SQLD_PedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SQLD_PedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SQLD_PedidosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SQLD_PedidosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object SQLD_PedidosRG_IE: TStringField
      DisplayWidth = 15
      FieldName = 'RG_IE'
      Size = 15
    end
    object SQLD_PedidosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object SQLD_PedidosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SQLD_PedidosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SQLD_PedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object SQLD_PedidosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SQLD_PedidosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object SQLD_PedidosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SQLD_PedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SQLD_PedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SQLD_PedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object SQLD_PedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object SQLD_PedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object SQLD_PedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object SQLD_PedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SQLD_PedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object SQLD_PedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object SQLD_PedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object SQLD_PedidosN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object SQLD_PedidosPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 70
    end
    object SQLD_PedidosQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object SQLD_PedidosSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object SQLD_PedidosMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 70
    end
    object SQLD_PedidosDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object SQLD_PedidosVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object SQLD_PedidosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object SQLD_PedidosENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 44
    end
    object SQLD_PedidosTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object SQLD_PedidosFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object SQLD_PedidosMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object SQLD_PedidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 70
    end
    object SQLD_PedidosCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SQLD_PedidosPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object SQLD_PedidosIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object SQLD_PedidosVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosKM: TIntegerField
      FieldName = 'KM'
    end
    object SQLD_PedidosCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object SQLD_PedidosCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
  end
  object DTSP_Pedidos: TDataSetProvider
    DataSet = SQLD_Pedidos
    Left = 734
    Top = 444
  end
  object CDS_Pedidos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Pedidos'
    Left = 735
    Top = 488
    object CDS_PedidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_PedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_PedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_PedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object CDS_PedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_PedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_PedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object CDS_PedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_PedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_PedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object CDS_PedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 255
    end
    object CDS_PedidosTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object CDS_PedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object CDS_PedidosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object CDS_PedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object CDS_PedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object CDS_PedidosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object CDS_PedidosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object CDS_PedidosRG_IE: TStringField
      DisplayWidth = 15
      FieldName = 'RG_IE'
      Size = 15
    end
    object CDS_PedidosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object CDS_PedidosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object CDS_PedidosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CDS_PedidosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CDS_PedidosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CDS_PedidosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object CDS_PedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object CDS_PedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object CDS_PedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object CDS_PedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object CDS_PedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object CDS_PedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object CDS_PedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object CDS_PedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object CDS_PedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object CDS_PedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object CDS_PedidosN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object CDS_PedidosPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 70
    end
    object CDS_PedidosQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object CDS_PedidosSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object CDS_PedidosMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 70
    end
    object CDS_PedidosDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object CDS_PedidosVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_PedidosVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_PedidosCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object CDS_PedidosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CDS_PedidosENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 44
    end
    object CDS_PedidosTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object CDS_PedidosFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object CDS_PedidosMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object CDS_PedidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 70
    end
    object CDS_PedidosCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object CDS_PedidosPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object CDS_PedidosIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object CDS_PedidosVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosKM: TIntegerField
      FieldName = 'KM'
    end
    object CDS_PedidosCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object CDS_PedidosCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
  end
  object DTS_Pedidos: TDataSource
    DataSet = CDS_Pedidos
    Left = 736
    Top = 530
  end
  object SDS_Pedido_Itens: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_PEDIDO_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 732
    Top = 303
    object SDS_Pedido_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_Pedido_ItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
    end
    object SDS_Pedido_ItensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object SDS_Pedido_ItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Pedido_ItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_Pedido_ItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object SDS_Pedido_ItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 3
    end
    object SDS_Pedido_ItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_Pedido_ItensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object SDS_Pedido_ItensQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object SDS_Pedido_ItensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_Pedido_ItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_Pedido_ItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_Pedido_ItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_Pedido_ItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_Pedido_ItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_Pedido_ItensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 3
    end
    object SDS_Pedido_ItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_Pedido_ItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
    end
    object SDS_Pedido_ItensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Size = 5
    end
    object SDS_Pedido_ItensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Size = 5
    end
    object SDS_Pedido_ItensBICO: TStringField
      FieldName = 'BICO'
      Size = 2
    end
    object SDS_Pedido_ItensAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 500
    end
    object SDS_Pedido_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object SDS_Pedido_ItensNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
  end
  object DTS_Pedido_Itens: TDataSource
    DataSet = SDS_Pedido_Itens
    Left = 733
    Top = 347
  end
  object DTSP_Orcamentos: TDataSetProvider
    DataSet = SQLD_Orcamentos
    Left = 628
    Top = 444
  end
  object DTS_Orcamentos: TDataSource
    DataSet = CDS_Orcamentos
    Left = 630
    Top = 546
  end
  object SDS_Orcamento_Itens: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from ORCAMENTOS_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Orcamentos
    PacketRecords = 0
    Params = <>
    Left = 619
    Top = 302
    object SDS_Orcamento_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Orcamento_ItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_Orcamento_ItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Orcamento_ItensNOME_MARCA: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_MARCA'
      LookupDataSet = DM.SDS_PRODUTOS
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_MARCA'
      KeyFields = 'CODIGO_PROD'
      Size = 30
      Lookup = True
    end
    object SDS_Orcamento_ItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_Orcamento_ItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_Orcamento_ItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_Orcamento_ItensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_Orcamento_ItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 6
    end
    object SDS_Orcamento_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_Orcamento_ItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_Orcamento_ItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_Orcamento_ItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_Orcamento_ItensITEN: TIntegerField
      FieldName = 'ITEN'
    end
  end
  object DTS_Orcamento_Itens: TDataSource
    DataSet = SDS_Orcamento_Itens
    Left = 627
    Top = 347
  end
  object SDS_Cliente: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO_CLIENTE'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 731
    Top = 213
    object SDS_ClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ClienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object SDS_ClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_ClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_ClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_ClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_ClienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object SDS_ClienteRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object SDS_ClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object SDS_ClienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_ClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_ClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object SDS_ClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_ClienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object SDS_ClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object SDS_ClienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object SDS_ClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object SDS_ClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SDS_ClienteUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_ClienteDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_ClienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_ClienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object SDS_ClienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_ClienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_ClientePAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object SDS_ClienteMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object SDS_ClienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object SDS_ClienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object SDS_ClienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object SDS_ClienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object SDS_ClientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object SDS_ClienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object SDS_ClientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object SDS_ClienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object SDS_ClienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object SDS_ClienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object SDS_ClienteBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_ClienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object SDS_ClienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object SDS_ClienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object SDS_ClienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object SDS_ClienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object SDS_ClienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object SDS_ClienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object SDS_ClienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object SDS_ClienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object SDS_ClienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object SDS_ClientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_ClienteREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object SDS_ClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SDS_ClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_ClienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_ClienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_ClienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object SDS_ClienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object SDS_ClienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_ClienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object SDS_ClienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object SDS_ClienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SDS_ClienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object SDS_ClientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object SDS_ClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_ClienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object SDS_ClienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object SDS_ClienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object SDS_ClienteVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object SDS_ClienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_ClienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object SDS_ClienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object SDS_ClienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object SDS_ClienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_ClienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_ClienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object SDS_ClienteRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object SDS_ClienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_ClienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object SDS_ClienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object SDS_ClienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object SDS_ClienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object SDS_ClienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object SDS_ClienteLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object SDS_ClienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object SDS_ClientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_ClienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object SDS_ClienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
  end
  object DTS_Cliente: TDataSource
    DataSet = SDS_Cliente
    Left = 731
    Top = 258
  end
  object SDS_CLIENTEO: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO_CLIENTE'
    MasterSource = DTS_Orcamentos
    PacketRecords = 0
    Params = <>
    Left = 616
    Top = 211
    object SDS_CLIENTEOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CLIENTEONOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object SDS_CLIENTEOENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_CLIENTEOCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_CLIENTEOUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_CLIENTEOCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_CLIENTEOBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_CLIENTEOAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object SDS_CLIENTEOTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_CLIENTEOTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object SDS_CLIENTEOEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_CLIENTEONASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object SDS_CLIENTEOSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object SDS_CLIENTEOFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object SDS_CLIENTEORG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object SDS_CLIENTEOFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object SDS_CLIENTEOCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SDS_CLIENTEOUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_CLIENTEODATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_CLIENTEOCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object SDS_CLIENTEOOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_CLIENTEOCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object SDS_CLIENTEOESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_CLIENTEORESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_CLIENTEOPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object SDS_CLIENTEOMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object SDS_CLIENTEONOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object SDS_CLIENTEOCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object SDS_CLIENTEONASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object SDS_CLIENTEOTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object SDS_CLIENTEOPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object SDS_CLIENTEOLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object SDS_CLIENTEOPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object SDS_CLIENTEOTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object SDS_CLIENTEOFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object SDS_CLIENTEOOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object SDS_CLIENTEOBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_CLIENTEONOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object SDS_CLIENTEONUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object SDS_CLIENTEOCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object SDS_CLIENTEONOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object SDS_CLIENTEONOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object SDS_CLIENTEOTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object SDS_CLIENTEOTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object SDS_CLIENTEOBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object SDS_CLIENTEOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIENTEOOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object SDS_CLIENTEOOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object SDS_CLIENTEOPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIENTEOPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIENTEOPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIENTEOREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEONUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SDS_CLIENTEOCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_CLIENTEOCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_CLIENTEOORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_CLIENTEODATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object SDS_CLIENTEONATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object SDS_CLIENTEONATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_CLIENTEOCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object SDS_CLIENTEOCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object SDS_CLIENTEODATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SDS_CLIENTEOCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object SDS_CLIENTEOPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object SDS_CLIENTEOATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_CLIENTEOCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object SDS_CLIENTEOCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object SDS_CLIENTEOCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object SDS_CLIENTEOVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEOTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_CLIENTEONUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object SDS_CLIENTEOENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object SDS_CLIENTEOENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object SDS_CLIENTEODATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_CLIENTEODATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_CLIENTEORG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object SDS_CLIENTEORENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEODATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_CLIENTEOFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object SDS_CLIENTEOENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object SDS_CLIENTEOCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object SDS_CLIENTEOCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object SDS_CLIENTEOCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object SDS_CLIENTEOLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEOINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object SDS_CLIENTEOPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_CLIENTEOINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object SDS_CLIENTEOCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object SDS_CLIENTEOCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object SDS_CLIENTEOBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object SDS_CLIENTEOUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object SDS_CLIENTEOCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object SDS_CLIENTEONOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object SDS_CLIENTEONOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object SDS_CLIENTEOSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object SDS_CLIENTEOCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object SDS_CLIENTEODATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object SDS_CLIENTEOSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object SDS_CLIENTEOCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object SDS_CLIENTEODATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object SDS_CLIENTEOSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object SDS_CLIENTEOCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object SDS_CLIENTEODATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object SDS_CLIENTEOSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object SDS_CLIENTEOCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object SDS_CLIENTEODATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object SDS_CLIENTEODATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object SDS_CLIENTEOCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEOFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEOREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object SDS_CLIENTEOENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object SDS_CLIENTEORGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object SDS_CLIENTEOENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object SDS_CLIENTEORGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object SDS_CLIENTEOENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object SDS_CLIENTEORGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object SDS_CLIENTEOENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object SDS_CLIENTEORGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object SDS_CLIENTEOAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object SDS_CLIENTEOAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object SDS_CLIENTEOAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object SDS_CLIENTEOCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object SDS_CLIENTEOCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object SDS_CLIENTEOCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object SDS_CLIENTEOFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object SDS_CLIENTEOCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
  end
  object DTS_CLIENTEO: TDataSource
    DataSet = SDS_CLIENTEO
    Left = 619
    Top = 258
  end
  object SQLD_CPP_FOR: TSQLDataSet
    CommandText = 
      'select * from SP_CONTAS_PAGAR_P_FORP(:PARAM) order by DATA_VENCI' +
      'MENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 513
    Top = 222
    object SQLD_CPP_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPP_FORDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPP_FORDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPP_FORDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPP_FORDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_CPP_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPP_FORUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SQLD_CPP_FORUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SQLD_CPP_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPP_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPP_FORDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
    end
    object SQLD_CPP_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SQLD_CPP_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SQLD_CPP_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
    end
    object SQLD_CPP_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
    end
    object SQLD_CPP_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
    end
    object SQLD_CPP_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPP_FORPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPP_FORSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPP_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLD_CPP_DATA: TSQLDataSet
    CommandText = 
      'select * from SP_CONTAS_PAGAR_P_PERIODO_PLC(:Datai:,:Dataf) orde' +
      'r by DATA_VENCIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 415
    Top = 221
    object SQLD_CPP_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPP_DATADATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPP_DATADATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPP_DATADATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPP_DATADATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_CPP_DATAUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPP_DATAUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SQLD_CPP_DATAUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SQLD_CPP_DATATIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPP_DATAFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPP_DATADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
    end
    object SQLD_CPP_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SQLD_CPP_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SQLD_CPP_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
    end
    object SQLD_CPP_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
    end
    object SQLD_CPP_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
    end
    object SQLD_CPP_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPP_DATAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPP_DATASERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPP_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLD_CPA_FOR: TSQLDataSet
    CommandText = 
      'select * from SP_CONTAS_PAGAR_A_FORP(:PARAM) order by DATA_VENCI' +
      'MENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 320
    Top = 221
    object SQLD_CPA_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPA_FORDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPA_FORDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPA_FORDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPA_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPA_FORUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SQLD_CPA_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPA_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPA_FORDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
    end
    object SQLD_CPA_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SQLD_CPA_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SQLD_CPA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
    end
    object SQLD_CPA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
    end
    object SQLD_CPA_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
    end
    object SQLD_CPA_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPA_FORPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPA_FORSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPA_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLD_CPA_DATA: TSQLDataSet
    CommandText = 
      'select * from SP_CONTAS_PAGAR_A_PERIODO_PLC(:Datai:,:Dataf) orde' +
      'r by DATA_VENCIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 224
    Top = 221
    object SQLD_CPA_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPA_DATADATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPA_DATADATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPA_DATADATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPA_DATAUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPA_DATAUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SQLD_CPA_DATATIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPA_DATAFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPA_DATADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
    end
    object SQLD_CPA_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SQLD_CPA_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SQLD_CPA_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
    end
    object SQLD_CPA_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
    end
    object SQLD_CPA_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
    end
    object SQLD_CPA_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPA_DATAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPA_DATASERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPA_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLD_CPNA_FOR: TSQLDataSet
    CommandText = 
      'select * from SP_CONTAS_PAGAR_NA_FORP(:PARAM) order by DATA_VENC' +
      'IMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 127
    Top = 221
    object SQLD_CPNA_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPNA_FORDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPNA_FORDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPNA_FORDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPNA_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPNA_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPNA_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPNA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SQLD_CPNA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SQLD_CPNA_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPNA_FORPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPNA_FORSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPNA_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLD_CPNA_Data: TSQLDataSet
    CommandText = 
      'select * from SP_CONTAS_PAGAR_NA_PERIODO_PLC(:Datai:,:Dataf) ord' +
      'er by DATA_VENCIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 30
    Top = 220
    object SQLD_CPNA_DataCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPNA_DataDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPNA_DataDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPNA_DataDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPNA_DataUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPNA_DataTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPNA_DataFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPNA_DataVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SQLD_CPNA_DataVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SQLD_CPNA_DataN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPNA_DataPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPNA_DataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPNA_DataAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTSP_CPNA_Data: TDataSetProvider
    DataSet = SQLD_CPNA_Data
    Left = 30
    Top = 263
  end
  object DTSP_CPNA_FOR: TDataSetProvider
    DataSet = SQLD_CPNA_FOR
    Left = 127
    Top = 264
  end
  object DTSP_CPA_DATA: TDataSetProvider
    DataSet = SQLD_CPA_DATA
    Left = 224
    Top = 264
  end
  object DTSP_CPA_FOR: TDataSetProvider
    DataSet = SQLD_CPA_FOR
    Left = 320
    Top = 264
  end
  object DTSP_CPP_DATA: TDataSetProvider
    DataSet = SQLD_CPP_DATA
    Left = 415
    Top = 264
  end
  object DTSP_CPP_FOR: TDataSetProvider
    DataSet = SQLD_CPP_FOR
    Left = 513
    Top = 265
  end
  object CDS_CPP_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPP_FOR'
    Left = 514
    Top = 309
    object CDS_CPP_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPP_FORDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPP_FORDATA_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPP_FORDATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPP_FORDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object CDS_CPP_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPP_FORUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object CDS_CPP_FORUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_CPP_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPP_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPP_FORDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPP_FORPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPP_FORSERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPP_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_CPP_DATA: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPP_DATA'
    Left = 416
    Top = 308
    object CDS_CPP_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPP_DATADATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPP_DATADATA_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPP_DATADATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPP_DATADATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object CDS_CPP_DATAUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPP_DATAUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object CDS_CPP_DATAUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_CPP_DATATIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPP_DATAFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPP_DATADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPP_DATAPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPP_DATASERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPP_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_CPA_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPA_FOR'
    Left = 321
    Top = 308
    object CDS_CPA_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPA_FORDATA_CADASTRO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPA_FORDATA_EMISSAO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPA_FORDATA_VENCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPA_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPA_FORUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object CDS_CPA_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPA_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPA_FORDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPA_FORPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPA_FORSERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPA_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_CPA_DATA: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPA_DATA'
    Left = 225
    Top = 308
    object CDS_CPA_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPA_DATADATA_CADASTRO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPA_DATADATA_EMISSAO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPA_DATADATA_VENCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPA_DATAUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPA_DATAUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object CDS_CPA_DATATIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPA_DATAFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPA_DATADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPA_DATAPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPA_DATASERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPA_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_CPNA_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPNA_FOR'
    Left = 128
    Top = 308
    object CDS_CPNA_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPNA_FORDATA_CADASTRO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPNA_FORDATA_EMISSAO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPNA_FORDATA_VENCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPNA_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPNA_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPNA_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPNA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPNA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPNA_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPNA_FORPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPNA_FORSERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPNA_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_CPNA_Data: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPNA_Data'
    Left = 31
    Top = 307
    object CDS_CPNA_DataCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPNA_DataDATA_CADASTRO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPNA_DataDATA_EMISSAO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPNA_DataDATA_VENCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPNA_DataUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPNA_DataTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPNA_DataFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPNA_DataVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPNA_DataVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPNA_DataN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPNA_DataPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPNA_DataSERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPNA_DataAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object Dts_CPNA_Data: TDataSource
    DataSet = CDS_CPNA_Data
    Left = 31
    Top = 351
  end
  object Dts_CPNA_FOR: TDataSource
    DataSet = CDS_CPNA_FOR
    Left = 120
    Top = 352
  end
  object DTS_CPA_DATA: TDataSource
    DataSet = CDS_CPA_DATA
    Left = 225
    Top = 352
  end
  object DTS_CPA_FOR: TDataSource
    DataSet = CDS_CPA_FOR
    Left = 321
    Top = 352
  end
  object DTS_CPP_DATA: TDataSource
    DataSet = CDS_CPP_DATA
    Left = 416
    Top = 352
  end
  object DTS_CPP_FOR: TDataSource
    DataSet = CDS_CPP_FOR
    Left = 514
    Top = 353
  end
  object SDS_Est_Atual_Custo1: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL_CUSTO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 177
    Top = 410
    object SDS_Est_Atual_Custo1CODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Est_Atual_Custo1DESCRICAO: TStringField
      DisplayWidth = 70
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Est_Atual_Custo1PRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object SDS_Est_Atual_Custo1ESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 18
      Size = 2
    end
    object SDS_Est_Atual_Custo1VALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object SDS_Est_Atual_Custo1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Est_Atual_Custo1PRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object SDS_Est_Atual_Custo1VALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      currency = True
      Precision = 18
      Size = 2
    end
    object SDS_Est_Atual_Custo1ATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_Est_Atual_Custo1DESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_Est_Atual_Custo1CODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object SDS_Est_Atual_Custo1CODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
    end
    object SDS_Est_Atual_Custo1CODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
    object SDS_Est_Atual_Custo1SECCAO: TIntegerField
      FieldName = 'SECCAO'
    end
    object SDS_Est_Atual_Custo1CATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object SDS_Est_Atual_Custo1ESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object SDS_Est_Atual_Custo1CUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Est_Atual_Custo1V_T_CUSTO_MEDIO: TFMTBCDField
      FieldName = 'V_T_CUSTO_MEDIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object SDS_Est_Atual_Custo1VALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      currency = True
      Precision = 15
      Size = 6
    end
    object SDS_Est_Atual_Custo1NCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object SDS_Est_Atual_Custo1TIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object SDS_Est_Atual_Custo1PRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
    end
  end
  object DTS_Est_Atual_Custo: TDataSource
    DataSet = SDS_Est_Atual_Custo
    Left = 223
    Top = 448
  end
  object SQLD_Entradas: TSQLDataSet
    CommandText = 'select  *  from SP_ENTRADAS_CODIGO(:param)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 502
    Top = 399
    object SQLD_EntradasCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object SQLD_EntradasNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object SQLD_EntradasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_EntradasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_EntradasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_EntradasTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      currency = True
      Precision = 15
    end
    object SQLD_EntradasCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object SQLD_EntradasIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object SQLD_EntradasUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_EntradasDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_EntradasOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTSP_Entradas: TDataSetProvider
    DataSet = SQLD_Entradas
    Left = 502
    Top = 444
  end
  object CDS_Entradas: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Entradas'
    Left = 503
    Top = 488
    object CDS_EntradasCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object CDS_EntradasNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object CDS_EntradasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_EntradasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_EntradasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_EntradasTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      currency = True
      Precision = 15
    end
    object CDS_EntradasCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object CDS_EntradasIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object CDS_EntradasUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_EntradasDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_EntradasOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_Entradas: TDataSource
    DataSet = CDS_Entradas
    Left = 504
    Top = 531
  end
  object SDS_EntradasItens: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from NOTASFISCAIS_ITENS order by DESCRICAO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_NOTA'
    MasterFields = 'CODIGO_NOTA'
    MasterSource = DTS_Entradas
    PacketRecords = 0
    Params = <>
    Left = 413
    Top = 406
    object SDS_EntradasItensCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Required = True
    end
    object SDS_EntradasItensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object SDS_EntradasItensCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object SDS_EntradasItensCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object SDS_EntradasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_EntradasItensNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object SDS_EntradasItensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object SDS_EntradasItensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object SDS_EntradasItensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_EntradasItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_EntradasItensVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      currency = True
      Precision = 15
    end
    object SDS_EntradasItensVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensDATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_EntradasItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object SDS_EntradasItensDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object SDS_EntradasItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_EntradasItensQUANT_FRACIONADA: TFMTBCDField
      FieldName = 'QUANT_FRACIONADA'
      Precision = 15
    end
    object SDS_EntradasItensLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object SDS_EntradasItensMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_EntradasItensBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_EntradasItens: TDataSource
    DataSet = SDS_EntradasItens
    Left = 413
    Top = 467
  end
  object Sds_Rel_Vendas: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from  REL_VENDAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftDate
        Name = 'datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataf'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pedido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cliente'
        ParamType = ptInput
      end>
    Params = <>
    Left = 148
    Top = 501
    object Sds_Rel_VendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_Rel_VendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object Sds_Rel_VendasVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object Sds_Rel_VendasVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object Sds_Rel_VendasDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Sds_Rel_VendasCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Sds_Rel_VendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Sds_Rel_VendasVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object Sds_Rel_VendasCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Sds_Rel_VendasCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_Rel_VendasDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Sds_Rel_VendasPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Precision = 15
    end
    object Sds_Rel_VendasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
    end
    object Sds_Rel_VendasQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Sds_Rel_VendasPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Precision = 15
    end
    object Sds_Rel_VendasCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object Sds_Rel_VendasDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object Sds_Rel_VendasQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object Sds_Rel_VendasVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
    end
    object Sds_Rel_VendasENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
    object Sds_Rel_VendasPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
  end
  object Dts_Rel_Vendas: TDataSource
    DataSet = Sds_Rel_Vendas
    Left = 160
    Top = 544
  end
  object SDS_Crediario_Contrato: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CREDIARIO order by DATA_VENCIMENTO ASC;'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 45
    Top = 506
    object SDS_Crediario_ContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Crediario_ContratoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_Crediario_ContratoDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_Crediario_ContratoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_Crediario_ContratoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_Crediario_ContratoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_Crediario_ContratoUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_Crediario_ContratoUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_Crediario_ContratoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_Crediario_ContratoVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_Crediario_ContratoPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SDS_Crediario_ContratoNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SDS_Crediario_ContratoBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SDS_Crediario_ContratoREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object SDS_Crediario_ContratoDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_Crediario_ContratoID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SDS_Crediario_ContratoENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SDS_Crediario_ContratoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_Crediario_ContratoNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SDS_Crediario_ContratoCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object SDS_Crediario_ContratoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object SDS_Crediario_ContratoCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_Crediario_ContratoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_Crediario_ContratoSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_Crediario_ContratoNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object SDS_Crediario_ContratoANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_Crediario_ContratoMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
  end
  object Dts_Crediario_contrato: TDataSource
    DataSet = SDS_Crediario_Contrato
    Left = 48
    Top = 552
  end
  object sds_mov_Caixa: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from MOVIMENTO_DIARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_VENDA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 112
    Top = 400
    object sds_mov_CaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_mov_CaixaDATA: TDateField
      FieldName = 'DATA'
    end
    object sds_mov_CaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object sds_mov_CaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object sds_mov_CaixaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sds_mov_CaixaVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_mov_CaixaVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_mov_CaixaCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object sds_mov_CaixaNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object sds_mov_CaixaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object sds_mov_CaixaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object Dts_mov_caixa: TDataSource
    DataSet = sds_mov_Caixa
    Left = 115
    Top = 445
  end
  object DTS_CHEQUES: TDataSource
    DataSet = SDS_CHEQUES
    Left = 318
    Top = 455
  end
  object SDS_CHEQUES: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CHEQUES order by DATA_DEPOSITO ASC;'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 316
    Top = 406
    object SDS_CHEQUESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CHEQUESCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CHEQUESBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_CHEQUESAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_CHEQUESCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_CHEQUESCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_CHEQUESTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_CHEQUESTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_CHEQUESN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_CHEQUESQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_CHEQUESVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_CHEQUESCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_CHEQUESRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_CHEQUESRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_CHEQUESMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_CHEQUESDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CHEQUESDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_CHEQUESDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_CHEQUESDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CHEQUESUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CHEQUESUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CHEQUESCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_CHEQUESCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_CHEQUESNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_CHEQUESNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
  end
  object SQLD_LIMITE: TSQLDataSet
    CommandText = 'select  *  from SP_LIMITE_CREDITO(:CLIENTE)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 830
    Top = 15
    object SQLD_LIMITECODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_LIMITENOME_RS: TStringField
      FieldName = 'NOME_RS'
      Size = 50
    end
    object SQLD_LIMITEV_CHEQUE_COMPENSAR: TFMTBCDField
      FieldName = 'V_CHEQUE_COMPENSAR'
      Precision = 15
    end
    object SQLD_LIMITEV_CRED_RECEBER: TFMTBCDField
      FieldName = 'V_CRED_RECEBER'
      Precision = 15
      Size = 2
    end
    object SQLD_LIMITELIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object SQLD_LIMITELIMITE_DIPONIVEL: TFMTBCDField
      FieldName = 'LIMITE_DIPONIVEL'
      Precision = 15
      Size = 2
    end
    object SQLD_LIMITEV_CRED_VENCIDO: TFMTBCDField
      FieldName = 'V_CRED_VENCIDO'
      Precision = 15
      Size = 2
    end
  end
  object DSP_LIMITE: TDataSetProvider
    DataSet = SQLD_LIMITE
    Left = 830
    Top = 68
  end
  object CDS_LIMITE: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSP_LIMITE'
    Left = 831
    Top = 112
    object CDS_LIMITECODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_LIMITENOME_RS: TStringField
      FieldName = 'NOME_RS'
      Size = 50
    end
    object CDS_LIMITEV_CHEQUE_COMPENSAR: TFMTBCDField
      FieldName = 'V_CHEQUE_COMPENSAR'
      currency = True
      Precision = 15
    end
    object CDS_LIMITEV_CRED_RECEBER: TFMTBCDField
      FieldName = 'V_CRED_RECEBER'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_LIMITELIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_LIMITELIMITE_DIPONIVEL: TFMTBCDField
      FieldName = 'LIMITE_DIPONIVEL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_LIMITEV_CRED_VENCIDO: TFMTBCDField
      FieldName = 'V_CRED_VENCIDO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_LIMITE: TDataSource
    DataSet = CDS_LIMITE
    Left = 832
    Top = 162
  end
  object dts_libera: TDataSource
    DataSet = sds_libera
    Left = 825
    Top = 280
  end
  object sds_libera: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from LIBERACAO_CLIENTE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 825
    Top = 224
    object sds_liberaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sds_liberaSOLICITA: TStringField
      FieldName = 'SOLICITA'
      Size = 1
    end
    object sds_liberaLIBERA: TStringField
      FieldName = 'LIBERA'
      Size = 1
    end
    object sds_liberaCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object sds_liberaAUTO_LIBERA: TStringField
      FieldName = 'AUTO_LIBERA'
      Size = 1
    end
    object sds_liberaVALOR_SOLICITADO: TFMTBCDField
      FieldName = 'VALOR_SOLICITADO'
      Precision = 15
      Size = 2
    end
  end
  object CDS_Orcamentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTSP_Orcamentos'
    Left = 632
    Top = 496
    object CDS_OrcamentosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDS_OrcamentosCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object CDS_OrcamentosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CDS_OrcamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_OrcamentosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_OrcamentosDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_OrcamentosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object CDS_OrcamentosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 70
    end
    object CDS_OrcamentosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object CDS_OrcamentosOBSERVACOES: TStringField
      DisplayWidth = 255
      FieldName = 'OBSERVACOES'
      Size = 255
    end
    object CDS_OrcamentosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object CDS_OrcamentosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object CDS_OrcamentosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object CDS_OrcamentosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object CDS_OrcamentosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object CDS_OrcamentosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object CDS_OrcamentosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object CDS_OrcamentosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
  end
  object SQLD_Orcamentos: TSQLDataSet
    CommandText = 'select  *  from SP_ORCAMENTOS(:param)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 620
    Top = 399
    object SQLD_OrcamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_OrcamentosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object SQLD_OrcamentosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SQLD_OrcamentosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SQLD_OrcamentosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object SQLD_OrcamentosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_OrcamentosDATA: TDateField
      FieldName = 'DATA'
    end
    object SQLD_OrcamentosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object SQLD_OrcamentosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_OrcamentosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object SQLD_OrcamentosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 150
    end
    object SQLD_OrcamentosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object SQLD_OrcamentosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object SQLD_OrcamentosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SQLD_OrcamentosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SQLD_OrcamentosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object SQLD_OrcamentosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object SQLD_OrcamentosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object SQLD_OrcamentosRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object SQLD_OrcamentosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SQLD_OrcamentosCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object SQLD_OrcamentosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SQLD_OrcamentosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
  end
  object Qry_clientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from clientes order by nome_rs asc')
    SQLConnection = DM.SQLC
    Left = 817
    Top = 433
    object Qry_clientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_clientesNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object Qry_clientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Qry_clientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Qry_clientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_clientesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Qry_clientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object Qry_clientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object Qry_clientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Qry_clientesNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object Qry_clientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object Qry_clientesFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object Qry_clientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Qry_clientesRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object Qry_clientesFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object Qry_clientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object Qry_clientesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Qry_clientesDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Qry_clientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object Qry_clientesOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object Qry_clientesCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object Qry_clientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object Qry_clientesRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object Qry_clientesPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object Qry_clientesMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object Qry_clientesNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object Qry_clientesCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object Qry_clientesNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object Qry_clientesTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object Qry_clientesPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object Qry_clientesLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object Qry_clientesPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object Qry_clientesTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object Qry_clientesFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object Qry_clientesOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object Qry_clientesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object Qry_clientesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object Qry_clientesNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object Qry_clientesCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object Qry_clientesNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object Qry_clientesNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object Qry_clientesTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object Qry_clientesTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object Qry_clientesBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object Qry_clientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object Qry_clientesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qry_clientesOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object Qry_clientesOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object Qry_clientesPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object Qry_clientesPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object Qry_clientesPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object Qry_clientesREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object Qry_clientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object Qry_clientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object Qry_clientesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_clientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object Qry_clientesDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object Qry_clientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object Qry_clientesNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object Qry_clientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object Qry_clientesCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object Qry_clientesDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object Qry_clientesCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object Qry_clientesPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object Qry_clientesATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object Qry_clientesCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object Qry_clientesCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object Qry_clientesCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object Qry_clientesVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object Qry_clientesTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object Qry_clientesNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object Qry_clientesENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object Qry_clientesENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object Qry_clientesDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object Qry_clientesDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object Qry_clientesRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object Qry_clientesRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object Qry_clientesDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object Qry_clientesFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object Qry_clientesENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object Qry_clientesCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object Qry_clientesCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object Qry_clientesCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object Qry_clientesLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object Qry_clientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object Qry_clientesPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object Qry_clientesINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object Qry_clientesCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object Qry_clientesCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object Qry_clientesBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object Qry_clientesUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object Qry_clientesCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object Qry_clientesNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object Qry_clientesNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object Qry_clientesSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object Qry_clientesCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object Qry_clientesDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object Qry_clientesSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object Qry_clientesCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object Qry_clientesDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object Qry_clientesSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object Qry_clientesCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object Qry_clientesDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object Qry_clientesSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object Qry_clientesCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object Qry_clientesDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object Qry_clientesDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object Qry_clientesCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object Qry_clientesFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object Qry_clientesREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object Qry_clientesENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object Qry_clientesRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object Qry_clientesENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object Qry_clientesRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object Qry_clientesENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object Qry_clientesRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object Qry_clientesENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object Qry_clientesRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object Qry_clientesAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object Qry_clientesAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object Qry_clientesAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object Qry_clientesCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object Qry_clientesCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object Qry_clientesCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object Qry_clientesFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object Qry_clientesCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
  end
  object DSP_Clientes: TDataSetProvider
    DataSet = Qry_clientes
    Left = 820
    Top = 489
  end
  object cds_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Clientes'
    Left = 828
    Top = 540
    object cds_ClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_ClientesNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object cds_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cds_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cds_ClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cds_ClientesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cds_ClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cds_ClientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cds_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cds_ClientesNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object cds_ClientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object cds_ClientesFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object cds_ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_ClientesRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object cds_ClientesFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cds_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cds_ClientesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object cds_ClientesDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object cds_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object cds_ClientesOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object cds_ClientesCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object cds_ClientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object cds_ClientesRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object cds_ClientesPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object cds_ClientesMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object cds_ClientesNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object cds_ClientesCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object cds_ClientesNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object cds_ClientesTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object cds_ClientesPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object cds_ClientesLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object cds_ClientesPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object cds_ClientesTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object cds_ClientesFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object cds_ClientesOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object cds_ClientesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object cds_ClientesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object cds_ClientesNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object cds_ClientesCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object cds_ClientesNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object cds_ClientesNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object cds_ClientesTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object cds_ClientesTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object cds_ClientesBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object cds_ClientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object cds_ClientesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_ClientesOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object cds_ClientesOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object cds_ClientesPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object cds_ClientesPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cds_ClientesPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object cds_ClientesREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object cds_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object cds_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_ClientesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_ClientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object cds_ClientesDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object cds_ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object cds_ClientesNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object cds_ClientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object cds_ClientesCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object cds_ClientesDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object cds_ClientesCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object cds_ClientesPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object cds_ClientesATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cds_ClientesCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object cds_ClientesCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object cds_ClientesCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object cds_ClientesVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object cds_ClientesTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object cds_ClientesNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object cds_ClientesENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object cds_ClientesENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object cds_ClientesDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object cds_ClientesDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object cds_ClientesRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object cds_ClientesRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object cds_ClientesDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object cds_ClientesFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object cds_ClientesENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object cds_ClientesCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object cds_ClientesCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object cds_ClientesCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object cds_ClientesLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object cds_ClientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cds_ClientesPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object cds_ClientesINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object cds_ClientesCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object cds_ClientesCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object cds_ClientesBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object cds_ClientesUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object cds_ClientesCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object cds_ClientesNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object cds_ClientesNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object cds_ClientesSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object cds_ClientesCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object cds_ClientesDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object cds_ClientesSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object cds_ClientesCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object cds_ClientesDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object cds_ClientesSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object cds_ClientesCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object cds_ClientesDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object cds_ClientesSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object cds_ClientesCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object cds_ClientesDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object cds_ClientesDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object cds_ClientesCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object cds_ClientesFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object cds_ClientesREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object cds_ClientesENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object cds_ClientesRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object cds_ClientesENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object cds_ClientesRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object cds_ClientesENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object cds_ClientesRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object cds_ClientesENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object cds_ClientesRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object cds_ClientesAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object cds_ClientesAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object cds_ClientesAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object cds_ClientesCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object cds_ClientesCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object cds_ClientesCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object cds_ClientesFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object cds_ClientesCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
  end
  object dts_clientes: TDataSource
    DataSet = cds_Clientes
    Left = 829
    Top = 585
  end
  object Sds_DocsFiscais: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from COD_DOCUMENTOS_FISCAIS Order By Codigo ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 240
    Top = 504
    object Sds_DocsFiscaisCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 2
    end
    object Sds_DocsFiscaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object Dts_DocsFiscais: TDataSource
    DataSet = Sds_DocsFiscais
    Left = 248
    Top = 552
  end
  object sds_parcelas_orc: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from ORCAMENTOS_PARCELAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_ORCAMENTO'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Orcamentos
    PacketRecords = 0
    Params = <>
    Left = 563
    Top = 598
    object sds_parcelas_orcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_parcelas_orcID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
      Required = True
    end
    object sds_parcelas_orcDESC_COND_PGTO: TStringField
      FieldName = 'DESC_COND_PGTO'
      Size = 50
    end
    object sds_parcelas_orcQUANT_PARCELAS: TStringField
      FieldName = 'QUANT_PARCELAS'
      Size = 3
    end
    object sds_parcelas_orcVALOR_PARC: TFMTBCDField
      FieldName = 'VALOR_PARC'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_parcelas_orcPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 4
    end
    object sds_parcelas_orcDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
    end
  end
  object Dts_parcelas_orc: TDataSource
    DataSet = sds_parcelas_orc
    Left = 651
    Top = 611
  end
  object DTS_COND_PAGTO: TDataSource
    DataSet = QRY_COND_PAGTO
    Left = 398
    Top = 631
  end
  object sds_pagto: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PEDIDOS_FORMAS_PAGAMENTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'COD_VENDA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 708
    Top = 582
    object sds_pagtoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object sds_pagtoCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
    end
    object sds_pagtoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sds_pagtoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_pagtoDESC_FORMA: TStringField
      FieldName = 'DESC_FORMA'
      Size = 40
    end
  end
  object dts_pagto: TDataSource
    DataSet = sds_pagto
    Left = 768
    Top = 586
  end
  object Qrcheques: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from cheques_emitidos where cod_cheque =:cheque')
    Left = 40
    Top = 600
    ParamData = <
      item
        Name = 'cheque'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QrchequesCOD_CHEQUE: TIntegerField
      FieldName = 'COD_CHEQUE'
      Required = True
    end
    object QrchequesDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object QrchequesDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Required = True
    end
    object QrchequesPAGO: TStringField
      FieldName = 'PAGO'
      Required = True
      Size = 4
    end
    object QrchequesORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
      Size = 8
    end
    object QrchequesDOCUMENTO_ORIGEM: TIntegerField
      FieldName = 'DOCUMENTO_ORIGEM'
    end
    object QrchequesCOD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Required = True
    end
    object QrchequesCOMP_NA_INCLUSAO: TStringField
      FieldName = 'COMP_NA_INCLUSAO'
      Required = True
      Size = 4
    end
    object QrchequesDATA_COMPENSACAO: TDateField
      FieldName = 'DATA_COMPENSACAO'
    end
    object QrchequesHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 3600
    end
    object QrchequesNUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Required = True
    end
    object QrchequesCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Required = True
    end
    object QrchequesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object QrchequesFAVORECIDO: TStringField
      FieldName = 'FAVORECIDO'
      Required = True
      Size = 200
    end
    object QrchequesCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object QrchequesCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object QrchequesOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 1200
    end
    object QrchequesCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
    end
    object QrchequesCOD_FORN: TIntegerField
      FieldName = 'COD_FORN'
    end
    object QrchequesDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object QrchequesRETORNADO: TStringField
      FieldName = 'RETORNADO'
      Size = 4
    end
    object QrchequesVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QrchequesTROCO: TStringField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Required = True
      Size = 1
    end
    object QrchequesPL_CONTA: TIntegerField
      FieldName = 'PL_CONTA'
      Origin = 'PL_CONTA'
    end
  end
  object dscheques: TDataSource
    DataSet = Qrcheques
    Left = 112
    Top = 600
  end
  object qrcontasreceber: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.IbTransaction1
    SQL.Strings = (
      'select * from cREDIARIO')
    Left = 832
    Top = 336
    object qrcontasreceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qrcontasreceberCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qrcontasreceberDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Required = True
    end
    object qrcontasreceberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object qrcontasreceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 280
    end
    object qrcontasreceberUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 80
    end
    object qrcontasreceberUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
      Size = 80
    end
    object qrcontasreceberSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qrcontasreceberCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object qrcontasreceberPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 40
    end
    object qrcontasreceberNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
      Size = 80
    end
    object qrcontasreceberBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object qrcontasreceberREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 40
    end
    object qrcontasreceberDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object qrcontasreceberID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object qrcontasreceberENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 4
    end
    object qrcontasreceberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qrcontasreceberNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object qrcontasreceberCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 48
    end
    object qrcontasreceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 40
    end
    object qrcontasreceberCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 4
    end
    object qrcontasreceberNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object qrcontasreceberSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 12
    end
    object qrcontasreceberNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 280
    end
    object qrcontasreceberANO: TStringField
      FieldName = 'ANO'
      Size = 16
    end
    object qrcontasreceberMES: TStringField
      FieldName = 'MES'
      Size = 8
    end
    object qrcontasreceberTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 4
    end
    object qrcontasreceberID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object qrcontasreceberNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
      Size = 80
    end
    object qrcontasreceberCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object qrcontasreceberDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object qrcontasreceberDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object qrcontasreceberN_OS: TStringField
      FieldName = 'N_OS'
      Size = 10
    end
    object qrcontasreceberCOD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      Size = 6
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontasreceberCOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
    end
    object qrcontasreceberCOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
    end
    object qrcontasreceberVALOR_COMPRA: TBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_JUROS: TBCDField
      FieldName = 'VALOR_JUROS'
      Origin = 'VALOR_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_ACRESCIMO: TBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_PAGAR: TBCDField
      FieldName = 'VALOR_PAGAR'
      Origin = 'VALOR_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVLR_GRAFICA: TBCDField
      FieldName = 'VLR_GRAFICA'
      Origin = 'VLR_GRAFICA'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_COMISAO: TBCDField
      FieldName = 'VALOR_COMISAO'
      Origin = 'VALOR_COMISAO'
      Precision = 18
      Size = 2
    end
  end
  object qrcliente: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 904
    Top = 336
    object qrclienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qrclienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 280
    end
    object qrclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 176
    end
    object qrclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 160
    end
    object qrclienteUF: TStringField
      FieldName = 'UF'
      Size = 8
    end
    object qrclienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 60
    end
    object qrclienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 60
    end
    object qrclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object qrclienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object qrclienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 60
    end
    object qrclienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
    end
    object qrclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 120
    end
    object qrclienteRG_IE: TStringField
      FieldName = 'RG_IE'
    end
    object qrclienteFAX: TStringField
      FieldName = 'FAX'
      Size = 60
    end
    object qrclienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 60
    end
    object qrclienteUSERCAD: TStringField
      FieldName = 'USERCAD'
      Size = 80
    end
    object qrclienteDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object qrclienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      Size = 18
    end
    object qrclienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
    end
    object qrclienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 12
    end
    object qrclienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 40
    end
    object qrclienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 40
    end
    object qrclientePAI: TStringField
      FieldName = 'PAI'
      Size = 280
    end
    object qrclienteMAE: TStringField
      FieldName = 'MAE'
      Size = 280
    end
    object qrclienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 280
    end
    object qrclienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      Size = 18
    end
    object qrclienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object qrclienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 280
    end
    object qrclientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 280
    end
    object qrclienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 280
    end
    object qrclientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 280
    end
    object qrclienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 60
    end
    object qrclienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 60
    end
    object qrclienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
    end
    object qrclienteBANCO: TStringField
      FieldName = 'BANCO'
      Size = 280
    end
    object qrclienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 280
    end
    object qrclienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 40
    end
    object qrclienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object qrclienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 280
    end
    object qrclienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 280
    end
    object qrclienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 60
    end
    object qrclienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 60
    end
    object qrclienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 280
    end
    object qrclienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 120
    end
    object qrclienteTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrclienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
    end
    object qrclienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
    end
    object qrclientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      Size = 1
    end
    object qrclientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      Size = 1
    end
    object qrclientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      Size = 1
    end
    object qrclienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 24
    end
    object qrclienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 120
    end
    object qrclienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qrclienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 40
    end
    object qrclienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object qrclienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 160
    end
    object qrclienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 8
    end
    object qrclienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object qrclienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object qrclienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object qrclienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object qrclientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 800
    end
    object qrclienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 4
    end
    object qrclienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 240
    end
    object qrclienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 240
    end
    object qrclienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 40
    end
    object qrclienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 40
    end
    object qrclienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object qrclienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 176
    end
    object qrclienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 176
    end
    object qrclienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object qrclienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object qrclienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 80
    end
    object qrclienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object qrclienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 60
    end
    object qrclienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 176
    end
    object qrclienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      Size = 10
    end
    object qrclienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object qrclienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
    end
    object qrclienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 80
    end
    object qrclientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 4
    end
    object qrclienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 80
    end
    object qrclienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object qrclienteCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 160
    end
    object qrclienteBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 120
    end
    object qrclienteUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 8
    end
    object qrclienteCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Size = 80
    end
    object qrclienteNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 280
    end
    object qrclienteNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 280
    end
    object qrclienteSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 160
    end
    object qrclienteCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 44
    end
    object qrclienteDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object qrclienteSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 160
    end
    object qrclienteCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 44
    end
    object qrclienteDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object qrclienteSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 160
    end
    object qrclienteCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 44
    end
    object qrclienteDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object qrclienteSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 160
    end
    object qrclienteCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 44
    end
    object qrclienteDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object qrclienteDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object qrclienteREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 48
    end
    object qrclienteENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 160
    end
    object qrclienteRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object qrclienteENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 160
    end
    object qrclienteRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object qrclienteENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 160
    end
    object qrclienteRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object qrclienteENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 160
    end
    object qrclienteRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object qrclienteAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 280
    end
    object qrclienteAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 280
    end
    object qrclienteAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 280
    end
    object qrclienteCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      Size = 18
    end
    object qrclienteCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      Size = 18
    end
    object qrclienteCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      Size = 18
    end
    object qrclienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 4
    end
    object qrclienteCTPS: TStringField
      FieldName = 'CTPS'
      Size = 60
    end
    object qrclienteTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Size = 4
    end
    object qrclienteTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Size = 4
    end
    object qrclienteCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object qrclienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 320
    end
    object qrclienteDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
    end
    object qrclienteFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
    end
    object qrclienteFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Size = 4
    end
    object qrclienteFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
    end
    object qrclienteFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Size = 120
    end
    object qrclienteREMUNERACAO: TBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object qrclienteVALOR_ALUGUEL: TBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object qrclienteRENDA_CONJUGUE: TBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object qrclienteLIMITE_DE_CREDITO: TBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object qrclienteCAPITALSOCIAL: TBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object qrclienteFATURAMENTOBRUTO: TBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object qrclienteFUNC_SALARIO: TBCDField
      FieldName = 'FUNC_SALARIO'
      Origin = 'FUNC_SALARIO'
      Precision = 18
      Size = 2
    end
  end
  object fxvenda: TfrxReport
    Version = '5.4.6'
    DataSet = DM.fxemitente
    DataSetName = 'fxemitente'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39189.682060544000000000
    ReportOptions.LastChange = 42051.978373750000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 904
    Top = 288
    Datasets = <
      item
        DataSet = FSCLIENTE
        DataSetName = 'FSCLIENTE'
      end
      item
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
      end
      item
        DataSet = DM.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = DM.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 209.000000000000000000
      PaperHeight = 291.000000000000000000
      PaperSize = 256
      TopMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 264.566929130000000000
        Top = 343.937230000000000000
        Width = 789.921770000000000000
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
        RowCount = 0
        object Line1: TfrxLineView
          Left = 277.685220000000000000
          Top = 11.338590000000000000
          Height = 245.669450000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 3.779530000000000000
          Top = 264.008040000000000000
          Width = 789.921770000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 41.574803150000000000
          Top = 34.015770000000000000
          Width = 222.992125980000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo36: TfrxMemoView
          Left = 41.574830000000000000
          Top = 17.118120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'Recibo')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 177.637910000000000000
          Top = 21.897650000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            '(Valores em Reais)')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 41.574803150000000000
          Top = 60.472480000000000000
          Width = 222.992125980000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 120.944960000000000000
          Top = 34.015770000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object frxMemoView1: TfrxMemoView
          Left = 87.929190000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 192.756030000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 93.708720000000000000
          Top = 45.354360000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'PARCELA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fscontasreceber."PARCELA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 204.094620000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_VENCIMENTO'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fscontasreceber."DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 41.574830000000000000
          Top = 86.929190000000000000
          Width = 222.992270000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          Left = 41.574830000000000000
          Top = 68.031540000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Valor do Documento:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 180.417440000000000000
          Top = 66.252010000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_COMPRA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fscontasreceber."VALOR_COMPRA"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 188.976500000000000000
          Top = 34.015770000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 124.724463150000000000
          Top = 34.015770000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 125.724490000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_COMPRA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fscontasreceber."DATA_COMPRA"]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 41.574830000000000000
          Top = 113.385900000000000000
          Width = 222.992270000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 41.574830000000000000
          Top = 94.488250000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '(-) Desconto/Abatimento:')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 41.574830000000000000
          Top = 139.842610000000000000
          Width = 222.992270000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 41.574830000000000000
          Top = 120.944960000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '(+) Mora/Multa:')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 41.574830000000000000
          Top = 166.299320000000000000
          Width = 222.992270000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 41.574830000000000000
          Top = 147.401670000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '(=) Valor Cobrado:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 181.417440000000000000
          Top = 196.535560000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'VIA DO SACADO')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 41.574830000000000000
          Top = 192.756030000000000000
          Width = 222.992270000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          Left = 41.574830000000000000
          Top = 173.858380000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Data do Pagamento:')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 86.929190000000000000
          Top = 34.015770000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Left = 41.574830000000000000
          Top = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            'Docto.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 41.574830000000000000
          Top = 45.354360000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO_COMPRA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fscontasreceber."CODIGO_COMPRA"]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 291.023810000000000000
          Top = 34.015770000000000000
          Width = 464.882190000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 665.197280000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            '(Valores em Reais)')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 510.236550000000000000
          Top = 88.708720000000000000
          Width = 245.669450000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 514.016080000000000000
          Top = 69.811070000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Valor do Documento:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 667.976810000000000000
          Top = 68.031540000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_COMPRA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fscontasreceber."VALOR_COMPRA"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 510.236550000000000000
          Top = 115.165430000000000000
          Width = 245.669450000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 514.016080000000000000
          Top = 96.267780000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '(-) Desconto/Abatimento:')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 510.236550000000000000
          Top = 141.622140000000000000
          Width = 245.669450000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 514.016080000000000000
          Top = 122.724490000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '(+) Mora/Multa:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 287.244280000000000000
          Top = 168.078850000000000000
          Width = 468.661720000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo18: TfrxMemoView
          Left = 514.016080000000000000
          Top = 149.181200000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '(=) Valor Cobrado:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 672.756340000000000000
          Top = 224.771800000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'VIA DA LOJA')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 287.244280000000000000
          Top = 194.535560000000000000
          Width = 468.661720000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          Left = 514.016080000000000000
          Top = 175.637910000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Data do Pagamento:')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 510.236550000000000000
          Top = 34.015770000000000000
          Height = 160.629938350000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 287.244280000000000000
          Top = 45.354360000000000000
          Width = 154.960730000000000000
          Height = 49.133890000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pag'#225'vel na Loja'
            'Ap'#243's vencimento multa de 2%'
            'Juros de Mora: 0,33% ao dia')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Left = 510.236550000000000000
          Top = 60.472480000000000000
          Width = 245.669450000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo41: TfrxMemoView
          Left = 514.016080000000000000
          Top = 41.574830000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Data do Vencimento:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 684.094930000000000000
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_VENCIMENTO'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fscontasreceber."DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 359.055350000000000000
          Top = 168.299320000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 415.748300000000000000
          Top = 169.078850000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo43: TfrxMemoView
          Left = 366.614410000000000000
          Top = 168.078850000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 423.307360000000000000
          Top = 168.078850000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data da Emiss'#227'o')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 302.362400000000000000
          Top = 168.078850000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 373.393940000000000000
          Top = 177.637910000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'PARCELA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fscontasreceber."PARCELA"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 420.527830000000000000
          Top = 177.637910000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_COMPRA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fscontasreceber."DATA_COMPRA"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 294.803340000000000000
          Top = 177.637910000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO_COMPRA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fscontasreceber."CODIGO_COMPRA"]')
          ParentFont = False
        end
        object Line26: TfrxLineView
          Left = 287.244280000000000000
          Top = 219.212740000000000000
          Width = 468.661720000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          Left = 287.244280000000000000
          Top = 203.315090000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 321.260050000000000000
          Top = 200.315090000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO_CLIENTE'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fscontasreceber."CODIGO_CLIENTE"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 287.244280000000000000
          Top = 222.992270000000000000
          Width = 129.000000000000000000
          Height = 30.236240000000000000
          BarType = bcCode39
          DataField = 'CODIGO'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          Rotation = 0
          ShowText = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object fxemitenteFANTASIA: TfrxMemoView
          Left = 287.244280000000000000
          Top = 15.118120000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[fxemitente."NOME_FANTASIA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 385.512060000000000000
          Top = 200.315090000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_RS'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."NOME_RS"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 264.566929130000000000
        Top = 18.897650000000000000
        Width = 789.921770000000000000
        object Line2: TfrxLineView
          Left = 37.795300000000000000
          Top = 20.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Left = 582.047620000000000000
          Top = 1.118120000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'Carn'#234' de Pagamento')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 37.795300000000000000
          Top = 31.913420000000000000
          Width = 718.110700000000000000
          Height = 136.063080000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prezado Cliente,'
            ''
            
              'Este '#233' o seu carn'#234' de pagamento, observe com cuidado as datas de' +
              ' vencimento de cada presta'#231#227'o. Pagando em dia, voc'#234' tem cr'#233'dito ' +
              'sempre e se torna um Cliente Especial. Para sua maior comodidade' +
              ', leia as instru'#231#245'es abaixo:'
            ''
            
              '1 - A presta'#231#227'o n'#227'o paga no vencimento estar'#225' sujeita aos encarg' +
              'os legais cab'#237'veis;'
            
              '2 - Os pagamentos das presta'#231#245'es dever'#227'o ser efetuados em ordem ' +
              'de vencimento;'
            
              '3 - Os pagamentos em cheque s'#243' ser'#227'o v'#225'lidos ap'#243's a compensa'#231#227'o ' +
              'banc'#225'ria;'
            
              '4 - Observe, quando do pagamento das presta'#231#245'es, se a via da loj' +
              'a foi destacada e se o valor registrado confere com o valor pago' +
              ';'
            '5 - Em caso de mudan'#231'a, comunique seu novo endere'#231'o a loja.')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 37.795300000000000000
          Top = 198.212740000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo25: TfrxMemoView
          Left = 37.795300000000000000
          Top = 215.551330000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 86.929190000000000000
          Top = 212.551330000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_RS'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."NOME_RS"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 505.354670000000000000
          Top = 212.551330000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'CPF_CNPJ'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 37.795300000000000000
          Top = 228.448980000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 86.929190000000000000
          Top = 228.448980000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FSCLIENTE."ENDERECO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 37.795300000000000000
          Top = 239.787570000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade/UF:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 86.929190000000000000
          Top = 239.787570000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FSCLIENTE."CIDADE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 230.551330000000000000
          Top = 239.787570000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 255.567100000000000000
          Top = 239.787570000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FSCLIENTE."CEP"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 457.323130000000000000
          Top = 215.551330000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 262.905690000000000000
          Width = 789.921770000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 37.795300000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_FANTASIA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[fxemitente."NOME_FANTASIA"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 457.323130000000000000
          Top = 239.622047240000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object fsvendaCODVENDEDOR: TfrxMemoView
          Left = 505.457020000000000000
          Top = 239.622047240000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'USUARIO_VENDA'
          DataSet = fscontasreceber
          DataSetName = 'fscontasreceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fscontasreceber."USUARIO_VENDA"]')
          ParentFont = False
        end
      end
    end
  end
  object fscontasreceber: TfrxDBDataset
    UserName = 'fscontasreceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODIGO_CLIENTE=CODIGO_CLIENTE'
      'DATA_COMPRA=DATA_COMPRA'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DATA_BAIXA=DATA_BAIXA'
      'HISTORICO=HISTORICO'
      'USUARIO_VENDA=USUARIO_VENDA'
      'USUARIO_BAIXA=USUARIO_BAIXA'
      'SITUACAO=SITUACAO'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_JUROS=VALOR_JUROS'
      'VALOR_ACRESCIMO=VALOR_ACRESCIMO'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'VALOR_PAGAR=VALOR_PAGAR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_TOTAL=VALOR_TOTAL'
      'CODIGO_COMPRA=CODIGO_COMPRA'
      'PARCELA=PARCELA'
      'NUMBOLETO=NUMBOLETO'
      'BANCO_PORTADOR=BANCO_PORTADOR'
      'REMESSA=REMESSA'
      'DATACREDITO=DATACREDITO'
      'ID_PORTADOR=ID_PORTADOR'
      'ENVIADO=ENVIADO'
      'COD_EMPRESA=COD_EMPRESA'
      'NUMBOLETO1=NUMBOLETO1'
      'CODIGOCEDENTE=CODIGOCEDENTE'
      'TIPO=TIPO'
      'CHEK_BOX=CHEK_BOX'
      'NUM_NOTA=NUM_NOTA'
      'SERIE_NOTA=SERIE_NOTA'
      'NOME_SACADO=NOME_SACADO'
      'ANO=ANO'
      'MES=MES'
      'TP_BAIXA=TP_BAIXA'
      'ID_CONTRATO=ID_CONTRATO'
      'NOME_ARQ=NOME_ARQ'
      'COBRADOR=COBRADOR'
      'COMISSAO=COMISSAO'
      'DT_PREVISAO_PGTO=DT_PREVISAO_PGTO'
      'DIAS_VENCIDO=DIAS_VENCIDO'
      'N_OS=N_OS'
      'VLR_GRAFICA=VLR_GRAFICA'
      'VALOR_COMISAO=VALOR_COMISAO'
      'COD_ENTRADA=COD_ENTRADA'
      'FILTRO=FILTRO'
      'COD_AVALISTA=COD_AVALISTA'
      'COD_FRETE=COD_FRETE')
    DataSet = qrcontasreceber
    BCDToCurrency = False
    Left = 832
    Top = 384
  end
  object fsvenda: TfrxDBDataset
    UserName = 'fsvenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'VALOR_ITENS=VALOR_ITENS'
      'ENC_FINANCEIRO=ENC_FINANCEIRO'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'VALOR_TOTAL=VALOR_TOTAL'
      'VALOR_COMISSAO=VALOR_COMISSAO'
      'USUARIO=USUARIO'
      'DATA_PEDIDO=DATA_PEDIDO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'CODIGO_CLIENTE=CODIGO_CLIENTE'
      'NOME_CLIENTE=NOME_CLIENTE'
      'PAGAMENTO=PAGAMENTO'
      'STATUS=STATUS'
      'SITUACAO=SITUACAO'
      'USUARIO_ENTREGA=USUARIO_ENTREGA'
      'TP=TP'
      'OBSERVACOES=OBSERVACOES'
      'COD_VENDEDOR=COD_VENDEDOR'
      'COD_PAGTO=COD_PAGTO'
      'N_CUPOM=N_CUPOM'
      'N_ECF=N_ECF'
      'COD_EMPRESA=COD_EMPRESA'
      'HORA=HORA'
      'VALOR_ACRESCIMOS=VALOR_ACRESCIMOS'
      'COD_ORCAMENTO=COD_ORCAMENTO'
      'COD_PEDIDO=COD_PEDIDO'
      'COD_OS=COD_OS'
      'NUM_NOTA=NUM_NOTA'
      'SERIE_NOTA=SERIE_NOTA'
      'ENDERECO=ENDERECO'
      'CPF_CNPJ=CPF_CNPJ'
      'RG_IE=RG_IE'
      'FONE=FONE'
      'CIDADE=CIDADE'
      'BAIRRO=BAIRRO'
      'N_PARTIDA=N_PARTIDA'
      'PROPRIEDADE=PROPRIEDADE'
      'QUANT_VENDIDA=QUANT_VENDIDA'
      'SALDO_VENDIDO=SALDO_VENDIDO'
      'MED_VETERINARIO=MED_VETERINARIO'
      'DATA_VACINA=DATA_VACINA'
      'VALOR_AVISTA=VALOR_AVISTA'
      'VALOR_PRAZO=VALOR_PRAZO'
      'UF=UF'
      'COD_IBGE=COD_IBGE'
      'CEP=CEP'
      'NUMERO=NUMERO'
      'TIPO=TIPO'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_TROCO=VALOR_TROCO'
      'ENTREGADOR=ENTREGADOR'
      'TIPO_PEDIDO=TIPO_PEDIDO'
      'FECHADO=FECHADO'
      'MESA=MESA'
      'REFERENCIA=REFERENCIA'
      'CELULAR=CELULAR'
      'PROD_RURAL=PROD_RURAL'
      'IE_PRODUTOR=IE_PRODUTOR'
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'KM=KM'
      'CHAVE_FP=CHAVE_FP'
      'CHAVE_FP_CANCEL=CHAVE_FP_CANCEL'
      'CUPON_CANCELADO=CUPON_CANCELADO'
      'CRZ=CRZ'
      'CHEK_BOX=CHEK_BOX'
      'ANO=ANO'
      'MODELO_NF=MODELO_NF'
      'CFOP_NF=CFOP_NF'
      'COUNT_VENDAS=COUNT_VENDAS')
    DataSet = DM.sds_vendas
    BCDToCurrency = False
    Left = 896
    Top = 248
  end
  object FSCLIENTE: TfrxDBDataset
    UserName = 'FSCLIENTE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME_RS=NOME_RS'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'TELEFONE2=TELEFONE2'
      'EMAIL=EMAIL'
      'NASCIMENTO_IA=NASCIMENTO_IA'
      'SEXO=SEXO'
      'FOTO_LOGOMARCA=FOTO_LOGOMARCA'
      'BAIRRO=BAIRRO'
      'RG_IE=RG_IE'
      'FAX=FAX'
      'CELULAR=CELULAR'
      'USERCAD=USERCAD'
      'DATACAD=DATACAD'
      'CPF_CNPJ=CPF_CNPJ'
      'OBSERVACOES=OBSERVACOES'
      'CREDIARIO=CREDIARIO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'RESIDENCIA_SEDE=RESIDENCIA_SEDE'
      'PAI=PAI'
      'MAE=MAE'
      'NOME_CONJUGE=NOME_CONJUGE'
      'CPF_CONJUGE=CPF_CONJUGE'
      'NASCIMENTO_CONJUGE=NASCIMENTO_CONJUGE'
      'TRABALHO_CONJUGE=TRABALHO_CONJUGE'
      'PROFISSAO_CONJUGE=PROFISSAO_CONJUGE'
      'LOCALTRABALHO=LOCALTRABALHO'
      'PROFISSAO_RA=PROFISSAO_RA'
      'TELEFONE_TRABALHO=TELEFONE_TRABALHO'
      'FAX_TRABALHO=FAX_TRABALHO'
      'OBSERVACOES_TRABALHO=OBSERVACOES_TRABALHO'
      'BANCO=BANCO'
      'NOME_AGENCIA=NOME_AGENCIA'
      'NUMERO_AGENCIA=NUMERO_AGENCIA'
      'CONTA_CORRENTE=CONTA_CORRENTE'
      'NOME1_REFERENCIA=NOME1_REFERENCIA'
      'NOME2_REFERENCIA=NOME2_REFERENCIA'
      'TELEFONE1_REFERENCIA=TELEFONE1_REFERENCIA'
      'TELEFONE2_REFERENCIA=TELEFONE2_REFERENCIA'
      'BANCO_REFERENCIA=BANCO_REFERENCIA'
      'APELIDO=APELIDO'
      'TIPO=TIPO'
      'OBSERVACOES_COMERCIAIS=OBSERVACOES_COMERCIAIS'
      'OBSERVACOES_BANCO=OBSERVACOES_BANCO'
      'PG_CREDIARIO=PG_CREDIARIO'
      'PG_CHEQUE=PG_CHEQUE'
      'PG_FINANCEIRA=PG_FINANCEIRA'
      'REMUNERACAO=REMUNERACAO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'COD_EMPRESA=COD_EMPRESA'
      'ORGAO_EMISSOR=ORGAO_EMISSOR'
      'DATA_EMISSAO_RG=DATA_EMISSAO_RG'
      'NATURALIDADE=NATURALIDADE'
      'NATURALIDADE_UF=NATURALIDADE_UF'
      'COD_CIDADE=COD_CIDADE'
      'COD_BAIRRO=COD_BAIRRO'
      'DATA_ALTERACAO=DATA_ALTERACAO'
      'COD_ZONA=COD_ZONA'
      'PONTO_REFERENCIA=PONTO_REFERENCIA'
      'ATIVO=ATIVO'
      'CONTATO1=CONTATO1'
      'CONTATO2=CONTATO2'
      'CX_POSTAL=CX_POSTAL'
      'VALOR_ALUGUEL=VALOR_ALUGUEL'
      'TEMPO_RESIDENCIA=TEMPO_RESIDENCIA'
      'NUMERO_DEPENDENTES=NUMERO_DEPENDENTES'
      'ENDERECO_REFERENCIA1=ENDERECO_REFERENCIA1'
      'ENDERECO_REFERENCIA2=ENDERECO_REFERENCIA2'
      'DATA_ADMISSAO_REFERENCIA1=DATA_ADMISSAO_REFERENCIA1'
      'DATA_ADMISSAO_REFERENCIA2=DATA_ADMISSAO_REFERENCIA2'
      'RG_CONJUGUE=RG_CONJUGUE'
      'RENDA_CONJUGUE=RENDA_CONJUGUE'
      'DATA_ADMINSSAO_CONJUGUE=DATA_ADMINSSAO_CONJUGUE'
      'FONE_CONJUGUE=FONE_CONJUGUE'
      'ENDERECO_COBRANCA=ENDERECO_COBRANCA'
      'CEP_COBRANCA=CEP_COBRANCA'
      'COD_CIDADE_COBRANCA=COD_CIDADE_COBRANCA'
      'CX_POSTAL_COBRANCA=CX_POSTAL_COBRANCA'
      'LIMITE_DE_CREDITO=LIMITE_DE_CREDITO'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'PRODUTOR_RURAL=PRODUTOR_RURAL'
      'INSC_PRODUTOR_RURAL=INSC_PRODUTOR_RURAL'
      'COD_BAIRRO_COBRANCA=COD_BAIRRO_COBRANCA'
      'CIDADE_COBRANCA=CIDADE_COBRANCA'
      'BAIRRO_COBRANCA=BAIRRO_COBRANCA'
      'UF_COBRANCA=UF_COBRANCA'
      'CONTA_BANCARIA=CONTA_BANCARIA'
      'NOME_PROPRIEDADE=NOME_PROPRIEDADE'
      'NOME_VETERINARIO=NOME_VETERINARIO'
      'SOCIO1=SOCIO1'
      'CPFSOCIO1=CPFSOCIO1'
      'DATANASCSOCIO1=DATANASCSOCIO1'
      'SOCIO2=SOCIO2'
      'CPFSOCIO2=CPFSOCIO2'
      'DATANASCSOCIO2=DATANASCSOCIO2'
      'SOCIO3=SOCIO3'
      'CPFSOCIO3=CPFSOCIO3'
      'DATANASCSOCIO3=DATANASCSOCIO3'
      'SOCIO4=SOCIO4'
      'CPFSOCIO4=CPFSOCIO4'
      'DATANASCSOCIO4=DATANASCSOCIO4'
      'DATAFUNDACAO=DATAFUNDACAO'
      'CAPITALSOCIAL=CAPITALSOCIAL'
      'FATURAMENTOBRUTO=FATURAMENTOBRUTO'
      'REGJUNTACOM=REGJUNTACOM'
      'ENDSOCIO1=ENDSOCIO1'
      'RGSOCIO1=RGSOCIO1'
      'ENDSOCIO2=ENDSOCIO2'
      'RGSOCIO2=RGSOCIO2'
      'ENDSOCIO3=ENDSOCIO3'
      'RGSOCIO3=RGSOCIO3'
      'ENDSOCIO4=ENDSOCIO4'
      'RGSOCIO4=RGSOCIO4'
      'AUTORIZADO1=AUTORIZADO1'
      'AUTORIZADO2=AUTORIZADO2'
      'AUTORIZADO3=AUTORIZADO3'
      'CPF_AUT1=CPF_AUT1'
      'CPF_AUT2=CPF_AUT2'
      'CPF_AUT3=CPF_AUT3'
      'FUNCIONARIO=FUNCIONARIO'
      'CTPS=CTPS'
      'TESTA_CREDITO=TESTA_CREDITO'
      'TESTA_LIMITE=TESTA_LIMITE'
      'COD_CONV=COD_CONV'
      'FOTO=FOTO'
      'DATA_ULTIMA_COMPRA=DATA_ULTIMA_COMPRA'
      'FUNC_SALARIO=FUNC_SALARIO'
      'FUNC_DATA_ADMISSAO=FUNC_DATA_ADMISSAO'
      'FUNC_SITUACAO=FUNC_SITUACAO'
      'FUNC_DEMISSAO=FUNC_DEMISSAO'
      'FUNC_CARGO=FUNC_CARGO')
    DataSet = qrcliente
    BCDToCurrency = False
    Left = 904
    Top = 384
  end
  object fsvenda_produto: TfrxDBDataset
    UserName = 'fsvenda_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODIGO_ID=CODIGO_ID'
      'ITEN=ITEN'
      'CODIGO_PROD=CODIGO_PROD'
      'CODIGO_PRODUTO=CODIGO_PRODUTO'
      'DESCRICAO_PRODUTO=DESCRICAO_PRODUTO'
      'PRECO_UNITARIO=PRECO_UNITARIO'
      'DESCONTO=DESCONTO'
      'QUANTIDADE=QUANTIDADE'
      'PRECO_TOTAL=PRECO_TOTAL'
      'COMISSAO=COMISSAO'
      'DEV=DEV'
      'QNT_DEV=QNT_DEV'
      'VAL_DEV=VAL_DEV'
      'ENC_FINANCEIRO=ENC_FINANCEIRO'
      'UNIDADE=UNIDADE'
      'SIT_TRIBUTARIA=SIT_TRIBUTARIA'
      'VENDEDOR=VENDEDOR'
      'FRACAO=FRACAO'
      'COD_NCM=COD_NCM'
      'PROD_SERV=PROD_SERV'
      'PERC_ISS=PERC_ISS'
      'BASE_ISS=BASE_ISS'
      'VL_ISS=VL_ISS'
      'PERC_ICM=PERC_ICM'
      'BASE_ICMS=BASE_ICMS'
      'VL_ICM=VL_ICM'
      'PERC_IPI=PERC_IPI'
      'BASE_IPI=BASE_IPI'
      'VL_IPI=VL_IPI'
      'PERC_COFINS=PERC_COFINS'
      'BASE_COFINS=BASE_COFINS'
      'VL_COFINS=VL_COFINS'
      'PERC_ICMS_SUBST=PERC_ICMS_SUBST'
      'BASE_ICMS_SUBST=BASE_ICMS_SUBST'
      'VL_ICMS_SUBST=VL_ICMS_SUBST'
      'PERC_PIS=PERC_PIS'
      'BASE_PIS=BASE_PIS'
      'VL_PIS=VL_PIS'
      'IMPRIME=IMPRIME'
      'COD_EMPRESA=COD_EMPRESA'
      'ID_BICO=ID_BICO'
      'ID_TANQUE=ID_TANQUE'
      'ID_BOMBA=ID_BOMBA'
      'BICO=BICO'
      'APLICACAO=APLICACAO'
      'REFERENCIA=REFERENCIA'
      'NOME_MARCA=NOME_MARCA')
    DataSet = SDS_Pedido_Itens
    BCDToCurrency = False
    Left = 904
    Top = 440
  end
  object QRY_COND_PAGTO: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.IbTransaction1
    FetchOptions.AssignedValues = [evRowsetSize]
    SQL.Strings = (
      'select * from SP_COND_PAGTO_VENDA (:ID_VENDA) ')
    Left = 400
    Top = 584
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_COND_PAGTOTITULO: TIntegerField
      FieldName = 'TITULO'
      Origin = 'TITULO'
    end
    object QRY_COND_PAGTOTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      Origin = 'TIPO_PAGTO'
      Size = 100
    end
    object QRY_COND_PAGTOPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object QRY_COND_PAGTODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object QRY_COND_PAGTOVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object SDS_Est_Atual_Custo: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.IbTransaction1
    FetchOptions.AssignedValues = [evRowsetSize]
    SQL.Strings = (
      'select * from V_ESTOQUE_ATUAL_CUSTO ORDER BY DESCRICAO ASC')
    Left = 225
    Top = 408
    object SDS_Est_Atual_CustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object SDS_Est_Atual_CustoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Est_Atual_CustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object SDS_Est_Atual_CustoPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object SDS_Est_Atual_CustoPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      currency = True
      Precision = 18
      Size = 3
    end
    object SDS_Est_Atual_CustoESTOQUE_ATUAL: TBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      currency = True
      Precision = 18
    end
    object SDS_Est_Atual_CustoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object SDS_Est_Atual_CustoVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      currency = True
      Precision = 18
      Size = 6
    end
    object SDS_Est_Atual_CustoVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      currency = True
      Precision = 18
      Size = 6
    end
    object SDS_Est_Atual_CustoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object SDS_Est_Atual_CustoDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_Est_Atual_CustoCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
    end
    object SDS_Est_Atual_CustoCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
    end
    object SDS_Est_Atual_CustoCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
    end
    object SDS_Est_Atual_CustoSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
    end
    object SDS_Est_Atual_CustoCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object SDS_Est_Atual_CustoCUSTO_MEDIO: TBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object SDS_Est_Atual_CustoV_T_CUSTO_MEDIO: TFMTBCDField
      FieldName = 'V_T_CUSTO_MEDIO'
      Origin = 'V_T_CUSTO_MEDIO'
      currency = True
      Precision = 18
      Size = 6
    end
    object SDS_Est_Atual_CustoVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      currency = True
      Precision = 18
      Size = 6
    end
    object SDS_Est_Atual_CustoNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object SDS_Est_Atual_CustoTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object SDS_Est_Atual_CustoPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
    end
    object SDS_Est_Atual_CustoESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object SDS_Est_Atual_CustoV_T_CUSTO_FRACAO: TFMTBCDField
      FieldName = 'V_T_CUSTO_FRACAO'
      Origin = 'V_T_CUSTO_FRACAO'
      Precision = 18
      Size = 6
    end
  end
  object fsduplicata: TfrxDBDataset
    UserName = 'fsduplicata'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODIGO_CLIENTE=CODIGO_CLIENTE'
      'DATA_COMPRA=DATA_COMPRA'
      'DATA_VENCIMENTO=data_vencimento'
      'DATA_BAIXA=DATA_BAIXA'
      'HISTORICO=HISTORICO'
      'USUARIO_VENDA=USUARIO_VENDA'
      'USUARIO_BAIXA=USUARIO_BAIXA'
      'SITUACAO=SITUACAO'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_JUROS=VALOR_JUROS'
      'VALOR_ACRESCIMO=VALOR_ACRESCIMO'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'VALOR_PAGAR=VALOR_PAGAR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_TOTAL=VALOR_TOTAL'
      'CODIGO_COMPRA=CODIGO_COMPRA'
      'PARCELA=PARCELA'
      'NUMBOLETO=NUMBOLETO'
      'BANCO_PORTADOR=BANCO_PORTADOR'
      'REMESSA=REMESSA'
      'DATACREDITO=DATACREDITO'
      'ID_PORTADOR=ID_PORTADOR'
      'ENVIADO=ENVIADO'
      'COD_EMPRESA=COD_EMPRESA'
      'NUMBOLETO1=NUMBOLETO1'
      'CODIGOCEDENTE=CODIGOCEDENTE'
      'TIPO=TIPO'
      'CHEK_BOX=CHEK_BOX'
      'NUM_NOTA=NUM_NOTA'
      'SERIE_NOTA=SERIE_NOTA'
      'NOME_SACADO=NOME_SACADO'
      'ANO=ANO'
      'MES=MES')
    DataSet = SDS_Crediario_Contrato
    BCDToCurrency = False
    Left = 912
    Top = 563
  end
  object frxclientes: TfrxDBDataset
    UserName = 'fsclientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME_RS=NOME_RS'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'TELEFONE2=TELEFONE2'
      'EMAIL=EMAIL'
      'NASCIMENTO_IA=NASCIMENTO_IA'
      'SEXO=SEXO'
      'FOTO_LOGOMARCA=FOTO_LOGOMARCA'
      'BAIRRO=BAIRRO'
      'RG_IE=RG_IE'
      'FAX=FAX'
      'CELULAR=CELULAR'
      'USERCAD=USERCAD'
      'DATACAD=DATACAD'
      'CPF_CNPJ=CPF_CNPJ'
      'OBSERVACOES=OBSERVACOES'
      'CREDIARIO=CREDIARIO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'RESIDENCIA_SEDE=RESIDENCIA_SEDE'
      'PAI=PAI'
      'MAE=MAE'
      'NOME_CONJUGE=NOME_CONJUGE'
      'CPF_CONJUGE=CPF_CONJUGE'
      'NASCIMENTO_CONJUGE=NASCIMENTO_CONJUGE'
      'TRABALHO_CONJUGE=TRABALHO_CONJUGE'
      'PROFISSAO_CONJUGE=PROFISSAO_CONJUGE'
      'LOCALTRABALHO=LOCALTRABALHO'
      'PROFISSAO_RA=PROFISSAO_RA'
      'TELEFONE_TRABALHO=TELEFONE_TRABALHO'
      'FAX_TRABALHO=FAX_TRABALHO'
      'OBSERVACOES_TRABALHO=OBSERVACOES_TRABALHO'
      'BANCO=BANCO'
      'NOME_AGENCIA=NOME_AGENCIA'
      'NUMERO_AGENCIA=NUMERO_AGENCIA'
      'CONTA_CORRENTE=CONTA_CORRENTE'
      'NOME1_REFERENCIA=NOME1_REFERENCIA'
      'NOME2_REFERENCIA=NOME2_REFERENCIA'
      'TELEFONE1_REFERENCIA=TELEFONE1_REFERENCIA'
      'TELEFONE2_REFERENCIA=TELEFONE2_REFERENCIA'
      'BANCO_REFERENCIA=BANCO_REFERENCIA'
      'APELIDO=APELIDO'
      'TIPO=TIPO'
      'OBSERVACOES_COMERCIAIS=OBSERVACOES_COMERCIAIS'
      'OBSERVACOES_BANCO=OBSERVACOES_BANCO'
      'PG_CREDIARIO=PG_CREDIARIO'
      'PG_CHEQUE=PG_CHEQUE'
      'PG_FINANCEIRA=PG_FINANCEIRA'
      'REMUNERACAO=REMUNERACAO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'COD_EMPRESA=COD_EMPRESA'
      'ORGAO_EMISSOR=ORGAO_EMISSOR'
      'DATA_EMISSAO_RG=DATA_EMISSAO_RG'
      'NATURALIDADE=NATURALIDADE'
      'NATURALIDADE_UF=NATURALIDADE_UF'
      'COD_CIDADE=COD_CIDADE'
      'COD_BAIRRO=COD_BAIRRO'
      'DATA_ALTERACAO=DATA_ALTERACAO'
      'COD_ZONA=COD_ZONA'
      'PONTO_REFERENCIA=PONTO_REFERENCIA'
      'ATIVO=ATIVO'
      'CONTATO1=CONTATO1'
      'CONTATO2=CONTATO2'
      'CX_POSTAL=CX_POSTAL'
      'VALOR_ALUGUEL=VALOR_ALUGUEL'
      'TEMPO_RESIDENCIA=TEMPO_RESIDENCIA'
      'NUMERO_DEPENDENTES=NUMERO_DEPENDENTES'
      'ENDERECO_REFERENCIA1=ENDERECO_REFERENCIA1'
      'ENDERECO_REFERENCIA2=ENDERECO_REFERENCIA2'
      'DATA_ADMISSAO_REFERENCIA1=DATA_ADMISSAO_REFERENCIA1'
      'DATA_ADMISSAO_REFERENCIA2=DATA_ADMISSAO_REFERENCIA2'
      'RG_CONJUGUE=RG_CONJUGUE'
      'RENDA_CONJUGUE=RENDA_CONJUGUE'
      'DATA_ADMINSSAO_CONJUGUE=DATA_ADMINSSAO_CONJUGUE'
      'FONE_CONJUGUE=FONE_CONJUGUE'
      'ENDERECO_COBRANCA=ENDERECO_COBRANCA'
      'CEP_COBRANCA=CEP_COBRANCA'
      'COD_CIDADE_COBRANCA=COD_CIDADE_COBRANCA'
      'CX_POSTAL_COBRANCA=CX_POSTAL_COBRANCA'
      'LIMITE_DE_CREDITO=LIMITE_DE_CREDITO'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'PRODUTOR_RURAL=PRODUTOR_RURAL'
      'INSC_PRODUTOR_RURAL=INSC_PRODUTOR_RURAL'
      'COD_BAIRRO_COBRANCA=COD_BAIRRO_COBRANCA'
      'CIDADE_COBRANCA=CIDADE_COBRANCA'
      'BAIRRO_COBRANCA=BAIRRO_COBRANCA'
      'UF_COBRANCA=UF_COBRANCA'
      'CONTA_BANCARIA=CONTA_BANCARIA'
      'NOME_PROPRIEDADE=NOME_PROPRIEDADE'
      'NOME_VETERINARIO=NOME_VETERINARIO'
      'SOCIO1=SOCIO1'
      'CPFSOCIO1=CPFSOCIO1'
      'DATANASCSOCIO1=DATANASCSOCIO1'
      'SOCIO2=SOCIO2'
      'CPFSOCIO2=CPFSOCIO2'
      'DATANASCSOCIO2=DATANASCSOCIO2'
      'SOCIO3=SOCIO3'
      'CPFSOCIO3=CPFSOCIO3'
      'DATANASCSOCIO3=DATANASCSOCIO3'
      'SOCIO4=SOCIO4'
      'CPFSOCIO4=CPFSOCIO4'
      'DATANASCSOCIO4=DATANASCSOCIO4'
      'DATAFUNDACAO=DATAFUNDACAO'
      'CAPITALSOCIAL=CAPITALSOCIAL'
      'FATURAMENTOBRUTO=FATURAMENTOBRUTO'
      'REGJUNTACOM=REGJUNTACOM'
      'ENDSOCIO1=ENDSOCIO1'
      'RGSOCIO1=RGSOCIO1'
      'ENDSOCIO2=ENDSOCIO2'
      'RGSOCIO2=RGSOCIO2'
      'ENDSOCIO3=ENDSOCIO3'
      'RGSOCIO3=RGSOCIO3'
      'ENDSOCIO4=ENDSOCIO4'
      'RGSOCIO4=RGSOCIO4'
      'AUTORIZADO1=AUTORIZADO1'
      'AUTORIZADO2=AUTORIZADO2'
      'AUTORIZADO3=AUTORIZADO3'
      'CPF_AUT1=CPF_AUT1'
      'CPF_AUT2=CPF_AUT2'
      'CPF_AUT3=CPF_AUT3'
      'FUNCIONARIO=FUNCIONARIO'
      'CTPS=CTPS')
    DataSet = SDS_Cliente
    BCDToCurrency = False
    Left = 904
    Top = 515
  end
  object qryLiberar: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT '
      '  CLIENTES.CODIGO,'
      '  CLIENTES.NOME_RS,'
      
        '  COALESCE(V_CHEQUES_CLIENTE.V_CHEQUE_COMPENSAR, 0) AS CHEQUES_C' +
        'OMPESAR,'
      
        '  COALESCE(V_CREDIARIO_CLIENTE.V_CRED_RECEBER, 0) AS VALOR_PAGAR' +
        ','
      '  CLIENTES.LIMITE_DE_CREDITO,'
      
        '  COALESCE(V_CREDIARIO_VENCIDO_CLIENTE.V_CRED_VENCIDO, 0) AS VAL' +
        'OR_VENCIDO,'
      '  LIBERACAO_CLIENTE2.COD_VENDA,'
      '  LIBERACAO_CLIENTE2.VALOR_SOLICITADO'
      'FROM'
      ' CLIENTES'
      
        ' LEFT OUTER JOIN V_CHEQUES_CLIENTE ON (CLIENTES.CODIGO=V_CHEQUES' +
        '_CLIENTE.COD_CLIENTE)'
      
        ' LEFT OUTER JOIN V_CREDIARIO_CLIENTE ON (CLIENTES.CODIGO=V_CREDI' +
        'ARIO_CLIENTE.CODIGO_CLIENTE)'
      
        ' LEFT OUTER JOIN V_CREDIARIO_VENCIDO_CLIENTE ON (CLIENTES.CODIGO' +
        '=V_CREDIARIO_VENCIDO_CLIENTE.V_CLIENTE)'
      
        ' INNER JOIN LIBERACAO_CLIENTE LIBERACAO_CLIENTE2 ON (LIBERACAO_C' +
        'LIENTE2.COD_CLIENTE=CLIENTES.CODIGO),'
      ' LIBERACAO_CLIENTE,'
      ' LIBERACAO_CLIENTE LIBERACAO_CLIENTE1')
    Left = 896
    Top = 16
    object qryLiberarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLiberarNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
    object qryLiberarCHEQUES_COMPESAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CHEQUES_COMPESAR'
      Origin = 'CHEQUES_COMPESAR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryLiberarVALOR_PAGAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGAR'
      Origin = 'VALOR_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryLiberarLIMITE_DE_CREDITO: TBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object qryLiberarVALOR_VENCIDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENCIDO'
      Origin = 'VALOR_VENCIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryLiberarCOD_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryLiberarVALOR_SOLICITADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_SOLICITADO'
      Origin = 'VALOR_SOLICITADO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object dts_liberar: TDataSource
    DataSet = qryLiberar
    Left = 896
    Top = 74
  end
end
