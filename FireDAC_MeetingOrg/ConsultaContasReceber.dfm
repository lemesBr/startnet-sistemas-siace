object FormConsultaCR: TFormConsultaCR
  Left = 352
  Top = 102
  Caption = 'Consulta Contas a Receber'
  ClientHeight = 501
  ClientWidth = 804
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 804
    Height = 137
    Align = alTop
    Caption = 'Op'#231#245'es de Filtragem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 812
    object Label5: TLabel
      Left = 4
      Top = 60
      Width = 72
      Height = 13
      Caption = 'Data Vencto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 195
      Top = 60
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
      Top = 27
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
      Left = 545
      Top = 29
      Width = 53
      Height = 13
      Caption = 'Portador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 329
      Top = 60
      Width = 69
      Height = 13
      Caption = 'Data Movto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 525
      Top = 58
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
      Left = 4
      Top = 87
      Width = 41
      Height = 13
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 331
      Top = 86
      Width = 31
      Height = 13
      Caption = 'Zona:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 5
      Top = 114
      Width = 70
      Height = 13
      Caption = 'Tp:Contrato:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 330
      Top = 112
      Width = 41
      Height = 13
      Caption = 'Ordem:'
    end
    object DateEdit4: TDateEdit
      Left = 223
      Top = 57
      Width = 93
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object suiButton2: TsBitBtn
      Left = 695
      Top = 38
      Width = 97
      Height = 27
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = suiButton2Click
      ImageIndex = 158
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object DateEdit3: TDateEdit
      Left = 79
      Top = 57
      Width = 92
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 170
      Top = 25
      Width = 279
      Height = 23
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 4
      object RxLabel6: TRxLabel
        Left = 4
        Top = 3
        Width = 269
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
      Top = 25
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
      Left = 600
      Top = 27
      Width = 49
      Height = 21
      TabOrder = 5
    end
    object DateEdit1: TDateEdit
      Left = 409
      Top = 57
      Width = 92
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 6
    end
    object DateEdit2: TDateEdit
      Left = 555
      Top = 57
      Width = 93
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 7
    end
    object suiButton1: TsBitBtn
      Left = 695
      Top = 7
      Width = 97
      Height = 27
      Caption = 'Fechar'
      TabOrder = 8
      OnClick = suiButton1Click
      ImageIndex = 124
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton3: TsBitBtn
      Left = 695
      Top = 69
      Width = 97
      Height = 27
      Caption = 'Limpar'
      TabOrder = 9
      OnClick = suiButton3Click
      ImageIndex = 148
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object Combobox1: TComboBox
      Left = 451
      Top = 26
      Width = 93
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'Pendentes'
      Items.Strings = (
        'Pendentes'
        'Vencidas'
        'A Vencer'
        '')
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 78
      Top = 84
      Width = 238
      Height = 21
      KeyField = 'COD_CIDADE'
      ListField = 'NOME'
      ListSource = DM.DTS_cidades
      TabOrder = 11
      OnClick = DBLookupComboBox1Click
      OnEnter = DBLookupComboBox1Enter
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 409
      Top = 84
      Width = 241
      Height = 21
      KeyField = 'COD_ZONA'
      ListField = 'DESCRICAO'
      ListSource = DM.DTS_ZONAS
      TabOrder = 12
      OnClick = DBLookupComboBox2Click
      OnEnter = DBLookupComboBox2Enter
    end
    object Edit3: TEdit
      Left = 744
      Top = 99
      Width = 49
      Height = 21
      TabOrder = 13
      Visible = False
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 77
      Top = 112
      Width = 238
      Height = 21
      DataField = 'PLANO_CONTRATO'
      DataSource = DM.dts_contratos
      KeyField = 'ID_PLANO'
      ListField = 'DESCRICAO'
      ListSource = DM1.DTS_CONT_PLANO
      TabOrder = 14
    end
    object Edit4: TEdit
      Left = 232
      Top = 111
      Width = 49
      Height = 21
      TabOrder = 15
      Visible = False
      OnExit = Edit4Exit
    end
    object CheckBox2: TCheckBox
      Left = 568
      Top = 112
      Width = 153
      Height = 17
      Caption = 'Excluir N'#227'o Receb'#237'veis'
      TabOrder = 16
    end
    object ComboBox2: TComboBox
      Left = 409
      Top = 108
      Width = 132
      Height = 21
      ItemIndex = 0
      TabOrder = 17
      Text = 'NOME_RS'
      Items.Strings = (
        'NOME_RS'
        'DATA_VENCIMENTO'
        'CODIGO_CLIENTE'
        'DATA_COMPRA'
        'CODIGO_COMPRA'
        'PORTADOR'
        'NOME_SACADO'
        '')
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 137
    Width = 804
    Height = 304
    Align = alClient
    Caption = 'Dados das Parcelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TXDBGrid
      Left = 2
      Top = 15
      Width = 800
      Height = 287
      Align = alClient
      DataSource = DMCOB.dts_cobranca3
      FixedStyle = fsMild
      FixedTheme = ftButtons
      FocusRect = frMild
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridStyle.VisualStyle = vsXPStyle
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = [fsBold]
      MarkerStyle = msMild
      ParentFont = False
      TabOrder = 0
      Totals.Font.Charset = DEFAULT_CHARSET
      Totals.Font.Color = clWindowText
      Totals.Font.Height = -11
      Totals.Font.Name = 'MS Sans Serif'
      Totals.Font.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Visible = True
          Width = 57
        end
        item
          Expanded = False
          FieldName = 'NOME_RS'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Visible = True
          Width = 220
        end
        item
          Expanded = False
          FieldName = 'CODIGO_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Venda'
          Visible = True
          Width = 66
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parc.'
          Visible = True
          Width = 32
        end
        item
          Expanded = False
          FieldName = 'BANCO_PORTADOR'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Visible = True
          Width = 42
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Vecto'
          Visible = True
          Width = 70
        end
        item
          Expanded = False
          FieldName = 'DIAS_VENCIDO'
          Title.Caption = 'Dias Venc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_PREVISAO_PGTO'
          Title.Caption = 'Prev Pagto'
          Visible = True
          Width = 70
        end
        item
          Expanded = False
          FieldName = 'VALOR_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Titulo'
          Visible = True
          Width = 72
        end
        item
          Expanded = False
          FieldName = 'VALOR_JUROS'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Visible = True
          Width = 57
        end
        item
          Expanded = False
          FieldName = 'VALOR_DESCONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Desconto'
          Visible = True
          Width = 59
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pago'
          Visible = True
          Width = 77
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Receber'
          Visible = True
          Width = 85
        end
        item
          Expanded = False
          FieldName = 'NUMBOLETO'
          Title.Alignment = taRightJustify
          Title.Caption = 'N'#186' Boleto'
          Visible = True
          Width = 74
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Visible = True
          Width = 205
        end
        item
          Expanded = False
          FieldName = 'DATA_COMPRA'
          Title.Caption = 'Data Compra'
          Visible = True
          Width = 86
        end
        item
          Expanded = False
          FieldName = 'REMESSA'
          Title.Caption = 'Remessa'
          Visible = True
          Width = 62
        end
        item
          CheckBox = True
          CheckBoxStyle = cbMild
          CheckBoxToggle = ctSelectClick
          CheckBoxValues = 'T;F'
          Expanded = False
          FieldName = 'ENVIADO'
          Title.Caption = 'Enviado'
          Visible = True
          Width = 52
        end
        item
          Expanded = False
          FieldName = 'COBRADOR'
          Title.Caption = 'Cobrador'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCobrador'
          Title.Caption = 'Nome Cobrador'
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
          Width = 145
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Zona'
          Visible = True
          Width = 171
        end>
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 441
    Width = 804
    Height = 60
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 449
    ExplicitWidth = 812
    object Label1: TLabel
      Left = 9
      Top = 9
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 20
      Top = 29
      Width = 50
      Height = 13
      Caption = 'Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 156
      Top = 29
      Width = 36
      Height = 13
      Caption = 'Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 273
      Top = 29
      Width = 32
      Height = 13
      Caption = 'Desc:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 406
      Top = 29
      Width = 33
      Height = 13
      Caption = 'Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 537
      Top = 29
      Width = 34
      Height = 13
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 75
      Top = 27
      Width = 80
      Height = 19
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 191
      Top = 27
      Width = 80
      Height = 19
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 305
      Top = 27
      Width = 80
      Height = 18
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 445
      Top = 27
      Width = 80
      Height = 19
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 576
      Top = 27
      Width = 80
      Height = 19
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object suiButton7: TsBitBtn
      Left = 688
      Top = 23
      Width = 97
      Height = 27
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = suiButton7Click
      ImageIndex = 110
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object Edit2: TDateEdit
    Left = 721
    Top = 90
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
    Visible = False
  end
end
