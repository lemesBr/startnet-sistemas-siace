unit uFarmaciaPopular2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, Buttons,
  InvokeRegistry, Rio, SOAPHTTPClient, XSBuiltIns, Dateutils, FMTBcd,
  SqlExpr, Mask, JvExMask, JvToolEdit, AppEvnts, IniFiles, ShellApi;

type
  TfrmFarmaciaPopular = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Memo1: TMemo;
    HTTPRIO1: THTTPRIO;
    cbHomologacao: TCheckBox;
    DataSource1: TDataSource;
    edtCpf: TEdit;
    edtCRM: TEdit;
    edtUF: TEdit;
    edtDataReceita: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtCNPJ: TEdit;
    Label7: TLabel;
    btnEnviarSolicitacao: TButton;
    ApplicationEvents1: TApplicationEvents;
    Label8: TLabel;
    edtChave: TEdit;
    edtVendedor: TEdit;
    edtSenhaVendedor: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Memo2: TMemo;
    procedure btnEnviarSolicitacaoClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    NroAutorizacao : string;
    CupVinculado : string;
    Paciente : string;
    CPF : string;
    ValorPaciente : double;
    ValorMS : Double;
    MEstorno : String;
    SEstorno : String;
    URL : String;
    WSDLLocation : string;
    { Public declarations }
  end;

var
  frmFarmaciaPopular: TfrmFarmaciaPopular;

implementation

uses ServicoSolicitacaoWS2, ACBrECF, uMovimentoCF, uDM;

{$R *.dfm}

//Declarações
Function IdentificaEstacao: PChar; stdcall; external 'gbasmsb_library.dll';
Function PegaSolicitacao(cCNPJ, cCPJ, cCRM, cUFCRM, cDataEmissao: Pchar): Pchar; cdecl; external 'gbasmsb_library.dll';
Function PegaConfirmacao(cCNPJ, cNumAutorizacao, cCupomFiscal: Pchar): Pchar; cdecl; external 'gbasmsb_library.dll';

//Função
Function ObterSolicitacao(cCNPJ, cCPF, cCRM, cUFCRM, cDataEmissao: Pchar): Pchar;
begin
  result := PegaSolicitacao(cCNPJ, cCPF, cCRM, cUFCRM, cDataEmissao);
end;

procedure TfrmFarmaciaPopular.btnEnviarSolicitacaoClick(Sender: TObject);
Var
  Qry : TSQLQuery;
  Item : Integer;
  ItemRet : Integer;
  Datai : TXSDateTime;
  Dataf : TXSDateTime;
  Usuario: UsuarioFarmaciaDTO;
  Medicamentos : ArrayOfMedicamentoDTO;
  RetMedicamentos : ArrayOfMedicamentoDTO;
  Solicitacao : SolicitacaoDTO;
  Autorizacao : AutorizacaoDTO;
  ConfirmacaoAutorizacao : ConfirmacaoAutorizacaoDTO;
  Confirmacao : ConfirmacaoDTO;
  Recebimento : RecebimentoDTO;
  ConfirmacaoRecebimento : ConfirmacaoRecebimentoDTO;
  Pesquisa : PesquisaDTO;
  RetornoPesquisa : RetornoPesquisaDTO;
  ItemPesquisa: ArrayOfItemPesquisaDTO;
  Estorno : EstornoDTO;
  ConfirmacaoEstorno : ConfirmacaoEstornoDTO;
  p: ArrayOfItemPesquisaDTO;
  wsFarmaciaPopular : ServicoSolicitacaoWS;
  InAutoriza, DescMensagem, CodAutoriza, NrAutoriza, NoPessoa : WideString;
  s : WideString;
  par : string;
  ret : cardinal;
begin
  //
  ThousandSeparator := '.';
  DecimalSeparator  := ',';
  //
  NroAutorizacao := '';
  Paciente := '';
  CPF := '';
  ValorPaciente := 0;
  ValorMs := 0;
  //
  MEstorno := '';
  SEstorno := '';
  //
  Memo1.Lines.Clear;
  Application.ProcessMessages;
  //
  if (URL <> '') and (WSDLLocation <> '') then
  begin
    HTTPRIO1.URL          := URL;
    HTTPRIO1.WSDLLocation := WSDLLocation;
  end
  else
  begin
    if cbhomologacao.Checked then
    begin
      HTTPRIO1.URL          := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS';
      HTTPRIO1.WSDLLocation := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS?wsdl';
    end
    else
    begin
      HTTPRIO1.URL          := 'https://200.214.130.55:9443/farmaciapopular/services/ServicoSolicitacaoWS';
      HTTPRIO1.WSDLLocation := 'https://200.214.130.55:9443/farmaciapopular/services/ServicoSolicitacaoWS?wsdl';
    end;
  end;
  //
  HTTPRIO1.Service      := 'ServicoSolicitacaoWSService';
  HTTPRIO1.Port         := 'ServicoSolicitacaoWS';
  //
  wsFarmaciaPopular := HTTPRIO1 as ServicoSolicitacaoWS;
  //
  Usuario := UsuarioFarmaciaDTO.Create;
  Usuario.usuarioFarmacia := edtUsuario.Text;
  Usuario.senhaFarmacia   := edtSenha.Text;
  Usuario.usuarioVendedor := edtVendedor.Text;      //'10101020'; //frmPrincipalCF.edtVendedor.Descricao;
  Usuario.senhaVendedor   := edtSenhaVendedor.Text; //'20202020'; //busca(DM.SQLConnection1,'USUARIOS','SENHA','DES_USUARIO',frmPrincipalCF.edtVendedor.Descricao);
{
  Usuario.usuario := edtUsuario.Text;
  Usuario.senha   := edtSenha.Text;
}
  //
  //
{
  if frmFarmaciaPopular.Tag = 2 then   // Consulta
  begin

    Pesquisa := PesquisaDTO.Create;
    Pesquisa.nuCnpj := edtCNPJ.Text;
    Pesquisa.nuCnpjMatriz := edtCNPJ.Text;
    Pesquisa.numeroPagina := 0;
    Pesquisa.dataInicio := DateTimeToXSDateTime(now-5);
    Pesquisa.dataFim := DateTimeToXSDateTime(now);
    Pesquisa.statusTransacao := '2F';

    RetornoPesquisa := RetornoPesquisaDTO.Create;
    RetornoPesquisa := wsFarmaciaPopular.pesquisarAutorizacoes(Pesquisa, Usuario);

//    ItemPesquisa := ArrayOfItemPesquisaDTO.Create;
    item := length(RetornoPesquisa.arrItemPesquisaDTO);
//    SetLength(RetornoPesquisa, item );

    memo1.lines.add(RetornoPesquisa.mensagemRetorno);

    itemRet := 0;
    //
    while itemRet < item do
    begin
      //
//      RetornoPesquisa.arrItemPesquisaDTO
      memo1.Lines.Add('autorizacao medicamento:'+RetornoPesquisa.arrItemPesquisaDTO[itemRet].coSolicitacaoFarmacia);
      memo1.Lines.Add('autorizacao medicamento:'+RetornoPesquisa.arrItemPesquisaDTO[itemRet].nuAutorizacao);
      memo1.Lines.Add('autorizacao medicamento:'+RetornoPesquisa.arrItemPesquisaDTO[itemRet].nuCupomFiscal);
//      memo1.Lines.Add('autorizacao medicamento:'+DateToStr(XMLTimeToDateTime(RetornoPesquisa.arrItemPesquisaDTO[itemRet].dtAutorizacao)));

      ItemPesquisa := RetornoPesquisa.arrItemPesquisaDTO;

      Medicamentos := ItemPesquisa[itemret].arrMedicamentoDTO;
      setlength(Medicamentos, length(ItemPesquisa[itemret].arrMedicamentoDTO));

      memo1.Lines.Add('autorizacao medicamento:'+ItemPesquisa.arrItemPesquisaDTO[itemRet].coSolicitacaoFarmacia);



      inc(itemret);

    end;

    frmFarmaciaPopular.Close;
  end;
}
  //
  screen.cursor := crSQLWait;
  //
  //
  // Itens do Cupom Fiscal
  //
  Item := 0;
  frmPrincipalCF.cdsItens.First;
  while not frmPrincipalCF.cdsItens.eof do
  begin
    //
    Qry := TSQLQuery.Create(Self);
    Qry.SQLConnection := DM.SQLConnection1;
    //
    Qry.Close;
    Qry.SQL.Text := 'select P.* from PRODUTOS P where P.COD_PRODUTO = '+quotedstr(frmPrincipalCF.cdsItensCOD_PRODUTO.AsString);
    Qry.Open;
    //
    if Qry.FieldByname('UNIDADES').AsInteger > 0 then
    begin
      if Qry.FieldByName('EAN').AsString <> '' then
      begin
        if frmPrincipalCF.cdsItensDOSAGEM.Value > 0 then
          inc(Item);
      end;
    end;
    //
    freeandnil(Qry);
    //
    frmPrincipalCF.cdsItens.Next;
    //
  end;
  //
  if Item = 0 then
  begin
    screen.cursor := crDefault;
    showmessage('Falta Definir Dosagem Diária, ou Quantidade de Apresentação do Produto');
    abort;
  end;
  //
  SetLength(Medicamentos, Item);
  Item := 0;
  //
  frmPrincipalCF.cdsItens.First;
  while not frmPrincipalCF.cdsItens.eof do
  begin
    //
    if frmPrincipalCF.cdsItensDOSAGEM.AsInteger > 0 then
    begin
      //
      Qry := TSQLQuery.Create(Self);
      Qry.SQLConnection := DM.SQLConnection1;
      //
      Qry.Close;
      Qry.SQL.Text := 'select P.* from PRODUTOS P where P.COD_PRODUTO = '+quotedstr(frmPrincipalCF.cdsItensCOD_PRODUTO.AsString);
      Qry.Open;
      //
      if Qry.FieldByname('UNIDADES').AsInteger > 0 then
      begin
        //
        if Qry.FieldByName('EAN').AsString <> '' then
        begin
          //
          Medicamentos[Item] := MedicamentoDTO.Create;
          Medicamentos[Item].coCodigoBarra      := Qry.FieldByName('EAN').AsString;
          Medicamentos[Item].dsUnidApresentacao := Qry.FieldByName('UNIDADES').AsString;
          //
          if frmFarmaciaPopular.Tag = 0 then
          begin
            Medicamentos[Item].qtPrescrita  := frmPrincipalCF.cdsItensDOSAGEM.AsInteger;
            Medicamentos[Item].qtSolicitada := frmPrincipalCF.cdsItensQUANTIDADE.Value * Qry.FieldByName('UNIDADES').Value;
            Medicamentos[Item].qtDevolvida  := 0;
          end;
          //
          if frmFarmaciaPopular.Tag = 1 then
          begin
            Medicamentos[Item].qtPrescrita  := 0;
            Medicamentos[Item].qtSolicitada := 0;
            Medicamentos[Item].qtDevolvida  := frmPrincipalCF.cdsItensQUANTIDADE.Value * Qry.FieldByName('UNIDADES').Value;
          end;
          //
          Medicamentos[Item].vlPrecoVenda := frmPrincipalCF.cdsItensVALOR_UNITARIO.Value;
          //
          Medicamentos[Item].inAutorizacaoEstorno := '';
          Medicamentos[Item].inAutorizacaoMedicamento := '';
          Medicamentos[Item].qtAutorizada := 0;
          Medicamentos[Item].qtEstornada := 0;
          Medicamentos[Item].statusTransacao := '';
          Medicamentos[Item].vlPrecoSubsidiadoMS := 0;
          Medicamentos[Item].vlPrecoSubsidiadoPaciente := 0;
          Medicamentos[Item].vlPrecoSubsidiadoPacientePosEstorno := 0;
          Medicamentos[Item].vlrSubsidiadoMSPosEstorno := 0;
          Medicamentos[Item].vlrTotalVendaPosEstorno := 0;
          //
          inc(item);
          //
        end;
      end;
      //
      FreeAndNil(Qry);
      //
    end;
    //
    frmPrincipalCF.cdsItens.Next;
    //
  end;
  //
  if frmFarmaciaPopular.Tag = 0 then   // Solicitacao de Venda
  begin
    //
    if edtCpf.Text = '' then
    begin
      showmessage('Número do CPF do Paciente Deve Ser Preenchido');
      abort;
    end;
    //
    if edtCrm.Text = '' then
    begin
      showmessage('CRM do Medico Deve Ser Preenchido');
      abort;
    end;
    //
    if edtUF.Text = '' then
    begin
      showmessage('UF do CRM do Medico Deve Ser Preenchida');
      abort;
    end;
    //
    if edtDataReceita.Date = 0 then
    begin
      showmessage('Data da Receita Deve Ser Preenchida');
      abort;
    end;
    //
    edtChave.Text := '';
    //
    //
    // S O L I C I T A C A O
    //
    Solicitacao := SolicitacaoDTO.Create;
    Solicitacao.arrMedicamentoDTO := Medicamentos;
    Solicitacao.coSolicitacaoFarmacia := frmPrincipalCF.cdsItensCOD_MOVIMENTO.AsString;
    //
//    par := '--solicitacao '+edtCPF.Text+' '+edtCNPJ.Text+' '+edtCRM.Text+' '+edtUF.Text+' '+DateToStr(edtDataReceita.Date);
//    Solicitacao.dnaEstacao := Trim( GetDosOutput('c:\projetos\novo\gbasmsb.exe ' + par ) );
    //
    Solicitacao.dnaEstacao := ObterSolicitacao(pchar(edtCNPJ.Text),pchar(edtCpf.Text),pchar(edtCRM.Text),pchar(edtUF.Text),Pchar(DateToStr(edtDataReceita.Date)));
    //
//    Solicitacao.dtEmissaoReceita := DateTimeToXSDateTime(edtDataReceita.Date);
    //
    Solicitacao.dtEmissaoReceita := TXSDateTime.Create;
    Solicitacao.dtEmissaoReceita.AsDateTime := Strtodate(edtDataReceita.text) + time;
    //
    Solicitacao.nuCnpj  := edtCNPJ.Text;
    Solicitacao.nuCpf   := edtCPF.Text;
    Solicitacao.nuCrm   := edtCRM.Text;
    Solicitacao.sgUfCrm := edtUF.Text;
    //
    // A U T O R I Z A C A O
    //
    Autorizacao := AutorizacaoDTO.Create;
    Autorizacao := wsFarmaciaPopular.executarSolicitacao(Solicitacao, Usuario);
    //
    Memo1.Lines.Clear;
    Memo1.Lines.Add('***** 1ª Fase *****');
    Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
    Memo1.Lines.Add('Solicitao: '+Autorizacao.coSolicitacaoFarmacia);
    Memo1.Lines.Add('Mensagem: '+Autorizacao.descMensagemErro);
    Memo1.Lines.Add('Autorizacao: '+Autorizacao.inAutorizacaoSolicitacao);
    Memo1.Lines.Add('Pessoa: '+Autorizacao.noPessoa);
    Memo1.Lines.Add('Autorizacao: '+Autorizacao.nuAutorizacao);
    //
    if Autorizacao.nuAutorizacao <> '' then
    begin
      //
      // M E D I C A M E N T O S   R E T O R N O
      //
      item := length(Autorizacao.arrMedicamentoDTO);
//      SetLength(RetMedicamentos, item );
      itemRet := 0;
      //
      CPF      := Solicitacao.nuCpf;
      Paciente := Autorizacao.noPessoa;
      //
      ValorPaciente := frmPrincipalCF.ACBrECF1.Subtotal;
      ValorMS := 0;
      //
      while itemRet < item do
      begin
        //
        memo1.Lines.Add('***** produto '+inttostr(itemRet+1)+' *****');
        memo1.Lines.Add('     Produto Autorizado: '+Autorizacao.arrMedicamentoDTO[itemRet].coCodigoBarra);
        memo1.Lines.Add('autorizacao medicamento: '+Autorizacao.arrMedicamentoDTO[itemRet].inAutorizacaoMedicamento);
        memo1.Lines.Add('  Quantidade Solicitada: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].qtSolicitada));
        memo1.Lines.Add('  Quantidade Autorizada: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].qtAutorizada));
        memo1.Lines.Add('       Valor do Produto: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoVenda));
        memo1.Lines.Add(' Valor Ministerio Saude: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoMS));
        memo1.Lines.Add('      Valor do Paciente: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoPaciente));
        //
        ValorPaciente := ValorPaciente - Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoMS;
        ValorMS       := ValorMS       + Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoMS;
        //
        inc(itemRet);
        //
      end;
      //
      //
      //
      //
      // C O N F I R M A C A O
      //
      Confirmacao := ConfirmacaoDTO.Create;
      Confirmacao.coSolicitacaoFarmacia := Autorizacao.coSolicitacaoFarmacia;
      Confirmacao.nuAutorizacao := Autorizacao.nuAutorizacao;
      Confirmacao.nuCupomFiscal := frmPrincipalCF.ACBrECF1.NumCupom;
      //
      // C O N F I R M A C A O    A U T O R I Z A C A O
      //
      ConfirmacaoAutorizacao := ConfirmacaoAutorizacaoDTO.Create;
      ConfirmacaoAutorizacao := wsFarmaciaPopular.confirmarAutorizacao(Confirmacao, Usuario);
      //
      Memo1.lines.Add('');
      Memo1.Lines.Add('***** 2ª Fase *****');
      Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
      Memo1.Lines.Add('Solicitao: '+ConfirmacaoAutorizacao.coSolicitacaoFarmacia);
      Memo1.Lines.Add('Mensagem: '+ConfirmacaoAutorizacao.descMensagemErro);
      Memo1.Lines.Add('Autorizacao: '+ConfirmacaoAutorizacao.inAutorizacaoSolicitacao);
      Memo1.Lines.Add('Pessoa: '+ConfirmacaoAutorizacao.noPessoa);
      Memo1.Lines.Add('Autorizacao: '+ConfirmacaoAutorizacao.nuAutorizacao);
      Memo1.Lines.Add('Cupom Fiscal: '+ConfirmacaoAutorizacao.nuCupomFiscal);
      Memo1.Lines.Add('Status: '+ConfirmacaoAutorizacao.statusConfirmacao);
      //
      if ConfirmacaoAutorizacao.nuAutorizacao <> '' then
      begin
        //
        //
        // R E C E B I M E N T O
        //
        Recebimento := RecebimentoDTO.Create;
        Recebimento.arrMedicamentoDTO := Autorizacao.arrMedicamentoDTO;
        Recebimento.nuAutorizacao := ConfirmacaoAutorizacao.nuAutorizacao;
        Recebimento.nuCupomFiscal := ConfirmacaoAutorizacao.nuCupomFiscal;
        //
        // C O N F I R M A C A O    R E C E B I M E N T O
        //
        ConfirmacaoRecebimento := ConfirmacaoRecebimentoDTO.Create;
        ConfirmacaoRecebimento := wsFarmaciaPopular.confirmarRecebimento(Recebimento, Usuario);
        //
        Memo1.lines.Add('');
        Memo1.Lines.Add('***** 3ª Fase *****');
        Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
        Memo1.Lines.Add('Mensagem: '+ConfirmacaoRecebimento.mensagemRetorno);
        Memo1.Lines.Add('Autorizacao: '+ConfirmacaoRecebimento.nuAutorizacao);
        Memo1.Lines.Add('Codigo Retorno: '+ConfirmacaoRecebimento.codigoRetorno);
        Memo1.Lines.Add('Status: '+ConfirmacaoRecebimento.statusRecebimento);
        Memo1.Lines.Add('Cupom Vinculado');
        Memo1.lines.Add(ConfirmacaoRecebimento.cupomVinculado);
        //
        CupVinculado := StringReplace(ConfirmacaoRecebimento.cupomVinculado,'@',#13+#10,[rfReplaceAll]);
        //
        NroAutorizacao := ConfirmacaoRecebimento.nuAutorizacao;
        //
        if ((ConfirmacaoRecebimento.codigoRetorno = '00R') or (ConfirmacaoRecebimento.codigoRetorno = '01R')) then
        begin
          screen.cursor := crDefault;
          frmFarmaciaPopular.BringToFront;
          showmessage('Venda Efetuada: '+ConfirmacaoRecebimento.nuAutorizacao);
          frmFarmaciaPopular.close;
        end
        else
        begin
          Memo1.Lines.Add('***** 3ª Fase *****');
          Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
          Memo1.Lines.Add('Mensagem: NAO AUTORIZADO '+ConfirmacaoRecebimento.nuAutorizacao);
        end;
        //
      end
      else
      begin
        Memo1.Lines.Add('***** 2ª Fase *****');
        Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
        Memo1.Lines.Add('Mensagem: NAO AUTORIZADO '+ConfirmacaoAutorizacao.nuAutorizacao);
      end;
      //
    end
    else
    begin
      Memo1.Lines.Add('***** 1ª Fase *****');
      Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
      Memo1.Lines.Add('Mensagem: NAO AUTORIZADO '+Autorizacao.nuAutorizacao);
      //
      item := length(Autorizacao.arrMedicamentoDTO);
//      SetLength(RetMedicamentos, item );
      itemRet := 0;
      //
      while itemRet < item do
      begin
        //
        memo1.Lines.Add('***** produto '+inttostr(itemRet+1)+' *****');
        memo1.Lines.Add('     Produto Autorizado: '+Autorizacao.arrMedicamentoDTO[itemRet].coCodigoBarra);
        memo1.Lines.Add('autorizacao medicamento: '+Autorizacao.arrMedicamentoDTO[itemRet].inAutorizacaoMedicamento);
        memo1.Lines.Add('  Quantidade Solicitada: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].qtSolicitada));
        memo1.Lines.Add('  Quantidade Autorizada: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].qtAutorizada));
        //
        inc(ItemRet);
        //
      end;
    end;
  end;
  //
  //
  //
  if frmFarmaciaPopular.Tag = 1 then   // Solicitacao de Cancelamento
  begin
    //
    if edtChave.Text = '' then
    begin
      showmessage('Número da Autorização Deve Ser Preenchido');
      abort;
    end;
    //
    Estorno := EstornoDTO.Create;
    Estorno.arrMedicamentoDTO := Medicamentos;
    Estorno.nuAutorizacao := edtChave.Text;
    Estorno.nuCnpj  := edtCNPJ.Text;
    //
    ConfirmacaoEstorno := ConfirmacaoEstornoDTO.Create;
    ConfirmacaoEstorno := wsFarmaciaPopular.executarEstorno(Estorno, Usuario);
    //
    NroAutorizacao := ConfirmacaoEstorno.nuEstorno;
    //
    if ConfirmacaoEstorno.inSituacaoEstorno = '00E' then
    begin
      //
      Memo1.lines.Add('');
      Memo1.Lines.Add('***** Cancelamento *****');
      Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
      Memo1.Lines.Add('Mensagem: '+ConfirmacaoEstorno.descMensagemErro);
      Memo1.Lines.Add('Situacao Estorno: '+ConfirmacaoEstorno.inSituacaoEstorno);
      Memo1.Lines.Add('Codigo Retorno: '+ConfirmacaoEstorno.nuEstorno);
      //
      //
      // M E D I C A M E N T O S   R E T O R N O
      //
      item := length(ConfirmacaoEstorno.arrMedicamentoDTO);
//      SetLength(RetMedicamentos, item );
      itemRet := 0;
      //
      while itemRet < item do
      begin
        //
        memo1.Lines.Add('***** produto '+inttostr(itemRet+1)+' *****');
        memo1.Lines.Add('     Produto Autorizado: '+ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].coCodigoBarra);
        memo1.Lines.Add('autorizacao medicamento: '+ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].inAutorizacaoMedicamento);
        memo1.Lines.Add('  Quantidade Solicitada: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].qtSolicitada));
        memo1.Lines.Add('  Quantidade Autorizada: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].qtAutorizada));
        memo1.Lines.Add('    autorizacao estorno: '+ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].inAutorizacaoEstorno);
        memo1.Lines.Add('   Quantidade Estornada: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].qtEstornada));
        memo1.Lines.Add('  Valor Total Venda Est: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].vlrTotalVendaPosEstorno));
        memo1.Lines.Add('          Valor M S Est: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].vlrSubsidiadoMSPosEstorno));
        memo1.Lines.Add('  Valor do Paciente Est: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoPacientePosEstorno));
        //
        inc(itemRet);
        //
      end;
      //
      MEstorno := ConfirmacaoEstorno.descMensagemErro;
      SEstorno := ConfirmacaoEstorno.inSituacaoEstorno;
      //
      screen.cursor := crDefault;
      showmessage('Cancelamento Efetuado: '+ConfirmacaoEstorno.nuEstorno);
      frmFarmaciaPopular.close;
      //
    end
    else
    begin
      //
      Memo1.Lines.Add('***** Cancelamento *****');
      Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
      Memo1.Lines.Add('Mensagem: NAO AUTORIZADO '+ConfirmacaoEstorno.descMensagemErro);
      //
    end;
    //
  end;
  //
  screen.cursor := crDefault;
  //
end;

procedure TfrmFarmaciaPopular.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if frmFarmaciaPopular.Tag = 0 then
    btnEnviarSolicitacao.Enabled := (edtCpf.Text <> '') and (edtCRM.Text <> '') and (edtUF.Text <> '') and (edtDataReceita.Date > 0);
  //
  if frmFarmaciaPopular.Tag = 1 then
    btnEnviarSolicitacao.Enabled := (edtChave.Text <> '');
end;

procedure TfrmFarmaciaPopular.FormShow(Sender: TObject);
Var ArqINI : String;
    INI : TIniFile;
begin
  //
  if DataSource1.DataSet.IsEmpty then
    DataSource1.DataSet := frmPrincipalCF.cdsItens;
  //
  if DataSource1.DataSet.IsEmpty then
  begin
    showmessage('Falta Definir DataSet em DataSource');
    abort;
  end;
  //
  URL := '';
  WSDLLocation := '';
  //
  ArqINI := ExtractFilePath(Application.ExeName)+'FP2.INI';
  //
  INI := TIniFile.Create(ArqINI);
  try
    cbHomologacao.Checked := (INI.ReadString('FP','Homologacao','S') = 'S');
    edtCNPJ.Text          :=  INI.ReadString('FP','CNPJ','');
    edtUsuario.Text       :=  INI.ReadString('FP','Usuario','');
    edtSenha.Text         :=  INI.ReadString('FP','Senha','');
    edtVendedor.Text      :=  INI.ReadString('FP','Vendedor'+frmPrincipalCF.edtVendedor.AsString,'');
    edtSenhaVendedor.Text :=  INI.ReadString('FP','SenhaVendedor'+frmPrincipalCF.edtVendedor.AsString,'');
    URL                   :=  INI.ReadString('FP','URL','');
    WSDLLocation          :=  INI.ReadString('FP','WSDLLocation','');
  finally
    INI.Free;
  end ;
  //
  edtCPF.Enabled          := (frmFarmaciaPopular.Tag = 0);
  edtCRM.Enabled          := (frmFarmaciaPopular.Tag = 0);
  edtUF.Enabled           := (frmFarmaciaPopular.Tag = 0);
  edtDataReceita.Enabled  := (frmFarmaciaPopular.Tag = 0);
  //
  edtChave.Enabled        := (frmFarmaciaPopular.Tag = 1);
  //
  if frmFarmaciaPopular.Tag = 0 then
  begin
    frmFarmaciaPopular.Caption := 'Farmácia Popular (Venda)';
    edtCPF.SetFocus;
  end;
  //
  if frmFarmaciaPopular.Tag = 1 then
  begin
    frmFarmaciaPopular.Caption := 'Farmácia Popular (Cancelamento)';
    edtChave.Text := frmPrincipalCF.cdsMovimentoCHAVE.AsString;
    edtChave.SetFocus;
  end;
  //
  if frmFarmaciaPopular.Tag = 2 then
  begin
    frmFarmaciaPopular.Caption := 'Farmácia Popular (Consulta Pendentes)';
  end;
  //
  frmPrincipalCF.cdsItens.First;
  //
end;

procedure TfrmFarmaciaPopular.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    #13: begin
      key := #0;
      keybd_event(vk_tab, 1, 0, 0);
    end;
    #27: begin
      frmFarmaciaPopular.Close;
    end;
  end;
end;

procedure TfrmFarmaciaPopular.DataSource1StateChange(Sender: TObject);
begin
  if DataSource1.DataSet.State in [dsInsert] then
  begin
    DataSource1.DataSet.Cancel;
    abort;
  end;
end;

procedure TfrmFarmaciaPopular.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
   myFile : TextFile;
begin
   AssignFile(myFile, 'FP.LOG');
   if not FileExists('FP.LOG') then
     rewrite(myfile)
   else
     Append(myFile);
   Writeln(myFile, Memo1.Lines.Text);
   CloseFile(myFile);
end;

end.


