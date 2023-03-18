object FrmDadosAdm: TFrmDadosAdm
  Left = 472
  Top = 309
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parcelamento no Cart'#227'o'
  ClientHeight = 362
  ClientWidth = 590
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
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 105
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMenu
    TabOrder = 0
    object Label21: TLabel
      Left = 8
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Bandeira'
    end
    object Label22: TLabel
      Left = 101
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Descri'#231#227'o Bandeira'
    end
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label5: TLabel
      Left = 160
      Top = 56
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label2: TLabel
      Left = 264
      Top = 56
      Width = 65
      Height = 13
      Caption = 'Parcelamento'
    end
    object BtnConsBandeira: TAdvGlowButton
      Left = 76
      Top = 24
      Width = 23
      Height = 21
      Hint = 'Consultar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = BtnConsBandeiraClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object EdtCodBandeira: TAlignEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      Hint = 'Pressione F2 para Consultar'
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = EdtCodBandeiraEnter
      OnExit = EdtCodBandeiraExit
      OnKeyDown = EdtCodBandeiraKeyDown
      OnKeyPress = EdtCodBandeiraKeyPress
    end
    object EdtNomeBandeira: TEdit
      Left = 101
      Top = 24
      Width = 476
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 6
    end
    object BtnOK: TAdvGlowButton
      Left = 360
      Top = 69
      Width = 65
      Height = 25
      Caption = '&OK'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = BtnOKClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object BtnSair: TAdvGlowButton
      Left = 440
      Top = 69
      Width = 65
      Height = 25
      Caption = '&Sair'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = BtnSairClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object EdtTipo: TEdit
      Left = 8
      Top = 72
      Width = 129
      Height = 21
      TabStop = False
      Color = clSilver
      ReadOnly = True
      TabOrder = 1
    end
    object EdtValor: TCurrencyEdit
      Left = 160
      Top = 72
      Width = 89
      Height = 21
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FormatOnEditing = True
      ParentFont = False
      TabOrder = 2
      ZeroEmpty = False
    end
    object EdtParcelamento: TAlignEdit
      Left = 264
      Top = 72
      Width = 73
      Height = 21
      Alignment = taRightJustify
      TabOrder = 3
      OnEnter = EdtParcelamentoEnter
    end
    object EdtVenda: TAlignEdit
      Left = 403
      Top = -3
      Width = 73
      Height = 21
      Alignment = taRightJustify
      TabOrder = 7
      Visible = False
    end
    object EdtCli: TAlignEdit
      Left = 416
      Top = 48
      Width = 73
      Height = 21
      Alignment = taRightJustify
      TabOrder = 8
      Visible = False
    end
    object dt_venda: TDBDateEdit
      Left = 482
      Top = 5
      Width = 87
      Height = 21
      DataField = 'DATA_PEDIDO'
      NumGlyphs = 2
      TabOrder = 9
      Visible = False
    end
    object EdtSeq: TAlignEdit
      Left = 504
      Top = 48
      Width = 73
      Height = 21
      Alignment = taRightJustify
      TabOrder = 10
      Visible = False
    end
    object EdtDoc: TAlignEdit
      Left = 512
      Top = 80
      Width = 73
      Height = 21
      Alignment = taRightJustify
      TabOrder = 11
      Visible = False
    end
    object EdtCli1: TAlignEdit
      Left = 424
      Top = 56
      Width = 73
      Height = 21
      Alignment = taRightJustify
      TabOrder = 12
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 590
    Height = 238
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMenu
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 586
      Height = 247
      Align = alTop
      Color = clSilver
      DataSource = DSQBuscaParc
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'COD.'
          Width = 60
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'TAXA'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'BANDEIRA'
          Width = 182
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'HISTORICO'
          Visible = True
        end>
    end
    object BtnExcluir: TAdvGlowButton
      Left = 324
      Top = 254
      Width = 77
      Height = 25
      Caption = '&Exclui'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = BtnExcluirClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object BtnAlterar: TAdvGlowButton
      Left = 188
      Top = 254
      Width = 77
      Height = 25
      Caption = '&Alterar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = BtnAlterarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object Memo1: TMemo
      Left = 392
      Top = 104
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 3
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 343
    Width = 590
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'ESC p/ Finalizar'
  end
  object QBuscaParcelas: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.IBTRAux
    SQL.Strings = (
      'SELECT C.CODIGO, C.EMISSAO, C.VENCIMENTO, C.VALOR, C.TAXA,'
      'B.DESCRICAO, C.HISTORICO'
      'FROM CONTAS_RECEBER_ADM_CARTAO C'
      'INNER JOIN BANDEIRAS_CARTAO B'
      'ON (C.CODIGO_BANDEIRA = B.CODIGO)'
      'WHERE C.COD_VEN = :CODVEN'
      'ORDER BY C.CODIGO')
    Left = 248
    Top = 224
    ParamData = <
      item
        Name = 'CODVEN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaParcelasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO'
      Required = True
    end
    object QBuscaParcelasEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.EMISSAO'
      Required = True
    end
    object QBuscaParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VENCIMENTO'
      Required = True
    end
    object QBuscaParcelasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object QBuscaParcelasTAXA: TFloatField
      FieldName = 'TAXA'
      Origin = 'TAXA'
    end
    object QBuscaParcelasDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QBuscaParcelasHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 500
    end
  end
  object QDelParcela: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'DELETE FROM CONTAS_RECEBER_ADM_CARTAO'
      'WHERE CODIGO = :CODIGO')
    Left = 168
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
      end>
  end
  object QGravaParcela: TFDQuery
    CachedUpdates = True
    Connection = DM.Coneccao
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'INSERT INTO CONTAS_RECEBER_ADM_CARTAO (CODIGO,'
      
        'CODIGO_BANDEIRA, EMISSAO, VENCIMENTO, COD_CAI, COD_EMP, COD_VEN,' +
        ' VALOR, VALOR_PAGO, ACRESCIMO, DESCONTO, TAXA, COD_CLI, DOCUMENT' +
        'O, PARCELA, USUARIO, HISTORICO, CODIGO_SEQUENCIA, DOC_REC_ADM )'
      
        'VALUES(GEN_ID(GNT_COD_CTR_ADM, 1), :BAND, :EMISSAO, :VENCTO, :CA' +
        'I, :EMP, :VEN, :VALOR, 0,  0, 0, :TAXA,'
      ':CODCLI, :DOCUMENTO, :PARCELA, :USUARIO, :HISTORICO, :SEQ, :DOC)')
    Left = 248
    Top = 272
    ParamData = <
      item
        Name = 'BAND'
      end
      item
        Name = 'EMISSAO'
      end
      item
        Name = 'VENCTO'
      end
      item
        Name = 'CAI'
      end
      item
        Name = 'EMP'
      end
      item
        Name = 'VEN'
      end
      item
        Name = 'VALOR'
      end
      item
        Name = 'TAXA'
      end
      item
        Name = 'CODCLI'
      end
      item
        Name = 'DOCUMENTO'
      end
      item
        Name = 'PARCELA'
      end
      item
        Name = 'USUARIO'
      end
      item
        Name = 'HISTORICO'
      end
      item
        Name = 'SEQ'
      end
      item
        Name = 'DOC'
      end>
  end
  object DSQBuscaParc: TDataSource
    AutoEdit = False
    DataSet = QBuscaParcelas
    Left = 168
    Top = 224
  end
  object SPC_SEQ: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'CODIGO_CRED_CARTAO'
    Left = 368
    Top = 24
  end
  object qrcaixa_mov: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 72
    Top = 212
  end
  object FGravaParcela: TFDCommand
    Connection = DM.Coneccao
    Transaction = DM.IBTransaction
    CommandText.Strings = (
      'INSERT INTO CONTAS_RECEBER_ADM_CARTAO (CODIGO,'
      
        'CODIGO_BANDEIRA, EMISSAO, VENCIMENTO, COD_CAI, COD_EMP, COD_VEN,' +
        ' VALOR, VALOR_PAGO, ACRESCIMO, DESCONTO, TAXA, COD_CLI, DOCUMENT' +
        'O, PARCELA, USUARIO, HISTORICO, CODIGO_SEQUENCIA, DOC_REC_ADM )'
      
        'VALUES(GEN_ID(GNT_COD_CTR_ADM, 1), :BAND, :EMISSAO, :VENCTO, :CA' +
        'I, :EMP, :VEN, :VALOR, 0,  0, 0, :TAXA,'
      ':CODCLI, :DOCUMENTO, :PARCELA, :USUARIO, :HISTORICO, :SEQ, :DOC)')
    ParamData = <
      item
        Name = 'BAND'
        ParamType = ptInput
      end
      item
        Name = 'EMISSAO'
        ParamType = ptInput
      end
      item
        Name = 'VENCTO'
        ParamType = ptInput
      end
      item
        Name = 'CAI'
        ParamType = ptInput
      end
      item
        Name = 'EMP'
        ParamType = ptInput
      end
      item
        Name = 'VEN'
        ParamType = ptInput
      end
      item
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        Name = 'TAXA'
        ParamType = ptInput
      end
      item
        Name = 'CODCLI'
        ParamType = ptInput
      end
      item
        Name = 'DOCUMENTO'
        ParamType = ptInput
      end
      item
        Name = 'PARCELA'
        ParamType = ptInput
      end
      item
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        Name = 'SEQ'
        ParamType = ptInput
      end
      item
        Name = 'DOC'
        ParamType = ptInput
      end>
    Left = 312
    Top = 273
  end
end
