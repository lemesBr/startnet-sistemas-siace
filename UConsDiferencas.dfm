object FormConsDiferencas: TFormConsDiferencas
  Left = 540
  Top = 255
  Caption = 'Consulta Diferencas de Leituras e Vendas de Combust'#237'veis'
  ClientHeight = 232
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 543
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 16
      Top = 20
      Width = 68
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 52
      Width = 68
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object eproduto: TRzButtonEdit
      Left = 90
      Top = 16
      Width = 100
      Height = 21
      Text = ''
      TabOrder = 0
      OnExit = eprodutoExit
      OnKeyPress = eprodutoKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = eprodutoButtonClick
    end
    object edproduto: TEdit
      Left = 200
      Top = 16
      Width = 297
      Height = 21
      TabStop = False
      Enabled = False
      TabOrder = 1
      Text = 'edproduto'
    end
    object DateEdit1: TDateEdit
      Left = 88
      Top = 47
      Width = 102
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 204
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 543
    Height = 151
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 72
      Top = 40
      Width = 88
      Height = 13
      Caption = 'Leituras na Bomba'
    end
    object Label2: TLabel
      Left = 312
      Top = 40
      Width = 74
      Height = 13
      Caption = 'Quant. Vendida'
    end
    object Label3: TLabel
      Left = 312
      Top = 96
      Width = 46
      Height = 13
      Caption = 'Diferen'#231'a'
    end
    object Edit1: TEdit
      Left = 72
      Top = 56
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 312
      Top = 56
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 312
      Top = 112
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object qrCombustiveis: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from produtos')
    Left = 496
    Top = 56
    object qrCombustiveisCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qrCombustiveisCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      Size = 13
    end
    object qrCombustiveisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 280
    end
  end
  object Query_Leituras: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select  sum(ENC_LITROS) as total from BICOENC where ID_PRODUTOS ' +
        '=:cod_pro AND DATAHORA = :DATA')
    Left = 312
    Top = 80
    ParamData = <
      item
        Name = 'COD_PRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_LeiturasTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object Query_vendido: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select  sum(quantidade) as total from pedidos_itens, pedidos whe' +
        're pedidos_itens.codigo_id = pedidos.codigo and codigo_prod =:co' +
        'd_pro AND pedidos.DATA_pedido = :DATA')
    Left = 440
    Top = 88
    ParamData = <
      item
        Name = 'COD_PRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_vendidoTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
end
