object FormPagDevCrediario: TFormPagDevCrediario
  Left = 411
  Top = 243
  BorderStyle = bsDialog
  Caption = 'Pagamento no Credi'#225'rio de Devolu'#231#227'o / Cancelamento de Pedidos'
  ClientHeight = 173
  ClientWidth = 530
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
  object Panel1: TPanel
    Left = 8
    Top = 102
    Width = 274
    Height = 68
    Color = 15263976
    Enabled = False
    TabOrder = 0
    object RxLabel2: TRxLabel
      Left = 6
      Top = 7
      Width = 110
      Height = 16
      Caption = 'Valor a Creditar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 7
      Top = 26
      Width = 259
      Height = 35
      TabStop = False
      AutoSize = False
      Color = clBlack
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 7
    Top = 2
    Width = 513
    Height = 95
    BevelInner = bvRaised
    Color = 15263976
    Enabled = False
    TabOrder = 1
    object myLabel3d1: TsLabelFX
      Left = 2
      Top = 6
      Width = 498
      Height = 28
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cr'#233'dito no credi'#225'rio'
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -24
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Bevel1: TBevel
      Left = 8
      Top = 33
      Width = 496
      Height = 54
    end
    object RxLabel1: TRxLabel
      Left = 10
      Top = 37
      Width = 46
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel5: TRxLabel
      Left = 10
      Top = 60
      Width = 30
      Height = 13
      Caption = 'CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel3: TRxLabel
      Left = 299
      Top = 60
      Width = 84
      Height = 13
      Caption = 'Cliente desde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DB_CODIGO: TsuiDBEdit
      Left = 63
      Top = 37
      Width = 57
      Height = 20
      TabStop = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'CODIGO'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit4: TsuiDBEdit
      Left = 63
      Top = 60
      Width = 174
      Height = 20
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_CNPJ'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object db_nome: TsuiDBEdit
      Left = 124
      Top = 37
      Width = 374
      Height = 20
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'NOME_RS'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object DBDateEdit1: TDBDateEdit
      Left = 385
      Top = 60
      Width = 114
      Height = 19
      DataField = 'DATACAD'
      DataSource = DM.DTS_Clientes
      ReadOnly = True
      Color = 15263976
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 287
    Top = 103
    Width = 234
    Height = 68
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263975
    TabOrder = 2
    object suiButton1: TsuiButton
      Left = 118
      Top = 5
      Width = 110
      Height = 57
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Cancela'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C005800581F7C005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        005800581F7C1F7C0058005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058
        00581F7C1F7C1F7C00580058005800581F7C1F7C1F7C1F7C1F7C1F7C00580058
        1F7C1F7C1F7C1F7C1F7C0068005C005800581F7C1F7C1F7C1F7C005800581F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058005800581F7C0058005800581F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800600060006400581F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00600060006C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800680064006C00741F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0070006C00681F7C1F7C007000741F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C007C006C00741F7C1F7C1F7C1F7C007C00781F7C
        1F7C1F7C1F7C1F7C1F7C00780078007C1F7C1F7C1F7C1F7C1F7C1F7C00780078
        1F7C1F7C1F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        00781F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object suiButton2: TsuiButton
      Left = 6
      Top = 5
      Width = 110
      Height = 57
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Confirma'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000012000000130000000100
        040000000000E4000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333330000003333422433333333330000003334222243333333330000003342
        2222243333333300000034222A2222433333330000003222A2A2224333333300
        00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
        243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
        333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
        00003333333333A2224A3300000033333333333A222433000000333333333333
        A224330000003333333333333A223300000033333333333333A333000000}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
  end
  object MSG: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Hello world!'
    Left = 467
    Top = 8
  end
  object SDS_CREDIARIO: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_CREDIARIO_RECEBER ORDER BY CODIGO_COMPRA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
        Value = 320
      end>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 402
    Top = 8
    object SDS_CREDIARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CREDIARIOCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_CREDIARIODATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_CREDIARIODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CREDIARIODATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CREDIARIOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_CREDIARIOUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_CREDIARIOUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CREDIARIOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CREDIARIOVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object SDS_CREDIARIOVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object SDS_CREDIARIOVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object SDS_CREDIARIOVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SDS_CREDIARIOVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object SDS_CREDIARIOVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object SDS_CREDIARIOVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SDS_CREDIARIOCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
  end
  object DTS_CREDIARIO: TDataSource
    DataSet = SDS_CREDIARIO
    Left = 434
    Top = 8
  end
end
