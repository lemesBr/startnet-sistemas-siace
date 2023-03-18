object FormConsCrediario: TFormConsCrediario
  Left = 341
  Top = 161
  Width = 744
  Height = 392
  Caption = 'Localizar Credi'#225'rio'
  Color = clBtnFace
  Constraints.MinWidth = 270
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 5
      Top = 5
      Width = 166
      Height = 13
      Caption = 'Entre Com o Nome do Credor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 5
      Top = 20
      Width = 710
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 728
    Height = 309
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object suiDBGrid1: TDBGrid
      Left = 4
      Top = 4
      Width = 720
      Height = 301
      Align = alClient
      BorderStyle = bsNone
      Color = 15263976
      DataSource = FormLancCrediario.dts_crediario
      FixedColor = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      OnKeyPress = suiDBGrid1KeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_SACADO'
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 193
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Data Vda.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Vcto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_COMPRA'
          Title.Caption = 'Cod. Vda'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Vda'
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
          FieldName = 'VALOR_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pagar'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end>
    end
  end
end
