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
    ExplicitWidth = 620
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
    ExplicitWidth = 620
    FullHeight = 51
    inherited BtnSair: TAdvGlowButton
      ImageIndex = 8
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
    end
    inherited btnNovo: TAdvGlowButton
      ImageIndex = 0
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
    end
    inherited BtnGravar: TAdvGlowButton
      ImageIndex = 11
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
    end
    inherited BtnExcluir: TAdvGlowButton
      ImageIndex = 3
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
    end
    inherited BtnConsultar: TAdvGlowButton
      ImageIndex = 20
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
    end
    inherited BtnCancelar: TAdvGlowButton
      ImageIndex = 12
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
    end
    inherited BtnAlterar: TAdvGlowButton
      ImageIndex = 1
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
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
