unit RCConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls, StdCtrls, SUIDlg, SUIComboBox,
  SUIEdit, Mask, DBCtrls, SUIDBCtrls, FMTBcd, SqlExpr,
  DB, DBClient, SimpleDS, Ubibli1, IBCustomDataSet, IBQuery, Math,
  RxToolEdit, RxCurrEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormRCConta = class(TForm)
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Label1: TLabel;
    BaixaParcela: TsuiMessageDialog;
    Panel1: TPanel;
    Panel3: TPanel;
    Label16: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    DateEdit1: TDateEdit;
    N_CONTA: TsuiEdit;
    N_CHEQUE: TsuiEdit;
    suiEdit1: TsuiEdit;
    ComboBox2: TsuiComboBox;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    SpSalvar: TsuiButton;
    suiButton6: TsuiButton;
    Label6: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    MsgI: TsuiMessageDialog;
    DTS_CHEQUE: TDataSource;
    SDS_CHEQUE: TSimpleDataSet;
    SDS_CHEQUECODIGO: TIntegerField;
    SDS_CHEQUECODIGO_COMPRA: TIntegerField;
    SDS_CHEQUEBANCO: TStringField;
    SDS_CHEQUEAGENCIA: TStringField;
    SDS_CHEQUECONTA_CORRENTE: TStringField;
    SDS_CHEQUECONTA_DESDE: TDateField;
    SDS_CHEQUETITULAR: TStringField;
    SDS_CHEQUETIPO_CHEQUE: TStringField;
    SDS_CHEQUEN_CHEQUE: TStringField;
    SDS_CHEQUEQNT: TStringField;
    SDS_CHEQUEVALOR_CHEQUE: TFMTBCDField;
    SDS_CHEQUECLIENTE: TStringField;
    SDS_CHEQUERETORNARDO: TStringField;
    SDS_CHEQUERETORNADO_PAGO: TStringField;
    SDS_CHEQUEMOTIVO_RETORNO: TStringField;
    SDS_CHEQUEDATA_CADASTRO: TDateField;
    SDS_CHEQUEDATA_DEPOSITO: TDateField;
    SDS_CHEQUEDATA_RETORNO: TDateField;
    SDS_CHEQUEDATA_BAIXA: TDateField;
    SDS_CHEQUEUSUARIO_CADASTRO: TStringField;
    SDS_CHEQUEUSUARIO_BAIXA: TStringField;
    SDS_CHEQUECOMPENSADO: TStringField;
    SPC_CHEQUE: TSQLStoredProc;
    MSG: TsuiMessageDialog;
    SDS_CHEQUECODIGO_CC: TIntegerField;
    SDS_CHEQUENUMERO_CC: TStringField;
    Label12: TLabel;
    DBLOOKUPCOMBOBOX1: TsuiEdit;
    DBLCB_AGENCIA: TsuiEdit;
    SDS_CHEQUECOD_EMPRESA: TIntegerField;
    SDS_CHEQUECOD_CLIENTE: TIntegerField;
    SDS_CHEQUENUMERO: TIntegerField;
    SDS_CHEQUECOD_BARRAS_CHEQUE: TStringField;
    dbedit4: TsuiEdit;
    Label13: TLabel;
    Label15: TLabel;
    suiEdit3: TsuiEdit;
    suiButton3: TsuiButton;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    qrcaixa_mov: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure suiEdit1Enter(Sender: TObject);
    procedure DBLCB_AGENCIAEnter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure N_CONTAEnter(Sender: TObject);
    procedure N_CHEQUEEnter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure suiEdit1Exit(Sender: TObject);
    procedure DBLCB_AGENCIAExit(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure N_CONTAExit(Sender: TObject);
    procedure N_CHEQUEExit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedit4KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    procedure CurrencyEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    ValChPre: Real;
    Data, DataVenc, DataAtual: TDateTime;
    dia, mes, ano: Word;
    TOT, Pert, TotPert, ValCh, ValTroco, ValConta: Real;
  public
    { Public declarations }
  end;

var
  FormRCConta: TFormRCConta;
  TD:TTransactionDesc;
   CodigoCheque: Integer;
     total, total1 :Real;
  DESCONTO, pago : Real;
  DESC : string;
   contador :Integer;
   
implementation

uses ModulodeDadosBaixas,Acesso,Principal,CRCrediario,
  Z_RotinasGerais, ModulodeDados, Recibo, UDadosAdm, CRCrediarioconv,
  LancCheques, Utroco;

{$R *.dfm}

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

function WordsCount( s : string ) : integer;
var 
ps: PChar;
nSpaces,n,o : integer; 
begin 
//total de palavras 
n := 0; 
//total de letras 
o := 0; 
s := s + #0; 
ps := @s[ 1 ];
while( #0 <> ps^ ) do 
begin
while((' ' = ps^)and(#0 <> ps^)) do
begin
inc( ps );
//conta total de letras
inc(o);
end;
nSpaces := 0;
while((' ' <> ps^)and(#0 <> ps^))do
begin
inc(nSpaces);
inc(ps); 
//conta total de letras 
inc(o); 
end;
if ( nSpaces > 0 ) then 
begin 
inc( n );
end;
end; 
//recebe o total de letras contadas incluindo os espacos 
Result := o;
end;

procedure TFormRCConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//DMB.SDS_Crediario_Baixa.Filtered := FALSE;
Action:=CaFree;
FormRCConta:=nil;
end;

procedure TFormRCConta.suiButton1Click(Sender: TObject);
var
I, E: INTEGER;
Y, Z: Real;
cliente : string;
chek :string;
begin


if Application.MESSAGEBOX('Confirma o Pagamento em Dinheiro?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin

if Tag = 1 then
begin
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;
          cliente := FormCRCrediario.Cliente.Text;

            DMB.SDS_Crediario_Baixa.Filtered := false;
            DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
            DMB.SDS_Crediario_Baixa.Filtered := True;


          DMB.SDS_Crediario_Baixa.First;
          Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to Contador do
          begin
                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Receb. de Crediario ref. Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'REC';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          DMB.SDS_Crediario_Baixa.NEXT;
          end;

DMB.SDS_Crediario_Baixa.First;
Contador := DMB.SDS_Crediario_Baixa.RecordCount;
For I:=1 to Contador do
begin
{
FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[1].AsString:= FormPrincipal.UserLogado;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[2].AsDate:= Date;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Execproc; }
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.fConsulta do
      begin
         close;
         commandtext.Clear;
         commandtext.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
         Parambyname('DATA').AsDate     := Date;
         Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
         Parambyname('CODIGO').AsInteger    := DMB.SDS_Crediario_BaixaCODIGO.Value;
         open;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
  // DMB.SDS_Crediario_Baixa.Refresh;

DMB.SDS_Crediario_Baixa.Next;
end;


        // grava parcelas baixadas
          DMB.SDS_Crediario_Baixa.First;
          Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to Contador do
          begin
         { FormCRCrediario.Spc_crediario_Recebido.Params[1].AsInteger   := DMB.SDS_Crediario_BaixaCODIGO.value;
          FormCRCrediario.Spc_crediario_Recebido.Params[2].AsInteger   := dm.SDS_EmpresaCODIGO.value;
          FormCRCrediario.Spc_crediario_Recebido.Params[3].asString    := DMB.SDS_Crediario_BaixaPARCELA.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[4].Value       := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[5].Value        := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[6].Value   := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[7].Value   := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[8].Value   := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[9].AsDate  := date;
          FormCRCrediario.Spc_crediario_Recebido.Params[10].AsString  := FormPrincipal.UserLogado;
          FormCRCrediario.Spc_crediario_Recebido.Params[11].Value   := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[12].AsString := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[13].Value  := StrToIntDef(DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text,0);
          FormCRCrediario.Spc_crediario_Recebido.Params[14].Value  := 0;
          FormCRCrediario.Spc_crediario_Recebido.Params[15].asdate := DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime;
          FormCRCrediario.Spc_crediario_Recebido.Params[16].Value  := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[17].Value  := null;
          FormCRCrediario.Spc_crediario_Recebido.ExecProc; }

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.fConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    if DMB.SDS_Crediario_BaixaNOME_SACADO.text > '' then
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text
                    else
                    parambyname('NOME_CLIENTE').value         := null;
                    if DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Value > 0 then
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text
                    else
                    parambyname('COD_COMPRA').value           := null;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value          := -1;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          DMB.SDS_Crediario_Baixa.NEXT;
          end;

if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;

  Formrecibo:=TFormrecibo.Create(self);
  Formrecibo.Edit2.Value := y;
  Formrecibo.Edit1.Text := FormCRCrediario.RxLabel6.Caption;
     with DMB.SDS_Crediario_Baixa do
      begin
         first;
         Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' os titulos conforme segue:';
         while not eof do
            begin
            Formrecibo.Memo2.Lines.Add(''+ DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text +'-'+ DMB.SDS_Crediario_BaixaPARCELA.Text + ' Valor R$: ' + DMb.SDS_Crediario_BaixaVALOR_TOTAL.Text+' Venc: '+ DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Text);
         Next;
         end;
  //Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';
  Formrecibo.Showmodal;
  end;
end;

DMB.SDS_Crediario_Baixa.Active := FALSE;
DMB.SDS_Crediario_Baixa.Active := TRUE;
DMB.SDS_Crediario_Baixa.Filtered := false;



DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediario.Navigator.Enabled:= False;
FormCRCrediario.BTBaixaParcial.Enabled:= False;
FormCRCrediario.BTBaixaTotal.Enabled:= False;
FormCRCrediario.BTBaixaParcela.Enabled:= False;
FormCRCrediario.BTPrint.Enabled:= False;
FormCRCrediario.BTJuros.Enabled:= False;
FormCRCrediario.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediario.Navigator.Enabled:= True;
FormCRCrediario.BTBaixaParcial.Enabled:= True;
FormCRCrediario.BTBaixaTotal.Enabled:= True;
FormCRCrediario.BTBaixaParcela.Enabled:= True;
FormCRCrediario.DBGrid1.Enabled:= True;
FormCRCrediario.BTPrint.Enabled:= True;
FormCRCrediario.BTJuros.Enabled:= True;
end;
FormCRCrediario.CurrencyEdit1.Value:= 0;
FormCRCrediario.CurrencyEdit2.Value:= 0;
FormCRCrediario.CurrencyEdit3.Value:= 0;
FormCRCrediario.CurrencyEdit4.Value:= 0;
FormCRCrediario.CurrencyEdit5.Value:= 0;
FormCRCrediario.CurrencyEdit6.Value:= 0;
FormCRCrediario.CurrencyEdit7.Value:= 0;
FormCRCrediario.CurrencyEdit8.Value:= 0;
FormCRCrediario.CurrencyEdit9.Value:= 0;
  Close;
end;

if Tag = 2 then
begin
          cliente := FormCRCrediarioConv.Cliente.Text;

       dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;
            DMB.SDS_Crediario_Baixa.Filtered := false;
            DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
            DMB.SDS_Crediario_Baixa.Filtered := True;

          DMB.SDS_Crediario_Baixa.First;
          Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to Contador do
          begin
                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Receb. de Crediario ref. Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediarioConv.RxLabel6.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'REC';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          DMB.SDS_Crediario_Baixa.NEXT;
          end;

DMB.SDS_Crediario_Baixa.First;
Contador := DMB.SDS_Crediario_Baixa.RecordCount;
For I:=1 to Contador do
begin
{FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[1].AsString:= FormPrincipal.UserLogado;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[2].AsDate:= Date;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Execproc;}
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
         Parambyname('DATA').AsDate     := Date;
         Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
         Parambyname('CODIGO').AsInteger    := DMB.SDS_Crediario_BaixaCODIGO.Value;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
DMB.SDS_Crediario_Baixa.Next;
end;


        // grava parcelas baixadas
          DMB.SDS_Crediario_Baixa.First;
          Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to Contador do
          begin
         { FormCRCrediarioConv.Spc_crediario_Recebido.Params[1].AsInteger   := DMB.SDS_Crediario_BaixaCODIGO.value;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[2].AsInteger   := dm.SDS_EmpresaCODIGO.value;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[3].asString    := DMB.SDS_Crediario_BaixaPARCELA.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[4].Value       := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[5].Value        := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[6].Value   := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[7].Value   := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[8].Value   := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[9].AsDate  := date;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[10].AsString  := FormPrincipal.UserLogado;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[11].Value   := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[12].AsString := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[13].Value  := StrToIntDef(DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text,0);
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[14].Value  := 0;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[15].asdate := DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[16].Value  := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[17].Value  := null;
          FormCRCrediarioConv.Spc_crediario_Recebido.ExecProc; }

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.fConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    if DMB.SDS_Crediario_BaixaNOME_SACADO.text > '' then
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text
                    else
                    parambyname('NOME_CLIENTE').value         := null;
                    if DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Value > 0 then
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text
                    else
                    parambyname('COD_COMPRA').value           := null;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value          := -1;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          DMB.SDS_Crediario_Baixa.NEXT;
          end;

if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);

While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;

  Formrecibo:=TFormrecibo.Create(self);
  Formrecibo.Edit2.Value := y;
  Formrecibo.Edit1.Text := FormCRCrediarioConv.RxLabel6.Caption;
     with DMB.SDS_Crediario_Baixa do
      begin
         first;
         Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' os titulos conforme segue:';
         while not eof do
            begin
            Formrecibo.Memo2.Lines.Add(''+ DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text +'-'+ DMB.SDS_Crediario_BaixaPARCELA.Text + ' Valor R$: ' + DMb.SDS_Crediario_BaixaVALOR_TOTAL.Text+' Venc: '+ DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Text);
         Next;
         end;
  //Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';
  Formrecibo.Showmodal;
  end;
end;

DMB.SDS_Crediario_Baixa.Active := FALSE;
DMB.SDS_Crediario_Baixa.Active := TRUE;
DMB.SDS_Crediario_Baixa.Filtered := false;



DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediarioConv.Navigator.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= False;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= False;
FormCRCrediarioConv.BTPrint.Enabled:= False;
FormCRCrediarioConv.BTJuros.Enabled:= False;
FormCRCrediarioConv.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediarioConv.Navigator.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= True;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= True;
FormCRCrediarioConv.DBGrid1.Enabled:= True;
FormCRCrediarioConv.BTPrint.Enabled:= True;
FormCRCrediarioConv.BTJuros.Enabled:= True;
end;
FormCRCrediarioConv.CurrencyEdit1.Value:= 0;
FormCRCrediarioConv.CurrencyEdit2.Value:= 0;
FormCRCrediarioConv.CurrencyEdit3.Value:= 0;
FormCRCrediarioConv.CurrencyEdit4.Value:= 0;
FormCRCrediarioConv.CurrencyEdit5.Value:= 0;
FormCRCrediarioConv.CurrencyEdit6.Value:= 0;
FormCRCrediarioConv.CurrencyEdit7.Value:= 0;
FormCRCrediarioConv.CurrencyEdit8.Value:= 0;
FormCRCrediarioConv.CurrencyEdit9.Value:= 0;
  Close;
end;
end;

end;



procedure TFormRCConta.suiButton2Click(Sender: TObject);
var
  I, E, Cod: INTEGER;
  VB, Y, Z: Real;
begin
  cadastrouch := false;

  FormCheques:=TFormCheques.Create(self);
  FormCheques.Tag := 3;
  FormCheques.CurrencyEdit1.Value := FormCRCrediario.CurrencyEdit5.Value;
  FormCheques.ShowModal;

  if CurrencyEdit3.Value > 0 then
  begin
    FormTroco := TFormTroco.create(Self);
    FormTroco.tag := 3;
    FormTroco.showmodal;

    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
    dm.IBTransaction.StartTransaction;
    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into movimento_diario');
    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit3.value;
    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit3.value;

    DM.SDS_CONFIGURACOES.open;
    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 11; // VENDA PRAZO
    qrcaixa_mov.parambyname('historico').asstring := 'Receb. diferença do valor pago em cheque';
    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
    qrcaixa_mov.parambyname('COD_CREDIARIO').value  := null;

    qrcaixa_mov.ExecSQL;
    dm.IBTransaction.CommitRetaining;
  END;

  if cadastrouch = true then
  begin
  dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;
    DMB.SDS_Crediario_Baixa.Filtered := false;
    DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
    DMB.SDS_Crediario_Baixa.Filtered := True;

    DMB.SDS_Crediario_Baixa.First;
    FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;

    For E:=1 to FormCRCrediario.Contador do
    begin
      if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;

      dm.IBTransaction.StartTransaction;
      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into movimento_diario');
      qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

      qrcaixa_mov.parambyname('codigo').AsInteger := 1;
      qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
      qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
      qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
      qrcaixa_mov.parambyname('valor_entrada').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
      qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;

      DM.SDS_CONFIGURACOES.open;
      qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
      qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 11; // VENDA PRAZO
      qrcaixa_mov.parambyname('historico').asstring := 'Receb. Cred. Ref. Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption +' em cheque';
      qrcaixa_mov.parambyname('tipo').AsString  := 'C';
      qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
      qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;

      qrcaixa_mov.ExecSQL;
      dm.IBTransaction.CommitRetaining;

      DMB.SDS_Crediario_Baixa.NEXT;
    end;

    // grava parcelas baixadas
    DMB.SDS_Crediario_Baixa.First;
    FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;

    For E:=1 to FormCRCrediario.Contador do
    begin
      if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;

      with DM.FConsulta do
      begin
        close;
        commandtext.Clear;
        commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
        commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
        commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
        commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
        commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

        parambyname('codigo').AsInteger         := 1;
        parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
        parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
        parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
        parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
        parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
        parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
        parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
        parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
        parambyname('DATA_BAIXA').AsDate          := date;
        parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
        parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
        if DMB.SDS_Crediario_BaixaNOME_SACADO.text > '' then
        parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text
        else
        parambyname('NOME_CLIENTE').value         := null;
        if DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Value > 0 then
        parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text
        else
        parambyname('COD_COMPRA').value           := null;
        parambyname('SALDO_PAGAR').AsFloat        := 0;
        parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
        parambyname('VALOR_PAGO').AsFloat         := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
        parambyname('DOC_REC_ADM').Value          := -1;

        open;
        dm.IBTransaction.CommitRetaining;
      end;

      DMB.SDS_Crediario_Baixa.NEXT;
    end;

    DMB.SDS_Crediario_Baixa.First;
    FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;

    For I:=1 to FormCRCrediario.Contador do
    begin

      if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;

      dm.IBTransaction.StartTransaction;

      with dm.fConsulta do
      begin
        close;
        CommandText.Clear;
        commandtext.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
        Parambyname('DATA').AsDate     := Date;
        Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
        Parambyname('CODIGO').AsInteger    := DMB.SDS_Crediario_BaixaCODIGO.Value;
        open;
      end;

      dm.IBTransaction.Commit;
      dm.QConsulta.Close;
      DMB.SDS_Crediario_Baixa.Next;
    end;

    if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      Formrecibo:=TFormrecibo.Create(self);
      Formrecibo.Edit2.Value := FormCRCrediario.CurrencyEdit5.Value;
      Formrecibo.Edit1.Text := FormCRCrediario.RxLabel6.Caption;
      Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';
      Formrecibo.Showmodal;
    end;

    DMB.SDS_Crediario_Baixa.Active:= False;
    DMB.SDS_Crediario_Baixa.Active:= True;
    DMB.SDS_Crediario_Baixa.Filtered := false;

    DMB.SDS_Crediario_Baixa.First;
    Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
    DMB.SDS_Crediario_Baixa.Next;
    FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);

    While not DMB.SDS_Crediario_Baixa.Eof do
    begin
      Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
      DMB.SDS_Crediario_Baixa.Next;
      FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
    end;

    DMB.SDS_Crediario_Baixa.First;
    if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
    begin
      FormCRCrediario.Navigator.Enabled:= False;
      FormCRCrediario.BTBaixaParcial.Enabled:= False;
      FormCRCrediario.BTBaixaTotal.Enabled:= False;
      FormCRCrediario.BTBaixaParcela.Enabled:= False;
      FormCRCrediario.BTPrint.Enabled:= False;
      FormCRCrediario.BTJuros.Enabled:= False;
      FormCRCrediario.DBGrid1.Enabled:= False;
    end
    else
    begin
      FormCRCrediario.Navigator.Enabled:= True;
      FormCRCrediario.BTBaixaParcial.Enabled:= True;
      FormCRCrediario.BTBaixaTotal.Enabled:= True;
      FormCRCrediario.BTBaixaParcela.Enabled:= True;
      FormCRCrediario.DBGrid1.Enabled:= True;
      FormCRCrediario.BTPrint.Enabled:= True;
      FormCRCrediario.BTJuros.Enabled:= True;

      DMB.SDS_Crediario_Baixa.First;
      Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
      DMB.SDS_Crediario_Baixa.Next;
      FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);

      While not DMB.SDS_Crediario_Baixa.Eof do
      begin
        Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
        DMB.SDS_Crediario_Baixa.Next;
        FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
      end;
    end;
  end;

FormCRCrediario.CurrencyEdit1.Value:= 0;
FormCRCrediario.CurrencyEdit2.Value:= 0;
FormCRCrediario.CurrencyEdit3.Value:= 0;
FormCRCrediario.CurrencyEdit4.Value:= 0;
FormCRCrediario.CurrencyEdit5.Value:= 0;
FormCRCrediario.CurrencyEdit6.Value:= 0;
FormCRCrediario.CurrencyEdit7.Value:= 0;
FormCRCrediario.CurrencyEdit8.Value:= 0;
FormCRCrediario.CurrencyEdit9.Value:= 0;
  Close;
end;


procedure TFormRCConta.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

if NOT (ActiveControl is TCurrencyEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End; 

end;

procedure TFormRCConta.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.CurrencyEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.DBLookupComboBox1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.suiEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.DBLCB_AGENCIAEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.ComboBox2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.N_CONTAEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.N_CHEQUEEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCConta.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
if DateEdit2.Text = '  /  /    ' then
begin
MsgI.Text:= 'Informe A Data Para Deposito';
MsgI.ShowModal;
DateEdit2.SetFocus;
end else
DataAtual := Date;
DataVenc := DateEdit2.Date;
ValCh := FormCRCrediario.CurrencyEdit5.Value;
Data := DataVenc - DataAtual;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS_CHEQUE.AsFloat;
TotPert := (Tot * Pert);
ValChPre := (ValCh * TotPert)/100;
ValChPre := (ValCh + ValChPre);
CurrencyEdit2.Value := ValChPre;

end;

procedure TFormRCConta.CurrencyEdit1Exit(Sender: TObject);
begin
ValConta := CurrencyEdit1.Value;
ValTroco := ( ValConta - ValChPre);
CurrencyEdit3.Value := ValTroco;
//DateEdit2.Enabled := False;
CorSaida(Sender);
end;

procedure TFormRCConta.DBLookupComboBox1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCConta.suiEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCConta.DBLCB_AGENCIAExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCConta.ComboBox2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCConta.N_CONTAExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCConta.N_CHEQUEExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCConta.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCConta.suiButton6Click(Sender: TObject);
begin
Panel3.Enabled:= False;
DateEdit2.Color:= $00E8E8E8;
CurrencyEdit1.Color:= $00E8E8E8;
DBLookupComboBox1.Color:= $00E8E8E8;
suiEdit1.Color:= $00E8E8E8;
DBLCB_AGENCIA.Color:= $00E8E8E8;
ComboBox2.Color:= $00E8E8E8;
N_CONTA.Color:= $00E8E8E8;
N_CHEQUE.Color:= $00E8E8E8;
DateEdit1.Color:= $00E8E8E8;
suiButton2.Enabled:= True;
suiButton1.Enabled:= True;
suiButton6.Enabled:= False;
SPSalvar.Enabled:= False;
end;

procedure TFormRCConta.FormShow(Sender: TObject);
begin
IF Tag = 1  then
BEGIN
//Label12.Caption:= FormCRCrediario.RxLabel8.Caption;
Label12.Caption:= FormatFloat('R$: ##,##0.00',FormCRCrediario.CurrencyEdit5.Value);
end;

IF Tag = 2  then
BEGIN
//Label12.Caption:= FormCRCrediario.RxLabel8.Caption;
Label12.Caption:= FormatFloat('R$: ##,##0.00',FormCRCrediarioConv.CurrencyEdit5.Value);
end;

DM.SDS_CONFIGURACOES.Active:= False;
DM.SDS_Bancos.Active:= False;
DM.SDS_Agencias.Active:= False;
DM.SDS_CONFIGURACOES.Active:= True;
DM.SDS_Bancos.Active:= True;
DM.SDS_Agencias.Active:= True;
end;

procedure TFormRCConta.SpSalvarClick(Sender: TObject);
var
I, E, Cod: INTEGER;
VB, Y, Z: Real;
begin

if Tag = 1 then
begin
VB:= FormCRCrediario.CurrencyEdit5.value;
IF DBLookupComboBox1.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Nome do Banco!';
MSGI.ShowModal;
DBLookupComboBox1.SetFocus;
end else
IF suiEdit1.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Nome do Titular da Conta!';
MSGI.ShowModal;
suiEdit1.SetFocus;
end else
IF DBLCB_AGENCIA.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número da Agência!';
MSGI.ShowModal;
DBLCB_AGENCIA.SetFocus;
end else
IF ComboBox2.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Tipo de Cheque!';
MSGI.ShowModal;
ComboBox2.SetFocus;
end else
IF N_CONTA.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número da Conta!';
MSGI.ShowModal;
N_CONTA.SetFocus;
end else
IF N_CHEQUE.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número do Cheque!';
MSGI.ShowModal;
N_CHEQUE.SetFocus;
end else
IF DateEdit1.Text = '  /  /    ' THEN
BEGIN
MSGI.Text:= 'Informe a Data da Conta!';
MSGI.ShowModal;
DateEdit1.SetFocus;
end else
IF DateEdit2.Text = '  /  /    ' THEN
BEGIN
MSGI.Text:= 'Informe a Data para Deposito!';
MSGI.ShowModal;
DateEdit2.SetFocus;
end else
IF (ValChPre < VB) THEN
BEGIN
MSGI.Text:= 'O Valor Do Cheque Pré-Datado Não Pode Ser Menor Que o Valor Da Conta do Cliente. Utilize a Baixa de Parcela ou a Baixa Parcial Para Este Recebimento!';
MSGI.ShowModal;
end else
begin
Try
SDS_CHEQUE.Active:= False;
SDS_CHEQUE.Active:= True;
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);

{DMB.SDS_Crediario_Baixa.First;
Z:= Z + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Z:= Z + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
end; }


 SPC_CHEQUE.ExecProc;
 Cod:= (SPC_CHEQUE.ParamByName('ATUAL').AsInteger);
        SDS_CHEQUE.Insert;
        SDS_CHEQUE.FieldByName('CODIGO').AsInteger:=(Cod);

 SDS_CHEQUE.FieldByName('CODIGO_COMPRA').Value:= null;
 SDS_CHEQUE.FieldByName('BANCO').Value:= DBLookupComboBox1.Text;
 SDS_CHEQUE.FieldByName('AGENCIA').Value:= DBLCB_AGENCIA.Text;
 SDS_CHEQUE.FieldByName('CONTA_CORRENTE').Value:= N_Conta.Text;
 SDS_CHEQUE.FieldByName('CONTA_DESDE').Value:= DateEdit1.Date;
 SDS_CHEQUE.FieldByName('TITULAR').Value:= suiEdit1.Text;
 SDS_CHEQUE.FieldByName('TIPO_CHEQUE').Value:= ComboBox2.Text;
 SDS_CHEQUE.FieldByName('N_CHEQUE').Value:= N_CHEQUE.Text;
 SDS_CHEQUE.FieldByName('QNT').Value:='1 /1';
 SDS_CHEQUE.FieldByName('VALOR_CHEQUE').Value:= CurrencyEdit1.Value;
 SDS_CHEQUE.FieldByName('CLIENTE').Value:= FormCRCrediario.RxLabel6.Caption;
 SDS_CHEQUE.FieldByName('DATA_CADASTRO').Value:= DATE;
 SDS_CHEQUE.FieldByName('DATA_DEPOSITO').Value:=DateEdit2.Text;
 SDS_CHEQUE.FieldByName('USUARIO_CADASTRO').Value:= FormPrincipal.UserLogado;
 SDS_CHEQUE.FieldByName('COMPENSADO').Value:= 'N';
 SDS_CHEQUE.FieldByName('COD_EMPRESA').Text := DM.SDS_EmpresaCODIGO.Text;
 SDS_CHEQUE.FieldByName('cod_empresa').AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
 SDS_CHEQUE.FieldByName('cod_cliente').AsInteger := DMb.SDS_Crediario_BaixaCODIGO_CLIENTE.AsInteger;

 SDS_CHEQUE.Post;

 SDS_CHEQUE.ApplyUpdates(0);
// DM.SQLC.Commit(TD);

  
      { DMB.SDS_Crediario_Baixa.Filtered := false;
       DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
       DMB.SDS_Crediario_Baixa.Filtered := True;}

          DMB.SDS_Crediario_Baixa.First;
          FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediario.Contador do
          begin
         { FormCRCrediario.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediario.SPC_MOV_DIARIO.Params[2].AsString:= 'Receb. em CH Nº '+ N_CHEQUE.Text +' Ref. Crediario vda Nº ' + DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption;
          FormCRCrediario.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediario.SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          FormCRCrediario.SPC_MOV_DIARIO.Params[5].Value := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediario.SPC_MOV_DIARIO.Params[6].Value := 0;
          FormCRCrediario.SPC_MOV_DIARIO.Params[7].Value := NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[8].Value := NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[9].Value := NULL; //DMB.SDS_Crediario_BaixaCODIGO_COMPRA.AsString;
          FormCRCrediario.SPC_MOV_DIARIO.Params[10].Value:= 'CHE';
          FormCRCrediario.SPC_MOV_DIARIO.Params[11].Value:= DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediario.SPC_MOV_DIARIO.ExecProc;  }

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 10; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Receb. Cred. Ref. Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption +' Ref. cheque nº '+ N_CHEQUE.text ;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;

                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          DMB.SDS_Crediario_Baixa.NEXT;
          end;

           // grava parcelas baixadas
          DMB.SDS_Crediario_Baixa.First;
          FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediario.Contador do
          begin
         { FormCRCrediario.Spc_crediario_Recebido.Params[1].Value   := DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[2].Value   := dm.SDS_EmpresaCODIGO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[3].Value   := DMB.SDS_Crediario_BaixaPARCELA.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[4].Value   := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;;
          FormCRCrediario.Spc_crediario_Recebido.Params[5].Value   := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[6].Value   := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[7].Value   := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[8].Value   := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[9].AsDate  := date;
          FormCRCrediario.Spc_crediario_Recebido.Params[10].Value  := FormPrincipal.UserLogado;
          FormCRCrediario.Spc_crediario_Recebido.Params[11].Value  := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[12].Value  := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[13].value  := StrToIntDef(DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text,0);
          FormCRCrediario.Spc_crediario_Recebido.Params[14].Value  := 0;
          FormCRCrediario.Spc_crediario_Recebido.Params[15].asdate := DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime;
          FormCRCrediario.Spc_crediario_Recebido.Params[16].Value  := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[17].Value  := null;
          FormCRCrediario.Spc_crediario_Recebido.ExecProc;}

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                      parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value          := null;

                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
          DMB.SDS_Crediario_Baixa.NEXT;
          end;

DMB.SDS_Crediario_Baixa.First;
FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
For I:=1 to FormCRCrediario.Contador do
begin
{FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[2].AsString:= FormPrincipal.UserLogado;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[3].Value:= Date;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Execproc; }
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
         Parambyname('DATA').AsDate     := Date;
         Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
         Parambyname('CODIGO').AsInteger    := DMB.SDS_Crediario_BaixaCODIGO.Value;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
DMB.SDS_Crediario_Baixa.Next;
end;

DMB.SDS_Crediario_Baixa.Active := FALSE;
DMB.SDS_Crediario_Baixa.Active := TRUE;
DMB.SDS_Crediario_Baixa.Filtered := false;



      {    FormCRCrediario.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediario.SPC_MOV_DIARIO.Params[2].AsString:= 'Receita de Crediário Completo no Cheque Nº'+ N_CHEQUE.Text;
          FormCRCrediario.SPC_MOV_DIARIO.Params[3].AsString:=FormPrincipal.UserLogado;
          FormCRCrediario.SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          FormCRCrediario.SPC_MOV_DIARIO.Params[5].Value:= Z;
          FormCRCrediario.SPC_MOV_DIARIO.Params[6].Value:= 0;
          FormCRCrediario.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[9].Value:= DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Value;
          FormCRCrediario.SPC_MOV_DIARIO.Params[10].Value:= 'CHE';
          FormCRCrediario.SPC_MOV_DIARIO.ExecProc;

DMB.SDS_Crediario_Baixa.First;
FormCRCrediario.Contador:=DMB.SDS_Crediario_Baixa.RecordCount;
For I:=1 to FormCRCrediario.Contador do
begin
FormCRCrediario.SPC_BAIXA_PARCELA.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediario.SPC_BAIXA_PARCELA.Params[2].AsString:=FormPrincipal.UserLogado;
FormCRCrediario.SPC_BAIXA_PARCELA.Params[3].Value:= Date;
FormCRCrediario.SPC_BAIXA_PARCELA.Execproc;
DMB.SDS_Crediario_Baixa.Next;
end;  }

DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;


DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediario.Navigator.Enabled:= False;
FormCRCrediario.BTBaixaParcial.Enabled:= False;
FormCRCrediario.BTBaixaTotal.Enabled:= False;
FormCRCrediario.BTBaixaParcela.Enabled:= False;
FormCRCrediario.BTPrint.Enabled:= False;
FormCRCrediario.BTJuros.Enabled:= False;
FormCRCrediario.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediario.Navigator.Enabled:= True;
FormCRCrediario.BTBaixaParcial.Enabled:= True;
FormCRCrediario.BTBaixaTotal.Enabled:= True;
FormCRCrediario.BTBaixaParcela.Enabled:= True;
FormCRCrediario.DBGrid1.Enabled:= True;
FormCRCrediario.BTPrint.Enabled:= True;
FormCRCrediario.BTJuros.Enabled:= True;

DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
end;
 if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
  Formrecibo:=TFormrecibo.Create(self);
  Formrecibo.Edit2.Value := y;
  Formrecibo.Edit1.Text := FormCRCrediario.RxLabel6.Caption;
  Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';
   Formrecibo.Showmodal;
   end;
Close;
Except
MSG.ShowModal;
end;
end;
end;

if Tag = 2 then
begin
VB:= FormCRCrediarioConv.CurrencyEdit5.value;
IF DBLookupComboBox1.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Nome do Banco!';
MSGI.ShowModal;
DBLookupComboBox1.SetFocus;
end else
IF suiEdit1.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Nome do Titular da Conta!';
MSGI.ShowModal;
suiEdit1.SetFocus;
end else
IF DBLCB_AGENCIA.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número da Agência!';
MSGI.ShowModal;
DBLCB_AGENCIA.SetFocus;
end else
IF ComboBox2.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Tipo de Cheque!';
MSGI.ShowModal;
ComboBox2.SetFocus;
end else
IF N_CONTA.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número da Conta!';
MSGI.ShowModal;
N_CONTA.SetFocus;
end else
IF N_CHEQUE.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número do Cheque!';
MSGI.ShowModal;
N_CHEQUE.SetFocus;
end else
IF DateEdit1.Text = '  /  /    ' THEN
BEGIN
MSGI.Text:= 'Informe a Data da Conta!';
MSGI.ShowModal;
DateEdit1.SetFocus;
end else
IF DateEdit2.Text = '  /  /    ' THEN
BEGIN
MSGI.Text:= 'Informe a Data para Deposito!';
MSGI.ShowModal;
DateEdit2.SetFocus;
end else
IF (ValChPre < VB) THEN
BEGIN
MSGI.Text:= 'O Valor Do Cheque Pré-Datado Não Pode Ser Menor Que o Valor Da Conta do Cliente. Utilize a Baixa de Parcela ou a Baixa Parcial Para Este Recebimento!';
MSGI.ShowModal;
end else
begin
Try
SDS_CHEQUE.Active:= False;
SDS_CHEQUE.Active:= True;
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);

{DMB.SDS_Crediario_Baixa.First;
Z:= Z + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Z:= Z + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
end; }


 SPC_CHEQUE.ExecProc;
 Cod:= (SPC_CHEQUE.ParamByName('ATUAL').AsInteger);
        SDS_CHEQUE.Insert;
        SDS_CHEQUE.FieldByName('CODIGO').AsInteger:=(Cod);

 SDS_CHEQUE.FieldByName('CODIGO_COMPRA').Value:= null;
 SDS_CHEQUE.FieldByName('BANCO').Value:= DBLookupComboBox1.Text;
 SDS_CHEQUE.FieldByName('AGENCIA').Value:= DBLCB_AGENCIA.Text;
 SDS_CHEQUE.FieldByName('CONTA_CORRENTE').Value:= N_Conta.Text;
 SDS_CHEQUE.FieldByName('CONTA_DESDE').Value:= DateEdit1.Date;
 SDS_CHEQUE.FieldByName('TITULAR').Value:= suiEdit1.Text;
 SDS_CHEQUE.FieldByName('TIPO_CHEQUE').Value:= ComboBox2.Text;
 SDS_CHEQUE.FieldByName('N_CHEQUE').Value:= N_CHEQUE.Text;
 SDS_CHEQUE.FieldByName('QNT').Value:='1 /1';
 SDS_CHEQUE.FieldByName('VALOR_CHEQUE').Value:= CurrencyEdit1.Value;
 SDS_CHEQUE.FieldByName('CLIENTE').Value:= FormCRCrediarioConv.RxLabel6.Caption;
 SDS_CHEQUE.FieldByName('DATA_CADASTRO').Value:= DATE;
 SDS_CHEQUE.FieldByName('DATA_DEPOSITO').Value:=DateEdit2.Text;
 SDS_CHEQUE.FieldByName('USUARIO_CADASTRO').Value:= FormPrincipal.UserLogado;
 SDS_CHEQUE.FieldByName('COMPENSADO').Value:= 'N';
 SDS_CHEQUE.FieldByName('COD_EMPRESA').Text := DM.SDS_EmpresaCODIGO.Text;
 SDS_CHEQUE.FieldByName('cod_empresa').AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
 SDS_CHEQUE.FieldByName('cod_cliente').AsInteger := DMb.SDS_Crediario_BaixaCODIGO_CLIENTE.AsInteger;

 SDS_CHEQUE.Post;

 SDS_CHEQUE.ApplyUpdates(0);
// DM.SQLC.Commit(TD);

          DMB.SDS_Crediario_Baixa.Filtered := false;
          DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
          DMB.SDS_Crediario_Baixa.Filtered := True;


          DMB.SDS_Crediario_Baixa.First;
          FormCRCrediarioConv.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediarioConv.Contador do
          begin
  
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 10; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Receb. Cred. Ref. Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediarioConv.RxLabel6.Caption +' Ref. cheque nº '+ N_CHEQUE.text ;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;

                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          DMB.SDS_Crediario_Baixa.NEXT;
          end;

           // grava parcelas baixadas
          DMB.SDS_Crediario_Baixa.First;
          FormCRCrediarioConv.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediarioConv.Contador do
          begin
                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                      parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value          := null;

                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
          DMB.SDS_Crediario_Baixa.NEXT;
          end;

DMB.SDS_Crediario_Baixa.First;
FormCRCrediarioConv.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
For I:=1 to FormCRCrediarioConv.Contador do
begin
{FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[2].AsString:= FormPrincipal.UserLogado;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[3].Value:= Date;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Execproc; }
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
         Parambyname('DATA').AsDate     := Date;
         Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
         Parambyname('CODIGO').AsInteger    := DMB.SDS_Crediario_BaixaCODIGO.Value;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
DMB.SDS_Crediario_Baixa.Next;
end;

DMB.SDS_Crediario_Baixa.Active := FALSE;
DMB.SDS_Crediario_Baixa.Active := TRUE;
DMB.SDS_Crediario_Baixa.Filtered := false;


DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;


DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediarioConv.Navigator.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= False;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= False;
FormCRCrediarioConv.BTPrint.Enabled:= False;
FormCRCrediarioConv.BTJuros.Enabled:= False;
FormCRCrediarioConv.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediarioConv.Navigator.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= True;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= True;
FormCRCrediarioConv.DBGrid1.Enabled:= True;
FormCRCrediarioConv.BTPrint.Enabled:= True;
FormCRCrediarioConv.BTJuros.Enabled:= True;

DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
end;
 if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
  Formrecibo:=TFormrecibo.Create(self);
  Formrecibo.Edit2.Value := y;
  Formrecibo.Edit1.Text := FormCRCrediarioConv.RxLabel6.Caption;
  Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';
   Formrecibo.Showmodal;
   end;
Close;
Except
MSG.ShowModal;
end;
end;
end;

end;

procedure TFormRCConta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormRCConta.dbedit4KeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY=#13 then
       begin
       //SDS_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBLookupComboBox1.Clear;
       DBLookupComboBox1.Text    := (Copy(dbEdit4.Text, 01, 03));
       DBLCB_AGENCIA.text    := (Copy(dbEdit4.Text, 04, 04));
       N_CHEQUE.text    := (Copy(dbEdit4.Text, 12, 06));
       suiEdit3.text   := (Copy(dbEdit4.Text, 09, 03));
       N_CONTA.text    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));

end;
end;

procedure TFormRCConta.suiButton3Click(Sender: TObject);
var
I, E: INTEGER;
Y, Z, dinheiro: Real;
cliente : string;
chek :string;
begin



 if Application.MESSAGEBOX('Confirma o Pagamento em Cartão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
{DMB.SDS_Crediario_Baixa.First;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'X' then
Z:= Z + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'X' then
Z:= Z + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
end;  }
if Tag = 1 then
begin

          cliente := FormCRCrediario.Cliente.Text;
       dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;
            DMB.SDS_Crediario_Baixa.Filtered := false;
            DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
            DMB.SDS_Crediario_Baixa.Filtered := True;

         { DMB.SDS_Crediario_Baixa.First;
          FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediario.Contador do
          begin
          FormCRCrediario.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediario.SPC_MOV_DIARIO.Params[2].AsString:= 'Receb. No Cartão da Vda - ' + DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption;
          FormCRCrediario.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediario.SPC_MOV_DIARIO.Params[4].AsString:= 'F';
          FormCRCrediario.SPC_MOV_DIARIO.Params[5].Value:= DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediario.SPC_MOV_DIARIO.Params[6].Value:= 0;
          FormCRCrediario.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[9].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[10].Value:= 'FIN';
          FormCRCrediario.SPC_MOV_DIARIO.Params[11].Value:= DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediario.SPC_MOV_DIARIO.ExecProc;
          DMB.SDS_Crediario_Baixa.NEXT;
          end; }



         // grava parcelas baixadas
          DMB.SDS_Crediario_Baixa.First;
          FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediario.Contador do
          begin
         { FormCRCrediario.Spc_crediario_Recebido.Params[1].Value   := DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[2].Value   := dm.SDS_EmpresaCODIGO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[3].Value   := DMB.SDS_Crediario_BaixaPARCELA.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[4].Value   := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;;
          FormCRCrediario.Spc_crediario_Recebido.Params[5].Value   := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[6].Value   := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[7].Value   := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[8].Value   := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[9].AsDate  := date;
          FormCRCrediario.Spc_crediario_Recebido.Params[10].Value  := FormPrincipal.UserLogado;
          FormCRCrediario.Spc_crediario_Recebido.Params[11].Value  := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[12].Value  := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[13].Value  := StrToIntDef(DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text,0);
          FormCRCrediario.Spc_crediario_Recebido.Params[14].Value  := 0;
          FormCRCrediario.Spc_crediario_Recebido.Params[15].asdate := DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime;
          FormCRCrediario.Spc_crediario_Recebido.Params[16].Value  := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;

          FormCRCrediario.Spc_crediario_Recebido.Params[17].AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
          FormCRCrediario.Spc_crediario_Recebido.ExecProc;  }
                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                      parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    if DMB.SDS_Crediario_BaixaNOME_SACADO.text > '' then
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text
                    else
                    parambyname('NOME_CLIENTE').value         := null;
                    if DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Value > 0 then
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text
                    else
                    parambyname('COD_COMPRA').value           := null;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(DOC_REC_ADM) as N_CODIGO FROM CONTAS_RECEBER_ADM_CARTAO');
                    DM.ProxCod.Open;
                    parambyname('DOC_REC_ADM').Value          :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;

                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
          DMB.SDS_Crediario_Baixa.NEXT;
          end;

DMB.SDS_Crediario_Baixa.First;
FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
For I:=1 to FormCRCrediario.Contador do
begin
{FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[2].AsString:= FormPrincipal.UserLogado;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[3].Value:= Date;
FormCRCrediario.SPC_BAIXA_PARCELA_T.Execproc;  }
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
         Parambyname('DATA').AsDate     := Date;
         Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
         Parambyname('CODIGO').AsInteger    := DMB.SDS_Crediario_BaixaCODIGO.Value;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

DMB.SDS_Crediario_Baixa.Next;
end;
      dinheiro := StrToFloatDef(removechar(Label12.caption),0.00);

      Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
      //FrmDadosAdm.EdtValor.Text:= CurrToStr(TotalizaFormaPagamento('F'));
      FrmDadosAdm.EdtParcelamento.Text:= '1';
      FrmDadosAdm.Edtvalor.text:= FloatToStr(dinheiro /100) ;
    //  FrmDadosAdm.EdTDOC.Text := dmb.SDS_Crediario_BaixaCODIGO_COMPRA.TEXT;
      FrmDadosAdm.EdtVenda.Text := '';
      FrmDadosAdm.dt_venda.Date := Date;
      FrmDadosAdm.EdtCli.Text  := dmb.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
      FrmDadosAdm.Edtcli1.Text := FormCRCrediario.RxLabel6.Caption;

      with DMB.SDS_Crediario_Baixa do
        begin
          first;
          FrmDadosAdm.Memo1.text :='Recebimento dos Titulos nº :';
         while not eof do
            begin
             FrmDadosAdm.Memo1.Lines.Add(''+ DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text +'-'+ DMB.SDS_Crediario_BaixaPARCELA.Text);
         Next;
         end;

        end;
        FrmDadosAdm.SPC_SEQ.ExecProc;
        FrmDadosAdm.EdtSeq.Text := IntToStr(FrmDadosAdm.SPC_SEQ.ParamByName('ATUAL').AsInteger);
        FrmDadosAdm.showmodal;
        




DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.Filtered := false;

DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediario.Navigator.Enabled:= False;
FormCRCrediario.BTBaixaParcial.Enabled:= False;
FormCRCrediario.BTBaixaTotal.Enabled:= False;
FormCRCrediario.BTBaixaParcela.Enabled:= False;
FormCRCrediario.BTPrint.Enabled:= False;
FormCRCrediario.BTJuros.Enabled:= False;
FormCRCrediario.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediario.Navigator.Enabled:= True;
FormCRCrediario.BTBaixaParcial.Enabled:= True;
FormCRCrediario.BTBaixaTotal.Enabled:= True;
FormCRCrediario.BTBaixaParcela.Enabled:= True;
FormCRCrediario.DBGrid1.Enabled:= True;
FormCRCrediario.BTPrint.Enabled:= True;
FormCRCrediario.BTJuros.Enabled:= True;
end;
FormCRCrediario.CurrencyEdit1.Value:= 0;
FormCRCrediario.CurrencyEdit2.Value:= 0;
FormCRCrediario.CurrencyEdit3.Value:= 0;
FormCRCrediario.CurrencyEdit4.Value:= 0;
FormCRCrediario.CurrencyEdit5.Value:= 0;
FormCRCrediario.CurrencyEdit6.Value:= 0;
FormCRCrediario.CurrencyEdit7.Value:= 0;
FormCRCrediario.CurrencyEdit8.Value:= 0;
FormCRCrediario.CurrencyEdit9.Value:= 0;
  Close;
end;

if Tag = 2 then
begin

  cliente := FormCRCrediarioConv.Cliente.Text;

dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;

             DMB.SDS_Crediario_Baixa.Filtered := false;
            DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
            DMB.SDS_Crediario_Baixa.Filtered := True;


         { DMB.SDS_Crediario_Baixa.First;
          FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediario.Contador do
          begin
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[2].AsString:= 'Receb. No Cartão da Vda - ' + DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediarioConv.RxLabel6.Caption;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[4].AsString:= 'F';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[5].Value:= DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[6].Value:= 0;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[9].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[10].Value:= 'FIN';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[11].Value:= DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediarioConv.SPC_MOV_DIARIO.ExecProc;
          DMB.SDS_Crediario_Baixa.NEXT;
          end; }



         // grava parcelas baixadas
          DMB.SDS_Crediario_Baixa.First;
          FormCRCrediarioConv.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediarioConv.Contador do
          begin
         { FormCRCrediarioConv.Spc_crediario_Recebido.Params[1].Value   := DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[2].Value   := dm.SDS_EmpresaCODIGO.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[3].Value   := DMB.SDS_Crediario_BaixaPARCELA.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[4].Value   := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[5].Value   := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[6].Value   := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[7].Value   := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[8].Value   := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[9].AsDate  := date;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[10].Value  := FormPrincipal.UserLogado;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[11].Value  := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[12].Value  := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[13].Value  := StrToIntDef(DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text,0);
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[14].Value  := 0;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[15].asdate := DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[16].Value  := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;

          FormCRCrediarioConv.Spc_crediario_Recebido.Params[17].AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
          FormCRCrediarioConv.Spc_crediario_Recebido.ExecProc;  }
                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                      parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    if DMB.SDS_Crediario_BaixaNOME_SACADO.text > '' then
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text
                    else
                    parambyname('NOME_CLIENTE').value         := null;
                    if DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Value > 0 then
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text
                    else
                    parambyname('COD_COMPRA').value           := null;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(DOC_REC_ADM) as N_CODIGO FROM CONTAS_RECEBER_ADM_CARTAO');
                    DM.ProxCod.Open;
                    parambyname('DOC_REC_ADM').Value          :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;

                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
          DMB.SDS_Crediario_Baixa.NEXT;
          end;

DMB.SDS_Crediario_Baixa.First;
FormCRCrediarioConv.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
For I:=1 to FormCRCrediarioConv.Contador do
begin
{FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[2].AsString:= FormPrincipal.UserLogado;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[3].Value:= Date;
FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Execproc;  }
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
         Parambyname('DATA').AsDate     := Date;
         Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
         Parambyname('CODIGO').AsInteger    := DMB.SDS_Crediario_BaixaCODIGO.Value;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
DMB.SDS_Crediario_Baixa.Next;
end;
      dinheiro := StrToFloatDef(removechar(Label12.caption),0.00);

      Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
      //FrmDadosAdm.EdtValor.Text:= CurrToStr(TotalizaFormaPagamento('F'));
      FrmDadosAdm.EdtParcelamento.Text:= '1';
      FrmDadosAdm.Edtvalor.text:= FloatToStr(dinheiro /100) ;
    //  FrmDadosAdm.EdTDOC.Text := dmb.SDS_Crediario_BaixaCODIGO_COMPRA.TEXT;
      FrmDadosAdm.EdtVenda.Text := '';
      FrmDadosAdm.dt_venda.Date := Date;
      FrmDadosAdm.EdtCli.Text  := dmb.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
      FrmDadosAdm.Edtcli1.Text := FormCRCrediarioConv.RxLabel6.Caption;

      with DMB.SDS_Crediario_Baixa do
        begin
          first;
          FrmDadosAdm.Memo1.text :='Recebimento dos Titulos nº :';
         while not eof do
            begin
             FrmDadosAdm.Memo1.Lines.Add(''+ DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text +'-'+ DMB.SDS_Crediario_BaixaPARCELA.Text);
         Next;
         end;

        end;
        FrmDadosAdm.SPC_SEQ.ExecProc;
        FrmDadosAdm.EdtSeq.Text := IntToStr(FrmDadosAdm.SPC_SEQ.ParamByName('ATUAL').AsInteger);
        FrmDadosAdm.showmodal;
        
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.Filtered := false;

DMB.SDS_Crediario_Baixa.First;
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediarioConv.Navigator.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= False;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= False;
FormCRCrediarioConv.BTPrint.Enabled:= False;
FormCRCrediarioConv.BTJuros.Enabled:= False;
FormCRCrediarioConv.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediarioConv.Navigator.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= True;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= True;
FormCRCrediarioConv.DBGrid1.Enabled:= True;
FormCRCrediarioConv.BTPrint.Enabled:= True;
FormCRCrediarioConv.BTJuros.Enabled:= True;
end;
FormCRCrediarioConv.CurrencyEdit1.Value:= 0;
FormCRCrediarioConv.CurrencyEdit2.Value:= 0;
FormCRCrediarioConv.CurrencyEdit3.Value:= 0;
FormCRCrediarioConv.CurrencyEdit4.Value:= 0;
FormCRCrediarioConv.CurrencyEdit5.Value:= 0;
FormCRCrediarioConv.CurrencyEdit6.Value:= 0;
FormCRCrediarioConv.CurrencyEdit7.Value:= 0;
FormCRCrediarioConv.CurrencyEdit8.Value:= 0;
FormCRCrediarioConv.CurrencyEdit9.Value:= 0;
  Close;
end;
end;
end;


procedure TFormRCConta.CurrencyEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =#13 then
begin
 if Tag = 1 then
 begin
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;

         {   DMB.SDS_Crediario_Baixa.Filtered := false;
            DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
            DMB.SDS_Crediario_Baixa.Filtered := True; }

  total :=0;
  DESCONTO :=0;
//DBGrid.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
DMB.SDS_Crediario_Baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
DMB.SDS_Crediario_Baixa.Edit;
DESCONTO := CurrencyEdit4.Value;
Total := (DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat - DMB.SDS_Crediario_BaixaValor_pago.AsFloat +  DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat);
DESCONTO := ((TOTAL * DESCONTO)/100);
DESC := FormatCurr('0.0000', DESCONTO);
DESCONTO := StrToFloat(DESC);
DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat := DESCONTO;
//ClientDataSet1Valor_total.AsFloat := (TOTAL - DESCONTO);
//DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
DMB.SDS_Crediario_Baixa.post;
//DM.Conexao.Commit;
DMB.SDS_Crediario_Baixa.Next;
end;

DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

DMB.SDS_Crediario_Baixa.Refresh;
DMB.SDS_Crediario_Baixa.First;
FormCRCrediario.A:= 0;
FormCRCrediario.B:= 0;
FormCRCrediario.C:= 0;
FormCRCrediario.D:= 0;
FormCRCrediario.E:= 0;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.A:= FormCRCrediario.A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.B:= FormCRCrediario.B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.C:= FormCRCrediario.C + DMB.SDS_crediario_baixaVALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.D:= FormCRCrediario.D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.E:= FormCRCrediario.E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.CurrencyEdit1.Text:= FloatToStr(FormCRCrediario.A);
FormCRCrediario.CurrencyEdit2.Text:= FloatToStr(FormCRCrediario.B);
FormCRCrediario.CurrencyEdit3.Text:= FloatToStr(FormCRCrediario.C);
FormCRCrediario.CurrencyEdit4.Text:= FloatToStr(FormCRCrediario.D);
FormCRCrediario.CurrencyEdit5.Text:= FloatToStr(FormCRCrediario.E);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.A:= FormCRCrediario.A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.B:= FormCRCrediario.B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.C:= FormCRCrediario.C + DMB.SDS_crediario_baixaVALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.D:= FormCRCrediario.D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.E:= FormCRCrediario.E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.next;
FormCRCrediario.CurrencyEdit1.Text:= FloatToStr(FormCRCrediario.A);
FormCRCrediario.CurrencyEdit2.Text:= FloatToStr(FormCRCrediario.B);
FormCRCrediario.CurrencyEdit3.Text:= FloatToStr(FormCRCrediario.C);
FormCRCrediario.CurrencyEdit4.Text:= FloatToStr(FormCRCrediario.D);
FormCRCrediario.CurrencyEdit5.Text:= FloatToStr(FormCRCrediario.E);
end;
DMB.SDS_Crediario_Baixa.first;
DMB.SDS_Crediario_Baixa.Refresh;
Label12.Caption:= FormatFloat('R$: ##,##0.00',FormCRCrediario.E);
end;
 if Tag = 2 then
 begin
       dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;
          {  DMB.SDS_Crediario_Baixa.Filtered := false;
            DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX >='+QuotedStr('T');
            DMB.SDS_Crediario_Baixa.Filtered := True; }

  total :=0;
  DESCONTO :=0;
//DBGrid.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
DMB.SDS_Crediario_Baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
DMB.SDS_Crediario_Baixa.Edit;
DESCONTO := CurrencyEdit4.Value;
Total := (DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat - DMB.SDS_Crediario_BaixaValor_pago.AsFloat +  DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat);
DESCONTO := ((TOTAL * DESCONTO)/100);
DESC := FormatCurr('0.0000', DESCONTO);
DESCONTO := StrToFloat(DESC);
DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat := DESCONTO;
//ClientDataSet1Valor_total.AsFloat := (TOTAL - DESCONTO);
//DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
DMB.SDS_Crediario_Baixa.post;
//DM.Conexao.Commit;
DMB.SDS_Crediario_Baixa.Next;
end;

DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

DMB.SDS_Crediario_Baixa.Refresh;
DMB.SDS_Crediario_Baixa.First;
FormCRCrediarioConv.A:= 0;
FormCRCrediarioConv.B:= 0;
FormCRCrediarioConv.C:= 0;
FormCRCrediarioConv.D:= 0;
FormCRCrediarioConv.E:= 0;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.A:= FormCRCrediarioConv.A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.B:= FormCRCrediarioConv.B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.C:= FormCRCrediarioConv.C + DMB.SDS_crediario_baixaVALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.D:= FormCRCrediarioConv.D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.E:= FormCRCrediarioConv.E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.CurrencyEdit1.Text:= FloatToStr(FormCRCrediarioConv.A);
FormCRCrediarioConv.CurrencyEdit2.Text:= FloatToStr(FormCRCrediarioConv.B);
FormCRCrediarioConv.CurrencyEdit3.Text:= FloatToStr(FormCRCrediarioConv.C);
FormCRCrediarioConv.CurrencyEdit4.Text:= FloatToStr(FormCRCrediarioConv.D);
FormCRCrediarioConv.CurrencyEdit5.Text:= FloatToStr(FormCRCrediarioConv.E);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.A:= FormCRCrediarioConv.A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.B:= FormCRCrediarioConv.B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.C:= FormCRCrediarioConv.C + DMB.SDS_crediario_baixaVALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.D:= FormCRCrediarioConv.D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.E:= FormCRCrediarioConv.E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.next;
FormCRCrediarioConv.CurrencyEdit1.Text:= FloatToStr(FormCRCrediarioConv.A);
FormCRCrediarioConv.CurrencyEdit2.Text:= FloatToStr(FormCRCrediarioConv.B);
FormCRCrediarioConv.CurrencyEdit3.Text:= FloatToStr(FormCRCrediarioConv.C);
FormCRCrediarioConv.CurrencyEdit4.Text:= FloatToStr(FormCRCrediarioConv.D);
FormCRCrediarioConv.CurrencyEdit5.Text:= FloatToStr(FormCRCrediarioConv.E);
end;
DMB.SDS_Crediario_Baixa.first;
DMB.SDS_Crediario_Baixa.Refresh;
Label12.Caption:= FormatFloat('R$: ##,##0.00',FormCRCrediarioConv.E);
end;
end;
end;

procedure TFormRCConta.CurrencyEdit5KeyPress(Sender: TObject;
  var Key: Char);
var
 total_venda, X : Real;
 I :Integer;
 valor_desc: string;
begin
if Key =#13 then
begin
if Tag = 1 then
begin
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;
  total :=0;
  DESCONTO :=0;
          CurrencyEdit4.Value := ((CurrencyEdit5.Value * 100) / FormCRCrediario.CurrencyEdit5.VALUE);

         //  CurrencyEdit2Exit(SENDER);

          DMB.SDS_Crediario_Baixa.First;
          Contador := 0;
          Contador:=DMB.SDS_Crediario_Baixa.RecordCount;
          i:=0;
          For I:=1 to Contador do
          begin
          DMB.SDS_Crediario_Baixa.Edit;
        //  TOTAL1:= (EdtValorDesconto.Value / Contador);
          Total := (DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat - DMB.SDS_Crediario_BaixaValor_pago.AsFloat +  DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat);
            DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat :=  TOTAL * CurrencyEdit4.Value / 100;
          DMB.SDS_Crediario_Baixa.post;
          DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
          DMB.SDS_Crediario_Baixa.Refresh;
          DMB.SDS_Crediario_Baixa.Next;
          end;



          // ACHA RESTO DA DIVISÃO
          DMB.SDS_Crediario_Baixa.First;
          Total1 := 0;
          X:= 0;
          X:= X + StrToFloatDef(DMB.SDS_Crediario_BaixaVALOR_DESCONTO.Text,0.00);
          DMB.SDS_Crediario_Baixa.Next;
          TOTAL1 := X;
          While not DMB.SDS_Crediario_Baixa.Eof do
          begin
          X:= X + StrToFloatDef(DMB.SDS_Crediario_BaixaVALOR_DESCONTO.Text,0.00);
          DMB.SDS_Crediario_Baixa.Next;
          Total1:= X;
          end;

          {valor_desc := FloatToStr(DMB.SDS_Crediario_BaixaVALOR_DESCONTO.);
          DMB.SDS_Crediario_Baixa.Locate('valor_DESCONTO',valor_desc,[loPartialKey, loCaseInsensitive]);}

          total_venda := (Total1 - CurrencyEdit5.Value);

         // CurrencyEdit9.Value := total_venda;
         // DMB.SDS_Crediario_Baixa.Edit;

          IF TOTAL1 > CurrencyEdit5.Value then
          begin
           DMB.SDS_Crediario_Baixa.Edit;
           DMB.SDS_Crediario_Baixavalor_DESCONTO.ASFLOAT := Abs(DMB.SDS_Crediario_Baixavalor_DESCONTO.AsFloat - total_venda);
           DMB.SDS_Crediario_Baixa.Post;
          // dm.Conexao.Commit;
            DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
          end ELSE

          IF TOTAL1 < CurrencyEdit5.Value then
          begin
           DMB.SDS_Crediario_Baixa.Edit;
           DMB.SDS_Crediario_BaixaVALOR_DESCONTO.ASFLOAT := Abs(DMB.SDS_Crediario_Baixavalor_DESCONTO.AsFloat + total_venda);
           DMB.SDS_Crediario_Baixa.Post;
          // dm.Conexao.Commit;
           DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
          end;

DMB.SDS_Crediario_Baixa.Refresh;
DMB.SDS_Crediario_Baixa.First;
FormCRCrediario.A:= 0;
FormCRCrediario.B:= 0;
FormCRCrediario.C:= 0;
FormCRCrediario.D:= 0;
FormCRCrediario.E:= 0;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.A:= FormCRCrediario.A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.B:= FormCRCrediario.B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.C:= FormCRCrediario.C + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.D:= FormCRCrediario.D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.E:= FormCRCrediario.E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;

FormCRCrediario.CurrencyEdit1.Text:= FloatToStr(FormCRCrediario.A);
FormCRCrediario.CurrencyEdit2.Text:= FloatToStr(FormCRCrediario.B);
FormCRCrediario.CurrencyEdit3.Text:= FloatToStr(FormCRCrediario.C);
FormCRCrediario.CurrencyEdit4.Text:= FloatToStr(FormCRCrediario.D);
FormCRCrediario.CurrencyEdit5.Text:= FloatToStr(FormCRCrediario.E);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.A:= FormCRCrediario.A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.B:= FormCRCrediario.B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.C:= FormCRCrediario.C + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.D:= FormCRCrediario.D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediario.E:= FormCRCrediario.E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.next;
FormCRCrediario.CurrencyEdit1.Text:= FloatToStr(FormCRCrediario.A);
FormCRCrediario.CurrencyEdit2.Text:= FloatToStr(FormCRCrediario.B);
FormCRCrediario.CurrencyEdit3.Text:= FloatToStr(FormCRCrediario.C);
FormCRCrediario.CurrencyEdit4.Text:= FloatToStr(FormCRCrediario.D);
FormCRCrediario.CurrencyEdit5.Text:= FloatToStr(FormCRCrediario.E);
end;
DMB.SDS_Crediario_Baixa.first;
DMB.SDS_Crediario_Baixa.Refresh;

DMB.SDS_Crediario_Baixa.Refresh;

Label12.Caption:= FormatFloat('R$: ##,##0.00',FormCRCrediario.E);
end;
if Tag = 2 then
begin
       dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;
  total :=0;
  DESCONTO :=0;
          CurrencyEdit4.Value := ((CurrencyEdit5.Value * 100) / FormCRCrediarioConv.CurrencyEdit5.VALUE);

         //  CurrencyEdit2Exit(SENDER);

          DMB.SDS_Crediario_Baixa.First;
          Contador := 0;
          Contador:=DMB.SDS_Crediario_Baixa.RecordCount;
          i:=0;
          For I:=1 to Contador do
          begin
          DMB.SDS_Crediario_Baixa.Edit;
        //  TOTAL1:= (EdtValorDesconto.Value / Contador);
          Total := (DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat - DMB.SDS_Crediario_BaixaValor_pago.AsFloat +  DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat);
            DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat :=  TOTAL * CurrencyEdit4.Value / 100;
          DMB.SDS_Crediario_Baixa.post;
          DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
          DMB.SDS_Crediario_Baixa.Refresh;
          DMB.SDS_Crediario_Baixa.Next;
          end;



          // ACHA RESTO DA DIVISÃO
          DMB.SDS_Crediario_Baixa.First;
          Total1 := 0;
          X:= 0;
          X:= X + StrToFloatDef(DMB.SDS_Crediario_BaixaVALOR_DESCONTO.Text,0.00);
          DMB.SDS_Crediario_Baixa.Next;
          TOTAL1 := X;
          While not DMB.SDS_Crediario_Baixa.Eof do
          begin
          X:= X + StrToFloatDef(DMB.SDS_Crediario_BaixaVALOR_DESCONTO.Text,0.00);
          DMB.SDS_Crediario_Baixa.Next;
          Total1:= X;
          end;

          {valor_desc := FloatToStr(DMB.SDS_Crediario_BaixaVALOR_DESCONTO.);
          DMB.SDS_Crediario_Baixa.Locate('valor_DESCONTO',valor_desc,[loPartialKey, loCaseInsensitive]);}

          total_venda := (Total1 - CurrencyEdit5.Value);

         // CurrencyEdit9.Value := total_venda;
         // DMB.SDS_Crediario_Baixa.Edit;

          IF TOTAL1 > CurrencyEdit5.Value then
          begin
           DMB.SDS_Crediario_Baixa.Edit;
           DMB.SDS_Crediario_Baixavalor_DESCONTO.ASFLOAT := Abs(DMB.SDS_Crediario_Baixavalor_DESCONTO.AsFloat - total_venda);
           DMB.SDS_Crediario_Baixa.Post;
          // dm.Conexao.Commit;
            DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
          end ELSE

          IF TOTAL1 < CurrencyEdit5.Value then
          begin
           DMB.SDS_Crediario_Baixa.Edit;
           DMB.SDS_Crediario_BaixaVALOR_DESCONTO.ASFLOAT := Abs(DMB.SDS_Crediario_Baixavalor_DESCONTO.AsFloat + total_venda);
           DMB.SDS_Crediario_Baixa.Post;
          // dm.Conexao.Commit;
           DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
          end;

DMB.SDS_Crediario_Baixa.Refresh;
DMB.SDS_Crediario_Baixa.First;
FormCRCrediarioConv.A:= 0;
FormCRCrediarioConv.B:= 0;
FormCRCrediarioConv.C:= 0;
FormCRCrediarioConv.D:= 0;
FormCRCrediarioConv.E:= 0;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.A:= FormCRCrediarioConv.A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.B:= FormCRCrediarioConv.B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.C:= FormCRCrediarioConv.C + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.D:= FormCRCrediarioConv.D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.E:= FormCRCrediarioConv.E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;

FormCRCrediarioConv.CurrencyEdit1.Text:= FloatToStr(FormCRCrediarioConv.A);
FormCRCrediarioConv.CurrencyEdit2.Text:= FloatToStr(FormCRCrediarioConv.B);
FormCRCrediarioConv.CurrencyEdit3.Text:= FloatToStr(FormCRCrediarioConv.C);
FormCRCrediarioConv.CurrencyEdit4.Text:= FloatToStr(FormCRCrediarioConv.D);
FormCRCrediarioConv.CurrencyEdit5.Text:= FloatToStr(FormCRCrediarioConv.E);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.A:= FormCRCrediarioConv.A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.B:= FormCRCrediarioConv.B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.C:= FormCRCrediarioConv.C + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.D:= FormCRCrediarioConv.D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
FormCRCrediarioConv.E:= FormCRCrediarioConv.E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.next;
FormCRCrediarioConv.CurrencyEdit1.Text:= FloatToStr(FormCRCrediarioConv.A);
FormCRCrediarioConv.CurrencyEdit2.Text:= FloatToStr(FormCRCrediarioConv.B);
FormCRCrediarioConv.CurrencyEdit3.Text:= FloatToStr(FormCRCrediarioConv.C);
FormCRCrediarioConv.CurrencyEdit4.Text:= FloatToStr(FormCRCrediarioConv.D);
FormCRCrediarioConv.CurrencyEdit5.Text:= FloatToStr(FormCRCrediarioConv.E);
end;
DMB.SDS_Crediario_Baixa.first;
DMB.SDS_Crediario_Baixa.Refresh;

DMB.SDS_Crediario_Baixa.Refresh;

Label12.Caption:= FormatFloat('R$: ##,##0.00',FormCRCrediarioConv.E);
end;
end;
end;



end.
