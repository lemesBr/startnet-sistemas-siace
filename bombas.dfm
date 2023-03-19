inherited FormBombas: TFormBombas
  Left = 345
  Top = 261
  Caption = 'cadastro de Bombas'
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    FullHeight = 200
    object GroupBox1: TGroupBox
      Left = 88
      Top = 4
      Width = 601
      Height = 193
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        601
        193)
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 47
        Height = 16
        Caption = 'Bomba:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 509
        Top = 16
        Width = 74
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'N'#186' de Bicos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 285
        Top = 16
        Width = 54
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Frentista:'
      end
      object Label4: TLabel
        Left = 16
        Top = 64
        Width = 65
        Height = 16
        Caption = 'Descri'#231#227'o:'
      end
      object Label5: TLabel
        Left = 16
        Top = 104
        Width = 49
        Height = 16
        Caption = 'Modelo:'
      end
      object Label6: TLabel
        Left = 288
        Top = 104
        Width = 35
        Height = 16
        Caption = 'S'#233'rie:'
      end
      object Label7: TLabel
        Left = 16
        Top = 144
        Width = 67
        Height = 16
        Caption = 'Fabricante:'
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 570
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DMP.DTS_BOMBA
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 285
        Top = 32
        Width = 209
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'COD_FRENTISTA'
        DataSource = DMP.DTS_BOMBA
        KeyField = 'COD_FRENTISTA'
        ListField = 'NOME'
        ListSource = DMP.dts_frentista
        TabOrder = 1
      end
      object DBComboBox1: TDBComboBox
        Left = 16
        Top = 32
        Width = 254
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_BOMBA'
        DataSource = DMP.DTS_BOMBA
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20')
        TabOrder = 0
        OnExit = DBComboBox1Exit
      end
      object CheckBox1: TCheckBox
        Left = 457
        Top = 63
        Width = 100
        Height = 17
        TabStop = False
        Alignment = taLeftJustify
        Anchors = [akTop]
        Caption = 'Auto-Autorizar'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 120
        Width = 249
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'MODELO'
        DataSource = DMP.DTS_BOMBA
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 288
        Top = 120
        Width = 297
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'SERIE'
        DataSource = DMP.DTS_BOMBA
        TabOrder = 6
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 160
        Width = 570
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'FABRICANTE'
        DataSource = DMP.DTS_BOMBA
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 512
        Top = 32
        Width = 73
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'QNT_BICO'
        DataSource = DMP.DTS_BOMBA
        TabOrder = 2
      end
    end
  end
  inherited Panel2: TAdvPanel
    FullHeight = 51
    inherited btnLocalizar: TAdvGlowButton
      OnClick = BtnConsultarClick
      ExplicitLeft = 676
      ExplicitTop = 2
      ExplicitHeight = 47
    end
    inherited btnSalvar: TAdvGlowButton
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
      OnClick = btnNovoClick
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 47
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
