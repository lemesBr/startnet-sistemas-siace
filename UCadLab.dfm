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
    ExplicitWidth = 676
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
    ExplicitWidth = 676
    FullHeight = 51
    inherited btnLocalizar: TAdvGlowButton
      Left = 574
      OnClick = BtnConsultarClick
      ExplicitLeft = 574
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
      ExplicitLeft = 96
      ExplicitTop = 6
    end
    inherited btnNovo: TAdvGlowButton
      OnClick = btnNovoClick
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 47
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
