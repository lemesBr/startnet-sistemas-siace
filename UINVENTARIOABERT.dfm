object FormAberturaLivro: TFormAberturaLivro
  Left = 256
  Top = 145
  Width = 735
  Height = 578
  VertScrollBar.Position = 264
  Caption = 'FormAberturaLivro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = -256
    Width = 794
    Height = 1123
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    NextReport = RLReport2
    object RLLabel1: TRLLabel
      Left = 272
      Top = 264
      Width = 261
      Height = 32
      Caption = 'LIVRO INVENT'#193'RIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RLLabel2: TRLLabel
      Left = 256
      Top = 585
      Width = 307
      Height = 32
      Caption = 'TERMO DE ABERTURA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object RLReport2: TRLReport
    Left = 300
    Top = -152
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLLabel3: TRLLabel
      Left = 272
      Top = 264
      Width = 261
      Height = 32
      Caption = 'LIVRO INVENT'#193'RIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RLLabel4: TRLLabel
      Left = 216
      Top = 577
      Width = 390
      Height = 32
      Caption = 'TERMO DE ENCERRAMENTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 496
    Top = 32
  end
end
