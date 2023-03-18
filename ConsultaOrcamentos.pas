unit ConsultaOrcamentos;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask, rxToolEdit, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes, Graphics,  Forms, Dialogs,  FMTBcd, RDprint, DB, SqlExpr,
  SUIDlg, RXCtrls, DBCtrls, ACBrECF, ACBrBase, ACBrDevice, ACBrECFClass, ACBrConsts,
  XDBGrids, AdvGlowButton;

type
  TFormConsultaOrcamentos = class(TForm)
    pnpesq: TPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TAdvGlowButton;
    Panel4: TPanel;
    Bevel1: TBevel;
    Panel: TPanel;
    BitBtn3: TAdvGlowButton;
    Label2: TLabel;
    Label4: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    suiDBGrid2: TXDBGrid;
    Panel10: TPanel;
    suiDBGrid1: TXDBGrid;
    Panel11: TPanel;
    Label9: TLabel;
    suiDBEdit1: TDBEdit;
    suiDBEdit2: TDBEdit;
    suiDBEdit3: TDBEdit;
    suiDBEdit4: TDBEdit;
    suiDBEdit5: TDBEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel33: TRxLabel;
    suiDBEdit7: TDBEdit;
    suiDBEdit8: TDBEdit;
    suiDBEdit9: TDBEdit;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    Label5: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Cliente: TComboEdit;
    RxLabel8: TRxLabel;
    RxLabel41: TRxLabel;
    suiDBEdit41: TDBEdit;
    RxLabel43: TRxLabel;
    suiDBEdit42: TDBEdit;
    Edit3: TEdit;
    suiButton3: TAdvGlowButton;
    Edit11: TEdit;
    suiButton4: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    suiButton7: TAdvGlowButton;
    ExcluirOr: TAdvGlowButton;
    suiButton5: TAdvGlowButton;
    RxLabel9: TRxLabel;
    suiDBEdit10: TDBEdit;
    RDprint1: TRDprint;
    Label1: TLabel;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure ExcluirOrClick(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure ImprimeOrcamento;
    procedure suiDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    
  private
    d: Currency;
  
  public

  end;

var
  FormConsultaOrcamentos: TFormConsultaOrcamentos;

implementation

uses ModulodeDados, Z_RotinasGerais, ModulodeDadosConsultas3, Principal,
  ConsClientes, ReemissaoO, Vendas, ModulodeDadosConsultas, RelOrcamentos,
  RelOrca80col, ModulodeDadosRelatorios;



{$R *.DFM}

function RemoveChar(Const Texto:String):String; 
  // 
  // Remove caracteres de uma string deixando apenas numeros 
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;



procedure TFormConsultaOrcamentos.ImprimeOrcamento;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
     total    := 0;
     Traco    := '----------------------------------------------------------------------------------------------------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 44;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 160;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;
     RDprint1.Margens.Top:=1;
     RDprint1.Margens.Bottom:=3;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := 'Cód: '+ dmc.CDS_OrcamentosCODIGO_CLIENTE.Text + '  Nome: '+ dmc.CDS_OrcamentosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_OrcamentosENDERECO.AsString;
     Numero_CLI := dmc.CDS_OrcamentosNUMERO.AsString;
     CEP_CLI := dmc.CDS_OrcamentosCEP.AsString;
     CID_CLI := dmc.CDS_OrcamentosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_OrcamentosUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,70,RAZAO_EMP,[comp17, Negrito])
        else
           impc(02,70,RAZAO_EMP,[comp12, Negrito]);
        impc(03,70,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12]);
        impc(04,70,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12]);
        impc(05,70,'Fone :' + tel_emp,[Comp12]);
       // inc   (linha);
        imp (06,01,traco);
       // inc   (linha);
        impc(07,70,'ORCAMENTO / CONDICIONAL',[comp17, Negrito]);
        //inc   (linha);
        imp (08,01,traco);
        //inc   (linha);
        imp (09,01,'Nº Orc. : ' + dmc.CDS_OrcamentosCODIGO.Text +
                   '       Data: ' + dmc.CDS_OrcamentosDATA.AsString +
                   '         Vendedor.: ' + dmc.CDS_OrcamentosUSUARIO.Text );

        // Dados do Cliente...
        imp (10,01,traco);
        impf(11,01,CLI,[comp12]);
        impf(11,75,'Apel./Fant.: '+ dmc.SDS_ClienteoAPELIDO.text,[comp12]);
        impf(12,01, 'End.:' +END_CLI + ',' + 'Nº: ' +NUMERO_CLI,[comp12]);
        impf(12,75,'Cep: '+CEP_CLI  + ' - ' +
                   'Cidade: ' + CID_CLI + ' - ' +
                   'UF: '+ ESTADO_CLI, [comp12]);
        impf(13,01,'CPF/CNPj: '+ dmc.CDS_OrcamentosCPF_CNPJ.text,[comp12]);
        impf(13,75,'Rg/IE: '+ dmc.CDS_OrcamentosRG_IE.text,[comp12]);
        // Titulo dos Itens...
        imp (14,01,traco);
        imp (15,01,'Codigo          Descrição dos Produtos                          Marca         Qte        UN        Unitário            Descontos           Sub-Total');
        imp (16,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 17;
       DMC.SDS_orcamento_Itens.First;
       while not DMC.SDS_orcamento_Itens.eof do
        begin
        with rdprint1 do
           begin
           impf  (linha,01,DMC.SDS_orcamento_ItensCODIGO_PRODUTO.AsString,  []);
           impf  (linha,17,DMC.SDS_orcamento_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,65,DMC.SDS_orcamento_ItensNOME_MARCA.AsString,  []);
           impval(linha,75,'#,##0.000',DMC.SDS_orcamento_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,90,DMC.SDS_orcamento_ItensUNIDADE.AsString,  []);
           impval(linha,100,'#,##0.00', DMC.SDS_orcamento_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,120,'##,##0.00', DMC.SDS_orcamento_ItensDESCONTO.AsFloat, []);
           impval(linha,140,'##,##0.00', DMC.SDS_orcamento_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_orcamento_Itens.next;
        end;

        // SOMA QUANTIDADE
        DMC.SDS_orcamento_Itens.First;
        D:= D + DMC.SDS_orcamento_ItensQUANTIDADE.AsFloat;
        DMC.SDS_orcamento_Itens.Next;
        // RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        While not DMC.SDS_orcamento_Itens.Eof do
        begin

        D:= D + DMC.SDS_orcamento_ItensQUANTIDADE.AsFloat;
        DMC.SDS_orcamento_Itens.Next;
        //RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        end;

        // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
        with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,90,'Total Geral do Orc./Cond. R$');
        impval(linha,135,'###,###,##0.00',dmc.CDS_OrcamentosVALOR_ITENS.AsFloat,[]);

        // Desconto Global
        inc (linha);
        imp   (linha,35,'Qtde de Itens do Orc./Cond. R$');
        impval(linha,69,'###,###,##0.000',D,[]);
        imp (linha,90,'(-) Desconto Global');
        impval(linha,135,'-##,###,##0.00',dmc.CDS_OrcamentosVALOR_DESCONTO.AsFloat,[]);
        inc (linha);
        imp (linha,90,'Acréscimos/Financeiro:');
        impval(linha,135,'##,###,##0.00',dmc.CDS_OrcamentosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...

        inc (linha);
        imp(linha,90,'Valor Liq. do Orc./Cond. R$');
        impval(linha,135,'###,###,##0.00',dmc.CDS_OrcamentosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento     Parcela          Vencimento         Valor Parcela');
        inc   (linha);
        imp   (linha,01,traco);
        inc   (linha);

        DMC.SDS_parcelas_ORC.First;
        while not DMC.SDS_parcelas_ORC.Eof do
            begin
               if DMC.sds_parcelas_orcVALOR_PARC.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.sds_parcelas_orcDESC_COND_PGTO.Text );
                     imp (linha,28, DMC.sds_parcelas_orcQUANT_PARCELAS.Text );
                     imp (linha,42, DMC.sds_parcelas_orcDATA_VENC.Text );
                     impval(linha,60,'###,###,##0.00',DMC.SDS_parcelas_ORCVALOR_parc.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.SDS_parcelas_ORC.Next;
            end;
        //  imp (linha,01, 'Troco' );
        // impval(linha,130,'###,###,##0.00',dmc.CDS_OrcamentosVALOR_TROCO.AsFloat,[]);
        // inc   (linha);
        // Final...

        imp (linha,01,'-------------------------------------------------------------------------');
        inc (linha);
        impc(linha,01,'Obs : ' + dmc.CDS_OrcamentosOBSERVACOES.Text,[comp12]);
        inc (linha);
        inc (linha);
        imp   (linha,105,'_________________________________');
        inc   (linha);
        impc(linha,122,'***  ASSINATURA  ***',[]);

        // Avança 7 linhas em Branco...
        linha := linha+ 2; //linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 44;

end;


procedure TFormConsultaOrcamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaOrcamentos:=nil;
end;

procedure TFormConsultaOrcamentos.DateEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaOrcamentos.DateEdit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaOrcamentos.Edit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaOrcamentos.DateEdit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaOrcamentos.DateEdit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaOrcamentos.Edit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaOrcamentos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaOrcamentos.FormShow(Sender: TObject);
begin
  {  DMC3.SQLD_OrcamentoGeral.Active:=FALSE;
    DMC3.CDS_OrcamentoGeral.Active:=FALSE;
    DMC3.SDS_ItensOrcamentoGeral.Active:=FALSE;
    DMC3.SQLD_OrcamentoCliente.Active:=FALSE;
    DMC3.CDS_OrcamentoCliente.Active:=FALSE;
    DMC3.SDS_ItensOrcamentoCliente.Active:=FALSE;
    DMC3.SQLD_OrcamentoUsuario.Active:=FALSE;
    DMC3.CDS_OrcamentoUsuario.Active:=FALSE;
    DMC3.SDS_ItensOrcamentoUsuario.Active:=FALSE;
    DMC3.SQLD_OrcamentoPagamento.Active:=False;
    DMC3.CDS_OrcamentoPagamento.Active:=False;
    DMC3.SDS_ItensOrcamentoPagamento.Active:= False; }
    DateEdit1.Date := Date;
    DateEdit2.Date := date;
    suiButton1.SetFocus;
    suiButton1Click(Sender);


end;

procedure TFormConsultaOrcamentos.Edit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaOrcamentos.Edit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaOrcamentos.suiButton1Click(Sender: TObject);
var
  inicio, final, cli, venda, user :string;
begin
//Try
   { DMC3.SQLD_OrcamentoGeral.Active:=False;
    DMC3.CDS_OrcamentoGeral.Active:=False;
    DMC3.SQLD_OrcamentoGeral.Params[0].AsDate:=DateEdit1.Date;
    DMC3.SQLD_OrcamentoGeral.Params[1].AsDate:=DateEdit2.Date;
    DMC3.SQLD_OrcamentoGeral.Active:=True;
    DMC3.CDS_OrcamentoGeral.Active:=True;
    DMC3.SDS_ItensOrcamentoGeral.Active:=True; }
      begin
   inicio:=datetostr(DATE);
   final:=datetostr(DATE);

   inicio:=dateedit1.TexT;
   final:=dateedit2.TexT;

   cli := cliente.Text;

   Venda := edit2.text;

   user :=   Edit11.text;

   DM.Sds_orcamento.Active := false;
   DM.Sds_orcamento_itens.Active := false;
   dm.Qry_orcamento.close;
   dm.Qry_orcamento.SQL.Clear;
   dm.Qry_orcamento.SQL.add('select * from orcamentos where codigo >0'+'');
   if inicio >'  /  /    ' then
   dm.Qry_orcamento.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA<='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
   if cli >'' then
   dm.Qry_orcamento.SQL.add('and CODIGO_CLIENTE ='+(cli)+'');
   if venda >'' then
   dm.Qry_orcamento.SQL.add('and codigo ='+(venda)+'');
    if user >'' then
   dm.Qry_orcamento.SQL.add('and USUARIO ='+(USER)+'');
   if combobox1.ItemIndex = 1 then
   BEGIN
   dm.Qry_orcamento.SQL.add('and STATUS = 1 '+'');
   END ELSE
   begin
   dm.Qry_orcamento.SQL.add('and STATUS <> 1 '+'');
   end;
   dm.Qry_orcamento.SQL.add('ORDER BY Codigo desc');
   dm.Qry_orcamento.Open;
   DM.Sds_orcamento.Active := True;
   DM.Sds_orcamento_itens.Active := true;
   end;


  {If  DM.sDS_Orcamento.eoF then
  Begin
       MSG_NR.ShowModal;
  end;  }
 { Except
     MSG_ERRO.ShowModal;
   end; }

end;

procedure TFormConsultaOrcamentos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

     if (Key=VK_F1) then
      begin
       suiButton4Click(Sender);
      end;
      if (Key=VK_F1) then
      begin
       suiButton5Click(Sender);
      end;

end;

procedure TFormConsultaOrcamentos.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT3.Text:=''
end;

procedure TFormConsultaOrcamentos.ClienteButtonClick(Sender: TObject);
begin
 dm.SDS_Clientes.Filtered := false;
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := Cliente.Text;
      FormConsClientes.ShowModal;
       edit1.text   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
        Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFormConsultaOrcamentos.ClienteExit(Sender: TObject);
begin
 DM.SDS_Clientes.Filtered := False;

 if edit3.Text='LETRAS' THEN

  BEGIN
  ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ClienteButtonClick(sender);
  end;

  IF ACHOU=TRUE THEN
  begin
  Edit1.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
 IF Cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 Cliente.Text := '';
 Cliente.SetFocus;
end else

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Cliente.SetFocus;
end else
 IF ACHOU=TRUE THEN
  begin
  Edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
end;
end;

procedure TFormConsultaOrcamentos.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key =#13 then
BEGIN
 if edit3.Text='LETRAS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;

  ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

IF ACHOU=FALSE THEN
begin
ClienteButtonClick(sender);
end ELSE

IF ACHOU=TRUE THEN
BEGIN
Cliente.Text := DM.SDS_ClientesCODIGO.Text;
EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
end;
end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  //ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Codigo do Cliente Não Localizado');

IF ACHOU=TRUE THEN
Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
end;
end;
end;

procedure TFormConsultaOrcamentos.suiButton3Click(Sender: TObject);
var
  EnderCompo, Clio : String;
begin
{ Try
  if FormReemissaoO=nil   then
    begin
    FormReemissaoO:=TFormReemissaoO.Create(self);
      FormReemissaoO.EDIT1.Text :=dm.Sds_orcamentoCODIGO.Text;
      FormReemissaoO.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;}
 If  dm.sds_orcamentoCodigo.text <> '' then
   Begin
  //  If ImpressaoOr.ShowModal = mryes then
    if Application.MESSAGEBOX('Confirma a Emissão do Orçamento', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) <> ID_YES then
    Exit;
    try
    begin

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.sds_parcelas_orc.Active := False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := dm.sds_orcamentoCodigo.text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DMC.sds_parcelas_orc.Active := True;

    Endercompo:= (DMC.Cds_OrcamentosENDERECO.Text + ' / ' + DMC.Cds_OrcamentosBAIRRO.Text
    + ' - ' + DMC.Cds_OrcamentosCIDADE.Text + ' - ' + DMC.Cds_OrcamentosFONE.Text);
    Clio:= (DMC.Cds_OrcamentosCODIGO_CLIENTE.Text + ' - ' + DMC.Cds_OrcamentosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento',False);
    DMR.RvRelatorios.Execute;
    end else

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    BEGIN
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.sds_parcelas_orc.Active := False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := dm.sds_orcamentoCodigo.text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DMC.sds_parcelas_orc.Active := True;

    Endercompo:= (DMC.Cds_OrcamentosENDERECO.Text + ' / ' + DMC.Cds_OrcamentosBAIRRO.Text
    + ' - ' + DMC.Cds_OrcamentosCIDADE.Text + ' - ' + DMC.Cds_OrcamentosFONE.Text);
    Clio:= (DMC.Cds_OrcamentosCODIGO_CLIENTE.Text + ' - ' + DMC.Cds_OrcamentosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento1',False);
    DMR.RvRelatorios.Execute;
    end;

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.sds_parcelas_orc.Active := False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := dm.sds_orcamentoCodigo.text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    DMC.sds_parcelas_orc.Active := True;
    FormRelOrcamentos := TFormRelOrcamentos.Create(self);
    FormRelOrcamentos.RLReport1.DefaultFilter.Destroy;
    FormRelOrcamentos.RLReport1.Prepare;
    FormRelOrcamentos.RLReport1.PreviewModal;
     END ELSE

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    begin
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.sds_parcelas_orc.Active := False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := dm.sds_orcamentoCodigo.text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    DMC.sds_parcelas_orc.Active := True;
    FormRelOrcamentos := TFormRelOrcamentos.Create(self);
    FormRelOrcamentos.RLReport1.Prepare;
    FormRelOrcamentos.RLReport1.PreviewModal;
    end;
    end;

    IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q') or (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4')  THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     begin
        DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.sds_parcelas_orc.Active := False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := dm.sds_orcamentoCodigo.text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    DMC.sds_parcelas_orc.Active := True;
    FormORCA80COL := TFormORCA80COL.Create(self);
    FormORCA80COL.RLReport1.DefaultFilter.Destroy;
    FormORCA80COL.RLReport1.Prepare;
    FormORCA80COL.RLReport1.PreviewModal;
     END ELSE
   IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q') or (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4') THEN
   IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
   BEGIN
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.sds_parcelas_orc.Active := False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := dm.sds_orcamentoCodigo.text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    DMC.sds_parcelas_orc.Active := True;
    FormORCA80COL := TFormORCA80COL.Create(self);
    FormORCA80COL.RLReport1.Prepare;
    FormORCA80COL.RLReport1.Preview();
    end;

     IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '3' THEN
      //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
      DM.SDS_Empresa.Active := False;
      DM.SDS_CONFIGURACOES.Active:=False;
      DMC.SDS_Clienteo.Active:= False;
      dmc.sds_parcelas_orc.Active:= False;
      DMC.SDS_Orcamento_Itens.Active:= False;
      DMC.SQLD_Orcamentos.Active:=False;
      DMC.CDS_Orcamentos.Active:=False;
      DMC.SQLD_Orcamentos.Params[0].AsString := dm.sds_orcamentoCodigo.text;
      DMC.SQLD_Orcamentos.Active:=True;
      DMC.CDS_Orcamentos.Active:=True;
      DMC.SDS_Orcamento_Itens.Active:= True;
      DMC.SDS_Clienteo.Active:= True;
      DM.SDS_Empresa.Active := true;
      DM.SDS_CONFIGURACOES.Active:=true;
      dmc.sds_parcelas_orc.Active:= true;

      ImprimeOrcamento;

      end;

     except
     ShowMessage('Erro na Impressão do Orçamento!');
     end;


    end;

end;

procedure TFormConsultaOrcamentos.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn; State: TGridDrawState);
begin
  with suiDBGrid1 do
  begin
    if Odd(dm.Dts_orcamento.DataSet.RecNo) then
      Canvas.Brush.Color := clSilver
    else
      Canvas.Brush.Color := clSkyBlue;

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TFormConsultaOrcamentos.suiDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn; State: TGridDrawState);
begin
  with suiDBGrid2 do
  begin
    if Odd(dm.Dts_orcamento_itens.DataSet.RecNo) then
      Canvas.Brush.Color := clSilver
    else
      Canvas.Brush.Color := clSkyBlue;

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TFormConsultaOrcamentos.suiButton4Click(Sender: TObject);
var
contador, e : Integer;
pedido : string;
begin

if Application.MESSAGEBOX('Confirma a exportação do Orçamento?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
FORMVENDAS.Altera := True;

formvendas.Sds_orcamentos.Active := FALSE;
formvendas.Sds_orcamentos.Active := True;

formvendas.SDS_Orcamentos_itens.Active := False;
Formvendas.SDS_Orcamentos_itens.Active := True;

formvendas.Sds_orcamentos.Insert;
formvendas.Sds_orcamentos.EDIT;
//SPC_Codigo.ExecProc;
//N:= (formVendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
formvendas.Sds_orcamentosCODIGO.Text := DM.sds_orcamentoCODIGO.Text;//IntTostr(N);
//N_venda.Text          := IntToStr(N);
formvendas.Sds_orcamentosDATA.AsDateTime  := DM.sds_orcamentoDATA.AsDateTime;
//formvendas.Sds_orcamentosDATA_ENTREGA.AsDateTime := DM.sds_orcamentoDATA_ENTREGA.AsDateTime;
formvendas.Sds_orcamentosVALOR_ITENS.Text       := DM.sds_orcamentoVALOR_ITENS.Text;
formvendas.Sds_orcamentosVALOR_DESCONTO.Text    := DM.sds_orcamentoVALOR_DESCONTO.Text;
formvendas.Sds_orcamentosVALOR_TOTAL.Text       := DM.sds_orcamentoVALOR_TOTAL.Text;
formvendas.Sds_orcamentosCODIGO_CLIENTE.Text    := DM.sds_orcamentoCODIGO_CLIENTE.Text;
formvendas.Sds_orcamentoscodigo_CLIENTE.Text    := DM.sds_orcamentoCODIGO_CLIENTE.Text;
formvendas.Sds_orcamentosNOME_CLIENTE.Text      := DM.sds_orcamentoNOME_CLIENTE.Text;
formvendas.Sds_orcamentosENC_FINANCEIRO.Text    := DM.sds_orcamentoENC_FINANCEIRO.Text;
formvendas.Sds_orcamentosCOD_PAGTO.Text         := DM.sds_orcamentoCOD_PAGTO.Text;
formvendas.Sds_orcamentosPAGAMENTO.Text         := DM.sds_orcamentoPAGAMENTO.Text;
formvendas.Sds_orcamentosOBSERVACOES.text       := DM.sds_orcamentoOBSERVACOES.text;
formvendas.Sds_orcamentosCOD_VENDEDOR.text      := DM.sds_orcamentoCOD_VENDEDOR.text;
formvendas.Sds_orcamentosUSUARIO.Text           := DM.sds_orcamentoUSUARIO.Text;
formvendas.Sds_orcamentosCOD_EMPRESA.Text       := DM.sds_orcamentoCOD_EMPRESA.Text;
formVendas.Sds_OrcamentosUF.Text                  := DM.sds_orcamentoUF.Text;
formVendas.Sds_OrcamentosCEP.Text                := DM.sds_orcamentoCEP.Text;
formVendas.Sds_OrcamentosCOD_IBGE.Text           := DM.sds_orcamentoCOD_IBGE.Text;
//formVendas.Sds_OrcamentosVALOR_PAGO.Text         := dm.sds_vendasVALOR_PAGO.Text;
//formVendas.Sds_OrcamentosVALOR_TROCO.Text        := dm.sds_vendasVALOR_TROCO.Text;
formVendas.Sds_OrcamentosTIPO.Text               := DM.sds_orcamentoTIPO.Text;
//formVendas.Sds_OrcamentosREFERENCIA.Text         := dm.sds_vendasREFERENCIA.Text;
formVendas.Sds_orcamentosPRODUTOR.text          := DM.sds_orcamentoPRODUTOR.Text;
formVendas.Sds_orcamentosIE_PRODUTOR.text        := DM.sds_orcamentoIE_PRODUTOR.Text;
formVendas.Sds_OrcamentosRG_IE.text              := DM.sds_orcamentoRG_IE.Text;
formVendas.Sds_OrcamentosENDERECO.Text           := DM.sds_orcamentoENDERECO.Text;
formVendas.Sds_OrcamentosCIDADE.text             := DM.sds_orcamentoCIDADE.Text;
formVendas.Sds_OrcamentosBAIRRO.Text             := DM.sds_orcamentoBAIRRO.Text;
formVendas.Sds_OrcamentosNUMERO.Text             :=DM.sds_orcamentoNUMERO.Text;
formVendas.Sds_OrcamentosFONE.Text               := DM.sds_orcamentoFONE.Text;
//formVendas.Sds_Orcamentos.Text                 := ';
formVendas.Sds_orcamentosEXPORTADO.text          := DM.sds_orcamentoEXPORTADO.Text;
formVendas.Sds_orcamentosSTATUS.Text             := DM.sds_orcamentoSTATUS.Text;
formVendas.Sds_Orcamentos.Post;

DM.sds_orcamento_itens.First;
Contador := DM.sds_orcamento_itens.RecordCount;
For E:=1 to Contador do
 begin
formvendas.Sds_orcamentos_itens.Insert;
formvendas.Sds_orcamentos_itens.Edit;
formvendas.Sds_orcamentos_itensCODIGO.AsString           := '1';
formvendas.Sds_orcamentos_itensCODIGO_ID.Text            := DM.sds_orcamentoCODIGO.Text;
formvendas.Sds_orcamentos_itensCODIGO_PROD.Text          := DM.sds_orcamento_itensCODIGO_PROD.Text;
formvendas.Sds_orcamentos_itensCODIGO_PRODUTO.Text       := DM.sds_orcamento_itensCODIGO_PRODUTO.Text;
formvendas.Sds_orcamentos_itensDESCRICAO_PRODUTO.Text    := DM.sds_orcamento_itensDESCRICAO_PRODUTO.Text;
formvendas.Sds_orcamentos_itensDESCONTO.TEXT             := DM.sds_orcamento_itensDESCONTO.Text;
formvendas.Sds_orcamentos_itensQUANTIDADE.Text           := DM.sds_orcamento_itensQUANTIDADE.Text;
formvendas.Sds_orcamentos_itensPRECO_UNITARIO.Text       := DM.sds_orcamento_itensPRECO_UNITARIO.Text;
formvendas.Sds_orcamentos_itensPRECO_TOTAL.Text          := DM.sds_orcamento_itensPRECO_TOTAL.Text;
formvendas.Sds_orcamentos_itensVENDEDOR.Text             := DM.sds_orcamento_itensVENDEDOR.Text;
formvendas.Sds_orcamentos_itensUNIDADE.Text              := DM.sds_orcamento_itensUNIDADE.Text;
formvendas.Sds_orcamentos_itensSIT_TRIBUTARIA.Text       := DM.sds_orcamento_itensSIT_TRIBUTARIA.Text;
formvendas.Sds_orcamentos_itensENC_FINANCEIRO.TEXT       := DM.sds_orcamento_itensENC_FINANCEIRO.Text;
formvendas.Sds_orcamentos_itensFRACAO.text               := DM.sds_orcamento_itensFRACAO.Text;
formvendas.Sds_orcamentos_itensCOD_NCM.Text              := DM.sds_orcamento_itensCOD_NCM.Text;
formvendas.Sds_orcamentos_itensPROD_SERV.Text            := DM.sds_orcamento_itensPROD_SERV.TEXT;
formvendas.Sds_orcamentos_itensITEN.Text                 := DM.sds_orcamento_itensITEN.Text;
DM.sds_orcamento_itens.Next;
end;
              begin
              formVendas.SPC_DELETE_ORC_ITENS.ParamByname('CODIGO_ID').AsInteger := DM.sds_orcamentoCODIGO.ASINTEGER;
              formVendas.SPC_DELETE_ORC_ITENS.ExecProc;
              end;


                begin
              formVendas.SPC_ORCAMENTOS_DEL.ParamByname('ORC').AsInteger := DM.sds_orcamentoCODIGO.ASINTEGER;
              formVendas.SPC_ORCAMENTOS_DEL.ExecProc;
              end;

formvendas.InserirOR.Enabled:= False;

formvendas.pesquisaror.Enabled := False;

formvendas.confirmaror.Enabled := True;

formvendas.GroupBox10.Enabled := True;
formvendas.GroupBox9.Enabled := True;
formvendas.groupbox8.Enabled := True;

formvendas.Edit55.Visible := true;
formvendas.Edit57.Visible := true;
formvendas.Edit56.Visible := true;
formVendas.suiButton1.Enabled := False;


 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  formvendas.RbPreco3.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  formvendas.RbPreco4.Checked := True;
  end;
  formVendas.Sds_orcamentos.Edit;
  If DM.SDS_Usuarios.locate('USUARIO',formVendas.DBEdit8.Text,[])=True then
  formVendas.Sds_OrcamentosCOD_VENDEDOR.Text := DM.SDS_UsuariosCODIGO.Text;

  If DM.SDS_CondPagamento.locate('CODIGO',formVendas.DBComboPgto.Text,[])=True then
  formVendas.Desc_cond_pagto.Text := DM.SDS_CondPagamentoDESCRICAO.Text;
    formVendas.Sds_orcamentos.Post;


      formVendas.Sds_orcamentos_itens.last;
      formvendas.Sds_orcamentos_itens.Insert;


      formVendas.DBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
      formVendas.Sds_orcamentos_itens.Edit;
      formVendas.ComboEdit2.Visible := True;
      formVendas.ComboEdit2.SetFocus;


                       formVendas.Sds_Orcamentos_itens.First;
                       formVendas.A:= 0;
                       formVendas.z:= 0;
                       formVendas.A:= formVendas.A +  formVendas.Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                       formVendas.z:=  formVendas.z +  formVendas.SDS_Orcamentos_itensDESCONTO.AsFloat;
                       formVendas.Sds_Orcamentos_itens.Next;
                       formVendas.Edit55.Text:= FloatToStr( formVendas.A);
                       formVendas.Edit56.Text:= FloatToStr( formVendas.Z);
                       formVendas.Edit57.Text:= FloatToStr( formVendas.A);
                      While not  formVendas.Sds_Orcamentos_itens.Eof do
                      begin
                       formVendas.A:=  formVendas.A +  formVendas.Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
                       formVendas.z:=  formVendas.z +  formVendas.SDS_Orcamentos_itensDESCONTO.AsFloat;
                       formVendas.Sds_Orcamentos_itens.Next;
                       formVendas.Edit55.Text:= FloatToStr( formVendas.A);
                       formVendas.Edit56.Text:= FloatToStr( formVendas.Z);
                       formVendas.Edit57.Text:= FloatToStr( formVendas.A -  formVendas.z);
                      end;
                       formVendas.Sds_Orcamentos_itens.last;
                       formVendas.Sds_Orcamentos_itens.Edit;




  Close;
end;


end;

procedure TFormConsultaOrcamentos.suiButton7Click(Sender: TObject);
begin
Cliente.Clear;
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
Edit11.Clear;
end;

procedure TFormConsultaOrcamentos.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormConsultaOrcamentos.ExcluirOrClick(Sender: TObject);
begin
if Application.MESSAGEBOX('Confirma a Exclusão do Orçamento?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 Begin
                begin
              formVendas.SPC_DELETE_ORC_ITENS.ParamByname('CODIGO_ID').AsInteger := DM.sds_orcamentoCODIGO.ASINTEGER;
              formVendas.SPC_DELETE_ORC_ITENS.ExecProc;
              end;

              begin
              formVendas.SPC_ORCAMENTOS_DEL.ParamByname('ORC').AsInteger := DM.sds_orcamentoCODIGO.ASINTEGER;
              formVendas.SPC_ORCAMENTOS_DEL.ExecProc;
              end;

           suiButton1Click(Sender);
end;
end;

procedure TFormConsultaOrcamentos.suiButton5Click(Sender: TObject);
var
 E, N, Contador: Integer;
begin
  //Msg_cd.Text:= '';
 // Msg_cd.Text:= 'Confirma a Geração da Venda?';
//if Msg_cd.Showmodal = mryes then
 if Application.MESSAGEBOX('Confirma a Geração da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  //Exit;
begin
 if not DM.sds_orcamento.Eof then
  begin
formVendas.Sds_pedidos.Insert;
formVendas.Sds_pedidos.EDIT;
formVendas.SPC_Codigo.ExecProc;
N:= (formVendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
formVendas.Sds_pedidosCODIGO.Text :=IntTostr(N);
formVendas.N_venda.Text          := IntToStr(N);
formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime  := date;
formVendas.Sds_pedidosDATA_ENTREGA.AsDateTime := date;
formVendas.Sds_pedidosVALOR_ITENS.Text       := DM.sds_orcamentoVALOR_ITENS.Text;
formVendas.Sds_pedidosVALOR_DESCONTO.Text    := DM.sds_orcamentoVALOR_DESCONTO.Text;
formVendas.Sds_pedidosVALOR_TOTAL.Text       := DM.sds_orcamentoVALOR_TOTAL.Text;
formVendas.Sds_pedidosCODIGO_CLIENTE.Text    := DM.sds_orcamentoCODIGO_CLIENTE.Text;
formVendas.DBComboCliente.Text               := DM.sds_orcamentoCODIGO_CLIENTE.Text;
formVendas.Sds_pedidosNOME_CLIENTE.Text      := DM.sds_orcamentoNOME_CLIENTE.Text;
formVendas.Sds_pedidosENC_FINANCEIRO.Text    := DM.sds_orcamentoENC_FINANCEIRO.Text;
formVendas.Sds_pedidosCOD_PAGTO.Text         := DM.sds_orcamentoCOD_PAGTO.Text;
formVendas.Sds_pedidosPAGAMENTO.Text         := DM.sds_orcamentoPAGAMENTO.Text;
formVendas.Sds_pedidosOBSERVACOES.text       := DM.sds_orcamentoOBSERVACOES.text;
formVendas.Sds_pedidosCOD_VENDEDOR.text      := DM.sds_orcamentoCOD_VENDEDOR.text;
formVendas.Sds_pedidosUSUARIO.Text           := DM.sds_orcamentoUSUARIO.Text;
formVendas.Sds_pedidosCOD_EMPRESA.Text       := DM.sds_orcamentoCOD_EMPRESA.Text;
FormVendas.Sds_pedidoskm.Text                := '0';

formVendas.Sds_pedidosENDERECO.Text         :=  DM.sds_orcamentoENDERECO.AsString;
formVendas.Sds_pedidosCPF_CNPJ.Text         :=  DM.sds_orcamentoCPF_CNPJ.Text;
formVendas.Sds_pedidosRG_IE.Text            :=  DM.sds_orcamentoRG_IE.Text;
formVendas.Sds_pedidosfone.Text             :=  DM.sds_orcamentoFONE.Text;
formVendas.Sds_pedidosCIDADE.Text           :=  DM.sds_orcamentoCIDADE.AsString;
formVendas.Sds_pedidosBAIRRO.Text           :=  DM.sds_orcamentoBairro.Text;
//formVendas.Sds_OrcamentosPROPRIEDADE.Text := DM.sds_orcamentoNOME_PROPRIEDADE.Text;
//formVendas.Sds_OrcamentosMED_VETERINARIO.Text := DM.sds_orcamentoNOME_VETERINARIO.Text;
formVendas.Sds_pedidosCEP.Text              := removechar(DM.sds_orcamentoCEP.Text);
formVendas.Sds_pedidosUF.Text               := DM.sds_orcamentoUF.Text;
formVendas.Sds_pedidosCOD_IBGE.Text         := DM.sds_orcamentoCOD_IBGE.Text;
formVendas.Sds_pedidosNUMERO.AsInteger      := StrToIntDef(DM.sds_orcamentoNUMERO.Text,0);
formVendas.Sds_pedidosTIPO.TEXT             := DM.sds_orcamentoTIPO.Text;
formVendas.Sds_pedidosIE_PRODUTOR.Text      := DM.sds_orcamentoIE_PRODUTOR.Text;
formVendas.Sds_pedidosPROD_RURAL.Text       := DM.sds_orcamentoPRODUTOR.Text;
formVendas.Sds_pedidosCOD_ORCAMENTO.Text    := DM.sds_orcamentoCODIGO.Text;

DM.sds_orcamento_itens.Last;
formvendas.NItem  := DM.sds_orcamento_itensiten.value ;

DM.sds_orcamento_itens.First;
Contador := DM.sds_orcamento_itens.RecordCount;
For E:=1 to Contador do
 begin
formVendas.Sds_pedidos_itens.Insert;
formVendas.Sds_pedidos_itens.Edit;
//SPC_COD_ITENS.ExecProc;
//N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
formVendas.Sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
formVendas.Sds_pedidos_itensCODIGO_ID.Text            := formVendas.N_venda.Text;
formVendas.Sds_pedidos_itensCODIGO_PROD.Text          := DM.sds_orcamento_itensCODIGO_PROD.Text;
formVendas.Sds_pedidos_itensCODIGO_PRODUTO.Text       := DM.sds_orcamento_itensCODIGO_PRODUTO.Text;
formVendas.Sds_pedidos_itensDESCRICAO_PRODUTO.Text    := DM.sds_orcamento_itensDESCRICAO_PRODUTO.Text;
formVendas.Sds_pedidos_itensDESCONTO.TEXT             := DM.sds_orcamento_itensDESCONTO.Text;
formVendas.Sds_pedidos_itensQUANTIDADE.Text           := DM.sds_orcamento_itensQUANTIDADE.Text;
formVendas.Sds_pedidos_itensPRECO_UNITARIO.Text       := DM.sds_orcamento_itensPRECO_UNITARIO.Text;
formVendas.Sds_pedidos_itensPRECO_TOTAL.Text          := DM.sds_orcamento_itensPRECO_TOTAL.Text;
formVendas.Sds_pedidos_itensVENDEDOR.Text             := DM.sds_orcamento_itensVENDEDOR.Text;
formVendas.Sds_pedidos_itensUNIDADE.Text              := DM.sds_orcamento_itensUNIDADE.Text;
formVendas.Sds_pedidos_itensSIT_TRIBUTARIA.Text       := DM.sds_orcamento_itensSIT_TRIBUTARIA.Text;
formVendas.Sds_pedidos_itensENC_FINANCEIRO.TEXT       := DM.sds_orcamento_itensENC_FINANCEIRO.Text;
formVendas.Sds_pedidos_itensFRACAO.text               := DM.sds_orcamento_itensFRACAO.Text;
formVendas.Sds_pedidos_itensCOD_NCM.Text              := DM.sds_orcamento_itensCOD_NCM.Text;
formVendas.Sds_pedidos_itensPROD_SERV.Text            := DM.sds_orcamento_itensPROD_SERV.TEXT;
formVendas.Sds_pedidos_itensITEN.Text                 := DM.sds_orcamento_itensITEN.Text;
DM.sds_orcamento_itens.Next;
end;

formVendas.sds_pedidos_itens.Post;

{dm.Sds_Orcamento.Edit;
dm.Sds_OrcamentoEXPORTADO.TEXT := 'S';
dm.Sds_Orcamento.Post;
dm.Sds_Orcamento.ApplyUpdates(0);}
//formVendas.Sds_Orcamentos_itens.Post;
//formVendas.Tvendas.TabVisible := True;
formVendas.pc.ActivePageIndex := 1;
formVendas.Tvendas.PageIndex := 1;
formVendas.Inserir.Enabled:= False;
formVendas.pesquisar.Enabled := False;
//formVendas.reimprimir.Enabled := False;
formVendas.confirmar.Enabled := True;
//Navegador.Enabled := False;
formVendas.GroupBox1.Enabled := True;
formVendas.GroupBox2.Enabled := True;
formVendas.groupbox3.Enabled := True;
//formVendas.Alterar.Enabled:=false;
formVendas.cancelar.Enabled:=true;

 formVendas.Edit60.Visible := true;
 formVendas.E_desconto.Visible := true;
 formVendas.Edit62.Visible := true;

 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  formVendas.RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  formVendas.RbPreco2.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  formVendas.DBGRID.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  formVendas.DBGRID.Columns.Items[3].ReadOnly := True;
  end;


      formvendas.sds_pedidos_itens.last;
      formvendas.sds_pedidos_itens.Insert;

                     IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      formVendas.Sds_pedidos_itens.First;
                      formVendas.A:= 0;
                      formVendas.Desc := 0;
                      formVendas.A:= formVendas.A + formVendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      formVendas.Desc:= formVendas.Desc  + formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                      formVendas.Sds_pedidos_itens.Next;
                      formVendas.Edit60.Text:= FloatToStr(formVendas.A);
                      formVendas.Edit62.Text:= FloatToStr(formVendas.A - formVendas.DESC );
                      formVendas.E_desconto.Text := FloatToStr(formVendas.desc);
                      While not formVendas.Sds_pedidos_itens.Eof do
                      begin
                      formVendas.A:= formVendas.A + formVendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      formVendas.Desc:= formVendas.Desc  + formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                      formVendas.Sds_pedidos_itens.Next;
                      formVendas.Edit60.Text:= FloatToStr(formVendas.A);
                      formVendas.Edit62.Text:= FloatToStr(formVendas.A - formVendas.Desc);
                      formVendas.E_desconto.Text := FloatToStr(formVendas.desc);
                      end;
                      formVendas.Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      formVendas.Sds_pedidos_itens.First;
                      formVendas.A:= 0;
                      formVendas.Desc := 0;
                      formVendas.A:= formVendas.A + formVendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      formVendas.Desc:= formVendas.Desc  + formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                      formVendas.Sds_pedidos_itens.Next;
                      formVendas.Edit60.Text:= FloatToStr(formVendas.A + formVendas.desc);
                      formVendas.Edit62.Text:= FloatToStr(formVendas.A );
                      formVendas.E_desconto.Text := FloatToStr(formVendas.desc);
                      While not formVendas.Sds_pedidos_itens.Eof do
                      begin
                      formVendas.A:= formVendas.A + formVendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      formVendas.Desc:= formVendas.Desc  + formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                      formVendas.Sds_pedidos_itens.Next;
                      formVendas.Edit60.Text:= FloatToStr(formVendas.A + formVendas.desc);
                      formVendas.Edit62.Text:= FloatToStr(formVendas.A );
                      formVendas.E_desconto.Text := FloatToStr(formVendas.desc);
                      end;
                      formVendas.Sds_pedidos_itens.last;
                      end;


      formVendas.Sds_pedidos_itens.last;
      IF formVendas.sds_pedidos_itens.RecordCount > 0 then
      begin
    //  formvendas.NValor:=formvendas.sds_pedidos_itensITEN.value;
    //  formvendas.NItem:=formvendas.NItem+formvendas.NValor;
      formvendas.Sds_pedidos_itens.Insert;
  //    formvendas.Sds_pedidos_itensCODIGO.AsInteger:=(formvendas.NItem);
  //    formvendas.Sds_pedidos_itensITEN.AsInteger :=(formvendas.NItem);
      formvendas.Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      formvendas.Sds_pedidos_itensCODIGO_ID.Text := formvendas.N_venda.Text;
      formvendas.Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      formvendas.Sds_pedidos_itensDESCONTO.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      formvendas.Sds_pedidos_itensFRACAO.Text := '1';
      end;


      formVendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;

      formVendas.Sds_pedidos_itens.last;
      formVendas.Sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;
Close;
end;

end;
end;


end.
