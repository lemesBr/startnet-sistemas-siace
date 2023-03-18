object FormPadraoShott: TFormPadraoShott
  Left = 283
  Top = 223
  Width = 870
  Height = 480
  Caption = 'FormPadraoShott'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pc: TsuiPageControl
    Left = 0
    Top = 0
    Width = 854
    Height = 442
    Align = alClient
    UIStyle = WinXP
    LeftMargin = 10
    BorderColor = 6842472
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = True
    ActivePage = Tprodutos
    Pages = (
      Tprodutos
      TAgregados
      TSimilares)
    object TSimilares: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 848
      Height = 417
      PageIndex = 2
      Caption = 'Similares'
      TabVisible = True
      Color = clWhite
      Enabled = False
      TabOrder = 3
      PageControl = pc
    end
    object TAgregados: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 848
      Height = 417
      PageIndex = 1
      Caption = 'Agregados'
      TabVisible = True
      Color = clWhite
      Enabled = False
      TabOrder = 2
      PageControl = pc
    end
    object Tprodutos: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 848
      Height = 417
      PageIndex = 0
      Caption = 'Produtos'
      TabVisible = True
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      PageControl = pc
    end
  end
end
