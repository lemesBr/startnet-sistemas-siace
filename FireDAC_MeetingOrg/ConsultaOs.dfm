object FormConsOS: TFormConsOS
  Left = 330
  Top = 135
  Caption = 'Consulta Ordens de Servi'#231'os'
  ClientHeight = 466
  ClientWidth = 771
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 104
    Width = 771
    Height = 152
    Align = alTop
    Caption = 'Ordens de Servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBGrid: TXDBGrid
      Left = 2
      Top = 15
      Width = 767
      Height = 135
      Align = alClient
      BorderStyle = bsNone
      DataSource = DMOS.DTS_OS1
      FixedColor = 12874553
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridCellClick
      OnDblClick = DBGridDblClick
      OnDrawColumnCell = DBGridDrawColumnCell
      OnKeyPress = DBGridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_OS_ORDEMSERVICO'
          Title.Caption = 'OS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTE'
          Title.Caption = 'Cod. Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONSUMIDOR_NOME'
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 284
        end
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Title.Caption = 'Situa'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 79
        end
        item
          Expanded = False
          FieldName = 'ID_VENDA'
          Title.Caption = 'N'#186' Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONSUMIDOR_ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 251
        end
        item
          Expanded = False
          FieldName = 'CONSUMIDOR_CPFCNPJ'
          Title.Caption = 'Cpf/Cnpj'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 123
        end
        item
          Expanded = False
          FieldName = 'CONSUMIDOR_TELEFONE'
          Title.Caption = 'Fone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 85
        end
        item
          Expanded = False
          FieldName = 'NOMECONTATO'
          Title.Caption = 'Contato'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 87
        end
        item
          Expanded = False
          FieldName = 'DATA_ENTRADA'
          Title.Caption = 'Abertura'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_SOLUCAO'
          Title.Caption = 'Solu'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBS'
          Title.Caption = 'Obs'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNone
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 394
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 409
    Width = 771
    Height = 57
    Align = alBottom
    TabOrder = 1
    object Label4: TLabel
      Left = 356
      Top = 11
      Width = 63
      Height = 13
      Caption = 'Qtde Itens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 564
      Top = 12
      Width = 64
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TsBitBtn
      Left = 8
      Top = 16
      Width = 145
      Height = 31
      Caption = 'Imprime O.S.'
      TabOrder = 0
      OnClick = BitBtn1Click
      ImageIndex = 110
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object BitBtn2: TsBitBtn
      Left = 179
      Top = 14
      Width = 145
      Height = 33
      Caption = 'Imprime &Solu'#231#227'o'
      TabOrder = 1
      Visible = False
      OnClick = BitBtn2Click
      ImageIndex = 110
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object Edit60: TEdit
      Left = 649
      Top = 9
      Width = 97
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 2
    end
    object Edit62: TEdit
      Left = 425
      Top = 9
      Width = 97
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 256
    Width = 771
    Height = 152
    Align = alTop
    Caption = 'Produtos Vinculados a Ordem de Servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DBGrid1: TXDBGrid
      Left = 2
      Top = 15
      Width = 767
      Height = 135
      Align = alClient
      BorderStyle = bsNone
      DataSource = DMOS.DTS_PRODUTOS
      FixedColor = 12874553
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridDblClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Cod Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_BARRAS'
          Title.Alignment = taCenter
          Title.Caption = 'Cod Barras'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 97
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 249
        end
        item
          Expanded = False
          FieldName = 'DESC_UNIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Und.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 55
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr Unit'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VLRDESCONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 75
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 771
    Height = 104
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 4
      Top = 47
      Width = 71
      Height = 13
      Caption = 'Abertura Os:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 195
      Top = 47
      Width = 10
      Height = 13
      Caption = 'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 4
      Top = 14
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 521
      Top = 16
      Width = 66
      Height = 13
      Caption = 'N'#186' da O.S.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 345
      Top = 47
      Width = 47
      Height = 13
      Caption = 'Solu'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 525
      Top = 48
      Width = 10
      Height = 13
      Caption = 'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 436
      Top = 74
      Width = 52
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 5
      Top = 75
      Width = 46
      Height = 13
      Caption = 'T'#233'cnico:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateEdit4: TDateEdit
      Left = 223
      Top = 45
      Width = 93
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object suiButton2: TsBitBtn
      Left = 661
      Top = 41
      Width = 101
      Height = 27
      Caption = '&Buscar'
      TabOrder = 3
      OnClick = suiButton2Click
      ImageIndex = 158
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object DateEdit3: TDateEdit
      Left = 79
      Top = 45
      Width = 92
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 170
      Top = 12
      Width = 331
      Height = 23
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 4
      object RxLabel6: TRxLabel
        Left = 4
        Top = 3
        Width = 325
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object Cliente: TComboEdit
      Left = 79
      Top = 12
      Width = 92
      Height = 23
      CharCase = ecUpperCase
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
      OnChange = ClienteChange
      OnExit = ClienteExit
    end
    object Edit1: TEdit
      Left = 592
      Top = 14
      Width = 54
      Height = 21
      TabOrder = 5
    end
    object DateEdit1: TDateEdit
      Left = 409
      Top = 45
      Width = 92
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 6
    end
    object DateEdit2: TDateEdit
      Left = 552
      Top = 45
      Width = 93
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 7
    end
    object suiButton1: TsBitBtn
      Left = 661
      Top = 10
      Width = 101
      Height = 27
      Caption = 'Fec&har'
      TabOrder = 8
      OnClick = suiButton1Click
      ImageIndex = 118
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton3: TsBitBtn
      Left = 661
      Top = 71
      Width = 101
      Height = 27
      Caption = '&Limpar'
      TabOrder = 9
      OnClick = suiButton3Click
      ImageIndex = 30
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object Combobox1: TComboBox
      Left = 504
      Top = 72
      Width = 144
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'TODAS'
      Items.Strings = (
        'TODAS'
        'ABERTA'
        'FATURADA'
        'SOLUCIONADA'
        'FRANQUEADA'
        'FECHADA')
    end
    object Edit3: TEdit
      Left = 401
      Top = 71
      Width = 97
      Height = 21
      Enabled = False
      TabOrder = 11
      Visible = False
    end
    object ComboEdit1: TComboEdit
      Left = 78
      Top = 72
      Width = 92
      Height = 23
      CharCase = ecUpperCase
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
      TabOrder = 12
      Text = ''
    end
    object Panel1: TPanel
      Left = 169
      Top = 72
      Width = 240
      Height = 23
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 13
      object RxLabel2: TRxLabel
        Left = 4
        Top = 3
        Width = 236
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object Edit2: TEdit
      Left = 385
      Top = 71
      Width = 97
      Height = 21
      Enabled = False
      TabOrder = 14
      Visible = False
    end
  end
  object Impressao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o para Impress'#227'o'
    UIStyle = WinXP
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
    Text = 'Confirma Impress'#227'o da Abertura da Ordem de Servi'#231'o?'
    Left = 487
    Top = 9
  end
end
