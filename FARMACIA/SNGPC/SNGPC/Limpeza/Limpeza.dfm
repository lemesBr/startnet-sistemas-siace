object fLimpeza: TfLimpeza
  Left = 375
  Top = 274
  Width = 604
  Height = 343
  Caption = 'Limpeza da Base de Dados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 6
    Width = 569
    Height = 64
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'ATEN'#199#195'O!! Esse precedimento apaga todos os movimento de Entradas' +
      ', Saidas, Perdas e Transferencias e as tabelas que estiverem mar' +
      'cadas abaixo.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 272
    Width = 153
    Height = 25
    Caption = 'Limpar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 472
    Top = 272
    Width = 113
    Height = 25
    Caption = '&Sair'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 80
    Width = 569
    Height = 177
    Caption = 'Marque as Tabelas que Deseja Limpar'
    TabOrder = 2
  end
  object tbProdutos: TCheckBox
    Left = 40
    Top = 152
    Width = 150
    Height = 17
    Caption = 'Medicamentos'
    TabOrder = 3
  end
  object tbMedicos: TCheckBox
    Left = 40
    Top = 176
    Width = 193
    Height = 17
    Caption = 'M'#233'dicos'
    TabOrder = 4
  end
  object tbLabDistr: TCheckBox
    Left = 40
    Top = 104
    Width = 150
    Height = 17
    Caption = 'Laborat'#243'rio/Distribuidora'
    TabOrder = 5
  end
  object tbClientes: TCheckBox
    Left = 40
    Top = 128
    Width = 177
    Height = 17
    Caption = 'Clientes'
    TabOrder = 6
  end
  object Transacao: TMDOTransaction
    Active = False
    AutoCommit = False
    DefaultDatabase = fMenu.coneccao
    Left = 32
    Top = 272
  end
  object MDOQuery1: TMDOQuery
    Database = fMenu.coneccao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from BARRAS')
    Left = 72
    Top = 272
  end
  object MDOQuery2: TMDOQuery
    Database = fMenu.coneccao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      'select * from BARRAS')
    Left = 112
    Top = 272
  end
end
