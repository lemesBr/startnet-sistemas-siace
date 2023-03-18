inherited FrmCadMotivo: TFrmCadMotivo
  Left = 255
  Top = 218
  Caption = 'Cadastro de Motivo de Acerto de Estoque'
  ClientHeight = 206
  ClientWidth = 620
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 620
    Height = 155
    ExplicitWidth = 620
    ExplicitHeight = 155
    FullHeight = 155
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 71
      Height = 13
      Caption = 'Entrada/Sa'#237'da'
    end
    object cod_mot: TAlignEdit
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtNome: TEdit
      Left = 8
      Top = 64
      Width = 601
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      MaxLength = 50
      TabOrder = 1
    end
    object ComboMotivo: TComboBox
      Left = 8
      Top = 104
      Width = 97
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      Items.Strings = (
        'ENTRADA'
        'SA'#205'DA')
    end
  end
  inherited Panel2: TAdvPanel
    Top = 155
    Width = 620
    ExplicitTop = 155
    ExplicitWidth = 620
    FullHeight = 51
  end
  object IBSQLMot: TIBSQL
    Database = DM.IBDatabase
    Transaction = IBTRMot
    Left = 232
    Top = 48
  end
  object IBTRMot: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 312
    Top = 56
  end
end
