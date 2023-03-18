unit ContratosBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, XDBGrids, StdCtrls, Mylabel, SUIButton,
  FMTBcd, DB, SqlExpr, Mask, RLBoleto, ToolEdit, DBCtrls, sMaskEdit,
  sCustomComboEdit, sTooledit, Buttons, sBitBtn, sLabel;

type
  TFormContratosBoleto = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    myLabel3d1: TsLabelFX;
    XDBGrid1: TXDBGrid;
    btnEditar: TsBitBtn;
    btnNovo: TsBitBtn;
    SPC_CREDIARIO: TSQLStoredProc;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox3: TComboBox;
    MaskEdit1: TMaskEdit;
    gbTitulo1: TRLBTitulo;
    XDBGrid2: TXDBGrid;
    DateEdit1: TsDateEdit;
    DateEdit2: TsDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    DateEdit3: TDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    Edit2: TEdit;
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrepararTitulo;
    procedure btnEditarClick(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    dtmovi, dtmovf, COD :string;
  
    dt :TDateTime;
    data :TDateTime;
    Credito : Real;
  ATIV, TIPO :string;
  end;

var
  FormContratosBoleto: TFormContratosBoleto;

implementation





uses Principal, ModulodeDados, Udmcob, Titulos, OnGuard, OgUtil,
  ModulodeDadosConsultas, ModuleDados1;

const
  EncryptionKey : TKey = ($E5, $8F, $84, $D6, $92, $C9, $A4, $D8,
                          $1A, $FA, $6F, $8D, $AB, $FC, $DF, $B4);

{$R *.dfm}

function MessageDlgAde(Msg: string; AType: TMsgDlgType; AButtons:
TMsgDlgButtons;
IndiceHelp: LongInt; DefButton: TMOdalResult; Portugues: Boolean): Word;
var
I: Integer;
Mensagem: TForm;

begin
Mensagem := CreateMessageDialog(Msg, AType, Abuttons);
Mensagem.HelpContext := IndiceHelp;
with Mensagem do
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TButton) then
    begin
      if (TButton(Components[i]).ModalResult = DefButton) then
      begin
        ActiveControl := TWincontrol(Components[i]);
      end;
    end;
  end;
  if Portugues then
  begin
    if Atype = mtConfirmation then
      Caption := 'Confirmação'
    else if AType = mtWarning then
      Caption := 'Aviso'
    else if AType = mtError then
      Caption := 'Erro'
    else if AType = mtInformation then
      Caption := 'Informação';
  end;
end;
if Portugues then
begin
  TButton(Mensagem.FindComponent('YES')).Caption := '&Todos';
  TButton(Mensagem.FindComponent('NO')).Caption := '&Um a Um';
  TButton(Mensagem.FindComponent('CANCEL')).Caption := '&Cancelar';
  TButton(Mensagem.FindComponent('ABORT')).Caption := '&Abortar';
  TButton(Mensagem.FindComponent('RETRY')).Caption := '&Repetir';
  TButton(Mensagem.FindComponent('IGNORE')).Caption := '&Ignorar';
  TButton(Mensagem.FindComponent('ALL')).Caption := '&Todos';
  TButton(Mensagem.FindComponent('HELP')).Caption := 'A&juda';
end;
Result := Mensagem.ShowModal;
Mensagem.Free;
end;

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
procedure TFormContratosBoleto.PrepararTitulo;
VAR
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
{
   Objetivo:
      Preencher as propriedades do componente gbTitulo1 com os dados da conta selecionada.
      Servirá de apoio para diveras outras rotinas
}
begin

   if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;

   begin
   nQtdeBoletos := StrToInt(Trim(MaskEdit1.Text));
   case ComboBox1.ItemIndex of
    0: gbTitulo1.BoletoLayout := blPadrao;
    1: gbTitulo1.BoletoLayout := blCarne;
    end;
    for nI := 1 to nQtdeBoletos do
     {Dados do titulo}
   with gbTitulo1 do
     begin
      NumeroDocumento :=  DM.SDS_CONTRATOSID_CONTRATO.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;
      Instrucoes.Text := dmcob.qryCedentesObservacao.Value;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');


      {Se não localizar o cedente, gera erro}
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      {Dados do cedente}
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica {CPF}
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica {CNPJ}
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

         {Endereço do cedente}
         with Endereco do
         begin
            Rua := dmcob.qryCedentesENDERECO.AsString;
            Endereco.Numero := dmcob.qryCedentesNumero.AsString;
            Complemento := dmcob.qryCedentesComplemento.AsString;
            Bairro := dmcob.qryCedentesBairro.AsString;
            Cidade := dmcob.qryCedentesCidade.AsString;
            Estado := dmcob.qryCedentesuf.AsString;
            CEP := dmcob.qryCedentesCEP.AsString;
            Email := dmcob.qryCedentesEMail.AsString;
         end; {with Endereco}

         {Dados bancários do cedente}
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end; {with Banco}
      end; {with Cedente}

      {Se não localizar o sacado, gera erro}
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      {Dados do sacado do título}
      with Sacado do
      begin
         if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
            TipoInscricao :=  tiPessoaFisica
         else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;
         NumeroCPFCGC := RemoveChar(dm.Sds_clientesCPF_cnpj.AsString);
         Nome := dm.Sds_clientesNome_rs.AsString;

         {Endereço do sacado do título}
         with Endereco do
         begin
            Rua := dm.Sds_clientesEndereco.AsString;
            Numero := dm.Sds_clientesNumero.AsString;
            Complemento := dm.Sds_clientesComplemento.AsString;
            Bairro := dm.Sds_clientesBairro.AsString;
            Cidade := dm.Sds_clientesCidade.AsString;
            Estado := dm.Sds_clientesUF.AsString;
            CEP := dm.Sds_clientesCEP.AsString;
            Email := dm.Sds_clientesEMail.AsString;
         end; {with Endereco}

         {Dados bancários do sacado do título}
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end; {with Banco}
      end; {with Sacado}
   end; {with Titulo}
end;
end;

procedure TFormContratosBoleto.RadioButton3Click(Sender: TObject);
begin
try
XDBGrid1.cursor:=crhourglass;
DM.SDS_Contratos.first;
repeat
DM.SDS_Contratos.edit;
DM.SDS_ContratosCHEK_BOX.Value:='T';
DM.SDS_Contratos.Post;
DM.SDS_Contratos.ApplyUpdates(0);
DM.SDS_Contratos.Next;
until DM.SDS_Contratos.eof;
DM.SDS_Contratos.first;
Xdbgrid1.cursor:=crdefault;
DM.SDS_Contratos.Refresh;
except
DM.SDS_Contratos.cancel;
end;
end;

procedure TFormContratosBoleto.RadioButton2Click(Sender: TObject);
begin
 try
XDBGrid1.cursor:=crhourglass;
DM.SDS_Contratos.first;
repeat
DM.SDS_Contratos.edit;
DM.SDS_ContratosCHEK_BOX.Value:='F';
DM.SDS_Contratos.Post;
DM.SDS_Contratos.ApplyUpdates(0);
DM.SDS_Contratos.Next;
until DM.SDS_Contratos.eof;
DM.SDS_Contratos.first;
Xdbgrid1.cursor:=crdefault;
except
DM.SDS_Contratos.cancel;
end;
end;

procedure TFormContratosBoleto.btnNovoClick(Sender: TObject);
var
  CONTADOR, i: Integer;
  dtaux : TDateTime;
  dt : TDateTime;
  DeStr : string;
  ATIV, TIPO :string;
begin
if edit2.Text = '' then
begin
  ShowMessage('Selecione o tipo de contrato antes de gerar...');
  Exit;
end;
ATIV :='A';
TIPO:= Edit2.Text;

dm.SDS_Contratos.Filtered := false;
dm.SDS_Contratos.Filter:='PLANO_CONTRATO ='+QuotedStr(TIPO) +' and ATIVO ='+QuotedStr(ATIV);
dm.SDS_Contratos.Filtered := True;


  dtAux := Date;
if ComboBox1.Text='Janeiro' then DeStr:='01';
if ComboBox1.Text='Fevereiro' then DeStr:='02';
if ComboBox1.Text='Março' then DeStr:='03';
if ComboBox1.Text='Abril' then DeStr:='04';
if ComboBox1.Text='Maio' then DeStr:='05';
if ComboBox1.Text='Junho' then DeStr:='06';
if ComboBox1.Text='Julho' then DeStr:='07';
if ComboBox1.Text='Agosto' then DeStr:='08';
if ComboBox1.Text='Setembro' then DeStr:='09';
if ComboBox1.Text='Outubro' then DeStr:='10';
if ComboBox1.Text='Novembro' then DeStr:='11';
if ComboBox1.Text='Dezembro' then DeStr:='12';



 if DM.SDS_CONTRATOS.RecordCount >0 then
          begin
           DM.SDS_CONTRATOS.First;
           Contador:= DM.SDS_CONTRATOS.RecordCount;
           For I:=1 to Contador do
           begin
           dt:= DM.SDS_CONTRATOSDATA_VENCIMENTO.AsDateTime;
           SPC_CREDIARIO.Params[0].Value:= null;
           SPC_CREDIARIO.Params[1].Value:=  DM.SDS_CONTRATOSCOD_CLIENTE.Text;
           SPC_CREDIARIO.Params[2].AsDate:= DATE;
           SPC_CREDIARIO.Params[3].Asdate:= StrToDate(FormatDateTime('dd',dt) +'/'+ DeStr +'/' + ComboBox2.text);
           SPC_CREDIARIO.Params[4].AsString:= 'Contrato Nº'+' '+dm.SDS_CONTRATOSID_CONTRATO.Text;
           SPC_CREDIARIO.Params[5].AsString:= FormPrincipal.UserLogado;
           SPC_CREDIARIO.Params[6].AsString:= 'A';
           SPC_CREDIARIO.Params[7].Value:= DM.SDS_CONTRATOSVALOR.TEXT;
           SPC_CREDIARIO.Params[8].Value:= '0';
           SPC_CREDIARIO.Params[9].Value:= '0';
           SPC_CREDIARIO.Params[10].Value:= '0';
           SPC_CREDIARIO.Params[11].Value:= '0';
           SPC_CREDIARIO.Params[12].Value:= '1';
           SPC_CREDIARIO.Params[13].Value:= DM.SDS_EmpresaCODIGO.Value;
           SPC_CREDIARIO.Params[14].Value:= 'BOL';
           SPC_CREDIARIO.Params[15].Value:= DM.SDS_CONTRATOSNOME_CLIENTE.Text;
           SPC_CREDIARIO.Params[16].AsString := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE := DM.SDS_CONTRATOSID_CONTRATO.TEXT ;
           SPC_CREDIARIO.Params[19].VALUE := null;
           SPC_CREDIARIO.Params[20].VALUE := null;
           SPC_CREDIARIO.ExecProc;
           DM.SDS_Contratos.Next;
           end;
           end;
end;

procedure TFormContratosBoleto.FormShow(Sender: TObject);
var
  ATIV :string;
begin
  ATIV :='A';
dm.SDS_Contratos.Active := false;
dm.SDS_Contratos.Active := true;
dm.SDS_Contratos.Filtered := false;
dm.SDS_Contratos.Filter:='ATIVO ='+QuotedStr(ATIV);
dm.SDS_Contratos.Filtered := True;

dm.SDS_Empresa.Active := False;
dm.SDS_Empresa.Active := true;
DM.SDS_CONFIGURACOES.Close;
DM.SDS_CONFIGURACOES.Open;

DMCob.SDS_Cedentes.Active:= False;
DMCob.SDS_Cedentes.Active:= True;

dateEdit1.date := date;
dateEdit2.date := date;
dm1.SDS_Contratos_Caract.Active :=False;
dm1.SDS_Contratos_Caract.Active :=true;
DM1.sds_contrato_tipo.Active := False;
DM1.sds_contrato_tipo.Active := true;
DM1.SDS_CONTRATO_PLANO.Active := False;
DM1.SDS_CONTRATO_PLANO.Active := true;

Edit2.Text :=   DM1.SDS_CONTRATO_PLANOID_PLANO.Text;
end;

procedure TFormContratosBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormContratosBoleto:=nil;
end;

procedure TFormContratosBoleto.btnEditarClick(Sender: TObject);
var
    Key : TKey;
    Code : TCode;
    Modifier : Longint;
begin
if edit2.Text = '' then
begin
  ShowMessage('Selecione o tipo de contrato antes de Imprimir...');
  Exit;
end;
COD:= DM.SDS_CONTRATOSID_CONTRATO.Text;

ATIV :='A';
TIPO:= Edit2.Text;

    DT := Date;
    dtmovi:=datetostr(DATE);
    dtmovf:=datetostr(DATE);

    dtmovi:= dateEdit1.text;
    dtmovf:=dateedit2.text;

  dmcob.qryTitulos.close;
  dmcob.qryTitulos.sql.clear;
  DMCOB.cds_titulos.Active := FALSE;
  dmcob.qryTitulos.SQL.add('select * from crediario where situacao = ''A'' and id_contrato >0'+'');
  dmcob.qryTitulos.SQL.add('AND ID_CONTRATO ='+(cod)+'');
  dmcob.qryTitulos.SQL.add('AND DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
  dmcob.qryTitulos.SQL.add('ORDER BY id_contrato asc');
  dmcob.qrytitulos.open;
  DMCOB.cds_titulos.Active := TRUE;

DMCob.SDS_Cedentes.Active:= False;
DMCob.SDS_Cedentes.Active:= True;
dm.Sds_clientes.Active:= False;
dm.SDS_Clientes.SQL.Clear;
DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'0'+'order by NOME_RS ASC');
dm.Sds_clientes.Active:= True;



dm.SDS_Contratos.Filtered := false;
dm.SDS_Contratos.Filter:='PLANO_CONTRATO ='+QuotedStr(TIPO) +' and ATIVO ='+QuotedStr(ATIV) ;
dm.SDS_Contratos.Filtered := True;



  If MessageDlgAde('Confirma a Impressão de Boletos?',MtInformation,[MbYes, MbNo],0, mrNo, True)= Mrno Then
  begin
  TRY
  DM.SDS_Contratos.First;
  repeat
  COD:= DM.SDS_CONTRATOSID_CONTRATO.Text;
  dmcob.qryTitulos.close;
  dmcob.qryTitulos.sql.clear;
  DMCOB.cds_titulos.Active := FALSE;
  dmcob.qryTitulos.SQL.add('select * from CREDIARIO where situacao = ''A'' and id_contrato >0'+'');
  dmcob.qryTitulos.SQL.add('AND ID_CONTRATO ='+(cod)+'');
  dmcob.qryTitulos.SQL.add('AND DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
  dmcob.qryTitulos.SQL.add('ORDER BY id_contrato asc');
  dmcob.qrytitulos.open;
  DMCOB.cds_titulos.Active := TRUE;

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + DM.SDS_CONTRATOSCOD_CLIENTE.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  If DM.SDS_Clientes.locate('CODIGO', DM.SDS_CONTRATOSCOD_CLIENTE.Text,[])=True then

  Data := StrToDate(FormatDateTime('dd',DM.SDS_CONTRATOSDATA_VENCIMENTO.AsDateTime) +'/'+ FormatDateTime('MM',dt) +'/' + FormatDateTime('YYYY',dt))+ 32;
  DateEdit3.Date := data;

  Key := EncryptionKey;
  Modifier := StringHashELF(dm.SDS_ClientesCPF_CNPJ.Text);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  InitRegCode(Key, '', DateEdit3.Date, Code);
  Edit1.Text := BufferToHex(Code, SizeOf(Code));

  Application.CreateForm(TfrmTitulos, frmTitulos);
   TRY
       DMCOB.cds_titulos.Edit;
       frmTitulos.editseunumero.text := DMCOB.cds_titulosID_CONTRATO.Text + '-' + DMCOB.cds_titulosParcela.Text;
       frmTitulos.Tag := 4;
       if DM.SDS_CONFIGURACOESCHS.TEXT = 'Y' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := dm.sds_clientesCodigo.text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
      // Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Credito > 0 THEN
       begin
       frmtitulos.chave :='Entre em contato com a Central fone 66-3555-1453..';
       end else
       begin
       frmtitulos.chave := Edit1.Text;
       end;
       end;

       frmTitulos.Showmodal;

   EXCEPT
      on E : Exception do
      begin
         frmTitulos.Release;
         MessageDlg('Ocorreu um erro ao tentar gerar o boleto: ' + E.Message,mtError,[mbOk],0);
      end;
    end;
  DM.SDS_Contratos.next;
  until DM.SDS_Contratos.eof;
  DM.SDS_Contratos.first;
  except
  DM.SDS_Contratos.cancel;
  end;
  end else
  begin
    Application.CreateForm(TfrmTitulos, frmTitulos);
    frmTitulos.Tag := 3;
    frmTitulos.Showmodal;
  end;

end;


procedure TFormContratosBoleto.DBLookupComboBox1Exit(Sender: TObject);
begin
Edit2.Text := DM1.SDS_CONTRATO_PLANOID_PLANO.TEXT;
end;

end.
