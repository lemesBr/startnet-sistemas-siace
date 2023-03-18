object FrmBackupRestore: TFrmBackupRestore
  Left = 283
  Top = 78
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Backup do Sistema'
  ClientHeight = 443
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PainelMsg: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 27
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 14811135
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Lucida Console'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 412
    Width = 772
    Height = 31
    Align = alBottom
    TabOrder = 2
    object BtnSair: TBitBtn
      Left = 153
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BtnSairClick
    end
    object BtnRestore: TBitBtn
      Left = 77
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Restaurar...'
      TabOrder = 1
      OnClick = BtnRestoreClick
    end
    object BtnBackup: TBitBtn
      Left = 1
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Backup...'
      TabOrder = 2
      OnClick = BtnBackupClick
    end
  end
  object LOG: TListBox
    Left = 0
    Top = 27
    Width = 772
    Height = 385
    Align = alClient
    Color = 14811135
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 1
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'gbk'
    Filter = 'Backup|*.gbk'
    InitialDir = 'C:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Nome do novo Backup...'
    Left = 144
    Top = 64
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'gbk'
    Filter = 'Backup|*.gbk'
    Title = 'Restaurar Backup...'
    Left = 112
    Top = 64
  end
  object IBBackup: TMDOBackupService
    LoginPrompt = False
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    Protocol = TCP
    ServerName = 'localhost'
    TraceFlags = []
    Verbose = True
    BlockingFactor = 0
    Options = [IgnoreLimbo, NonTransportable]
    Left = 40
    Top = 64
  end
  object IBRestore: TMDORestoreService
    LoginPrompt = False
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    Protocol = TCP
    ServerName = 'localhost'
    TraceFlags = []
    Verbose = True
    Options = [Replace, CreateNewDB, UseAllSpace]
    PageBuffers = 0
    PageSize = 4096
    Left = 76
    Top = 64
  end
end
