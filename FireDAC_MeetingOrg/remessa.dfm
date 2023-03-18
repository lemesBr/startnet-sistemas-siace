object FormRemessa: TFormRemessa
  Left = 593
  Top = 162
  Width = 544
  Height = 519
  Caption = 'Remessa Banc'#225'ria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBoleto: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 145
    Align = alTop
    TabOrder = 0
    DesignSize = (
      536
      145)
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 81
      Height = 13
      Caption = 'C'#243'digo do banco'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Nosso n'#250'mero'
    end
    object Label3: TLabel
      Left = 104
      Top = 16
      Width = 76
      Height = 13
      Caption = 'Nome do banco'
    end
    object Label4: TLabel
      Left = 232
      Top = 56
      Width = 29
      Height = 13
      Caption = 'D'#237'gito'
    end
    object Label5: TLabel
      Left = 216
      Top = 64
      Width = 8
      Height = 32
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object butVisualizar: TButton
      Left = 8
      Top = 104
      Width = 75
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 0
      OnClick = butVisualizarClick
    end
    object butImprimir: TButton
      Left = 96
      Top = 104
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = butImprimirClick
    end
    object txtCodigoBanco: TEdit
      Left = 8
      Top = 32
      Width = 81
      Height = 21
      TabOrder = 2
      OnExit = txtCodigoBancoExit
    end
    object txtNossoNumero: TEdit
      Left = 8
      Top = 72
      Width = 201
      Height = 21
      TabOrder = 3
      OnExit = txtNossoNumeroExit
    end
    object txtNomeBanco: TEdit
      Left = 104
      Top = 32
      Width = 425
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object txtDigitoNossoNumero: TEdit
      Left = 232
      Top = 72
      Width = 73
      Height = 21
      TabOrder = 5
    end
  end
  object pnlRemessaRetorno: TPanel
    Left = 0
    Top = 145
    Width = 536
    Height = 184
    Align = alTop
    TabOrder = 1
    DesignSize = (
      536
      184)
    object lblNomeArquivoRemessa: TLabel
      Left = 8
      Top = 72
      Width = 123
      Height = 13
      Caption = 'Nome do arquivo remessa'
    end
    object lblNomeArquivoRetorno: TLabel
      Left = 8
      Top = 110
      Width = 117
      Height = 13
      Caption = 'Nome do arquivo retorno'
    end
    object txtNomeArquivoRemessa: TEdit
      Left = 8
      Top = 88
      Width = 433
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnExit = txtNossoNumeroExit
    end
    object butProcurarRemessa: TButton
      Left = 448
      Top = 88
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Procurar'
      TabOrder = 1
      OnClick = butProcurarRemessaClick
    end
    object txtNomeArquivoRetorno: TEdit
      Left = 8
      Top = 126
      Width = 433
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      OnExit = txtNossoNumeroExit
    end
    object butProcurarRetorno: TButton
      Left = 448
      Top = 122
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Procurar'
      TabOrder = 3
      OnClick = butProcurarRetornoClick
    end
    object butGerarRemessa: TButton
      Left = 8
      Top = 152
      Width = 75
      Height = 25
      Caption = '&Remessa'
      TabOrder = 4
      OnClick = butGerarRemessaClick
    end
    object butLerRetorno: TButton
      Left = 88
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Re&torno'
      TabOrder = 5
      OnClick = butLerRetornoClick
    end
    object rdgLayoutArquivoRemessa: TRadioGroup
      Left = 8
      Top = 16
      Width = 521
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      Caption = 
        'Layout do arquivo remessa (ser'#225' ignorado se o banco oferecer ape' +
        'nas uma op'#231#227'o)'
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'CNAB240'
        'CNAB400'
        'Outro')
      TabOrder = 6
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 329
    Width = 536
    Height = 156
    Align = alClient
    Caption = 'Relat'#243'rio do arquivo retorno'
    TabOrder = 2
    object txtRelatorioRetorno: TMemo
      Left = 2
      Top = 15
      Width = 532
      Height = 139
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object gbTitulo1: TgbTitulo
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaJuridica
    Cedente.NumeroCPFCGC = '67776116653'
    Cedente.Nome = 'Genilton Barbosa'
    Cedente.Endereco.Rua = 'Rua Alagoas'
    Cedente.Endereco.Numero = '242'
    Cedente.Endereco.Complemento = 'apto 01'
    Cedente.Endereco.Bairro = 'Sagrada Fam'#237'lia'
    Cedente.Endereco.Cidade = 'Vi'#231'osa'
    Cedente.Endereco.Estado = 'MG'
    Cedente.Endereco.CEP = '36570000'
    Cedente.Endereco.EMail = 'genilton@hotmail.com'
    Cedente.ContaBancaria.Banco.Codigo = '341'
    Cedente.ContaBancaria.CodigoAgencia = '3066'
    Cedente.ContaBancaria.DigitoAgencia = '8'
    Cedente.ContaBancaria.NumeroConta = '17837'
    Cedente.ContaBancaria.DigitoConta = '6'
    Cedente.ContaBancaria.NomeCliente = 'Genilton Barbosa'
    Cedente.CodigoCedente = '17837'
    Cedente.DigitoCodigoCedente = '7'
    Sacado.TipoInscricao = tiPessoaFisica
    Sacado.NumeroCPFCGC = '12345678901'
    Sacado.Nome = 'Jo'#227'o da Silva'
    Sacado.Endereco.Rua = 'Av. P. H. Rolfs'
    Sacado.Endereco.Numero = '324'
    Sacado.Endereco.Complemento = 'apto 220'
    Sacado.Endereco.Bairro = 'Centro'
    Sacado.Endereco.Cidade = 'Vi'#231'osa'
    Sacado.Endereco.Estado = 'MG'
    Sacado.Endereco.CEP = '36570000'
    Sacado.Endereco.EMail = 'joao@silva.com.br'
    SeuNumero = '9876'
    NossoNumero = '0911801519204'
    NumeroDocumento = '4567'
    Carteira = '175'
    AceiteDocumento = FDNao
    EspecieDocumento = edDuplicataMercantil
    DataProcessamento = 37388.000000000000000000
    DataDocumento = 37386.000000000000000000
    DataVencimento = 37396.000000000000000000
    DataAbatimento = 37391.000000000000000000
    DataBaixa = 37427.000000000000000000
    ValorDocumento = 100.000000000000000000
    ValorMoraJuros = 0.350000000000000000
    ValorOutrasDespesas = 13.000000000000000000
    Instrucoes.Strings = (
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO'
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO'
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO'
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO'
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO'
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO'
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO'
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO'
      
        'O QUE '#201' IMPRESSO AQUI, DEVE SER DIGITADO NA PROPIEDADE CEDENTE.I' +
        'NSTRUCOES DO COMPONENTE GBTITULO')
    EmissaoBoleto = ebClienteEmite
    Email.ServidorPorta = 0
    Left = 344
    Top = 296
  end
  object gbCobranca1: TgbCobranca
    NumeroArquivo = 1
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRemessa
    Left = 432
    Top = 296
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Remessa.txt'
    Title = 'Gerar arquivo remessa em'
    Left = 496
    Top = 296
  end
  object OpenDialog1: TOpenDialog
    Title = 'Ler arquivo retorno'
    Left = 256
    Top = 200
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 320
    Top = 200
  end
end
