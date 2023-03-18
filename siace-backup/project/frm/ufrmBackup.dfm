object frmBackup: TfrmBackup
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Fazendo Backup de Banco...'
  ClientHeight = 173
  ClientWidth = 442
  Color = 6241300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 39
    Top = 54
    Width = 305
    Height = 56
  end
  object ActivityIndicator1: TActivityIndicator
    Left = 359
    Top = 57
    Animate = True
    IndicatorColor = aicWhite
    IndicatorSize = aisLarge
    IndicatorType = aitRotatingSector
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 224
    Top = 176
  end
  object SaveDialog: TSaveDialog
    FileName = 'BackupSiace'
    Left = 312
    Top = 120
  end
end
