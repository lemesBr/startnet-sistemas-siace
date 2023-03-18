inherited FrmCadLab: TFrmCadLab
  Caption = 'Cadastro de Fabricante'
  ClientHeight = 164
  ClientWidth = 676
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 682
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 676
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
      Width = 658
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      MaxLength = 50
      TabOrder = 1
    end
  end
  inherited Panel2: TAdvPanel
    Top = 113
    Width = 676
    ExplicitTop = 113
    ExplicitWidth = 617
    FullHeight = 51
    inherited BtnSair: TAdvGlowButton
      ImageIndex = 8
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
    end
    inherited btnNovo: TAdvGlowButton
      Left = 0
      Top = 6
      ImageIndex = 0
      Images = FormPrincipal.sAlphaImageList2
      Picture.Data = {}
      OnClick = btnNovoClick
      ExplicitLeft = 0
      ExplicitTop = 6
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
  object IBSQLLab: TFDCommand
    Connection = DM.Coneccao
    Transaction = IBTRLab
    Left = 232
    Top = 16
  end
  object IBTRLab: TFDTransaction
    Left = 296
    Top = 16
  end
end
