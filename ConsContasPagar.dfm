object FormConsContasPagar: TFormConsContasPagar
  Left = 215
  Top = 147
  BorderStyle = bsDialog
  Caption = 'Localizar Contas a Pagar Cadastradas'
  ClientHeight = 447
  ClientWidth = 735
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 221
      Top = 4
      Width = 209
      Height = 13
      Caption = 'Entre Com o N'#250'mero do Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 442
      Top = 4
      Width = 191
      Height = 13
      Caption = 'Entre Com o Tipo do Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel3: TRxLabel
      Left = 5
      Top = 5
      Width = 197
      Height = 13
      Caption = 'Entre Com o Nome do Favorecido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 221
      Top = 20
      Width = 212
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 443
      Top = 19
      Width = 244
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = Edit2Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 2
      Top = 20
      Width = 204
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit3Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 735
    Height = 158
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 727
      Height = 17
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'DADOS DAS CONTAS A PAGAR'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object suiDBGrid1: TsuiDBGrid
      Left = 4
      Top = 21
      Width = 727
      Height = 133
      TabStop = False
      Align = alClient
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DM.DTS_ContasPagar
      FixedColor = 15717318
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = suiDBGrid1DblClick
      UIStyle = WinXP
      BorderColor = 6842472
      FocusedColor = clGreen
      SelectedColor = clYellow
      FontColor = clBlack
      TitleFontColor = clBlack
      FixedBGColor = 15717318
      BGColor = 14609391
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'N_DOCUMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#176' Doc.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SERIE'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_DOCUMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Tipo Ducumento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORNECEDOR'
          Title.Caption = 'Fornecedor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 246
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_DOCUMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Documento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 203
    Width = 735
    Height = 244
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 2
    object Label3: TLabel
      Left = 4
      Top = 4
      Width = 727
      Height = 17
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'PARCELAS DAS CONTAS A PAGAR'
      Color = clLime
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object suiDBGrid2: TsuiDBGrid
      Left = 4
      Top = 21
      Width = 727
      Height = 219
      TabStop = False
      Align = alClient
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DM.DTS_Contas_Pagar
      FixedColor = 15717318
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = suiDBGrid1DblClick
      UIStyle = WinXP
      BorderColor = 6842472
      FocusedColor = clGreen
      SelectedColor = clYellow
      FontColor = clBlack
      TitleFontColor = clBlack
      FixedBGColor = 15717318
      BGColor = 14609391
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACOES'
          Title.Caption = 'Observa'#231#245'es'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 192
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_BAIXA'
          Title.Alignment = taCenter
          Title.Caption = 'Pagamento'
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
          FieldName = 'VALOR_PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Parcela'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MULTA'
          Title.Alignment = taCenter
          Title.Caption = 'Multa'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_BAIXA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end>
    end
  end
end
