object FrmConsValesFuncionario: TFrmConsValesFuncionario
  Left = 234
  Top = 186
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vales Funcion'#225'rio [Consulta]'
  ClientHeight = 444
  ClientWidth = 710
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 81
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 353
      Height = 49
      Caption = 'Funcion'#225'rio'
      TabOrder = 0
      object BtnConsFun: TSpeedButton
        Left = 61
        Top = 20
        Width = 23
        Height = 21
        Hint = 'Consultar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
          BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
          2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
          00FFA87875C4A398D5B6A7D0A59FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF55BDFFB5D6EDA3908EB69B8BF0E7C8FEFDDAFEFDD9FDFCD8EADA
          C2CEAEA3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCB7B7D9B8A5FF
          F1C3FFFDD6FFFFDAFFFFDAFFFFDFFFFFEFF6F0EBB48D89FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFC6978FF7E2B5F8DBAAFDF7D0FFFFDAFFFFE1FFFFF2FFFF
          FBFFFFFFDFD0BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBBAA8FCE4AFF2
          C897FCF4CCFFFFDBFFFFE4FFFFF9FFFFFBFFFFECF2EFD0C79C96FF00FFFF00FF
          FF00FFFF00FFFF00FFE4C7AFFBE0ABEFBA86F9E3B6FFFFD9FFFFDEFFFFE8FFFF
          EAFFFFE0FAF8D7C6AC9AFF00FFFF00FFFF00FFFF00FFFF00FFDFC0ABFEE9B5EF
          BB84F3CC98FBEEC4FFFFDBFFFFDDFFFFDCFFFFDCF6F2D2C8A298FF00FFFF00FF
          FF00FFFF00FFFF00FFCAA098FDF0C2FAE9C5F4D3A6F4D09DF9E4B8FEF6CFFEFA
          D3FFFFDAE5D9BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDC4AEFF
          FFFFFFF7E9F3CC98F0BD89F4CE9DFCE6B6FDF6C8BE9D8FFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFD3BFBAF6F0DCFFF2C0FDE6B1FEE9B5F4DE
          B7D0AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFCAAD96CFAE9BDDBFA9DCB8A8FF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnConsFunClick
      end
      object EdtCodFun: TAlignEdit
        Left = 8
        Top = 20
        Width = 49
        Height = 21
        Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar'
        Color = clSilver
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = EdtCodFunEnter
        OnExit = EdtCodFunExit
        OnKeyDown = EdtCodFunKeyDown
        OnKeyPress = EdtCodFunKeyPress
        Alignment = taRightJustify
        ColorOnFocus = clWindow
        ColorOnNoFocus = clWindow
        FontOnFocus.Charset = DEFAULT_CHARSET
        FontOnFocus.Color = clWindowText
        FontOnFocus.Height = -11
        FontOnFocus.Name = 'MS Sans Serif'
        FontOnFocus.Style = []
        FontOnNoFocus.Charset = DEFAULT_CHARSET
        FontOnNoFocus.Color = clWindowText
        FontOnNoFocus.Height = -11
        FontOnNoFocus.Name = 'MS Sans Serif'
        FontOnNoFocus.Style = []
      end
      object EdtNomeFun: TEdit
        Left = 88
        Top = 20
        Width = 257
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object CheckFunc: TCheckBox
      Left = 8
      Top = 56
      Width = 201
      Height = 17
      TabStop = False
      Caption = 'Todos os Funcion'#225'rios'
      TabOrder = 1
      OnClick = CheckFuncClick
    end
    object RDG: TRadioGroup
      Left = 368
      Top = 8
      Width = 249
      Height = 49
      Columns = 3
      Items.Strings = (
        'Em Abertos'
        'Pagos'
        'Todos')
      TabOrder = 2
    end
    object BtnOk: TButton
      Left = 634
      Top = 16
      Width = 55
      Height = 25
      Caption = '&OK'
      TabOrder = 3
      OnClick = BtnOkClick
    end
    object BtnSair: TButton
      Left = 634
      Top = 48
      Width = 55
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 710
    Height = 344
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object Label1: TLabel
      Left = 536
      Top = 318
      Width = 45
      Height = 13
      Caption = 'Total >>>'
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 706
      Height = 303
      Align = alTop
      Color = clSilver
      DataSource = DSQCons
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_VALE'
          Title.Alignment = taCenter
          Title.Caption = 'COD.'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VALE'
          Title.Alignment = taCenter
          Title.Caption = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_PAGTO'
          Title.Alignment = taCenter
          Title.Caption = 'DT.PAGTO.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FUN'
          Title.Alignment = taCenter
          Title.Caption = 'FUNCION'#193'RIO'
          Width = 299
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_VALE'
          Title.Alignment = taCenter
          Title.Caption = 'VALOR'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTORIZADO_VALE'
          Title.Alignment = taCenter
          Title.Caption = 'AUTORIZADO'
          Visible = True
        end>
    end
    object EdtTotal: TCurrencyEdit
      Left = 592
      Top = 312
      Width = 97
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = cl3DLight
      DisplayFormat = ',#0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object BtnLocalizar: TBitBtn
      Left = 317
      Top = 312
      Width = 75
      Height = 25
      Caption = '&Localizar'
      TabOrder = 2
      OnClick = BtnLocalizarClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 425
    Width = 710
    Height = 19
    Panels = <>
  end
  object DSQCons: TDataSource
    AutoEdit = False
    DataSet = QCons
    Left = 352
    Top = 264
  end
  object QCons: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'SELECT V.*, F.NOME_FUN'
      'FROM VALES_FUNCIONARIO V'
      'INNER JOIN FUNCIONARIO F'
      'ON (V.COD_FUN = F.COD_FUN)')
    Left = 352
    Top = 216
    object QConsCOD_VALE: TIntegerField
      FieldName = 'COD_VALE'
      Origin = 'VALES_FUNCIONARIO.COD_VALE'
      Required = True
    end
    object QConsCOD_FUN: TIntegerField
      FieldName = 'COD_FUN'
      Origin = 'VALES_FUNCIONARIO.COD_FUN'
      Required = True
    end
    object QConsDATA_VALE: TDateField
      FieldName = 'DATA_VALE'
      Origin = 'VALES_FUNCIONARIO.DATA_VALE'
      Required = True
    end
    object QConsDATA_PAGTO: TDateField
      FieldName = 'DATA_PAGTO'
      Origin = 'VALES_FUNCIONARIO.DATA_PAGTO'
    end
    object QConsVALOR_VALE: TIBBCDField
      FieldName = 'VALOR_VALE'
      Origin = 'VALES_FUNCIONARIO.VALOR_VALE'
      Required = True
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QConsAUTORIZADO_VALE: TIBStringField
      FieldName = 'AUTORIZADO_VALE'
      Origin = 'VALES_FUNCIONARIO.AUTORIZADO_VALE'
      Size = 80
    end
    object QConsNOME_FUN: TIBStringField
      FieldName = 'NOME_FUN'
      Origin = 'FUNCIONARIO.NOME_FUN'
      Required = True
      Size = 60
    end
  end
end
