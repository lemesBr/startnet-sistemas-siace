unit EnviarAnvisa;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, MDOCustomDataSet, MDODatabase, xmldom, XMLIntf, MDOQuery, msxmldom,
  XMLDoc, xercesxmldom, oxmldom, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, InvokeRegistry, Rio, SOAPHTTPClient;

type
  TfEnviarAnvisa = class(TForm)
    BitBtn1: TBitBtn;
    qryEmpresa: TMDOQuery;
    Transacao: TMDOTransaction;
    qryEntradas: TMDOQuery;
    qryVendas: TMDOQuery;
    qryTransferencia: TMDOQuery;
    qryPerdas: TMDOQuery;
    XML: TXMLDocument;
    wwDBGrid1: TwwDBGrid;
    dsqryControleEnvio: TDataSource;
    Data1: TwwDBDateTimePicker;
    Data2: TwwDBDateTimePicker;
    Label1: TLabel;
    dseControle: TMDODataSet;
    bSair: TBitBtn;
    Memo1: TMemo;
    HTTPRIO1: THTTPRIO;
    dseControleDATA_ENVIO: TDateField;
    dseControleDATA_INICIAL: TDateField;
    dseControleDATA_FINAL: TDateField;
    dseControlePERIODO: TMDOStringField;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure bSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEnviarAnvisa: TfEnviarAnvisa;

implementation
uses Menu, Funcoes, EnviarArquivo, MD5;

{$R *.DFM}

procedure TfEnviarAnvisa.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfEnviarAnvisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryEmpresa.Active := False;
  dseControle.Active := False;

  Transacao.Commit;
  Action := CaFree;
end;

procedure TfEnviarAnvisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfEnviarAnvisa.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir
  qryEmpresa.Active := True;
  dseControle.Active := True;
  dseControle.Last;

  if dseControle.RecordCount > 0 then
    Data1.Date := dseControle.fieldByName('DATA_FINAL').AsDateTime + 1
  else
    Data1.Date := Date -1;
  Data2.Date := Date - 1;
end;

procedure TfEnviarAnvisa.BitBtn1Click(Sender: TObject);
var
  NodeCorpo, NodeMedicamentos, Node1 : IXMLNode;
  wbSNGPC : sngpcSoap;
  HashIdentificacao, Retorno : String;

begin
  Memo1.Lines.add('Gerando Arquivo, aguarde...');
  with XML do
  begin
    Active   := True;
    Version  := '1.0';
    Encoding := 'ISO-8859-1';
    AddChild('mensagemSNGPC','urn:sngpc-schema');
    DocumentElement.AddChild('cabecalho');

    DocumentElement.ChildNodes.Last.AddChild('cnpjEmissor').NodeValue     := LimpaStr(qryEmpresa.FieldByName('CNPJ').AsString);
    DocumentElement.ChildNodes.Last.AddChild ('cpfTransmissor').NodeValue := LimpaStr(qryEmpresa.FieldByName('CPF_RESP_TECNICO').AsString);
    DocumentElement.ChildNodes.Last.AddChild('dataInicio').NodeValue      := FormatDateTime('yyyy-mm-dd',Data1.DateTime);
    DocumentElement.ChildNodes.Last.AddChild('dataFim').NodeValue         := FormatDateTime('yyyy-mm-dd',Data2.DateTime);

    NodeCorpo        := DocumentElement.AddChild('corpo');
    NodeMedicamentos := NodeCorpo.AddChild('medicamentos');

    // Entrada de medicamentos
    qryEntradas.Active := False;
    qryEntradas.ParamByName('DATA1').AsDateTime := Data1.DateTime;
    qryEntradas.ParamByName('DATA2').AsDateTime := Data2.DateTime;
    qryEntradas.Active := True;
    qryEntradas.First;

    While not qryEntradas.Eof do
    begin
      Node1:=NodeMedicamentos.AddChild('entradaMedicamentos');

      Node1.ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['numeroNotaFiscal'].NodeValue := qryEntradas.FieldByName('NOTA_FISCAL').AsString;
      Node1.ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue := '1';
      Node1.ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['dataNotaFiscal'].NodeValue := FormatDateTime('yyyy-mm-dd',qryEntradas.FieldByName('EMISSAO_NF').AsDateTime);
      Node1.ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['cnpjOrigem'].NodeValue  := LimpaStr(qryEntradas.FieldByName('CNPJ_FORNECEDOR').AsString);
      Node1.ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['cnpjDestino'].NodeValue := LimpaStr(qryEmpresa.FieldByName('CNPJ').AsString);

      Node1.ChildNodes['medicamentoEntrada'].ChildNodes['registroMSMedicamento'].NodeValue := LimpaStr(qryEntradas.FieldByName('NRM').AsString);
      Node1.ChildNodes['medicamentoEntrada'].ChildNodes['numeroLoteMedicamento'].NodeValue := qryEntradas.FieldByName('LOTE').AsString;
      Node1.ChildNodes['medicamentoEntrada'].ChildNodes['quantidadeMedicamento'].NodeValue := qryEntradas.FieldByName('QUANTIDADE').AsString;

      Node1.ChildNodes['dataRecebimentoMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd',qryEntradas.FieldByName('RECEBIDO').AsDateTime);

      qryEntradas.Next;
    end;

    // Saidas de Medicamentos
    qryVendas.Active := False;
    qryVendas.ParamByName('DATA1').AsDateTime := Data1.DateTime;
    qryVendas.ParamByName('DATA2').AsDateTime := Data2.DateTime;
    qryVendas.Active := True;
    qryVendas.First;
    while not qryVendas.Eof do
    begin
      Node1 := NodeMedicamentos.AddChild('saidaMedicamentoVendaAoConsumidor');

      Node1.ChildNodes['tipoReceituarioMedicamento'].NodeValue   := qryVendas.FieldByName('TIPO_RECEITUARIO').AsString;
      Node1.ChildNodes['numeroNotificacaoMedicamento'].NodeValue := qryVendas.FieldByName('NRO_NOTIFICACAO').AsString;
      Node1.ChildNodes['dataPrescricaoMedicamento'].NodeValue    := FormatDateTime('yyyy-mm-dd',qryVendas.FieldByName('DATA_PRESCRICAO').AsDateTime);

      Node1.ChildNodes['prescritorMedicamento'].ChildNodes['nomePrescritor'].NodeValue       := qryVendas.FieldByName('NOME_PRESCRITOR').AsString;
      Node1.ChildNodes['prescritorMedicamento'].ChildNodes['numeroRegistroProfissional'].NodeValue := LimpaStr(qryVendas.FieldByName('NRO_REG_PROFISSIONAL').AsString);
      Node1.ChildNodes['prescritorMedicamento'].ChildNodes['conselhoProfissional'].NodeValue := qryVendas.FieldByName('CONSELHO_PROFISSIONAL').AsString;
      Node1.ChildNodes['prescritorMedicamento'].ChildNodes['UFConselho'].NodeValue           := qryVendas.FieldByName('UF_CONSELHO').AsString;

      Node1.ChildNodes['usoMedicamento'].NodeValue := '1';

      Node1.ChildNodes['compradorMedicamento'].ChildNodes['nomeComprador'].NodeValue := qryVendas.FieldByName('NOME_COMPRADOR').AsString;
      Node1.ChildNodes['compradorMedicamento'].ChildNodes['tipoDocumento'].NodeValue := qryVendas.FieldByName('TIPO_DOC_COMPRADOR').AsString;
      Node1.ChildNodes['compradorMedicamento'].ChildNodes['numeroDocumento'].NodeValue := LimpaStr(qryVendas.FieldByName('NRO_DOC_COMPRADOR').AsString);
      Node1.ChildNodes['compradorMedicamento'].ChildNodes['orgaoExpedidor'].NodeValue  := qryVendas.FieldByName('ORGAO_EXP_DOCTO').AsString;
      Node1.ChildNodes['compradorMedicamento'].ChildNodes['UFEmissaoDocumento'].NodeValue := qryVendas.FieldByName('UF_EMISSAO_DOCTO').AsString;

      Node1.ChildNodes['medicamentoVenda'].ChildNodes['registroMSMedicamento'].NodeValue := LimpaStr(qryVendas.FieldByName('NRM').AsString);
      Node1.ChildNodes['medicamentoVenda'].ChildNodes['numeroLoteMedicamento'].NodeValue := qryVendas.FieldByName('LOTE').AsString;
      Node1.ChildNodes['medicamentoVenda'].ChildNodes['quantidadeMedicamento'].NodeValue := qryVendas.FieldByName('QUANTIDADE').AsString;

      Node1.ChildNodes['dataVendaMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd',qryVendas.FieldByName('DATA_VENDA').AsDateTime);
      qryVendas.Next;
    end;

    // Saidas por Transferencia
    qryTransferencia.Active := False;
    qryTransferencia.ParamByName('DATA1').AsDateTime := Data1.DateTime;
    qryTransferencia.ParamByName('DATA2').AsDateTime := Data2.DateTime;
    qryTransferencia.Active := True;
    qryTransferencia.First;
    while not qryTransferencia.Eof do
    begin
      Node1 := NodeMedicamentos.AddChild('saidaMedicamentoTransferencia');
      
      Node1.ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['numeroNotaFiscal'].NodeValue := qryTransferencia.FieldByName('NOTA_FISCAL').AsString;
      Node1.ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue := '2';
      Node1.ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['dataNotaFiscal'].NodeValue := FormatDateTime('yyyy-mm-dd',qryTransferencia.FieldByName('DATA_EMISSAO').AsDateTime);
      Node1.ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['cnpjOrigem'].NodeValue  := qryTransferencia.FieldByName('CNPJ_ORIGEM').AsString;
      Node1.ChildNodes['notaFiscalTransferenciaMedicamento'].ChildNodes['cnpjDestino'].NodeValue := qryTransferencia.FieldByName('CNPJ_DESTINO').AsString;

      Node1.ChildNodes['medicamentoTransferencia'].ChildNodes['registroMSMedicamento'].NodeValue := LimpaStr(qryTransferencia.FieldByName('NRM').AsString);      Node1.ChildNodes['medicamentoTransferencia'].ChildNodes['numeroLoteMedicamento'].NodeValue := qryTransferencia.FieldByName('LOTE').AsString;
      Node1.ChildNodes['medicamentoTransferencia'].ChildNodes['quantidadeMedicamento'].NodeValue := qryTransferencia.FieldByName('QUANTIDADE').AsString;

      Node1.ChildNodes['dataTransferenciaMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd',qryTransferencia.FieldByName('DATA_TRANSFERENCIA').AsDateTime);
      qryTransferencia.Next;

    end;

    // Perdas
    qryPerdas.Active := False;
    qryPerdas.ParamByName('DATA1').AsDateTime := Data1.DateTime;
    qryPerdas.ParamByName('DATA2').AsDateTime := Data2.DateTime;
    qryPerdas.Active := True;
    qryPerdas.First;
    while not qryPerdas.Eof do
    begin
      Node1 := NodeMedicamentos.AddChild('saidaMedicamentoPerda');

      Node1.ChildNodes['motivoPerdaMedicamento'].NodeValue := qryPerdas.FieldByName('MOTIVO_PERDA').AsString;

      Node1.ChildNodes['medicamentoPerda'].ChildNodes['registroMSMedicamento'].NodeValue := LimpaStr(qryPerdas.FieldByName('NRM').AsString);
      Node1.ChildNodes['medicamentoPerda'].ChildNodes['numeroLoteMedicamento'].NodeValue := qryPerdas.FieldByName('LOTE').AsString;
      Node1.ChildNodes['medicamentoPerda'].ChildNodes['quantidadeMedicamento'].NodeValue := qryPerdas.FieldByName('QUANTIDADE').AsString;

      Node1.ChildNodes['dataPerdaMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd',qryPerdas.FieldByName('DATA_PERDA').AsDateTime);
      qryPerdas.Next;

    end;

	  // Insumos para farmacias de manipulação
    NodeMedicamentos := NodeCorpo.AddChild('insumos');
    {Node1 := NodeMedicamentos.AddChild('entradaInsumos');

    Node1.ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['numeroNotaFiscal'].NodeValue := '';
    Node1.ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue := '';
    Node1.ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['dataNotaFiscal'].NodeValue := '';
    Node1.ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['cnpjOrigem'].NodeValue := '';
    Node1.ChildNodes['notaFiscalEntradaInsumo'].ChildNodes['cnpjDestino'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['codigoInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['numeroLoteInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoEntrada'].ChildNodes['insumoEntrada'].ChildNodes['insumoCNPJFornecedor'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoEntrada'].ChildNodes['quantidadeInsumoEntrada'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoEntrada'].ChildNodes['tipoUnidadeEntrada'].NodeValue := '';

    Node1.ChildNodes['dataRecebimentoInsumo'].NodeValue := '';


    Node1 := NodeMedicamentos.AddChild('saidaInsumoVendaAoConsumidor');

    Node1.ChildNodes['tipoReceituarioInsumo'].NodeValue := '';
    Node1.ChildNodes['numeroNotificacaoInsumo'].NodeValue := '';
    Node1.ChildNodes['dataPrescricaoInsumo'].NodeValue := '';

    Node1.ChildNodes['prescritorInsumo'].ChildNodes['nomePrescritor'].NodeValue := '';
    Node1.ChildNodes['prescritorInsumo'].ChildNodes['numeroRegistroProfissional'].NodeValue := '';
    Node1.ChildNodes['prescritorInsumo'].ChildNodes['conselhoProfissional'].NodeValue := '';
    Node1.ChildNodes['prescritorInsumo'].ChildNodes['UFConselho'].NodeValue := '';

    Node1.ChildNodes['usoInsumo'].NodeValue := '';

    Node1.ChildNodes['compradorInsumo'].ChildNodes['nomeComprador'].NodeValue := '';
    Node1.ChildNodes['compradorInsumo'].ChildNodes['tipoDocumento'].NodeValue := '';
    Node1.ChildNodes['compradorInsumo'].ChildNodes['numeroDocumento'].NodeValue := '';
    Node1.ChildNodes['compradorInsumo'].ChildNodes['orgaoExpedidor'].NodeValue := '';
    Node1.ChildNodes['compradorInsumo'].ChildNodes['UFEmissaoDocumento'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['codigoInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['numeroLoteInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['insumoVendaAoConsumidor'].ChildNodes['insumoCNPJFornecedor'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['quantidadeDeInsumoPorUnidadeFarmacotecnica'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['unidadeDeMedidaDoInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['unidadeFarmacotecnica'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoVendaAoConsumidor'].ChildNodes['quantidadeDeUnidadesFarmacotecnicas'].NodeValue := '';

    Node1.ChildNodes['dataVendaInsumo'].NodeValue := '';




    Node1 := NodeMedicamentos.AddChild('saidaInsumoTransferencia');

    Node1.ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['numeroNotaFiscal'].NodeValue := '';
    Node1.ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue := '';
    Node1.ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['dataNotaFiscal'].NodeValue := '';
    Node1.ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['cnpjOrigem'].NodeValue := '';
    Node1.ChildNodes['notaFiscalTransferenciaInsumo'].ChildNodes['cnpjDestino'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['codigoInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['numeroLoteInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoTransferencia'].ChildNodes['insumoTransferencia'].ChildNodes['insumoCNPJFornecedor'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoTransferencia'].ChildNodes['quantidadeInsumoTransferencia'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoTransferencia'].ChildNodes['tipoUnidadeTransferencia'].NodeValue := '';

    Node1.ChildNodes['dataTransferenciaInsumo'].NodeValue := '';


    Node1 := NodeMedicamentos.AddChild('saidaInsumoPerda');

    Node1.ChildNodes['motivoPerdaInsumo'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['codigoInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['numeroLoteInsumo'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoPerda'].ChildNodes['insumoPerda'].ChildNodes['insumoCNPJFornecedor'].NodeValue := '';

    Node1.ChildNodes['substanciaInsumoPerda'].ChildNodes['quantidadeInsumoPerda'].NodeValue := '';
    Node1.ChildNodes['substanciaInsumoPerda'].ChildNodes['tipoUnidadePerda'].NodeValue := '';

    Node1.ChildNodes['dataPerdaInsumo'].NodeValue := '';
    Node1.ChildNodes['cnpjFornecedorInsumo'].NodeValue := '';}
    
    // Salvar o arquivos na pasta arquivos_enviados
    if not DirectoryExists('arquivos_enviados') then
      CreateDir('arquivos_enviados');
      
    SaveToFile(Pchar('arquivos_enviados\sngpc_'+FormatDateTime('ddmmyy',Data1.DateTime)+'a'+FormatDateTime('ddmmyy',Data2.DateTime)+'.xml'));
    Memo1.Lines.add('Arquivo Gerado e salvo na pasta - arquivos_enviados\sngpc_'+FormatDateTime('ddmmyy',Data1.DateTime)+'a'+FormatDateTime('ddmmyy',Data2.DateTime)+'.xml');
    Memo1.Lines.add('');
  end;

  //try
    Retorno := '';
    HashIdentificacao := Pchar('arquivos_enviados\sngpc_'+FormatDateTime('ddmmyy',Data1.DateTime)+'a'+FormatDateTime('ddmmyy',Data2.DateTime)+'.xml');

    wbSNGPC := HTTPRIO1 AS sngpcsoap;
    XML.LoadFromFile(Pchar('arquivos_enviados\sngpc_'+FormatDateTime('ddmmyy',Data1.DateTime)+'a'+FormatDateTime('ddmmyy',Data2.DateTime)+'.xml'));

    Memo1.Lines.add('Usuário e Senha: '+wbSNGPC.ValidarUsuario(qryEmpresa.FieldByName('E_MAIL_TRANSMISSAO').AsString, qryEmpresa.FieldByName('SENHA_TRANSMISSAO').AsString));

    HashIdentificacao:= MD5Print(MD5String(XML.XML.text));

    Memo1.Lines.add('Hash do arquivo: '+LowerCase(HashIdentificacao));

    Retorno := wbSNGPC.EnviaArquivoSNGPC(Trim(qryEmpresa.FieldByName('E_MAIL_TRANSMISSAO').AsString),
                                              Trim(qryEmpresa.FieldByName('SENHA_TRANSMISSAO').AsString),
                                              XML.XML.text,
                                              HashIdentificacao);

    Memo1.Lines.add('');
    Memo1.Lines.add(Retorno);
    Memo1.Lines.add('');
    
    if Copy(Retorno,1,28) = 'Arquivo recebido com sucesso' then
      Memo1.Lines.add('Arquivo enviado com sucesso.')
    else
    begin
      Memo1.Lines.add('ATENÇÃO!! Arquivo NÃO foi enviado, verifique.');
      ShowMessage('ATENÇÃO!! Arquivo NÃO foi enviado, verifique.');
    end;

  //except
  //  messagedlg('ATENÇÃO!! Problema ao conectar com o serviço Anvisa',mtinformation,[mbok],0);
  //  XML.Active := False;
  //  XML.Free;
  //  exit;
  //end;

  // Gravar que foi enviado
  if Copy(Retorno,1,28) = 'Arquivo recebido com sucesso' then
  begin
    with dseControle do
    begin
      Append;
      FieldByName('DATA_ENVIO').AsDateTime := Date;
      FieldByName('DATA_INICIAL').AsDateTime := Data1.DateTime;
      FieldByName('DATA_FINAL').AsDateTime := Data2.DateTime;
      FieldByName('PERIODO').AsString := 'Período enviado: '+Data1.Text+' a '+Data2.Text;
      Post;
    end;
  end;
  
  XML.Active := False;
  XML.Free;
  
  //Close;
end;

procedure TfEnviarAnvisa.Data1Exit(Sender: TObject);
begin
  if Data1.DateTime = 0 then
  begin
    ShowMessage('ATENÇÃO!! Data inicial invalida.');
    Data1.SetFocus;
  end;

  {if Data1.DateTime <= dseControle.FieldByName('DATA_FINAL').AsDateTime then
  begin
    ShowMessage('ATENÇÃO!! esse período já foi enviado, verifique.');
    Data1.SetFocus;
  end;

  if Date <= dseControle.FieldByName('DATA_ENVIO').AsDateTime then
  begin
    ShowMessage('ATENÇÃO!! Já foi realizado um envio nesse dia ou anterior a ele.');
    Data1.SetFocus;
    Close;
  end;  }
  
end;

procedure TfEnviarAnvisa.Data2Exit(Sender: TObject);
begin
  if (Data2.DateTime < Data1.DateTime) then
  begin
    ShowMessage('ATENÇÃO!! Data final deve ser maior ou igual a inicial.');
    Data2.SetFocus;
  end;
end;

procedure TfEnviarAnvisa.bSairClick(Sender: TObject);
begin
  Close;
end;

end.
