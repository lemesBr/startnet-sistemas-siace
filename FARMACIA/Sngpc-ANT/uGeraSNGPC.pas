unit uGeraSNGPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, InvokeRegistry, Rio, SOAPHTTPClient, xmldom, XMLIntf,
  msxmldom, XMLDoc, oxmldom, Mask, JvExMask, JvToolEdit, DBXpress, FMTBcd,
  DB, DBClient, Provider, SqlExpr, IniFiles;

type
  TfrmSNGPC = class(TForm)
    Memo1: TMemo;
    HTTPRIO1: THTTPRIO;
    Button1: TButton;
    cbHomologacao: TCheckBox;
    Button2: TButton;
    edtDataInicial: TJvDateEdit;
    edtDataFinal: TJvDateEdit;
    edtCPF: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SQLConnection1: TSQLConnection;
    QryItens: TSQLQuery;
    QryItensCOD_MOVIMENTO: TIntegerField;
    QryItensCOD_ITEM_MOVIMENTO: TIntegerField;
    QryItensCOD_FISCAL: TIntegerField;
    QryItensCOD_PRODUTO: TIntegerField;
    QryItensCOD_UNIDADE: TIntegerField;
    QryItensCOD_GRADE: TIntegerField;
    QryItensDES_PRODUTO: TStringField;
    QryItensCOMPLEMENTO: TStringField;
    QryItensQUANTIDADE: TFloatField;
    QryItensDOSAGEM: TIntegerField;
    QryItensETIQUETAS: TIntegerField;
    QryItensPESO: TFloatField;
    QryItensLOTE: TStringField;
    QryItensVALIDADE: TDateField;
    QryItensAPROVEITAMENTO: TFloatField;
    QryItensVALOR_UNITARIO: TFloatField;
    QryItensVALOR_TOTAL: TFloatField;
    QryItensBASE_ICMS: TFloatField;
    QryItensALIQUOTA_ICMS: TFloatField;
    QryItensREDUCAO_ICMS: TFloatField;
    QryItensVALOR_ICMS: TFloatField;
    QryItensBASE_IPI: TFloatField;
    QryItensALIQUOTA_IPI: TFloatField;
    QryItensREDUCAO_IPI: TFloatField;
    QryItensVALOR_IPI: TFloatField;
    QryItensTT_ICMS: TStringField;
    QryItensTT_IPI: TStringField;
    QryItensREGISTROMS: TStringField;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    cdsItensCOD_MOVIMENTO: TIntegerField;
    cdsItensCOD_ITEM_MOVIMENTO: TIntegerField;
    cdsItensCOD_FISCAL: TIntegerField;
    cdsItensCOD_PRODUTO: TIntegerField;
    cdsItensCOD_UNIDADE: TIntegerField;
    cdsItensCOD_GRADE: TIntegerField;
    cdsItensDES_PRODUTO: TStringField;
    cdsItensCOMPLEMENTO: TStringField;
    cdsItensQUANTIDADE: TFloatField;
    cdsItensDOSAGEM: TIntegerField;
    cdsItensETIQUETAS: TIntegerField;
    cdsItensPESO: TFloatField;
    cdsItensLOTE: TStringField;
    cdsItensVALIDADE: TDateField;
    cdsItensAPROVEITAMENTO: TFloatField;
    cdsItensVALOR_UNITARIO: TFloatField;
    cdsItensVALOR_TOTAL: TFloatField;
    cdsItensBASE_ICMS: TFloatField;
    cdsItensALIQUOTA_ICMS: TFloatField;
    cdsItensREDUCAO_ICMS: TFloatField;
    cdsItensVALOR_ICMS: TFloatField;
    cdsItensBASE_IPI: TFloatField;
    cdsItensALIQUOTA_IPI: TFloatField;
    cdsItensREDUCAO_IPI: TFloatField;
    cdsItensVALOR_IPI: TFloatField;
    cdsItensTT_ICMS: TStringField;
    cdsItensTT_IPI: TStringField;
    cdsItensREGISTROMS: TStringField;
    edtCNPJ: TEdit;
    Label6: TLabel;
    QryEntrada: TSQLQuery;
    dspEntrada: TDataSetProvider;
    cdsEntrada: TClientDataSet;
    QryEntradaCOD_MOVIMENTO: TIntegerField;
    QryEntradaDT_DOCUMENTO: TSQLTimeStampField;
    QryEntradaDT_LANCAMENTO: TSQLTimeStampField;
    QryEntradaNUMERO: TIntegerField;
    QryEntradaCNPJ_DESTINO: TStringField;
    QryEntradaCNPJ_ORIGEM: TStringField;
    cdsEntradaCOD_MOVIMENTO: TIntegerField;
    cdsEntradaDT_DOCUMENTO: TSQLTimeStampField;
    cdsEntradaDT_LANCAMENTO: TSQLTimeStampField;
    cdsEntradaNUMERO: TIntegerField;
    cdsEntradaCNPJ_DESTINO: TStringField;
    cdsEntradaCNPJ_ORIGEM: TStringField;
    Button3: TButton;
    QrySaida: TSQLQuery;
    dspSaida: TDataSetProvider;
    cdsSaida: TClientDataSet;
    QrySaidaCOD_MOVIMENTO: TIntegerField;
    QrySaidaDT_DOCUMENTO: TSQLTimeStampField;
    QrySaidaDT_LANCAMENTO: TSQLTimeStampField;
    QrySaidaNUMERO: TIntegerField;
    QrySaidaTIPO_RECEITUARIO: TIntegerField;
    QrySaidaNUMERO_RECEITUARIO: TIntegerField;
    QrySaidaDT_RECEITUARIO: TDateField;
    QrySaidaPROFISSIONAL: TStringField;
    QrySaidaNUMERO_REGISTRO: TStringField;
    QrySaidaCONSELHO: TStringField;
    QrySaidaUF_CONSELHO: TStringField;
    QrySaidaUSO_MEDICAMENTO: TIntegerField;
    QrySaidaCOMPRADOR: TStringField;
    QrySaidaTIPO_DOCUMENTO: TIntegerField;
    QrySaidaNUMERO_DOCUMENTO: TStringField;
    QrySaidaORGAO_EXPEDIDOR: TStringField;
    QrySaidaUF_ORGAO_EXPEDIDOR: TStringField;
    cdsSaidaCOD_MOVIMENTO: TIntegerField;
    cdsSaidaDT_DOCUMENTO: TSQLTimeStampField;
    cdsSaidaDT_LANCAMENTO: TSQLTimeStampField;
    cdsSaidaNUMERO: TIntegerField;
    cdsSaidaTIPO_RECEITUARIO: TIntegerField;
    cdsSaidaNUMERO_RECEITUARIO: TIntegerField;
    cdsSaidaDT_RECEITUARIO: TDateField;
    cdsSaidaPROFISSIONAL: TStringField;
    cdsSaidaNUMERO_REGISTRO: TStringField;
    cdsSaidaCONSELHO: TStringField;
    cdsSaidaUF_CONSELHO: TStringField;
    cdsSaidaUSO_MEDICAMENTO: TIntegerField;
    cdsSaidaCOMPRADOR: TStringField;
    cdsSaidaTIPO_DOCUMENTO: TIntegerField;
    cdsSaidaNUMERO_DOCUMENTO: TStringField;
    cdsSaidaORGAO_EXPEDIDOR: TStringField;
    cdsSaidaUF_ORGAO_EXPEDIDOR: TStringField;
    QryPerda: TSQLQuery;
    IntegerField1: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    IntegerField6: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    dspPerda: TDataSetProvider;
    cdsPerda: TClientDataSet;
    cdsPerdaCOD_MOVIMENTO: TIntegerField;
    cdsPerdaDT_DOCUMENTO: TSQLTimeStampField;
    cdsPerdaDT_LANCAMENTO: TSQLTimeStampField;
    cdsPerdaNUMERO: TIntegerField;
    cdsPerdaTIPO_RECEITUARIO: TIntegerField;
    cdsPerdaNUMERO_RECEITUARIO: TIntegerField;
    cdsPerdaDT_RECEITUARIO: TDateField;
    cdsPerdaPROFISSIONAL: TStringField;
    cdsPerdaNUMERO_REGISTRO: TStringField;
    cdsPerdaCONSELHO: TStringField;
    cdsPerdaUF_CONSELHO: TStringField;
    cdsPerdaUSO_MEDICAMENTO: TIntegerField;
    cdsPerdaCOMPRADOR: TStringField;
    cdsPerdaTIPO_DOCUMENTO: TIntegerField;
    cdsPerdaNUMERO_DOCUMENTO: TStringField;
    cdsPerdaORGAO_EXPEDIDOR: TStringField;
    cdsPerdaUF_ORGAO_EXPEDIDOR: TStringField;
    QryPerdaMOTIVO_PERDA: TIntegerField;
    cdsPerdaMOTIVO_PERDA: TIntegerField;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSNGPC: TfrmSNGPC;
  Arquivo : String;

implementation

uses sngpc, sngpc200711v1_0, md5;

{$R *.dfm}

procedure TfrmSNGPC.Button1Click(Sender: TObject);
var
  xml : TXMLDocument;
  msg : IXMLMensagemSNGPC;
  ws : sngpcSoap;
  HashIdentificacao : String;
  Retorno : String;
begin
  //
  if (edtDataFinal.Date - edtDataInicial.date) > 6 then
  begin
    showmessage('Periodo Não Pode Ser Superior a 7 Dias');
    abort;
  end;
  //
  if edtCNPJ.Text = '' then
  begin
    ShowMessage('CNPJ do Transmissor Precisa Ser Informado');
    abort;
  end;
  //
  Arquivo := 'SNGPC '+FormatDateTime('yyyy-mm-dd', edtDataInicial.Date)+' a '+FormatDateTime('yyyy-mm-dd', edtDataFinal.Date)+'.XML';
  //
  xml := TXmlDocument.Create(nil);
  xml.Active := False;
  xml.FileName := '';
  //
  msg := GetmensagemSNGPC(xml);
  //
  xml.Version := '1.0';
  xml.Encoding := 'ISO-8859-1';
  //
  //
  // Cabecalho
  //
  //
  msg.Cabecalho.CnpjEmissor    := edtCNPJ.Text; //'07358002000104';
  msg.Cabecalho.CpfTransmissor := edtCPF.Text;  //'54081319049';
  msg.Cabecalho.DataInicio     := FormatDateTime('yyyy-mm-dd', edtDataInicial.Date); //FormatDateTime('yyyy-mm-dd',now);
  msg.Cabecalho.DataFim        := FormatDateTime('yyyy-mm-dd', edtDataFinal.Date);   //FormatDateTime('yyyy-mm-dd',now);
  //
  with msg.Corpo.Medicamentos do
  begin
    //
    // Entradas
    //
    cdsEntrada.Close;
    cdsEntrada.Params.ParamByName('DATA_INICIAL').AsDate := edtDataInicial.Date;
    cdsEntrada.Params.ParamByName('DATA_FINAL').AsDate   := edtDataFinal.Date;
    cdsEntrada.Open;
    //
    if cdsEntrada.RecordCount > 0 then
    begin
      while not cdsEntrada.Eof do
      begin
        //
        cdsItens.Close;
        cdsItens.Params.ParamByName('COD_MOVIMENTO').AsInteger := cdsEntradaCOD_MOVIMENTO.AsInteger;
        cdsItens.Open;
        //
        if cdsItens.RecordCount > 0 then
        begin
          with EntradaMedicamentos.Add do
          begin
            //
            NotaFiscalEntradaMedicamento.NumeroNotaFiscal       := cdsEntradaNUMERO.AsInteger;
            NotaFiscalEntradaMedicamento.TipoOperacaoNotaFiscal := '1';
            NotaFiscalEntradaMedicamento.DataNotaFiscal         := FormatDateTime('yyyy-mm-dd', cdsEntradaDT_DOCUMENTO.AsDateTime); //'2010-03-03';
            NotaFiscalEntradaMedicamento.CnpjOrigem             := cdsEntradaCNPJ_ORIGEM.AsString; // '07358002000104';
            NotaFiscalEntradaMedicamento.CnpjDestino            := cdsEntradaCNPJ_DESTINO.AsString; // '07358002000104';
            //
            while not cdsItens.Eof do
            begin
              with MedicamentoEntrada.Add do
              begin
                RegistroMSMedicamento := cdsItensREGISTROMS.AsString; //'1010000430215';
                NumeroLoteMedicamento := cdsItensLOTE.AsString;  // 'ABU1212';
                QuantidadeMedicamento := cdsItensQUANTIDADE.AsInteger;
              end;
              cdsItens.Next;
            end;
            //
            DataRecebimentoMedicamento := FormatDateTime('yyyy-mm-dd', cdsEntradaDT_LANCAMENTO.AsDateTime); // '2010-03-03';
            //
          end;
        end;
        cdsEntrada.Next;
      end;
    end;
    //
    //
    // Saidas de Venda
    //
    //
    cdsSaida.Close;
    cdsSaida.Params.ParamByName('DATA_INICIAL').AsDate := edtDataInicial.Date;
    cdsSaida.Params.ParamByName('DATA_FINAL').AsDate   := edtDataFinal.Date;
    cdsSaida.Open;
    //
    if cdsSaida.RecordCount > 0 then
    begin
      while not cdsSaida.Eof do
      begin
        //
        cdsItens.Close;
        cdsItens.Params.ParamByName('COD_MOVIMENTO').AsInteger := cdsSaidaCOD_MOVIMENTO.AsInteger;
        cdsItens.Open;
        //
        if cdsItens.RecordCount > 0 then
        begin
          with SaidaMedicamentoVendaAoConsumidor.Add do
          begin
            //
            TipoReceituarioMedicamento   := cdsSaidaTIPO_RECEITUARIO.AsString;   //  '1';  // cfe lista
            NumeroNotificacaoMedicamento := cdsSaidaNUMERO_RECEITUARIO.AsString; // '12345';
            DataPrescricaoMedicamento    := FormatDateTime('yyyy-mm-dd', cdsSaidaDT_RECEITUARIO.AsDateTime); // '2010-03-03';
            //
            PrescritorMedicamento.NomePrescritor             := cdsSaidaPROFISSIONAL.AsString;    // 'Fulano de tal';
            PrescritorMedicamento.NumeroRegistroProfissional := cdsSaidaNUMERO_REGISTRO.AsString; // '12345';
            PrescritorMedicamento.ConselhoProfissional       := cdsSaidaCONSELHO.AsString;        // 'CRM';  // cfe lista
            PrescritorMedicamento.UFConselho                 := cdsSaidaUF_CONSELHO.AsString;     // 'RS';
            //
            UsoMedicamento := cdsSaidaUSO_MEDICAMENTO.AsString; // '1'; // 1-Humano  2-Veterinario
            //
            CompradorMedicamento.NomeComprador      := cdsSaidaCOMPRADOR.AsString;                // 'Jair Carlos Muller';
            CompradorMedicamento.TipoDocumento      := cdsSaidaTIPO_DOCUMENTO.AsString;           // '1';  // cfe lista
            CompradorMedicamento.NumeroDocumento    := cdsSaidaNUMERO_DOCUMENTO.AsString;         // '1231232131';
            CompradorMedicamento.OrgaoExpedidor     := cdsSaidaORGAO_EXPEDIDOR.AsString;          // 'SSP';  // cfe lista
            CompradorMedicamento.UFEmissaoDocumento := cdsSaidaUF_ORGAO_EXPEDIDOR.AsString;       // 'RS';
            //
            while not cdsItens.Eof do
            begin
              with MedicamentoVenda.Add do
              begin
                RegistroMSMedicamento := cdsItensREGISTROMS.AsString; //'1010000430215';
                NumeroLoteMedicamento := cdsItensLOTE.AsString;  // 'ABU1212';
                QuantidadeMedicamento := cdsItensQUANTIDADE.AsInteger;
              end;
              cdsItens.Next;
            end;
            //
            DataVendaMedicamento := FormatDateTime('yyyy-mm-dd', cdsSaidaDT_LANCAMENTO.AsDateTime); //'2010-03-03';
            //
          end;
        end;
        cdsSaida.Next;
      end;
    end;
    //
    //
    // Perdas de Venda
    //
    //
    cdsPerda.Close;
    cdsPerda.Params.ParamByName('DATA_INICIAL').AsDate := edtDataInicial.Date;
    cdsPerda.Params.ParamByName('DATA_FINAL').AsDate   := edtDataFinal.Date;
    cdsPerda.Open;
    //
    if cdsPerda.RecordCount > 0 then
    begin
      while not cdsPerda.Eof do
      begin
        //
        cdsItens.Close;
        cdsItens.Params.ParamByName('COD_MOVIMENTO').AsInteger := cdsPerdaCOD_MOVIMENTO.AsInteger;
        cdsItens.Open;
        //
        if cdsItens.RecordCount > 0 then
        begin
          while not cdsItens.Eof do
          begin
            with SaidaMedicamentoPerda.Add do
            begin
              //
              MotivoPerdaMedicamento := cdsPerdaMOTIVO_PERDA.AsString;
              //
              MedicamentoPerda.RegistroMSMedicamento := cdsItensREGISTROMS.AsString; //'1010000430215';
              MedicamentoPerda.NumeroLoteMedicamento := cdsItensLOTE.AsString;  // 'ABU1212';
              MedicamentoPerda.QuantidadeMedicamento := cdsItensQUANTIDADE.AsInteger;
              //
              DataPerdaMedicamento   := FormatDateTime('yyyy-mm-dd', cdsPerdaDT_LANCAMENTO.AsDateTime); //'2010-03-03';
              //
            end;
            cdsItens.Next;
          end;
        end;
        cdsPerda.Next;
      end;
    end;
  end;
  //
  //
  // Insumos
  //
  //
  with msg.Corpo.Insumos do
  begin
  end;
  //
  //
  // Fim da Rotina de Geracao do XML
  //
  //
  xml.Active := true ;
  xml.SaveToFile(Arquivo);
  //
end;

procedure TfrmSNGPC.Button2Click(Sender: TObject);
var
  xml : TXMLDocument;
  msg : IXMLMensagemSNGPC;
  ws : sngpcSoap;
  HashIdentificacao : String;
  Retorno : String;
begin
  //
  if Arquivo = '' then
  begin
    OpenDialog1.InitialDir := ExtractFileDir(Application.ExeName);
    if not OpenDialog1.Execute then
    begin
      ShowMessage('Arquivo de Transmissão Precisa Ser Informado');
      abort;
    end;
    Arquivo := OpenDialog1.FileName;
  end;
  //
  if edtUsuario.Text = '' then
  begin
    ShowMessage('Email do Usuário Precisa Ser Informado');
    abort;
  end;
  //
  if edtSenha.Text = '' then
  begin
    ShowMessage('Senha do Usuário Precisa Ser Informado');
    abort;
  end;
  //
  if edtCPF.Text = '' then
  begin
    ShowMessage('CPF do Transmissor Precisa Ser Informado');
    abort;
  end;
  //
  if not FileExists(Arquivo) then
  begin
    ShowMessage('Arquivo ['+Arquivo+'] Não Existe');
    abort;
  end;
  //
  if MessageDlg('Deseja Enviar Arquivo ['+Arquivo+'] Para SNGPC ?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    abort;
  //
  xml := TXmlDocument.Create(nil);
  xml.Active := False;
  xml.FileName := '';
  //
  // Transmissao do Arquivo para Anvisa
  //
  //
  xml.LoadFromFile(Arquivo);
  //
  if cbhomologacao.Checked then
  begin
    HTTPRIO1.URL          := 'http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx';
    HTTPRIO1.WSDLLocation := 'http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?wsdl';
  end
  else
  begin
    HTTPRIO1.URL          := 'http://sngpc.anvisa.gov.br/webservice/sngpc.asmx';
    HTTPRIO1.WSDLLocation := 'http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?wsdl';
  end;
  HTTPRIO1.Service      := 'sngpc';
  HTTPRIO1.Port         := 'sngpcSoap';
  //
  ws := HTTPRIO1 as sngpcSoap;
  //
  Retorno := ws.ValidarUsuario(edtUsuario.Text, edtSenha.Text);  //'edmar@sesistemas.com.br','12345678';
  Memo1.Lines.Add('Validação: '+retorno);
  //
  if Retorno = 'Ok' then
  begin
    //
    HashIdentificacao:= MD5Print(MD5String(xml.XML.text));
    memo1.lines.Add('Hash: '+HashIdentificacao);
    //
    Retorno := ws.EnviaArquivoSNGPC(edtUsuario.Text, edtSenha.Text, xml.XML.text, HashIdentificacao);
    Memo1.Lines.Add('Envio: '+retorno);
    //
    if Retorno = 'Ok' then
      Memo1.Lines.Add('Arquivo Enviado Com Sucesso')
    else
      Memo1.Lines.Add('Falha no Envio do Arquivo');
    //
  end;
  //
  Memo1.Lines.Add('');
  //
  //
  // Fim da Rotina de Transmicao
  //
  //
end;

procedure TfrmSNGPC.Button3Click(Sender: TObject);
var
  xml : TXMLDocument;
  msg : IXMLMensagemSNGPC;
  ws : sngpcSoap;
  HashIdentificacao : String;
  Retorno : String;
begin
  //
  xml := TXmlDocument.Create(nil);
  xml.Active := False;
  xml.FileName := '';
  //
  //
  // Transmissao do Arquivo para Anvisa
  //
  //
  xml.LoadFromFile('sngpc.xml');
  //
  if cbhomologacao.Checked then
  begin
    HTTPRIO1.URL          := 'http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx';
    HTTPRIO1.WSDLLocation := 'http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?wsdl';
  end
  else
  begin
    HTTPRIO1.URL          := 'http://sngpc.anvisa.gov.br/webservice/sngpc.asmx';
    HTTPRIO1.WSDLLocation := 'http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?wsdl';
  end;
  HTTPRIO1.Service      := 'sngpc';
  HTTPRIO1.Port         := 'sngpcSoap';
  //
  ws := HTTPRIO1 as sngpcSoap;
  //
  Retorno := ws.ValidarUsuario(edtUsuario.Text, edtSenha.Text);  //'edmar@sesistemas.com.br','12345678';
  Memo1.Lines.Add('Validação: '+retorno);
  //
  if Retorno = 'Ok' then
  begin
    //
    HashIdentificacao:= MD5Print(MD5String(xml.XML.text));
    memo1.lines.Add('Hash: '+HashIdentificacao);
    //
    Retorno := ws.ConsultaDadosArquivoSNGPC(edtUsuario.Text, edtSenha.Text, edtCNPJ.Text, HashIdentificacao);
    Memo1.Lines.Add('Envio: '+retorno);
    //
    if Retorno = 'Ok' then
      Memo1.Lines.Add('Arquivo Consultado Com Sucesso')
    else
      Memo1.Lines.Add('Falha no Consulta do Arquivo');
    //
  end;
  //
  Memo1.Lines.Add('');
  //
  Arquivo := '';
  //
  //
  // Fim da Rotina de Transmicao
  //
  //
end;

procedure TfrmSNGPC.FormShow(Sender: TObject);
Var ArqINI : String;
    INI : TIniFile;
begin
  //
  ArqINI := ExtractFilePath(Application.ExeName)+'SNGPC.INI';
  //
  INI := TIniFile.Create(ArqINI);
  try
    cbHomologacao.Checked := (INI.ReadString('SNGPC','Homologacao','S') = 'S');
    edtCNPJ.Text          := INI.ReadString('SNGPC','CNPJ','');
    edtCPF.Text           := INI.ReadString('SNGPC','CPF','');
    edtUsuario.Text       := INI.ReadString('SNGPC','Usuario','');
    edtSenha.Text         := INI.ReadString('SNGPC','Senha','');
  finally
    INI.Free;
  end ;
  //
end;

end.
