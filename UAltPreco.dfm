object FrmAltPreco: TFrmAltPreco
  Left = 764
  Top = 254
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Altera Pre'#231'o'
  ClientHeight = 319
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 257
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 73
      Height = 13
      Caption = 'Pre'#231'o de Custo'
    end
    object Image1: TImage
      Left = 297
      Top = 32
      Width = 70
      Height = 70
      AutoSize = True
      Center = True
    end
    object Label4: TLabel
      Left = 104
      Top = 48
      Width = 22
      Height = 13
      Caption = 'Ncm'
    end
    object EdtCusto: TCurrencyEdit
      Left = 8
      Top = 64
      Width = 81
      Height = 21
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DecimalPlaces = 4
      DisplayFormat = ',#0.0000'
      FormatOnEditing = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 96
      Width = 345
      Height = 145
      Caption = 'Varejo'
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label2: TLabel
        Left = 8
        Top = 96
        Width = 48
        Height = 13
        Caption = 'Promo'#231#227'o'
      end
      object Label6: TLabel
        Left = 96
        Top = 16
        Width = 29
        Height = 13
        Caption = 'ML(%)'
      end
      object Label7: TLabel
        Left = 96
        Top = 96
        Width = 29
        Height = 13
        Caption = 'ML(%)'
      end
      object Label11: TLabel
        Left = 8
        Top = 56
        Width = 37
        Height = 13
        Caption = 'Pre'#231'o 2'
      end
      object Label12: TLabel
        Left = 96
        Top = 56
        Width = 29
        Height = 13
        Caption = 'ML(%)'
      end
      object Label13: TLabel
        Left = 176
        Top = 16
        Width = 54
        Height = 13
        Caption = 'ML Real(%)'
      end
      object Label14: TLabel
        Left = 176
        Top = 56
        Width = 54
        Height = 13
        Caption = 'ML Real(%)'
      end
      object Label15: TLabel
        Left = 176
        Top = 96
        Width = 54
        Height = 13
        Caption = 'ML Real(%)'
      end
      object Label16: TLabel
        Left = 256
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Lucro R$'
      end
      object Label17: TLabel
        Left = 256
        Top = 56
        Width = 44
        Height = 13
        Caption = 'Lucro R$'
      end
      object Label18: TLabel
        Left = 256
        Top = 96
        Width = 44
        Height = 13
        Caption = 'Lucro R$'
      end
      object EdtValor: TCurrencyEdit
        Left = 8
        Top = 32
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        FormatOnEditing = True
        TabOrder = 0
        ZeroEmpty = False
        OnExit = EdtValorExit
      end
      object EdtPromocao: TCurrencyEdit
        Left = 8
        Top = 112
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        FormatOnEditing = True
        TabOrder = 8
        ZeroEmpty = False
        OnExit = EdtValorExit
      end
      object EdtMLVarejoNormal: TCurrencyEdit
        Left = 96
        Top = 32
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        TabOrder = 1
        ZeroEmpty = False
        OnExit = EdtMLVarejoNormalExit
      end
      object EdtMLVarejoPro: TCurrencyEdit
        Left = 96
        Top = 112
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        TabOrder = 9
        ZeroEmpty = False
        OnExit = EdtMLVarejoProExit
      end
      object EdtProgramado: TCurrencyEdit
        Left = 8
        Top = 72
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        FormatOnEditing = True
        TabOrder = 4
        ZeroEmpty = False
        OnExit = EdtValorExit
      end
      object EdtMLProgramado: TCurrencyEdit
        Left = 96
        Top = 72
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        TabOrder = 5
        ZeroEmpty = False
        OnExit = EdtMLProgramadoExit
      end
      object EdtMLVarejoNormalReal: TCurrencyEdit
        Left = 176
        Top = 32
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        TabOrder = 2
        ZeroEmpty = False
        OnExit = EdtMLVarejoNormalRealExit
      end
      object EdtMLVarejoProgReal: TCurrencyEdit
        Left = 176
        Top = 72
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        TabOrder = 6
        ZeroEmpty = False
        OnExit = EdtMLVarejoProgRealExit
      end
      object EdtMLVarejoPromoReal: TCurrencyEdit
        Left = 176
        Top = 112
        Width = 65
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        TabOrder = 10
        ZeroEmpty = False
        OnExit = EdtMLVarejoPromoRealExit
      end
      object EdtLucroVarejoNormal: TCurrencyEdit
        Left = 256
        Top = 32
        Width = 65
        Height = 21
        TabStop = False
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        ZeroEmpty = False
      end
      object EdtLucroProg: TCurrencyEdit
        Left = 256
        Top = 72
        Width = 65
        Height = 21
        TabStop = False
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        ZeroEmpty = False
      end
      object EdtLucroPromo: TCurrencyEdit
        Left = 256
        Top = 112
        Width = 65
        Height = 21
        TabStop = False
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        ZeroEmpty = False
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 2
      Width = 373
      Height = 39
      Align = alTop
      Caption = 'Produto'
      TabOrder = 2
      object LProduto: TLabel
        Left = 8
        Top = 16
        Width = 337
        Height = 13
        AutoSize = False
        Caption = 'LProduto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Edit1: TEdit
      Left = 104
      Top = 64
      Width = 105
      Height = 21
      Color = clSilver
      MaxLength = 8
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 257
    Width = 377
    Height = 62
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object BtnCancelar: TBitBtn
      Left = 209
      Top = 7
      Width = 73
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
    object BtnOK: TBitBtn
      Left = 97
      Top = 8
      Width = 73
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = BtnOKClick
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 39
      Width = 373
      Height = 21
      Panels = <>
    end
  end
  object QAlteraPreco: TFDQuery
    Connection = DM.Coneccao
    Transaction = IBTRPreco
    SQL.Strings = (
      
        'UPDATE PRODUTOS SET PRECO_VENDA = :PRECO_VENDA, PRECO_PROMOCAO =' +
        ' :PRECO_PROMOCAO, PRECO_VENDA2 = :PRECO_VENDA2, PRECO_CUSTO = :P' +
        'RECO_CUSTO, NCM_SH =:NCM  WHERE CODIGO = :CODPRO')
    Left = 128
    Top = 8
    ParamData = <
      item
        Name = 'PRECO_VENDA'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'PRECO_PROMOCAO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'PRECO_VENDA2'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'PRECO_CUSTO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'NCM'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object IBTRPreco: TFDTransaction
    Connection = DM.Coneccao
    Left = 176
    Top = 8
  end
end
