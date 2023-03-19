inherited FormFrentista: TFormFrentista
  Left = 662
  Top = 348
  Caption = 'Cadastro de Frentistas'
  ClientHeight = 240
  ClientWidth = 662
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 668
  ExplicitHeight = 269
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 662
    Height = 189
    ExplicitWidth = 662
    ExplicitHeight = 189
    FullHeight = 189
    object Pnldados: TPanel
      Left = 0
      Top = 0
      Width = 662
      Height = 189
      Align = alClient
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 0
      DesignSize = (
        662
        189)
      object GroupBox1: TGroupBox
        Left = 16
        Top = 8
        Width = 591
        Height = 164
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          591
          164)
        object Label2: TLabel
          Left = 16
          Top = 19
          Width = 40
          Height = 16
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 495
          Top = 19
          Width = 79
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Comiss'#227'o %:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 489
        end
        object Label1: TLabel
          Left = 16
          Top = 72
          Width = 65
          Height = 16
          Caption = 'Descri'#231#227'o:'
        end
        object DBEdit3: TDBEdit
          Left = 495
          Top = 36
          Width = 81
          Height = 24
          Anchors = [akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'COMISSAO'
          DataSource = DMP.dts_frentista
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 36
          Width = 464
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DMP.dts_frentista
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 88
          Width = 560
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'OBS'
          DataSource = DMP.dts_frentista
          TabOrder = 2
        end
        object DBCheckBox1: TDBCheckBox
          Left = 16
          Top = 128
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'ENABLED'
          DataSource = DMP.dts_frentista
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  inherited Panel2: TAdvPanel
    Top = 189
    Width = 662
    ExplicitTop = 189
    ExplicitWidth = 662
    FullHeight = 51
    inherited btnLocalizar: TAdvGlowButton
      Left = 560
      OnClick = BtnConsultarClick
      ExplicitLeft = 560
    end
    inherited btnSalvar: TAdvGlowButton
      OnClick = BtnGravarClick
    end
    inherited btnexcluir: TAdvGlowButton
      OnClick = BtnExcluirClick
    end
    inherited btnCancelar: TAdvGlowButton
      OnClick = BtnCancelarClick
    end
    inherited btnEditar: TAdvGlowButton
      OnClick = BtnAlterarClick
      ExplicitLeft = 102
    end
    inherited btnNovo: TAdvGlowButton
      OnClick = btnNovoClick
    end
  end
  object MsgErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 234
    Top = 3
  end
  object MsgAtencao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiWarning
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 262
    Top = 3
  end
  object MsgConfirmacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Exclus'#227'o?'
    Left = 290
    Top = 3
  end
  object MsgInformacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'Hello world!'
    Left = 318
    Top = 3
  end
end
