object FormBackup: TFormBackup
  Left = 405
  Top = 155
  BorderStyle = bsSingle
  Caption = 'Backup'
  ClientHeight = 400
  ClientWidth = 431
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pc: TsPageControl
    Left = 0
    Top = 0
    Width = 431
    Height = 400
    ActivePage = Tprodutos
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    SkinData.SkinSection = 'PAGECONTROL'
    object TAgregados: TsTabSheet
      Caption = 'Restaura'
      Enabled = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label4: TLabel
        Left = 16
        Top = 16
        Width = 91
        Height = 13
        Caption = 'Arquivo de Backup'
      end
      object Label5: TLabel
        Left = 16
        Top = 64
        Width = 178
        Height = 13
        Caption = 'Caminho de Restaura'#231#227'o do Backup:'
      end
      object Label6: TLabel
        Left = 16
        Top = 104
        Width = 21
        Height = 13
        Caption = 'Log:'
      end
      object feRestaurar: TFilenameEdit
        Left = 16
        Top = 32
        Width = 393
        Height = 21
        NumGlyphs = 1
        TabOrder = 0
        Text = ''
      end
      object feRestbanco: TFilenameEdit
        Left = 16
        Top = 80
        Width = 393
        Height = 21
        NumGlyphs = 1
        TabOrder = 1
        Text = ''
      end
      object Button1: TButton
        Left = 16
        Top = 336
        Width = 75
        Height = 25
        Caption = 'Restaura'
        TabOrder = 2
        OnClick = Button1Click
      end
      object mmRestaurar: TMemo
        Left = 16
        Top = 120
        Width = 393
        Height = 209
        TabOrder = 3
      end
    end
    object Tprodutos: TsTabSheet
      Caption = 'Backup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 80
        Height = 13
        Caption = 'Banco de Dados'
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 161
        Height = 13
        Caption = 'Caminho de Grava'#231#227'o do Backup'
      end
      object Label3: TLabel
        Left = 16
        Top = 120
        Width = 21
        Height = 13
        Caption = 'Log:'
      end
      object FeBanco: TFilenameEdit
        Left = 16
        Top = 32
        Width = 401
        Height = 21
        NumGlyphs = 1
        TabOrder = 0
        Text = ''
      end
      object deBackup: TDirectoryEdit
        Left = 16
        Top = 80
        Width = 401
        Height = 22
        NumGlyphs = 1
        TabOrder = 1
        Text = ''
      end
      object MmBackup: TMemo
        Left = 16
        Top = 136
        Width = 401
        Height = 201
        Lines.Strings = (
          '')
        TabOrder = 2
      end
      object Button2: TButton
        Left = 16
        Top = 344
        Width = 75
        Height = 25
        Caption = 'Backup'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
  end
  object IBBackupService1: TIBBackupService
    TraceFlags = []
    ServerType = 'IBServer'
    BlockingFactor = 0
    Options = []
    PreAllocate = 0
    Left = 312
    Top = 8
  end
  object IBRestoreService1: TIBRestoreService
    TraceFlags = []
    ServerType = 'IBServer'
    PageBuffers = 0
    PreAllocate = 0
    ReadOnly = False
    Left = 344
    Top = 8
  end
end
