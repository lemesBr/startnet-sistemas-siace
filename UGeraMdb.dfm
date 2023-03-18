object FormGeraMdb: TFormGeraMdb
  Left = 615
  Top = 196
  Caption = 'Gera Mdb'
  ClientHeight = 201
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 182
    Width = 384
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'ESC p/sair'
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 384
    Height = 45
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object Label5: TLabel
      Left = 226
      Top = 2
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object BtnOk: TButton
      Left = 25
      Top = 16
      Width = 73
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnCancelar: TButton
      Left = 137
      Top = 16
      Width = 73
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 137
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 208
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 87
      Height = 13
      Caption = 'Arquivo de Origem'
    end
    object Label4: TLabel
      Left = 8
      Top = 96
      Width = 87
      Height = 13
      Caption = 'Arquivo de Origem'
    end
    object EdtDataIni: TDateTimePicker
      Left = 24
      Top = 24
      Width = 97
      Height = 21
      Date = 40891.495097338000000000
      Time = 40891.495097338000000000
      TabOrder = 0
    end
    object EdtDataFin: TDateTimePicker
      Left = 208
      Top = 24
      Width = 97
      Height = 21
      Date = 40891.495097338000000000
      Time = 40891.495097338000000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 8
      Top = 72
      Width = 321
      Height = 21
      TabOrder = 2
      Text = 'c:\siace\sped\DOWNLOAD.MFD'
    end
    object suiButton2: TsuiButton
      Left = 338
      Top = 71
      Width = 25
      Height = 23
      Hint = 'Salvar Em...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ShowHint = True
      Caption = ''
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 3
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70707058585858585858585858585858
        5858585858585858585858585858585858585858707070FFFFFFFFFFFF1C82B5
        1A80B3177DB0157BAE1278AB0F75A80C72A50A70A3076DA0056B9E03699C0167
        9A0066994040405858582187BA66CCFF1F85B899FFFF6ED4FF6ED4FF6ED4FF6E
        D4FF6ED4FF6ED4FF6ED4FF6ED4FF3AA0D399FFFF006699404040248ABD66CCFF
        268CBF99FFFF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF43A9
        DC99FFFF036A9B404040278DC066CCFF2C92C599FFFF85EBFF85EBFF80EEEF79
        DFFF5EC4FF5EC4FF5EC4FF79DFFF4DB3E699FFFF086F9E404040298FC266CCFF
        3298CB99FFFF91F7FF87F5EB5EC4FF5EC4FF79DFFF79DFFF5EC4FF5EC4FF42A6
        FF5EC4FF0D75A24040402C92C56ED4FF3399CC99FFFF99FFFF5EC4FF79DFFF79
        DFFF99FFFF99FFFF99FFFF5EC4FF5EC4FF42A6FF127AA53E4C3F2E94C77AE0FF
        2C92C5FFFFFFFFFFFF42A6FF54BAFFFFFFFF5EC4FF42A6FF42A6FF42A6FF42A6
        FF5EC4FF177FA84A6F4E3096C985EBFF80E6FF2C92C52C92C52C92C52C92C52C
        92C52C92C52C92C52C92C52C92C52C92C52C92C51A83AAFFFFFF3298CB91F7FF
        8EF4FF8EF4FF8EF4FF39C3632DBB4DFCFEFC3FB7423FB742FFFFFFFFFFFF157B
        AE707070FFFFFFFFFFFF3399CCFFFFFF99FFFF99FFFF99FFFF7AEBCC0A9D0B0B
        94370A913705911F16848B1781A0177DB0FFFFFFFFFFFFFFFFFFFFFFFF3399CC
        FFFFFFFFFFFFFFFFFFFFFFFF209095339D331D961D0C870C0D830D659B65FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3399CC3298CB3096C92E94C7FFFFFFFF
        FFFF459E450E7E0E487448FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF238523007000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
    object Edit2: TEdit
      Left = 8
      Top = 112
      Width = 321
      Height = 21
      TabOrder = 4
      Text = 'c:\siace\sped\DOWNLOAD.MDB'
    end
    object suiButton1: TsuiButton
      Left = 338
      Top = 111
      Width = 25
      Height = 23
      Hint = 'Salvar Em...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ShowHint = True
      Caption = ''
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 5
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70707058585858585858585858585858
        5858585858585858585858585858585858585858707070FFFFFFFFFFFF1C82B5
        1A80B3177DB0157BAE1278AB0F75A80C72A50A70A3076DA0056B9E03699C0167
        9A0066994040405858582187BA66CCFF1F85B899FFFF6ED4FF6ED4FF6ED4FF6E
        D4FF6ED4FF6ED4FF6ED4FF6ED4FF3AA0D399FFFF006699404040248ABD66CCFF
        268CBF99FFFF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF43A9
        DC99FFFF036A9B404040278DC066CCFF2C92C599FFFF85EBFF85EBFF80EEEF79
        DFFF5EC4FF5EC4FF5EC4FF79DFFF4DB3E699FFFF086F9E404040298FC266CCFF
        3298CB99FFFF91F7FF87F5EB5EC4FF5EC4FF79DFFF79DFFF5EC4FF5EC4FF42A6
        FF5EC4FF0D75A24040402C92C56ED4FF3399CC99FFFF99FFFF5EC4FF79DFFF79
        DFFF99FFFF99FFFF99FFFF5EC4FF5EC4FF42A6FF127AA53E4C3F2E94C77AE0FF
        2C92C5FFFFFFFFFFFF42A6FF54BAFFFFFFFF5EC4FF42A6FF42A6FF42A6FF42A6
        FF5EC4FF177FA84A6F4E3096C985EBFF80E6FF2C92C52C92C52C92C52C92C52C
        92C52C92C52C92C52C92C52C92C52C92C52C92C51A83AAFFFFFF3298CB91F7FF
        8EF4FF8EF4FF8EF4FF39C3632DBB4DFCFEFC3FB7423FB742FFFFFFFFFFFF157B
        AE707070FFFFFFFFFFFF3399CCFFFFFF99FFFF99FFFF99FFFF7AEBCC0A9D0B0B
        94370A913705911F16848B1781A0177DB0FFFFFFFFFFFFFFFFFFFFFFFF3399CC
        FFFFFFFFFFFFFFFFFFFFFFFF209095339D331D961D0C870C0D830D659B65FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3399CC3298CB3096C92E94C7FFFFFFFF
        FFFF459E450E7E0E487448FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF238523007000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
  end
  object Button1: TButton
    Left = 289
    Top = 152
    Width = 73
    Height = 25
    Caption = '&Atualizar BD'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 224
    Top = 155
    Width = 49
    Height = 21
    TabOrder = 4
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Memoria Fiscal(*.MFD)|*.mfd'
    Left = 435
    Top = 65534
  end
  object OpenDialog2: TOpenDialog
    Filter = 'Arquivo Acess(*.MDB)|*.mdb'
    Left = 435
    Top = 65534
  end
  object ADOConnect: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Si' +
      'ace\sped\DOWNLOAD.MDB;Mode=Share Deny None;Persist Security Info' +
      '=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";J' +
      'et OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:' +
      'Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet ' +
      'OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password' +
      '="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Dat' +
      'abase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLE' +
      'DB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 144
    Top = 16
  end
  object ADOEcf: TADODataSet
    Connection = ADOConnect
    CommandText = 
      'SELECT IdentidadeECF.IDNumSerie, IdentidadeECF.Marca, Identidade' +
      'ECF.Modelo, IdentidadeECF.Tipo, Last(SeqLojaECF.Sequencial) AS '#218 +
      'ltimoDeSequencial'#13#10'FROM IdentidadeECF, SeqLojaECF'#13#10'GROUP BY Iden' +
      'tidadeECF.IDNumSerie, IdentidadeECF.Marca, IdentidadeECF.Modelo,' +
      ' IdentidadeECF.Tipo;'
    Parameters = <>
    Left = 176
    Top = 16
    object ADOEcfIDNumSerie: TWideStringField
      FieldName = 'IDNumSerie'
      Size = 30
    end
    object ADOEcfMarca: TWideStringField
      FieldName = 'Marca'
      Size = 30
    end
    object ADOEcfModelo: TWideStringField
      FieldName = 'Modelo'
      Size = 30
    end
    object ADOEcfTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 7
    end
    object ADOEcfltimoDeSequencial: TSmallintField
      FieldName = #218'ltimoDeSequencial'
    end
  end
  object AdoLeituraZ: TADODataSet
    Connection = ADOConnect
    CommandText = 
      'select * from LeiturasX_ReducoesZ where DataReferencia is not nu' +
      'll;'
    Parameters = <>
    Left = 208
    Top = 16
    object AdoLeituraZcontCOO: TIntegerField
      FieldName = 'contCOO'
    end
    object AdoLeituraZHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object AdoLeituraZDataReferencia: TDateTimeField
      FieldName = 'DataReferencia'
    end
    object AdoLeituraZTipoImpressora: TWordField
      FieldName = 'TipoImpressora'
    end
    object AdoLeituraZcontGNF: TIntegerField
      FieldName = 'contGNF'
    end
    object AdoLeituraZcontCRO: TSmallintField
      FieldName = 'contCRO'
    end
    object AdoLeituraZcontCRZ: TSmallintField
      FieldName = 'contCRZ'
    end
    object AdoLeituraZcontCDC: TSmallintField
      FieldName = 'contCDC'
    end
    object AdoLeituraZcontNFC: TSmallintField
      FieldName = 'contNFC'
    end
    object AdoLeituraZcontGRG: TIntegerField
      FieldName = 'contGRG'
    end
    object AdoLeituraZcontCCF_CBP: TIntegerField
      FieldName = 'contCCF_CBP'
    end
    object AdoLeituraZcontCFC_BPC: TSmallintField
      FieldName = 'contCFC_BPC'
    end
    object AdoLeituraZcontCFD: TIntegerField
      FieldName = 'contCFD'
    end
    object AdoLeituraZtotalGT: TBCDField
      FieldName = 'totalGT'
      Precision = 19
    end
    object AdoLeituraZtotalVB: TBCDField
      FieldName = 'totalVB'
      Precision = 19
    end
    object AdoLeituraZtotalCancICMS: TBCDField
      FieldName = 'totalCancICMS'
      Precision = 19
    end
    object AdoLeituraZtotalDescICMS: TBCDField
      FieldName = 'totalDescICMS'
      Precision = 19
    end
    object AdoLeituraZtotalAcresICMS: TBCDField
      FieldName = 'totalAcresICMS'
      Precision = 19
    end
    object AdoLeituraZtotalParciaisICMS: TBCDField
      FieldName = 'totalParciaisICMS'
      Precision = 19
    end
    object AdoLeituraZtotalImpostoICMS: TBCDField
      FieldName = 'totalImpostoICMS'
      Precision = 19
    end
    object AdoLeituraZtotalCancISSQN: TBCDField
      FieldName = 'totalCancISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalDescISSQN: TBCDField
      FieldName = 'totalDescISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalAcresISSQN: TBCDField
      FieldName = 'totalAcresISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalISSQN: TBCDField
      FieldName = 'totalISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalImpostoISSQN: TBCDField
      FieldName = 'totalImpostoISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalParciaisISSQN: TBCDField
      FieldName = 'totalParciaisISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalVendaLiquida: TBCDField
      FieldName = 'totalVendaLiquida'
      Precision = 19
    end
    object AdoLeituraZtotalSubstTributariaICMS: TBCDField
      FieldName = 'totalSubstTributariaICMS'
      Precision = 19
    end
    object AdoLeituraZtotalIsencaoICMS: TBCDField
      FieldName = 'totalIsencaoICMS'
      Precision = 19
    end
    object AdoLeituraZtotalNaoIncidenciaICMS: TBCDField
      FieldName = 'totalNaoIncidenciaICMS'
      Precision = 19
    end
    object AdoLeituraZtotalSubstTributariaISSQN: TBCDField
      FieldName = 'totalSubstTributariaISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalIsencaoISSQN: TBCDField
      FieldName = 'totalIsencaoISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalNaoIncidenciaISSQN: TBCDField
      FieldName = 'totalNaoIncidenciaISSQN'
      Precision = 19
    end
    object AdoLeituraZtotalCancNF: TBCDField
      FieldName = 'totalCancNF'
      Precision = 19
    end
    object AdoLeituraZtotalDescNF: TBCDField
      FieldName = 'totalDescNF'
      Precision = 19
    end
    object AdoLeituraZtotalAcresNF: TBCDField
      FieldName = 'totalAcresNF'
      Precision = 19
    end
    object AdoLeituraZtotalTroco: TBCDField
      FieldName = 'totalTroco'
      Precision = 19
    end
    object AdoLeituraZindNCN: TSmallintField
      FieldName = 'indNCN'
    end
    object AdoLeituraZtempoEmitindoFiscal: TDateTimeField
      FieldName = 'tempoEmitindoFiscal'
    end
    object AdoLeituraZtempoOperacional: TDateTimeField
      FieldName = 'tempoOperacional'
    end
    object AdoLeituraZmfdNumSerie: TWideStringField
      FieldName = 'mfdNumSerie'
      Size = 30
    end
    object AdoLeituraZmfdRestante: TSmallintField
      FieldName = 'mfdRestante'
    end
  end
  object SDS_red_Z1: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      ' INSERT INTO SPED_REDUCAO_Z ('
      '    ECF_CX,'
      '    DT_COD,'
      '    CRO,'
      '    CRZ,'
      '    COO,'
      '    GT_FIN,'
      '    VL_BRT)'
      '  VALUES ('
      '    :ECF_CX,'
      '    :DT_COD,'
      '    :CRO,'
      '    :CRZ,'
      '    :COO,'
      '    :GT_FIN,'
      '    :VL_BRT)')
    Left = 152
    Top = 48
    ParamData = <
      item
        Name = 'ECF_CX'
      end
      item
        Name = 'DT_COD'
      end
      item
        Name = 'CRO'
      end
      item
        Name = 'CRZ'
      end
      item
        Name = 'COO'
      end
      item
        Name = 'GT_FIN'
      end
      item
        Name = 'VL_BRT'
      end>
  end
  object ADOTotalizador: TADODataSet
    Connection = ADOConnect
    CommandText = 
      'SELECT Sum(ItensPorCupom.ValorTotal) AS SomaDeValorTotal, ItensP' +
      'orCupom.SituacaoTributaria, Aliquotas.Aliquota, Aliquotas.Indice' +
      ', Format$([HoraInicioCupom],"dd/mm/yyyy") AS DATA, Aliquotas.Ind' +
      'ice'#13#10'FROM ItensPorCupom INNER JOIN Aliquotas ON ItensPorCupom.Si' +
      'tuacaoTributaria = Aliquotas.IDCodAliquota'#13#10'GROUP BY ItensPorCup' +
      'om.SituacaoTributaria, Aliquotas.Aliquota, Aliquotas.Indice, For' +
      'mat$([HoraInicioCupom],"dd/mm/yyyy"), Aliquotas.Indice'#13#10'HAVING (' +
      '((Aliquotas.Indice) Is Null));'
    Parameters = <>
    Left = 240
    Top = 16
    object ADOTotalizadorSomaDeValorTotal: TBCDField
      FieldName = 'SomaDeValorTotal'
      Precision = 19
    end
    object ADOTotalizadorSituacaoTributaria: TIntegerField
      FieldName = 'SituacaoTributaria'
    end
    object ADOTotalizadorAliquota: TWideStringField
      FieldName = 'Aliquota'
      Size = 6
    end
    object ADOTotalizadorIndice: TWordField
      FieldName = 'Indice'
    end
    object ADOTotalizadorDATA: TWideStringField
      FieldName = 'DATA'
      Size = 255
    end
    object ADOTotalizadorExpr1003: TWordField
      FieldName = 'Expr1003'
    end
  end
  object sds_total_z: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      '  INSERT INTO SPED_TOTAL_Z ('
      '    ECF_CX,'
      '    TOTALIZADOR_Z,'
      '    DATA,'
      '    VALOR_TOTALIZADOR,'
      '    N_TOTALIZADOR,'
      '    DESCRICAO,'
      '    T_SIT_TRIB)'
      '  VALUES ('
      '    :ECF_CX,'
      '    :TOTALIZADOR_Z,'
      '    :DATA,'
      '    :VALOR_TOTALIZADOR,'
      '    :N_TOTALIZADOR,'
      '    :DESCRICAO,'
      '    :T_SIT_TRIB)')
    Left = 184
    Top = 48
    ParamData = <
      item
        Name = 'ECF_CX'
      end
      item
        Name = 'TOTALIZADOR_Z'
      end
      item
        Name = 'DATA'
      end
      item
        Name = 'VALOR_TOTALIZADOR'
      end
      item
        Name = 'N_TOTALIZADOR'
      end
      item
        Name = 'DESCRICAO'
      end
      item
        Name = 'T_SIT_TRIB'
      end>
  end
  object Sds_Cupons: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'INSERT INTO SPED_CUPON ('
      '    N_CUPON,'
      '    DATA,'
      '    DESCONTO,'
      '    TOTAL,'
      '    CANCELADO)'
      '  VALUES ('
      '    :N_CUPON,'
      '    :DATA,'
      '    :DESCONTO,'
      '    :TOTAL,'
      '    :CANCELADO)')
    Left = 200
    Top = 88
    ParamData = <
      item
        Name = 'N_CUPON'
      end
      item
        Name = 'DATA'
      end
      item
        Name = 'DESCONTO'
      end
      item
        Name = 'TOTAL'
      end
      item
        Name = 'CANCELADO'
      end>
  end
  object SDS_UPPEDIDOS: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'UPDATE PEDIDOS SET data_pedido =:DATA, CUPON_CANCELADO =:CANC, C' +
        'RZ=:CRZ, VALOR_TOTAL =:TOTAL WHERE PEDIDOS.N_CUPOM =:CUPON and  ' +
        'n_ecf =:ECF and ano =:ano;')
    Left = 160
    Top = 88
    ParamData = <
      item
        Name = 'DATA'
      end
      item
        Name = 'CANC'
      end
      item
        Name = 'CRZ'
      end
      item
        Name = 'TOTAL'
      end
      item
        Name = 'CUPON'
      end
      item
        Name = 'ECF'
      end
      item
        Name = 'ano'
      end>
  end
  object ADOCupons: TADODataSet
    Connection = ADOConnect
    CommandText = 'select * from CuponsFiscais'
    Parameters = <>
    Left = 240
    Top = 40
    object ADOCuponscontCOO: TIntegerField
      FieldName = 'contCOO'
    end
    object ADOCuponsHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object ADOCuponscontCCF: TIntegerField
      FieldName = 'contCCF'
    end
    object ADOCuponsCNPJ_CPFConsumidor: TWideStringField
      FieldName = 'CNPJ_CPFConsumidor'
      Size = 30
    end
    object ADOCuponsNome: TWideStringField
      FieldName = 'Nome'
      Size = 30
    end
    object ADOCuponsEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 80
    end
    object ADOCuponsSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 19
    end
    object ADOCuponsValorAcrescimo: TBCDField
      FieldName = 'ValorAcrescimo'
      Precision = 19
    end
    object ADOCuponsValorDesconto: TBCDField
      FieldName = 'ValorDesconto'
      Precision = 19
    end
    object ADOCuponsTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
    end
    object ADOCuponsSomaPgto: TBCDField
      FieldName = 'SomaPgto'
      Precision = 19
    end
    object ADOCuponsTroco: TBCDField
      FieldName = 'Troco'
      Precision = 19
    end
    object ADOCuponsTextoSuplementar: TMemoField
      FieldName = 'TextoSuplementar'
      BlobType = ftMemo
    end
    object ADOCuponsCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object ADOCuponsCupomAdicional: TBooleanField
      FieldName = 'CupomAdicional'
    end
    object ADOCuponsDescontoISSDesabilitado: TBooleanField
      FieldName = 'DescontoISSDesabilitado'
    end
    object ADOCuponscontCRZ: TIntegerField
      FieldName = 'contCRZ'
    end
  end
end
