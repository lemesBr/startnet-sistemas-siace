inherited frmPostoCartoesCreatedEdit: TfrmPostoCartoesCreatedEdit
  Caption = 'Cadastro ou Altera'#231#227'o de Cart'#245'es'
  ClientHeight = 520
  ClientWidth = 780
  OnCreate = FormCreate
  ExplicitWidth = 786
  ExplicitHeight = 549
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label2: TLabel
    Left = 276
    ExplicitLeft = 276
  end
  inherited lbl_TitleForm: TLabel
    Left = 265
    ExplicitLeft = 265
  end
  inherited pnl_Base: TPanel
    Width = 746
    Height = 364
    ExplicitWidth = 746
    ExplicitHeight = 364
    inherited Label3: TLabel
      Left = 263
      Top = 319
      Anchors = [akBottom]
      ExplicitLeft = 263
      ExplicitTop = 319
    end
    object Label7: TLabel
      Left = 15
      Top = 53
      Width = 55
      Height = 19
      Caption = 'Controle'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 15
      Top = 5
      Width = 712
      Height = 41
      Alignment = taLeftJustify
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Caption = 'Dados gerais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 40
        Width = 712
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
    end
    object cbx_Controle: TComboBox
      Left = 15
      Top = 76
      Width = 216
      Height = 27
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ItemIndex = 6
      ParentFont = False
      TabOrder = 1
      Text = 'Funcion'#225'rio N'#237'vel 1'
      Items.Strings = (
        'TAG Ve'#237'culo'
        'TAG M'#225'quina de Lavar'
        'Reservado'
        'Cliente N'#237'vel 1'
        'Cliente N'#237'vel 2'
        'Cliente N'#237'vel 3'
        'Funcion'#225'rio N'#237'vel 1'
        'Funcion'#225'rio N'#237'vel 2'
        'Funcion'#225'rio N'#237'vel 3'
        'Funcion'#225'rio N'#237'vel 4'
        'Funcion'#225'rio N'#237'vel 5'
        'Funcion'#225'rio N'#237'vel 6'
        'Gerente N'#237'vel 1'
        'Gerente N'#237'vel 2'
        'Controle Total')
    end
    object lbe_Codigo: TLabeledEdit
      Left = 246
      Top = 76
      Width = 204
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 108
      EditLabel.Height = 19
      EditLabel.Caption = '* Codigo Cart'#227'o:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited Panel2: TAdvPanel
    Top = 469
    Width = 780
    ExplicitTop = 469
    ExplicitWidth = 780
    FullHeight = 51
    inherited btnSalvar: TAdvGlowButton
      Left = 682
      ExplicitLeft = 682
    end
    inherited btnCancelar: TAdvGlowButton
      ImageIndex = 12
      ExplicitLeft = 2
    end
  end
  inherited Action: TActionList
    inherited act_Cancelar: TAction
      ImageIndex = 12
    end
    inherited act_Gravar: TAction
      OnExecute = act_GravarExecute
    end
  end
end
