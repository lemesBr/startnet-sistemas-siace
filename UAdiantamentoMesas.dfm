object frmAdiantamentosMesa: TfrmAdiantamentosMesa
  Left = 464
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FDiantamento Mesa'
  ClientHeight = 301
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabelFX1: TsLabelFX
    Left = 24
    Top = 16
    Width = 186
    Height = 31
    Caption = 'Valor FDiantamento :'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object sLabelFX2: TsLabelFX
    Left = 24
    Top = 52
    Width = 101
    Height = 31
    Caption = 'Descri'#231#227'o :'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object edtValor: TCurrencyEdit
    Left = 216
    Top = 16
    Width = 225
    Height = 31
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 89
    Width = 553
    Height = 176
    TabStop = False
    DataSource = DsA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = ' Descri'#231#227'o '
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = ' Valor '
        Visible = True
      end>
  end
  object edtDescricao: TEdit
    Left = 131
    Top = 53
    Width = 310
    Height = 31
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'EDTDESCRICAO'
    OnKeyPress = edtDescricaoKeyPress
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 282
    Width = 611
    Height = 19
    Panels = <
      item
        Text = 
          '[ F2 ] Novo   [ F3 ] FDiciona    [ F4 ] Navega    [ Del ] Apaga ' +
          '  [ESC] Sair'
        Width = 50
      end>
  end
  object IBAd: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRA
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * from FDIANTAMENTO_CONTA_CLIENTE where CODIGO = :COD')
    UpdateObject = UpA
    Left = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object IBAdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FDIANTAMENTO_CONTA_CLIENTE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBAdORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"FDIANTAMENTO_CONTA_CLIENTE"."ORDEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBAdVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"FDIANTAMENTO_CONTA_CLIENTE"."VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBAdDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"FDIANTAMENTO_CONTA_CLIENTE"."DESCRICAO"'
      Size = 50
    end
  end
  object IBTRA: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 24
  end
  object UpA: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  ORDEM,'
      '  VALOR,'
      '  DESCRICAO'
      'from FDIANTAMENTO_CONTA_CLIENTE '
      'where'
      '  CODIGO = :CODIGO and'
      '  ORDEM = :ORDEM')
    ModifySQL.Strings = (
      'update FDIANTAMENTO_CONTA_CLIENTE'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ORDEM = :ORDEM,'
      '  VALOR = :VALOR'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  ORDEM = :OLD_ORDEM')
    InsertSQL.Strings = (
      'insert into FDIANTAMENTO_CONTA_CLIENTE'
      '  (CODIGO, DESCRICAO, ORDEM, VALOR)'
      'values'
      
        '  (:CODIGO, :DESCRICAO, ( SELECT coalesce( MAX( ORDEM ) ,0) + 1 ' +
        'FROM '
      'FDIANTAMENTO_CONTA_CLIENTE WHERE CODIGO=:CODIGO), :VALOR)')
    DeleteSQL.Strings = (
      'delete from FDIANTAMENTO_CONTA_CLIENTE'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  ORDEM = :OLD_ORDEM')
    Left = 224
    Top = 104
  end
  object DsA: TDataSource
    DataSet = IBAd
    Left = 288
    Top = 136
  end
end
