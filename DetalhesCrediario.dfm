object FormDetCrediario: TFormDetCrediario
  Left = 424
  Top = 205
  BorderStyle = bsDialog
  Caption = 'Detalhes da Parcela do Credi'#225'rio'
  ClientHeight = 391
  ClientWidth = 860
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 308
    Top = 7
    Width = 103
    Height = 13
    Caption = 'Boleto / situacao:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 391
    Align = alClient
    BevelInner = bvRaised
    Color = 15263976
    Enabled = False
    TabOrder = 0
    ExplicitWidth = 531
    ExplicitHeight = 149
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 856
      Height = 387
      Align = alClient
      BevelOuter = bvNone
      Color = 15263976
      Enabled = False
      TabOrder = 0
      ExplicitLeft = 0
      object Bevel1: TBevel
        Left = 2
        Top = 47
        Width = 831
        Height = 50
      end
      object Label16: TLabel
        Left = 5
        Top = 50
        Width = 98
        Height = 13
        Caption = 'Valor da Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 142
        Top = 50
        Width = 86
        Height = 13
        Caption = 'Valor de Juros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 429
        Top = 54
        Width = 82
        Height = 13
        Caption = 'Valor a Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 577
        Top = 54
        Width = 67
        Height = 13
        Caption = 'Valor Pago:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 713
        Top = 54
        Width = 111
        Height = 13
        Caption = 'Valor Total a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 282
        Top = 50
        Width = 89
        Height = 13
        Caption = 'Valor de Desc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 5
        Top = 5
        Width = 92
        Height = 13
        Caption = 'Data da Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 129
        Top = 5
        Width = 87
        Height = 13
        Caption = 'Data do Vecto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 714
        Top = 7
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 235
        Top = 3
        Width = 48
        Height = 13
        Caption = 'Parcela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 579
        Top = 7
        Width = 87
        Height = 13
        Caption = 'Data do Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object suiDBEdit1: TsDBEdit
        Left = 5
        Top = 20
        Width = 100
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'DATA_COMPRA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit2: TsDBEdit
        Left = 129
        Top = 20
        Width = 100
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'DATA_VENCIMENTO'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit4: TsDBEdit
        Left = 713
        Top = 22
        Width = 112
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'USUARIO_VENDA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit5: TsDBEdit
        Left = 5
        Top = 65
        Width = 100
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_COMPRA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit6: TsDBEdit
        Left = 142
        Top = 65
        Width = 105
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_JUROS'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit7: TsDBEdit
        Left = 287
        Top = 69
        Width = 106
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_DESCONTO'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit8: TsDBEdit
        Left = 429
        Top = 69
        Width = 100
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_PAGAR'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit9: TsDBEdit
        Left = 577
        Top = 69
        Width = 103
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_PAGO'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit10: TsDBEdit
        Left = 713
        Top = 69
        Width = 112
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_TOTAL'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit3: TsDBEdit
        Left = 235
        Top = 22
        Width = 46
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'PARCELA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        SkinData.SkinSection = 'EDIT'
      end
      object suiDBEdit11: TsDBEdit
        Left = 577
        Top = 22
        Width = 103
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'DATA_BAIXA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        SkinData.SkinSection = 'EDIT'
      end
      object JvDBGridFooter1: TJvDBGridFooter
        Left = 0
        Top = 368
        Width = 856
        Height = 19
        SizeGrip = True
        Columns = <>
        ExplicitLeft = 104
        ExplicitTop = 176
        ExplicitWidth = 0
      end
      object JvDBGrid1: TJvDBGrid
        Left = 2
        Top = 103
        Width = 849
        Height = 266
        DataSource = DataSource1
        TabOrder = 12
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CBR_RETORNO'
            Title.Caption = 'Cod Ret.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOSSO_NUMERO'
            Title.Caption = 'N. Numero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_OCORRENCIA'
            Title.Caption = 'Data Ocorrencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_OCORRENCIA_DESC'
            Title.Caption = 'Tipo da Ocorrencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOT_REJ_COMANDO_DESC'
            Title.Caption = 'Motivo da Rejei'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end>
      end
    end
  end
  object sDBEdit1: TsDBEdit
    Left = 309
    Top = 23
    Width = 253
    Height = 19
    BorderStyle = bsNone
    Color = clWhite
    DataField = 'REGISTRO_HISTORICO'
    DataSource = DMB.DTS_Crediario_Baixa
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    SkinData.SkinSection = 'EDIT'
  end
  object FDQuery1: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.IBTransaction
    SQL.Strings = (
      
        'select *  from CBR_RETORNO_TITULOS where id_cbr_retorno =:id_cbr' +
        ' and titulo =:boleto')
    Left = 674
    Top = 170
    ParamData = <
      item
        Name = 'ID_CBR'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'BOLETO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery1ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1ID_CBR_RETORNO: TLargeintField
      FieldName = 'ID_CBR_RETORNO'
      Origin = 'ID_CBR_RETORNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1ID_CBR_RETORNO_TITULOS: TLargeintField
      FieldName = 'ID_CBR_RETORNO_TITULOS'
      Origin = 'ID_CBR_RETORNO_TITULOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1TITULO: TLargeintField
      FieldName = 'TITULO'
      Origin = 'TITULO'
    end
    object FDQuery1TITULO_LOCALIZADO: TStringField
      FieldName = 'TITULO_LOCALIZADO'
      Origin = 'TITULO_LOCALIZADO'
      FixedChar = True
      Size = 1
    end
    object FDQuery1TITULO_JALIQUIDADO: TStringField
      FieldName = 'TITULO_JALIQUIDADO'
      Origin = 'TITULO_JALIQUIDADO'
      FixedChar = True
      Size = 1
    end
    object FDQuery1TITULO_SEMREGISTRO: TStringField
      FieldName = 'TITULO_SEMREGISTRO'
      Origin = 'TITULO_SEMREGISTRO'
      FixedChar = True
      Size = 1
    end
    object FDQuery1TITULO_LIQUIDADO_LIMITEP: TStringField
      FieldName = 'TITULO_LIQUIDADO_LIMITEP'
      Origin = 'TITULO_LIQUIDADO_LIMITEP'
      FixedChar = True
      Size = 1
    end
    object FDQuery1TITULO_RECUSADO: TStringField
      FieldName = 'TITULO_RECUSADO'
      Origin = 'TITULO_RECUSADO'
      FixedChar = True
      Size = 1
    end
    object FDQuery1SEU_NUMERO: TStringField
      FieldName = 'SEU_NUMERO'
      Origin = 'SEU_NUMERO'
      Size = 50
    end
    object FDQuery1NOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
      Origin = 'NOSSO_NUMERO'
      Size = 50
    end
    object FDQuery1VALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Origin = 'VALOR_DOCUMENTO'
      Precision = 18
      Size = 2
    end
    object FDQuery1VALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object FDQuery1VALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      Origin = 'VALOR_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object FDQuery1VALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Origin = 'VALOR_JUROS'
      Precision = 18
      Size = 2
    end
    object FDQuery1VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object FDQuery1VALOR_DESPESA: TFMTBCDField
      FieldName = 'VALOR_DESPESA'
      Origin = 'VALOR_DESPESA'
      Precision = 18
      Size = 2
    end
    object FDQuery1DATA_OCORRENCIA: TDateField
      FieldName = 'DATA_OCORRENCIA'
      Origin = 'DATA_OCORRENCIA'
    end
    object FDQuery1ID_BANCO: TStringField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Size = 3
    end
    object FDQuery1ID_AGENCIA: TStringField
      FieldName = 'ID_AGENCIA'
      Origin = 'ID_AGENCIA'
      Size = 11
    end
    object FDQuery1ORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 300
    end
    object FDQuery1FORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 300
    end
    object FDQuery1TIPO_OCORRENCIA: TIntegerField
      FieldName = 'TIPO_OCORRENCIA'
      Origin = 'TIPO_OCORRENCIA'
    end
    object FDQuery1TIPO_OCORRENCIA_DESC: TStringField
      FieldName = 'TIPO_OCORRENCIA_DESC'
      Origin = 'TIPO_OCORRENCIA_DESC'
      Size = 300
    end
    object FDQuery1MOT_REJ_COMANDO: TStringField
      FieldName = 'MOT_REJ_COMANDO'
      Origin = 'MOT_REJ_COMANDO'
      Size = 300
    end
    object FDQuery1MOT_REJ_COMANDO_DESC: TStringField
      FieldName = 'MOT_REJ_COMANDO_DESC'
      Origin = 'MOT_REJ_COMANDO_DESC'
      Size = 300
    end
    object FDQuery1HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 300
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 554
    Top = 210
  end
end
