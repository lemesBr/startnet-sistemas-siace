unit LancCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, Mask, DBCtrls, SUIDBCtrls, StdCtrls, jpeg, ExtCtrls,
  RxToolEdit, RXDBCtrl, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  rxCurrEdit, RXCtrls, XDBGrids,  AdvGlowButton;

type
  TFormCheques = class(TForm)
    Image1: TImage;
    edFavorecido: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    DBComboBox1: TDBComboBox;
    SPC_MOV_DIARIO: TSQLStoredProc;
    Panel3: TPanel;
    DBGrid1: TXDBGrid;
    btnNovo: TAdvGlowButton;
    BtnExcluir: TAdvGlowButton;
    BtnGravar: TAdvGlowButton;
    BtnSair: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    Panel1: TPanel;
    Panel2: TPanel;
    RxLabel4: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    CurrencyEdit3: TCurrencyEdit;
    DBEdit11: TDBEdit;
    btnCancelar: TAdvGlowButton;
    Label6: TLabel;
    DBEdit12: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure suiButton1Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheques: TFormCheques;
  CodigoCheque: Integer;
   texto : string;

implementation

uses Principal, Vendas, Ubibli1, Estenso, ModulodeDados, fFechamento,
  VendasParcelamento, CRCrediario, RCConta;

{$R *.dfm}

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

procedure TFormCheques.FormShow(Sender: TObject);
begin
  if FormCheques.Tag = 1 then
  begin
   //DM.Sds_vendas.Active := false;
   DM.Sds_vendas.close;
   DM.Sds_vendas.SQL.Clear;
   DM.Sds_vendas.SQL.add('select * from PEDIDOS where codigo ='+ formvendas.n_venda.text+'');
   DM.Sds_vendas.Open;
  // DM.Sds_vendas.Active := True;
  end;

DM.Sds_Cheques.Active := False;
//DM.Sds_Cheques.DataSet.CommandText := ('select *  from CHEQUES where codigo_compra ='+ formvendas.n_venda.text +'order by CODIGO asc');
DM.Sds_Cheques.Active := True;
//DM.Sds_Cheques.Edit;
//DBEdit7.Text := dm.sds_clientesNome_rs.text;
DBGrid1.SetFocus;
Panel2.Enabled := False;
CurrencyEdit3.Value := CurrencyEdit2.value - CurrencyEdit1.Value;
end;

procedure TFormCheques.suiButton1Click(Sender: TObject);
var
  a: Currency;
begin
           if FormCheques.Tag = 1 then
           begin
           DM.Sds_Cheques.Edit;
           DM.Sds_Chequesqnt.text := '1';
           DM.Sds_Chequescliente.text := formvendas.sds_pedidosNome_cliente.Text;
           DM.Sds_Chequesretornardo.text := 'NAO';
           DM.Sds_Chequesretornado_pago.text:= 'NAO';
           DM.Sds_ChequesData_cadastro.asDateTime := formvendas.sds_pedidosData_pedido.asdatetime;
          // SPC_CHEQUE.Params[7].AsDate:= ClientDataset1.FieldByname('DataVencimento').Value;
           DM.Sds_Chequesusuario_cadastro.text:= Formprincipal.userlogado;
           DM.Sds_ChequesCompensado.text:= 'N';
           DM.Sds_ChequesCod_cliente.text := formvendas.sds_pedidosCodigo_cliente.Text;
           end;

           if FormCheques.Tag = 2 then
           begin
           DM.Sds_Cheques.Edit;
           DM.Sds_Chequesqnt.text := '1';
           DM.Sds_Chequescliente.text := F_Fechamento.EdHospede.Text;
           DM.Sds_Chequesretornardo.text := 'NAO';
           DM.Sds_Chequesretornado_pago.text:= 'NAO';
           DM.Sds_ChequesData_cadastro.asDateTime := date;
          // SPC_CHEQUE.Params[7].AsDate:= ClientDataset1.FieldByname('DataVencimento').Value;
           DM.Sds_Chequesusuario_cadastro.text:= Formprincipal.userlogado;
           DM.Sds_ChequesCompensado.text:= 'N';
           DM.Sds_ChequesCod_cliente.text := F_Fechamento.EdCodHospede.Text;
           end;

           if FormCheques.Tag = 3 then
           begin
           DM.Sds_Cheques.Edit;
           DM.Sds_Chequesqnt.text := '1';
           DM.Sds_Chequescliente.text := FormCRCrediario.rxlabel6.caption;
           DM.Sds_Chequesretornardo.text := 'NAO';
           DM.Sds_Chequesretornado_pago.text:= 'NAO';
           DM.Sds_ChequesData_cadastro.asDateTime := date;
          // SPC_CHEQUE.Params[7].AsDate:= ClientDataset1.FieldByname('DataVencimento').Value;
           DM.Sds_Chequesusuario_cadastro.text:= Formprincipal.userlogado;
           DM.Sds_ChequesCompensado.text:= 'N';
           DM.Sds_ChequesCod_cliente.text := FormCRCrediario.cliente.Text;
           end;

DM.Sds_Cheques.Post;
DM.Sds_Cheques.ApplyUpdates(0);
//DM.Sds_Cheques.Next;
//DM.Sds_Cheques.Edit;
 {begin
          SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          SPC_MOV_DIARIO.Params[2].AsString:= 'Pagto da Vda'+ DM.SDS_ChequesCODIGO_COMPRA.Text +'Em Cheque Nº '+ DM.SDS_ChequesN_CHEQUE.Text+' parc. ' + DM.SDS_ChequesQNT.Text + ' - ' + DM.SDS_ChequesTITULAR.Text;
          SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          SPC_MOV_DIARIO.Params[5].Value:= DM.SDS_ChequesVALOR_CHEQUE.AsFloat;
          SPC_MOV_DIARIO.Params[6].Value:= 0;
          SPC_MOV_DIARIO.Params[7].Value:= NULL;
          SPC_MOV_DIARIO.Params[8].Value:= NULL;
          SPC_MOV_DIARIO.Params[9].Value:= DM.SDS_ChequesCODIGO_COMPRA.Value;
          SPC_MOV_DIARIO.Params[10].Value:= 'VEN';
          SPC_MOV_DIARIO.ExecProc;
          end; }
//dmb.SDS_BaixarCheque.Refresh;
DM.Sds_Cheques.First;
A:= 0;
if DM.Sds_Chequesvalor_cheque.AsFloat > 0 then
A:= A + DM.Sds_ChequesVALOr_CHEQUE.AsFloat;
DM.Sds_Cheques.Next;
CurrencyEdit2.Text:= FloatToStr(A);
While not DM.Sds_Cheques.Eof do
begin
if DM.Sds_ChequesVALOR_CHEQUE.AsFloat > 0 then
A:= A + DM.Sds_ChequesVALOR_CHEQUE.AsFloat;
DM.Sds_Cheques.next;
CurrencyEdit2.Text:= FloatToStr(A);
end;
DM.Sds_Cheques.first;
CurrencyEdit3.Value := CurrencyEdit2.value - CurrencyEdit1.Value;
//dmb.SDS_BaixarCheque.Refresh;

           BtnGravar.Enabled := false;
           BtnExcluir.Enabled := True;
           btnNovo.Enabled := True;
           btnEditar.Enabled := True;
           btnCancelar.Enabled := False;
           Panel2.Enabled := False;

end;

procedure TFormCheques.suiButton2Click(Sender: TObject);
begin
close;
end;

procedure TFormCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormCheques := nil;
end;

procedure TFormCheques.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
       IF KEY=#13 then
       begin
       DM.Sds_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBEdit1.Clear;
       dbEdit1.Text    := (Copy(dbEdit4.Text, 01, 03));
       dbedit2.text    := (Copy(dbEdit4.Text, 04, 04));
       dbedit5.text    := (Copy(dbEdit4.Text, 12, 06));
       dbedit10.text   := (Copy(dbEdit4.Text, 09, 03));
       DBEdit3.text    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));
       btnNovo.SetFocus;
end;
end;

procedure TFormCheques.DBEdit4Enter(Sender: TObject);
begin
DM.Sds_Cheques.Edit;
end;

procedure TFormCheques.DBEdit7Change(Sender: TObject);
begin
if dm.SDS_ChequesVALOR_CHEQUE.AsFloat > 0 then
begin
Texto := FloatToStr(DM.Sds_ChequesVALOR_CHEQUE.AsFloat);
edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
end;
end;

procedure TFormCheques.suiButton1Exit(Sender: TObject);
begin
DBEDIT4.SetFocus;
end;

procedure TFormCheques.DBEdit7Enter(Sender: TObject);
begin
DM.Sds_Cheques.Edit;
end;

procedure TFormCheques.suiButton3Click(Sender: TObject);
begin
  if DM.SDS_Cheques.RecordCount > 0 then
  begin
    DM.Sds_Cheques.Cancel;
    BtnGravar.Enabled := True;
    BtnExcluir.Enabled := False;
    btnNovo.Enabled := False;
    btnEditar.Enabled := False;
    Panel2.Enabled := True;
  end
  else
    ShowMessage('Nenhum cheque lançFDo para editar...');
end;

procedure TFormCheques.DBEdit4Change(Sender: TObject);
begin
//Texto := FloatToStr(DM.Sds_ChequesVALOR_CHEQUE.AsFloat);
//edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
end;

procedure TFormCheques.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End; 
end;

procedure TFormCheques.DBEdit4Exit(Sender: TObject);
begin
       if DBEdit4.text > '' then
       begin
       DM.Sds_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBEdit1.Clear;
       dbEdit1.Text    := (Copy(dbEdit4.Text, 01, 03));
       dbedit2.text    := (Copy(dbEdit4.Text, 04, 04));
       dbedit5.text    := (Copy(dbEdit4.Text, 12, 06));
       dbedit10.text   := (Copy(dbEdit4.Text, 09, 03));
       DBEdit3.text    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));
     //  suiButton1.SetFocus;
end;
end;

procedure TFormCheques.btnNovoClick(Sender: TObject);
begin
          if FormCheques.Tag = 1 then
           begin
           DM.Sds_Cheques.open;
           DM.Sds_Cheques.Insert;
           dbEdit11.Text:= inttostr(prxcod('CHEQUES', 'codigo', dm.IBTransaction, dm.ibsqlcod));
           DM.Sds_Chequescodigo.asinteger := strtoint(dbEdit11.Text);
           DM.Sds_ChequesCodigo_Compra.asinteger := strtoint(FormVendas.n_venda.Text);
           DM.Sds_Chequescod_empresa.asinteger:= DM.SDS_EmpresaCODIGO.Value;
           DM.SDS_ChequesVALOR_CHEQUE.AsFloat := CurrencyEdit1.Value;
           DM.Sds_Cheques.post;
          end;

          if FormCheques.Tag = 2 then
           begin
           DM.Sds_Cheques.open;
           DM.Sds_Cheques.Insert;
           dbEdit11.Text:= inttostr(prxcod('CHEQUES', 'codigo', dm.IBTransaction, dm.ibsqlcod));
           DM.Sds_Chequescodigo.asinteger       := strtoint(dbEdit11.Text);
           //DM.Sds_ChequesCodigo_Compra.Value   := Null;
           DM.Sds_Chequescod_empresa.asinteger  := DM.SDS_EmpresaCODIGO.AsInteger;
           DM.SDS_ChequesVALOR_CHEQUE.AsFloat  := CurrencyEdit1.Value;
           DM.Sds_Cheques.post;
           DBEdit6.Enabled := False;
          end;

          if FormCheques.Tag = 3 then
           begin
           DM.Sds_Cheques.open;
           DM.Sds_Cheques.Insert;
           dbEdit11.Text:= inttostr(prxcod('CHEQUES', 'codigo', dm.IBTransaction, dm.ibsqlcod));
           DM.Sds_Chequescodigo.asinteger       := strtoint(dbEdit11.Text);
           DM.Sds_Chequescod_empresa.asinteger  := DM.SDS_EmpresaCODIGO.AsInteger;
           DM.SDS_ChequesVALOR_CHEQUE.AsFloat  := CurrencyEdit1.Value;
           DM.Sds_Cheques.post;
         //  DBEdit6.Enabled := False;
          end;

           BtnGravar.Enabled := True;
           BtnExcluir.Enabled := False;
           btnNovo.Enabled := False;
           btnEditar.Enabled := False;
           btnCancelar.Enabled := True;
           Panel2.Enabled := True;
           DBEdit4.SetFocus;
end;

procedure TFormCheques.BtnExcluirClick(Sender: TObject);
begin
DM.Sds_Cheques.delete;
DM.Sds_Cheques.applyupdates(0);
end;

procedure TFormCheques.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Tag = 1 then
  begin
    if CurrencyEdit3.Value < 0 then
    begin
      if Application.MESSAGEBOX('O valor dos lançamentos está a menor que o valor' +
      ' do cheque deseja realmente sair?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
        cadastrouch := false;
    end
    else
    begin
      FormParcelamento.cdsformas.Locate('TIPO','H', []);
      FormParcelamento.cdsformas.edit;
      FormParcelamento.CDSFormasVALOR.Text := CurrencyEdit2.Text;
      FormParcelamento.cdsformas.Post;

      formVendas.Sds_pedidos.EDIT;
      formVendas.Sds_pedidossaldo_troco.AsFloat := CurrencyEdit3.Value;
      formVendas.Sds_pedidosVALOR_TROCO.AsFloat := CurrencyEdit3.Value;
      formVendas.Sds_pedidos.POST;

      cadastrouch := true;
    end;
  end;

  if Tag = 2 then
  BEGIN
    if CurrencyEdit3.Value > 0 then
    begin
      Application.MESSAGEBOX('Valor dos Cheques não pode ser maior do que o valor'+
      ' lançFDo na venda!', 'Atenção', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
      CanClose := False;
    end;
    if CurrencyEdit3.Value < 0 then
    begin
      Application.MESSAGEBOX('Valor dos Cheques não pode ser menor do que o valor'+
      ' lançFDo na venda!', 'Atenção', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
      CanClose := False;
    end;
  end;

  if Tag = 3 then
  begin
    if CurrencyEdit3.Value < 0 then
    begin
      if Application.MESSAGEBOX('O valor dos lançamentos está a menor que o valor'+
      ' do cheque deseja realmente sair, Dados serão perdidos?', 'Confirmar',
       MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        cadastrouch := false;
        dm.SDS_Cheques.Delete;
        dm.SDS_Cheques.ApplyUpdates(0);
      end;
    end
    else
    begin
      FormRCConta.CurrencyEdit3.Value := CurrencyEdit3.Value;
      cadastrouch := true;
    end;
  end;
end;


procedure TFormCheques.DBEdit6Exit(Sender: TObject);
begin
if dm.SDS_ChequesVALOR_CHEQUE.AsFloat > 0 then
begin
Texto := FloatToStr(DM.Sds_ChequesVALOR_CHEQUE.AsFloat);
edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
end;
end;

procedure TFormCheques.DBDateEdit1Exit(Sender: TObject);
begin
if Tag = 1 then
begin
if DBDateEdit1.Date < formvendas.sds_pedidosData_pedido.asdatetime then
begin
//  ShowMessage('Data do cheque deve ser igual ou maior que a data atual...');
Application.MESSAGEBOX('OBS: Data do cheque deve ser igual ou maior que a data atual...', 'Atenção', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
//DBDateEdit1.SetFocus;
end;
end;
end;

end.

