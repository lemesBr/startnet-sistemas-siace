inherited FrmCadLab: TFrmCadLab
  Caption = 'Cadastro de Fabricante'
  ClientHeight = 164
  ClientWidth = 617
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 617
    Height = 113
    ExplicitWidth = 617
    ExplicitHeight = 113
    FullHeight = 113
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
    object cod_lab: TAlignEdit
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
      Width = 593
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      MaxLength = 50
      TabOrder = 1
    end
  end
  inherited Panel2: TAdvPanel
    Top = 113
    Width = 617
    ExplicitTop = 113
    ExplicitWidth = 617
    FullHeight = 51
  end
  object IBSQLLab: TIBSQL
    Database = DM.IBDatabase
    Transaction = IBTRLab
    Left = 200
    Top = 48
  end
  object IBTRLab: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 240
    Top = 48
  end
end
