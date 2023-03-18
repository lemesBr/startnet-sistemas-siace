object frmFarmaciaPopular: TfrmFarmaciaPopular
  Left = 362
  Top = 247
  BorderStyle = bsDialog
  Caption = 'Farm'#225'cia Popular'
  ClientHeight = 511
  ClientWidth = 610
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 10
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'CPF Paciente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 34
    Width = 95
    Height = 13
    Alignment = taRightJustify
    Caption = 'CRM do M'#233'dico:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 82
    Width = 98
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Receita:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 87
    Top = 58
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 325
    Top = 34
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Usu'#225'rio:'
  end
  object Label6: TLabel
    Left = 330
    Top = 58
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
  end
  object Label7: TLabel
    Left = 290
    Top = 10
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'CNPJ Emitente:'
  end
  object Label8: TLabel
    Left = 11
    Top = 290
    Width = 96
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nro Autoriza'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 467
    Top = 34
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vendedor:'
  end
  object Label10: TLabel
    Left = 482
    Top = 58
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 104
    Width = 593
    Height = 177
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'COD_MOVIMENTO'#9'10'#9'COD_MOVIMENTO'#9#9
      'COD_ITEM_MOVIMENTO'#9'10'#9'COD_ITEM_MOVIMENTO'#9#9
      'DES_PRODUTO'#9'30'#9'DES_PRODUTO'#9#9
      'QUANTIDADE'#9'10'#9'QUANTIDADE'#9#9
      'DOSAGEM'#9'10'#9'DOSAGEM'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 4
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 312
    Width = 481
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 8
    WordWrap = False
  end
  object cbHomologacao: TCheckBox
    Left = 368
    Top = 80
    Width = 105
    Height = 17
    Caption = 'Homologa'#231#227'o'
    Enabled = False
    TabOrder = 9
  end
  object edtCpf: TEdit
    Left = 112
    Top = 6
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 3
  end
  object edtCRM: TEdit
    Left = 112
    Top = 30
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtUF: TEdit
    Left = 112
    Top = 54
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 2
    TabOrder = 5
  end
  object edtDataReceita: TJvDateEdit
    Left = 112
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edtUsuario: TEdit
    Left = 368
    Top = 30
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object edtSenha: TEdit
    Left = 368
    Top = 54
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object edtCNPJ: TEdit
    Left = 368
    Top = 6
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object btnEnviarSolicitacao: TButton
    Left = 496
    Top = 312
    Width = 105
    Height = 89
    Caption = 'Enviar Solicita'#231#227'o'
    TabOrder = 10
    OnClick = btnEnviarSolicitacaoClick
  end
  object edtChave: TEdit
    Left = 111
    Top = 286
    Width = 186
    Height = 21
    MaxLength = 19
    TabOrder = 11
  end
  object edtVendedor: TEdit
    Left = 520
    Top = 30
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 12
  end
  object edtSenhaVendedor: TEdit
    Left = 520
    Top = 54
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 13
  end
  object Memo2: TMemo
    Left = 296
    Top = 136
    Width = 297
    Height = 121
    Color = clYellow
    Lines.Strings = (
      'OBSERVACAO:'
      ''
      'Quando erros estranhos de violation estiverem acontecendo'
      'verifique se formulario esta sendo criado junto com o projeto'
      'se sim -> entao tire'
      'em Project -> Options -> Auto Create Forms')
    TabOrder = 14
    Visible = False
  end
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 56
    Top = 384
  end
  object DataSource1: TDataSource
    DataSet = frmPrincipalCF.cdsItens
    OnStateChange = DataSource1StateChange
    Left = 56
    Top = 136
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 56
    Top = 192
  end
end
