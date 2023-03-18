object frmxloc_Funcionario: Tfrmxloc_Funcionario
  Left = 349
  Top = 203
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FUNCION'#193'RIOS | Localizar'
  ClientHeight = 352
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 44
    Width = 708
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 44
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 648
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 670
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 658
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'CPF')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TXDBGrid
    Left = 0
    Top = 47
    Width = 708
    Height = 305
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    GridStyle.VisualStyle = vsXPStyle
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME_RS'
        Title.Caption = 'NOME'
        Visible = True
        Width = 230
      end
      item
        Expanded = False
        FieldName = 'FUNC_SALARIO'
        Title.Caption = 'SALARIO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FUNC_CARGO'
        Title.Caption = 'CARGO'
        Visible = True
        Width = 170
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
        Width = 220
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
        Width = 200
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
        Width = 87
      end
      item
        Expanded = False
        FieldName = 'TELEFONE2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NASCIMENTO_IA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FOTO_LOGOMARCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RG_IE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FAX'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ESTADOCIVIL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RESIDENCIA_SEDE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PAI'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'MAE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CPF_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NASCIMENTO_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TRABALHO_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PROFISSAO_CONJUGE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'LOCALTRABALHO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PROFISSAO_RA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_TRABALHO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FAX_TRABALHO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'OBSERVACOES_TRABALHO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BANCO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME_AGENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NUMERO_AGENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CONTA_CORRENTE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME1_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NOME2_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TELEFONE1_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TELEFONE2_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BANCO_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'APELIDO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'REMUNERACAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COD_EMPRESA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ORGAO_EMISSOR'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO_RG'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NATURALIDADE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NATURALIDADE_UF'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_ALTERACAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COD_ZONA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PONTO_REFERENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ATIVO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CONTATO1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CONTATO2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CX_POSTAL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_ALUGUEL'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TEMPO_RESIDENCIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DEPENDENTES'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENDERECO_REFERENCIA1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENDERECO_REFERENCIA2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_ADMISSAO_REFERENCIA1'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_ADMISSAO_REFERENCIA2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RG_CONJUGUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'RENDA_CONJUGUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_ADMINSSAO_CONJUGUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FONE_CONJUGUE'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ENDERECO_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CEP_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COD_CIDADE_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CX_POSTAL_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'COD_BAIRRO_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CIDADE_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BAIRRO_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'UF_COBRANCA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CONTA_BANCARIA'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'CTPS'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FOTO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FUNC_DATA_ADMISSAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FUNC_SITUACAO'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'FUNC_DEMISSAO'
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = DMMovimentacao.query
    Left = 504
    Top = 240
  end
end
