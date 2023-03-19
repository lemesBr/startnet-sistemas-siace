inherited FrmCadLocaisEstoque: TFrmCadLocaisEstoque
  Left = 434
  Top = 259
  Caption = 'Cadastro de Locais de Estoque'
  ClientHeight = 161
  ClientWidth = 659
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 665
  ExplicitHeight = 190
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 659
    Height = 110
    ExplicitWidth = 659
    ExplicitHeight = 110
    FullHeight = 110
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
    object codigo: TAlignEdit
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
      Width = 641
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      MaxLength = 60
      TabOrder = 1
    end
  end
  inherited Panel2: TAdvPanel
    Top = 110
    Width = 659
    ExplicitTop = 110
    ExplicitWidth = 659
    FullHeight = 51
    inherited btnLocalizar: TAdvGlowButton
      Left = 557
      OnClick = BtnConsultarClick
      ExplicitLeft = 557
      ExplicitTop = 2
      ExplicitHeight = 47
    end
    inherited btnSalvar: TAdvGlowButton
      ImageIndex = 11
      OnClick = BtnGravarClick
      ExplicitLeft = 402
      ExplicitTop = 2
      ExplicitHeight = 47
    end
    inherited btnexcluir: TAdvGlowButton
      OnClick = BtnExcluirClick
      ExplicitLeft = 302
      ExplicitTop = 2
    end
    inherited btnCancelar: TAdvGlowButton
      OnClick = BtnCancelarClick
      ExplicitLeft = 202
    end
    inherited btnEditar: TAdvGlowButton
      OnClick = BtnAlterarClick
      ExplicitLeft = 102
    end
    inherited btnNovo: TAdvGlowButton
      OnClick = BtnNovoClick
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 47
    end
  end
  object IBSQLLE: TFDCommand
    Connection = DM.Coneccao
    Transaction = IBTRLE
    Left = 192
    Top = 24
  end
  object IBTRLE: TFDTransaction
    Left = 272
    Top = 16
  end
end
