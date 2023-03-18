object FormHistoricoCliente: TFormHistoricoCliente
  Left = 325
  Top = 125
  BorderStyle = bsDialog
  Caption = 'Hist'#243'rico da Movimenta'#231#227'o do Cliente'
  ClientHeight = 529
  ClientWidth = 764
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 44
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object Panel6: TPanel
      Left = 2
      Top = 5
      Width = 71
      Height = 36
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 0
      object RxLabel5: TRxLabel
        Left = 2
        Top = 19
        Width = 67
        Height = 15
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RxLabel37: TRxLabel
        Left = 2
        Top = 2
        Width = 67
        Height = 15
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
    object Panel7: TPanel
      Left = 76
      Top = 5
      Width = 503
      Height = 36
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel6: TRxLabel
        Left = 2
        Top = 19
        Width = 499
        Height = 15
        Align = alBottom
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RxLabel38: TRxLabel
        Left = 2
        Top = 2
        Width = 499
        Height = 15
        Align = alTop
        AutoSize = False
        Caption = 'Nome / Raz'#227'o Social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
    object Panel8: TPanel
      Left = 581
      Top = 5
      Width = 176
      Height = 36
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      object RxLabel7: TRxLabel
        Left = 2
        Top = 19
        Width = 172
        Height = 15
        Align = alBottom
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RxLabel39: TRxLabel
        Left = 2
        Top = 2
        Width = 172
        Height = 15
        Align = alTop
        AutoSize = False
        Caption = 'Cpf / Cnpj:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 44
    Width = 764
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 1
    object RxLabel1: TRxLabel
      Left = 4
      Top = 0
      Width = 102
      Height = 13
      Caption = 'C'#243'digo do Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object myLabel3d1: TsLabelFX
      Left = 128
      Top = -10
      Width = 629
      Height = 51
      Alignment = taCenter
      AutoSize = False
      Caption = 'Hist'#243'rico do Cliente'
      Color = 15263976
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Cliente: TComboEdit
      Left = 3
      Top = 14
      Width = 123
      Height = 24
      CharCase = ecUpperCase
      ClickKey = 113
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnButtonClick = ClienteButtonClick
      OnEnter = ClienteEnter
      OnExit = ClienteExit
      OnKeyPress = ClienteKeyPress
    end
  end
  object pc: TsPageControl
    Left = 0
    Top = 84
    Width = 764
    Height = 445
    ActivePage = TBCPP
    Align = alClient
    TabOrder = 2
    object TBCPP: TsTabSheet
      Caption = 'Informa'#231#245'es da Movimenta'#231#227'o do Cliente'
      object Panel12: TPanel
        Left = 0
        Top = 217
        Width = 756
        Height = 200
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = 15198183
        Enabled = False
        TabOrder = 0
        object RxLabel9: TRxLabel
          Left = 5
          Top = 5
          Width = 39
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel10: TRxLabel
          Left = 5
          Top = 125
          Width = 97
          Height = 13
          Caption = 'Usu'#225'rio (Cadastro):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel48: TRxLabel
          Left = 400
          Top = 5
          Width = 177
          Height = 13
          Caption = 'Liberado para Comprar no Credi'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel11: TRxLabel
          Left = 5
          Top = 25
          Width = 97
          Height = 13
          Caption = 'Nome/Raz'#227'o Social:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel12: TRxLabel
          Left = 400
          Top = 25
          Width = 51
          Height = 13
          Caption = 'Endere'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel13: TRxLabel
          Left = 5
          Top = 45
          Width = 86
          Height = 13
          Caption = 'Apelido/Fantasia:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel14: TRxLabel
          Left = 400
          Top = 45
          Width = 34
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel15: TRxLabel
          Left = 5
          Top = 65
          Width = 49
          Height = 13
          Caption = 'Cpf/Cnpj:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel16: TRxLabel
          Left = 400
          Top = 65
          Width = 39
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel17: TRxLabel
          Left = 5
          Top = 85
          Width = 50
          Height = 13
          Caption = 'R.G./I.E.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel18: TRxLabel
          Left = 400
          Top = 85
          Width = 25
          Height = 13
          Caption = 'CEP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel19: TRxLabel
          Left = 660
          Top = 65
          Width = 39
          Height = 13
          Caption = 'Estado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel20: TRxLabel
          Left = 5
          Top = 105
          Width = 85
          Height = 13
          Caption = 'Residencia/Sede:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel21: TRxLabel
          Left = 575
          Top = 85
          Width = 48
          Height = 13
          Caption = 'Telefone:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel22: TRxLabel
          Left = 400
          Top = 105
          Width = 24
          Height = 13
          Caption = 'Fax:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel23: TRxLabel
          Left = 575
          Top = 105
          Width = 39
          Height = 13
          Caption = 'Celular:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel24: TRxLabel
          Left = 400
          Top = 125
          Width = 34
          Height = 13
          Caption = 'E-mail:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbt_codigo: TsDBEdit
          Left = 105
          Top = 5
          Width = 100
          Height = 19
          TabStop = False
          AutoSize = False
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clWhite
          DataField = 'CODIGO'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object db_nome: TsDBEdit
          Left = 105
          Top = 25
          Width = 286
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'NOME_RS'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit4: TsDBEdit
          Left = 460
          Top = 25
          Width = 289
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'ENDERECO'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit1: TsDBEdit
          Left = 105
          Top = 45
          Width = 286
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'APELIDO'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit6: TsDBEdit
          Left = 460
          Top = 45
          Width = 289
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'BAIRRO'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit2: TsDBEdit
          Left = 105
          Top = 65
          Width = 200
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CPF_CNPJ'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit8: TsDBEdit
          Left = 460
          Top = 65
          Width = 134
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CIDADE'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit3: TsDBEdit
          Left = 105
          Top = 85
          Width = 200
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'RG_IE'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit7: TsDBEdit
          Left = 460
          Top = 85
          Width = 108
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CEP'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 9
          ParentFont = False
          TabOrder = 8
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit9: TsDBEdit
          Left = 635
          Top = 85
          Width = 110
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'TELEFONE'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentFont = False
          TabOrder = 9
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit10: TsDBEdit
          Left = 460
          Top = 105
          Width = 106
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'FAX'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentFont = False
          TabOrder = 10
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit11: TsDBEdit
          Left = 635
          Top = 105
          Width = 110
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CELULAR'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentFont = False
          TabOrder = 11
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit5: TsDBEdit
          Left = 105
          Top = 125
          Width = 200
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'USERCAD'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit13: TsDBEdit
          Left = 105
          Top = 105
          Width = 200
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'RESIDENCIA_SEDE'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit14: TsDBEdit
          Left = 703
          Top = 65
          Width = 46
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'UF'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit15: TsDBEdit
          Left = 659
          Top = 5
          Width = 90
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'CREDIARIO'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiDBEdit12: TsDBEdit
          Left = 460
          Top = 125
          Width = 289
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'EMAIL'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 16
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 197
        Align = alTop
        BevelInner = bvRaised
        BevelWidth = 2
        Color = 15198183
        Enabled = False
        TabOrder = 1
        object Label1: TLabel
          Left = 7
          Top = 5
          Width = 90
          Height = 13
          AutoSize = False
          Caption = 'Cliente Desde:'
          Transparent = True
        end
        object Label2: TLabel
          Left = 7
          Top = 25
          Width = 90
          Height = 13
          AutoSize = False
          Caption = 'Primeira Compra:'
          Transparent = True
        end
        object Label3: TLabel
          Left = 7
          Top = 45
          Width = 90
          Height = 13
          AutoSize = False
          Caption = #218'ltima Compra:'
          Transparent = True
        end
        object Label7: TLabel
          Left = 7
          Top = 85
          Width = 113
          Height = 13
          Caption = 'Valor da Ultima Compra:'
          Transparent = True
        end
        object Label8: TLabel
          Left = 7
          Top = 105
          Width = 114
          Height = 13
          Caption = 'Valor da Menor Compra:'
          Transparent = True
        end
        object Label9: TLabel
          Left = 7
          Top = 125
          Width = 110
          Height = 13
          Caption = 'Valor da Maior Compra:'
          Transparent = True
        end
        object Label10: TLabel
          Left = 7
          Top = 145
          Width = 118
          Height = 13
          Caption = 'Valor M'#233'dio de Compras:'
          Transparent = True
        end
        object Label11: TLabel
          Left = 280
          Top = 5
          Width = 86
          Height = 13
          Caption = 'Total de Compras:'
          Transparent = True
        end
        object Label14: TLabel
          Left = 280
          Top = 25
          Width = 109
          Height = 13
          Caption = 'Documentos a Vencer:'
          Transparent = True
        end
        object Label15: TLabel
          Left = 280
          Top = 45
          Width = 110
          Height = 13
          Caption = 'Documentos Vencidos:'
          Transparent = True
        end
        object Label16: TLabel
          Left = 280
          Top = 65
          Width = 117
          Height = 13
          Caption = 'Documentos Recebidos:'
          Transparent = True
        end
        object Label17: TLabel
          Left = 280
          Top = 85
          Width = 86
          Height = 13
          Caption = 'Cheques a Baixar:'
          Transparent = True
        end
        object Label18: TLabel
          Left = 280
          Top = 145
          Width = 144
          Height = 13
          Caption = 'Cheques Retornados a Baixar:'
          Transparent = True
        end
        object Label19: TLabel
          Left = 280
          Top = 105
          Width = 91
          Height = 13
          Caption = 'Cheques Baixados:'
          Transparent = True
        end
        object Label20: TLabel
          Left = 280
          Top = 165
          Width = 149
          Height = 13
          Caption = 'Cheques Retornados Baixados:'
          Transparent = True
        end
        object Label21: TLabel
          Left = 280
          Top = 125
          Width = 103
          Height = 13
          Caption = 'Cheques Retornados:'
          Transparent = True
        end
        object Label6: TLabel
          Left = 7
          Top = 65
          Width = 121
          Height = 13
          Caption = 'Valor da Primeira Compra:'
          Transparent = True
        end
        object Label4: TLabel
          Left = 7
          Top = 165
          Width = 116
          Height = 13
          Caption = 'Media de Atrazo T'#237'tulos:'
          Transparent = True
        end
        object suiDBEdit16: TsDBEdit
          Left = 140
          Top = 5
          Width = 120
          Height = 19
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'DATACAD'
          DataSource = DM.DTS_Clientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object Edit2: TsMemo
          Left = 140
          Top = 25
          Width = 120
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object Edit3: TsMemo
          Left = 140
          Top = 45
          Width = 120
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo2: TsMemo
          Left = 435
          Top = 5
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 3
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo5: TsMemo
          Left = 435
          Top = 25
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 4
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo12: TsMemo
          Left = 435
          Top = 45
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 5
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo14: TsMemo
          Left = 435
          Top = 65
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 6
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo15: TsMemo
          Left = 435
          Top = 85
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 7
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo16: TsMemo
          Left = 435
          Top = 105
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 8
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo17: TsMemo
          Left = 435
          Top = 125
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 9
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo18: TsMemo
          Left = 435
          Top = 145
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 10
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo19: TsMemo
          Left = 435
          Top = 165
          Width = 70
          Height = 19
          Alignment = taCenter
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 11
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo1: TsMemo
          Left = 507
          Top = 5
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo3: TsMemo
          Left = 507
          Top = 25
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo4: TsMemo
          Left = 507
          Top = 45
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo6: TsMemo
          Left = 507
          Top = 65
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo11: TsMemo
          Left = 507
          Top = 85
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 16
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo13: TsMemo
          Left = 507
          Top = 105
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo20: TsMemo
          Left = 507
          Top = 125
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo21: TsMemo
          Left = 507
          Top = 145
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo22: TsMemo
          Left = 507
          Top = 165
          Width = 240
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo71: TsMemo
          Left = 140
          Top = 65
          Width = 120
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo81: TsMemo
          Left = 140
          Top = 85
          Width = 120
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo91: TsMemo
          Left = 140
          Top = 105
          Width = 120
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo101: TsMemo
          Left = 140
          Top = 125
          Width = 120
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 24
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo23: TsMemo
          Left = 140
          Top = 145
          Width = 120
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 25
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object suiMemo7: TsMemo
          Left = 140
          Top = 165
          Width = 120
          Height = 19
          Alignment = taRightJustify
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            '')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 26
          Text = #13#10
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 197
        Width = 756
        Height = 20
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'Informa'#231#245'es do Cliente (Dados Cadastrais)'
        Color = clAqua
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet1: TsTabSheet
      Caption = 'Informa'#231#245'es do Credi'#225'rio'
      Enabled = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel1: TBevel
        Left = 0
        Top = 194
        Width = 754
        Height = 10
      end
      object Panel9: TPanel
        Left = 0
        Top = 25
        Width = 756
        Height = 184
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 1
        object DBGrid2: TsDBGrid
          Left = 2
          Top = 2
          Width = 752
          Height = 153
          TabStop = False
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = True
          DataSource = DMB.DTS_Crediario_Baixa
          DefaultDrawing = False
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid2DrawColumnCell
          OnDblClick = DBGrid2DblClick
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_VENCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vencimento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Alignment = taCenter
              Title.Caption = 'Hist'#243'rico do Lan'#231'amento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 203
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_COMPRA'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor da Compra'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PAGAR'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor a Pagar'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PAGO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Pago'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 117
              Visible = True
            end>
        end
        object Panel10: TPanel
          Left = 2
          Top = 155
          Width = 752
          Height = 27
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 15263976
          TabOrder = 1
          object RxLabel4: TRxLabel
            Left = 2
            Top = 2
            Width = 340
            Height = 23
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total do Credi'#225'rio a Receber:'
            Color = 14408667
            Font.Charset = ANSI_CHARSET
            Font.Color = 15921906
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clSilver
          end
          object RxLabel8: TRxLabel
            Left = 347
            Top = 2
            Width = 403
            Height = 23
            Align = alRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = 15198183
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 204
        Width = 756
        Height = 25
        Align = alBottom
        Alignment = taLeftJustify
        BevelInner = bvRaised
        Caption = 'Credi'#225'rio Recebido'
        Color = 14408667
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object suiDBNavigator10: TsDBNavigator
          Left = 629
          Top = 3
          Width = 120
          Height = 19
          SkinData.SkinSection = 'TOOLBAR'
          FullRepaint = False
          TabOrder = 0
          DataSource = DTS_DocRecebidos
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvRaised
        Caption = 'Credi'#225'rio a Receber'
        Color = 14408667
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object suiDBNavigator9: TsDBNavigator
          Left = 629
          Top = 3
          Width = 120
          Height = 19
          SkinData.SkinSection = 'TOOLBAR'
          FullRepaint = False
          TabOrder = 0
          DataSource = DMB.DTS_Crediario_Baixa
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 229
        Width = 756
        Height = 188
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 3
        object DBGrid1: TsDBGrid
          Left = 2
          Top = 2
          Width = 752
          Height = 157
          TabStop = False
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = True
          DataSource = DTS_DocRecebidos
          FixedColor = 15717318
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_BAIXA'
              Title.Alignment = taCenter
              Title.Caption = 'Pagamento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 304
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_COMPRA'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor da Compra'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PAGAR'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor a Pagar'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PAGO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Pago'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 112
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 2
          Top = 159
          Width = 752
          Height = 27
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 15263976
          TabOrder = 1
          object RxLabel2: TRxLabel
            Left = 2
            Top = 2
            Width = 340
            Height = 23
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total do Credi'#225'rio Recebido:'
            Color = 14408667
            Font.Charset = ANSI_CHARSET
            Font.Color = 15921906
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clSilver
          end
          object RxLabel3: TRxLabel
            Left = 348
            Top = 2
            Width = 402
            Height = 23
            Align = alRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = 15198183
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
      end
    end
    object TabSheet2: TsTabSheet
      Caption = 'Informa'#231#245'es de Cheques'
      Enabled = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvRaised
        Caption = ' Cheques a Baixar'
        Color = 14408667
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object suiDBNavigator6: TsDBNavigator
          Left = 628
          Top = 3
          Width = 120
          Height = 19
          SkinData.SkinSection = 'TOOLBAR'
          FullRepaint = False
          TabOrder = 0
          DataSource = DTS_ChequesBaixar
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        end
      end
      object Panel16: TPanel
        Left = 0
        Top = 25
        Width = 756
        Height = 105
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 1
        object suiDBGrid1: TsDBGrid
          Left = 2
          Top = 2
          Width = 752
          Height = 74
          TabStop = False
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = True
          DataSource = DTS_ChequesBaixar
          FixedColor = 15717318
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_DEPOSITO'
              Title.Alignment = taCenter
              Title.Caption = 'Depositar'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO'
              Title.Caption = 'Banco'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 195
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TITULAR'
              Title.Caption = 'Nome do Titular da Conta Corrente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 255
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N_CHEQUE'
              Title.Alignment = taRightJustify
              Title.Caption = 'N'#186' do Cheque'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_CHEQUE'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor do Cheque'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end>
        end
        object Panel17: TPanel
          Left = 2
          Top = 76
          Width = 752
          Height = 27
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 15263976
          TabOrder = 1
          object RxLabel25: TRxLabel
            Left = 2
            Top = 2
            Width = 350
            Height = 23
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total de Cheques a Baixar:'
            Color = 14408667
            Font.Charset = ANSI_CHARSET
            Font.Color = 15921906
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clSilver
          end
          object RxLabel26: TRxLabel
            Left = 359
            Top = 2
            Width = 391
            Height = 23
            Align = alRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = 15198183
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object Panel19: TPanel
        Left = 0
        Top = 315
        Width = 756
        Height = 102
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 2
        object suiDBGrid2: TsDBGrid
          Left = 2
          Top = 2
          Width = 752
          Height = 71
          TabStop = False
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = True
          DataSource = DTS_ChequesBaixados
          FixedColor = 15717318
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_BAIXA'
              Title.Alignment = taCenter
              Title.Caption = 'Baixa'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO'
              Title.Caption = 'Banco'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 219
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'AGENCIA'
              Title.Alignment = taRightJustify
              Title.Caption = 'N'#186' da Ag'#234'ncia'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 94
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'N_CHEQUE'
              Title.Alignment = taRightJustify
              Title.Caption = 'N'#186' do Cheque'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_CHEQUE'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor do Cheque'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'NUMERO_CC'
              Title.Alignment = taRightJustify
              Title.Caption = 'N'#186' Conta Receptora'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 120
              Visible = True
            end>
        end
        object Panel20: TPanel
          Left = 2
          Top = 73
          Width = 752
          Height = 27
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 15263976
          TabOrder = 1
          object RxLabel27: TRxLabel
            Left = 2
            Top = 2
            Width = 350
            Height = 23
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total de Cheques Baixados:'
            Color = 14408667
            Font.Charset = ANSI_CHARSET
            Font.Color = 15921906
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clSilver
          end
          object RxLabel28: TRxLabel
            Left = 362
            Top = 2
            Width = 388
            Height = 23
            Align = alRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = 15198183
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object Panel21: TPanel
        Left = 0
        Top = 155
        Width = 756
        Height = 86
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 3
        object suiDBGrid3: TsDBGrid
          Left = 2
          Top = 2
          Width = 752
          Height = 55
          TabStop = False
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = True
          DataSource = DTS_ChequesRetornados
          FixedColor = 15717318
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_RETORNO'
              Title.Alignment = taCenter
              Title.Caption = 'Retorno'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO'
              Title.Caption = 'Banco'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 223
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'CONTA_CORRENTE'
              Title.Alignment = taRightJustify
              Title.Caption = 'N'#186' da Conta'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 94
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'N_CHEQUE'
              Title.Alignment = taRightJustify
              Title.Caption = 'N'#186' do Cheque'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_CHEQUE'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor do Cheque'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 124
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'RETORNADO_PAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Ret. Baixado'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end>
        end
        object Panel22: TPanel
          Left = 2
          Top = 57
          Width = 752
          Height = 27
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 15263976
          TabOrder = 1
          object RxLabel29: TRxLabel
            Left = 2
            Top = 2
            Width = 350
            Height = 23
            Align = alLeft
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor Total de Cheques Retornados:'
            Color = 14408667
            Font.Charset = ANSI_CHARSET
            Font.Color = 15921906
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clSilver
          end
          object RxLabel30: TRxLabel
            Left = 362
            Top = 2
            Width = 388
            Height = 23
            Align = alRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = 15198183
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object Panel23: TPanel
        Left = 0
        Top = 130
        Width = 756
        Height = 25
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvRaised
        Caption = ' Cheques Retornados'
        Color = 14408667
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object suiDBNavigator7: TsDBNavigator
          Left = 628
          Top = 3
          Width = 120
          Height = 19
          SkinData.SkinSection = 'TOOLBAR'
          FullRepaint = False
          TabOrder = 0
          DataSource = DTS_ChequesRetornados
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 290
        Width = 756
        Height = 25
        Align = alBottom
        Alignment = taLeftJustify
        BevelInner = bvRaised
        Caption = ' Cheques Baixados'
        Color = 14408667
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object suiDBNavigator8: TsDBNavigator
          Left = 628
          Top = 3
          Width = 120
          Height = 19
          SkinData.SkinSection = 'TOOLBAR'
          FullRepaint = False
          TabOrder = 0
          DataSource = DTS_ChequesBaixados
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        end
      end
    end
    object suiTabSheet1: TsTabSheet
      Caption = 'Informa'#231#245'es de Pedidos'
      Enabled = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel26: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 213
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14408667
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Panel24: TPanel
          Left = 2
          Top = 2
          Width = 752
          Height = 209
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15198183
          TabOrder = 0
          object Panel27: TPanel
            Left = 2
            Top = 2
            Width = 748
            Height = 25
            Align = alTop
            Alignment = taLeftJustify
            BevelInner = bvRaised
            Caption = ' Pedidos'
            Color = 14408667
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object suiDBNavigator1: TsDBNavigator
              Left = 622
              Top = 3
              Width = 120
              Height = 19
              SkinData.SkinSection = 'TOOLBAR'
              FullRepaint = False
              TabOrder = 0
              DataSource = DTS_COMPRAS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            end
          end
          object Panel36: TPanel
            Left = 2
            Top = 27
            Width = 748
            Height = 180
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 15263976
            TabOrder = 1
            object suiDBGrid4: TsDBGrid
              Left = 2
              Top = 2
              Width = 744
              Height = 149
              TabStop = False
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              Ctl3D = True
              DataSource = DTS_COMPRAS
              FixedColor = 15717318
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              SkinData.SkinSection = 'EDIT'
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'CODIGO'
                  Title.Alignment = taCenter
                  Title.Caption = 'N'#186' Pedido'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 84
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_PEDIDO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data da Compra'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 112
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_ENTREGA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data p/ Entrega'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 103
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'USUARIO'
                  Title.Caption = 'Vendedor'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 142
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'PAGAMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pagamento'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 128
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_TOTAL'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Valor Total'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 139
                  Visible = True
                end>
            end
            object Panel37: TPanel
              Left = 2
              Top = 151
              Width = 744
              Height = 27
              Align = alBottom
              BevelInner = bvLowered
              Color = 15263976
              TabOrder = 1
              object RxLabel31: TRxLabel
                Left = 2
                Top = 2
                Width = 355
                Height = 23
                Align = alLeft
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total dos Pedidos: '
                Color = 14408667
                Font.Charset = ANSI_CHARSET
                Font.Color = 15921906
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ShadowColor = clSilver
              end
              object RxLabel32: TRxLabel
                Left = 362
                Top = 2
                Width = 380
                Height = 23
                Align = alRight
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'R$: 0,00'
                Color = 15198183
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
            end
          end
        end
      end
      object Panel29: TPanel
        Left = 0
        Top = 213
        Width = 756
        Height = 204
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14408667
        TabOrder = 1
        object Panel25: TPanel
          Left = 2
          Top = 2
          Width = 752
          Height = 200
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15198183
          TabOrder = 0
          object Panel28: TPanel
            Left = 2
            Top = 2
            Width = 748
            Height = 25
            Align = alTop
            Alignment = taLeftJustify
            BevelInner = bvRaised
            Caption = ' Pedidos Cancelados'
            Color = 14408667
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object suiDBNavigator4: TsDBNavigator
              Left = 622
              Top = 3
              Width = 120
              Height = 19
              SkinData.SkinSection = 'TOOLBAR'
              FullRepaint = False
              TabOrder = 0
              DataSource = DTS_P_Cancelados
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            end
          end
          object Panel30: TPanel
            Left = 2
            Top = 171
            Width = 748
            Height = 27
            Align = alBottom
            BevelInner = bvLowered
            Color = 15263976
            TabOrder = 1
            object RxLabel33: TRxLabel
              Left = 2
              Top = 2
              Width = 360
              Height = 23
              Align = alLeft
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor Total dos Pedidos Cancelados: '
              Color = 14408667
              Font.Charset = ANSI_CHARSET
              Font.Color = 15921906
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              ShadowColor = clSilver
            end
            object RxLabel34: TRxLabel
              Left = 366
              Top = 2
              Width = 380
              Height = 23
              Align = alRight
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'R$: 0,00'
              Color = 15198183
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object suiDBGrid5: TsDBGrid
            Left = 2
            Top = 27
            Width = 748
            Height = 144
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            Ctl3D = True
            DataSource = DTS_P_Cancelados
            FixedColor = 15717318
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            SkinData.SkinSection = 'EDIT'
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Pedido'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_PEDIDO'
                Title.Alignment = taCenter
                Title.Caption = 'Data da Compra'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 112
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_ENTREGA'
                Title.Alignment = taCenter
                Title.Caption = 'Data p/ Entrega'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Title.Caption = 'Vendedor'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 142
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PAGAMENTO'
                Title.Alignment = taCenter
                Title.Caption = 'Pagamento'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 128
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_TOTAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor Total'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 143
                Visible = True
              end>
          end
        end
      end
    end
    object suiTabSheet2: TsTabSheet
      Caption = 'Informa'#231#245'es de Or'#231'amentos'
      Enabled = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel31: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 417
        Align = alClient
        Alignment = taLeftJustify
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14408667
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Panel32: TPanel
          Left = 2
          Top = 2
          Width = 752
          Height = 413
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15198183
          TabOrder = 0
          object Panel33: TPanel
            Left = 2
            Top = 2
            Width = 748
            Height = 25
            Align = alTop
            Alignment = taLeftJustify
            BevelInner = bvRaised
            Caption = 'Or'#231'amentos'
            Color = 14408667
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object suiDBNavigator2: TsDBNavigator
              Left = 622
              Top = 3
              Width = 120
              Height = 19
              SkinData.SkinSection = 'TOOLBAR'
              FullRepaint = False
              TabOrder = 0
              DataSource = DTS_Orcamentos
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            end
          end
          object Panel34: TPanel
            Left = 2
            Top = 27
            Width = 748
            Height = 384
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 15263976
            TabOrder = 1
            object suiDBGrid6: TsDBGrid
              Left = 2
              Top = 2
              Width = 744
              Height = 353
              TabStop = False
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              Ctl3D = True
              DataSource = DTS_Orcamentos
              FixedColor = 15717318
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              SkinData.SkinSection = 'EDIT'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO'
                  Title.Alignment = taCenter
                  Title.Caption = 'N'#186' do Or'#231'amento'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 104
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data do Or'#231'amento'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 135
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'USUARIO'
                  Title.Caption = 'Vendedor'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 145
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PAGAMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pagamento'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 165
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_TOTAL'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Valor Total'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 159
                  Visible = True
                end>
            end
            object Panel35: TPanel
              Left = 2
              Top = 355
              Width = 744
              Height = 27
              Align = alBottom
              BevelInner = bvLowered
              Color = 15263976
              TabOrder = 1
              object RxLabel35: TRxLabel
                Left = 2
                Top = 2
                Width = 355
                Height = 23
                Align = alLeft
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Valor Total dos Or'#231'amentos: '
                Color = 14408667
                Font.Charset = ANSI_CHARSET
                Font.Color = 15921906
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ShadowColor = clSilver
              end
              object RxLabel36: TRxLabel
                Left = 362
                Top = 2
                Width = 380
                Height = 23
                Align = alRight
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'R$: 0,00'
                Color = 15198183
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
            end
          end
        end
      end
    end
  end
  object SDS_COMPRAS: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_PEDIDOS_N order by CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 272
    object SDS_COMPRASCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_COMPRASVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object SDS_COMPRASVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_COMPRASVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_COMPRASUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_COMPRASUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SDS_COMPRASDATA_PEDIDO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_COMPRASDATA_ENTREGA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_ENTREGA'
    end
    object SDS_COMPRASCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_COMPRASPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTS_COMPRAS: TDataSource
    DataSet = SDS_COMPRAS
    Left = 300
  end
  object SDS_COMPRASV: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_PEDIDOS_N order by VALOR_TOTAL asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 336
    object SDS_COMPRASVCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_COMPRASVVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object SDS_COMPRASVVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_COMPRASVVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_COMPRASVVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_COMPRASVUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_COMPRASVUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SDS_COMPRASVDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_COMPRASVDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SDS_COMPRASVCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_COMPRASVNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
  end
  object DTS_COMPRASV: TDataSource
    DataSet = SDS_COMPRASV
    Left = 364
  end
  object SDS_DocVencer: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 
      'select * from V_CREDIARIO_RECEBER_VENCER order by DATA_VENCIMENT' +
      'O asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 400
    object SDS_DocVencerCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_DocVencerCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_DocVencerDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_DocVencerDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_DocVencerDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_DocVencerHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_DocVencerUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_DocVencerUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_DocVencerSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_DocVencerVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object SDS_DocVencerVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object SDS_DocVencerVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object SDS_DocVencerVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SDS_DocVencerVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object SDS_DocVencerVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object SDS_DocVencerVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
  end
  object DTS_DocVencer: TDataSource
    DataSet = SDS_DocVencer
    Left = 428
  end
  object DTS_DocRecebidos: TDataSource
    DataSet = SDS_DocRecebidos
    Left = 492
  end
  object SDS_DocRecebidos: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_CREDIARIO_RECEBIDO ORDER BY DATA_BAIXA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 464
    object SDS_DocRecebidosCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_DocRecebidosCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_DocRecebidosDATA_COMPRA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_COMPRA'
    end
    object SDS_DocRecebidosDATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_DocRecebidosDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object SDS_DocRecebidosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_DocRecebidosUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_DocRecebidosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_DocRecebidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_DocRecebidosVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
    end
    object SDS_DocRecebidosVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
    end
    object SDS_DocRecebidosVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
    end
    object SDS_DocRecebidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_DocRecebidosVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
    end
    object SDS_DocRecebidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
    end
    object SDS_DocRecebidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_DocRecebidosPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
  end
  object SDS_ChequesBaixar: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_CHEQUES_BAIXAR order by DATA_DEPOSITO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CLIENTE'
    MasterFields = 'NOME_RS'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 528
    object SDS_ChequesBaixarCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_ChequesBaixarCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChequesBaixarBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChequesBaixarAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChequesBaixarCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChequesBaixarCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChequesBaixarTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChequesBaixarTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChequesBaixarN_CHEQUE: TStringField
      Alignment = taRightJustify
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChequesBaixarQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChequesBaixarVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_ChequesBaixarCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChequesBaixarRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesBaixarRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesBaixarMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChequesBaixarDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChequesBaixarDATA_DEPOSITO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChequesBaixarDATA_RETORNO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChequesBaixarDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChequesBaixarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChequesBaixarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChequesBaixarCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChequesBaixarCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChequesBaixarNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChequesBaixar: TDataSource
    DataSet = SDS_ChequesBaixar
    Left = 556
  end
  object DTS_ChequesBaixados: TDataSource
    DataSet = SDS_ChequesBaixados
    Left = 620
  end
  object SDS_ChequesBaixados: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_CHEQUES_BAIXADOS order by DATA_BAIXA asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CLIENTE'
    MasterFields = 'NOME_RS'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 592
    object SDS_ChequesBaixadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_ChequesBaixadosCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChequesBaixadosBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChequesBaixadosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChequesBaixadosCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChequesBaixadosCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChequesBaixadosTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChequesBaixadosTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChequesBaixadosN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChequesBaixadosQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChequesBaixadosVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_ChequesBaixadosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChequesBaixadosRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesBaixadosRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesBaixadosMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChequesBaixadosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChequesBaixadosDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChequesBaixadosDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChequesBaixadosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChequesBaixadosUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChequesBaixadosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChequesBaixadosCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChequesBaixadosCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChequesBaixadosNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChequesRetornados: TDataSource
    DataSet = SDS_ChequesRetornados
    Left = 684
  end
  object SDS_ChequesRetornados: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_CHEQUES_RETORNADOS order by DATA_RETORNO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CLIENTE'
    MasterFields = 'NOME_RS'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 656
    object SDS_ChequesRetornadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_ChequesRetornadosCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChequesRetornadosBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChequesRetornadosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChequesRetornadosCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChequesRetornadosCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChequesRetornadosTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChequesRetornadosTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChequesRetornadosN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChequesRetornadosQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChequesRetornadosVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_ChequesRetornadosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChequesRetornadosRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesRetornadosRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesRetornadosMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChequesRetornadosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChequesRetornadosDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChequesRetornadosDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChequesRetornadosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChequesRetornadosUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChequesRetornadosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChequesRetornadosCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChequesRetornadosCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChequesRetornadosNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChRetBaixar: TDataSource
    DataSet = SDS_ChRetBaixar
    Left = 620
    Top = 40
  end
  object SDS_ChRetBaixar: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_CHEQUES_RETORNADOS_A_PAGAR'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CLIENTE'
    MasterFields = 'NOME_RS'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 592
    Top = 40
    object SDS_ChRetBaixarCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_ChRetBaixarCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChRetBaixarBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChRetBaixarAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChRetBaixarCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChRetBaixarCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChRetBaixarTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChRetBaixarTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChRetBaixarN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChRetBaixarQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChRetBaixarVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
    end
    object SDS_ChRetBaixarCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChRetBaixarRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChRetBaixarRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChRetBaixarMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChRetBaixarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChRetBaixarDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChRetBaixarDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChRetBaixarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChRetBaixarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChRetBaixarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChRetBaixarCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChRetBaixarCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChRetBaixarNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChRetBaixados: TDataSource
    DataSet = SDS_ChRetBaixados
    Left = 684
    Top = 40
  end
  object SDS_ChRetBaixados: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_CHEQUES_RETORNADOS_PAGOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CLIENTE'
    MasterFields = 'NOME_RS'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 656
    Top = 40
    object SDS_ChRetBaixadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_ChRetBaixadosCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChRetBaixadosBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChRetBaixadosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChRetBaixadosCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChRetBaixadosCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChRetBaixadosTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChRetBaixadosTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChRetBaixadosN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChRetBaixadosQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChRetBaixadosVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
    end
    object SDS_ChRetBaixadosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChRetBaixadosRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChRetBaixadosRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChRetBaixadosMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChRetBaixadosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChRetBaixadosDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChRetBaixadosDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChRetBaixadosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChRetBaixadosUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChRetBaixadosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChRetBaixadosCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChRetBaixadosCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChRetBaixadosNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object SDS_P_Cancelados: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from V_PEDIDOS_C order by CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
        Value = 320
      end>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 272
    Top = 32
    object SDS_P_CanceladosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_P_CanceladosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object SDS_P_CanceladosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_P_CanceladosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_P_CanceladosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_P_CanceladosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_P_CanceladosDATA_PEDIDO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_P_CanceladosDATA_ENTREGA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_ENTREGA'
    end
    object SDS_P_CanceladosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_P_CanceladosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SDS_P_CanceladosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SDS_P_CanceladosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
    object SDS_P_CanceladosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
  end
  object DTS_P_Cancelados: TDataSource
    DataSet = SDS_P_Cancelados
    Left = 300
    Top = 32
  end
  object SDS_Orcamentos: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 'select * from ORCAMENTOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 336
    Top = 32
    object SDS_OrcamentosCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_OrcamentosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_OrcamentosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_OrcamentosDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object SDS_OrcamentosCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_OrcamentosPAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object DTS_Orcamentos: TDataSource
    DataSet = SDS_Orcamentos
    Left = 364
    Top = 32
  end
  object sds_doc_recebido_atrazo: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    DataSet.CommandText = 
      'select * from V_CREDIARIO_RECEBIDO_ATRAZO ORDER BY DATA_BAIXA AS' +
      'C'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 464
    Top = 32
    object IntegerField1: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField2: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object DateField1: TDateField
      Alignment = taCenter
      FieldName = 'DATA_COMPRA'
    end
    object DateField2: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object DateField3: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object StringField1: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object StringField3: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField4: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object StringField5: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object sds_doc_recebido_atrazoDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
  end
  object dts_doc_recebido_atrazo: TDataSource
    DataSet = sds_doc_recebido_atrazo
    Left = 492
    Top = 32
  end
end
