unit UCompensacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,  Grids, DBGrids, SUIDBCtrls,
  ADvGlowButton, ExtCtrls, DB, IBCustomDataSet, IBQuery, DBClient, Provider,
  DBCtrls, IBDatabase,  RXDBCtrl, RxToolEdit, RxCurrEdit;

type
  TFormCompensacao = class(TForm)
    Panel7: TPanel;
    BtnGravar: TAdvGlowButton;
    BtnSair: TAdvGlowButton;
    BtnCancelar: TAdvGlowButton;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Label1: TLabel;
    conta: TComboEdit;
    Edit1: TEdit;
    QupdCheques: TIBQuery;
    QBuscaItens: TIBQuery;
    QBuscaItensCOD_CHEQUE: TIntegerField;
    QBuscaItensVALOR: TIBBCDField;
    QBuscaItensDATA_EMISSAO: TDateField;
    QBuscaItensDATA_VENCIMENTO: TDateField;
    QBuscaItensPAGO: TIBStringField;
    QBuscaItensORIGEM: TIBStringField;
    QBuscaItensDOCUMENTO_ORIGEM: TIntegerField;
    QBuscaItensCOD_CONTA: TIntegerField;
    QBuscaItensCOMP_NA_INCLUSAO: TIBStringField;
    QBuscaItensDATA_COMPENSACAO: TDateField;
    QBuscaItensHISTORICO: TIBStringField;
    QBuscaItensNUMERO_CHEQUE: TIntegerField;
    QBuscaItensCOD_USUARIO: TIntegerField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensTROCO: TIBStringField;
    QBuscaItensFAVORECIDO: TIBStringField;
    QBuscaItensCOD_VENDA: TIntegerField;
    QBuscaItensCOD_COMPRA: TIntegerField;
    DSQBuscaItens: TDataSource;
    qrcaixa_mov: TIBQuery;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    IBTRAce: TIBTransaction;
    RxDBCalcEdit1: TRxDBCalcEdit;
    procedure contaButtonClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure contaExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCompensacao: TFormCompensacao;

implementation

uses ConsContaBancariapas, ModulodeDados, Principal;

{$R *.dfm}

procedure TFormCompensacao.contaButtonClick(Sender: TObject);
begin
      FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
     // FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsContaBancaria.ShowModal;
      if not DM.SDS_conta_bancaria.Eof then
      begin
       conta.Text := dm.SDS_Conta_BancariaCODIGO.Text;
       Edit1.Text := DM.SDS_Conta_BancariaCONTA.Text +'-'+ DM.strngfldSDS_Conta_BancariaDIGITO.Text;
       Edit2.Text := dm.SDS_Conta_BancariaAGENCIA.text;
       Edit3.Text := dm.SDS_Conta_BancariaTITULAR.text;

if IBTRAce.Active then
   IBTRAce.Commit;

IBTRAce.StartTransaction;
QBuscaItens.Close;
QBuscaItens.ParamByName('CONTA').Text := conta.Text;
QBuscaItens.Open;
QBuscaItens.FetchAll;

IF not QBuscaItens.Eof then
BEGIN
  BtnGravar.Enabled := True;
end else
  BtnGravar.Enabled := False;
// IBTRAce.Commit;
end;
end;

procedure TFormCompensacao.BtnGravarClick(Sender: TObject);
//var
 // texto: string;
begin
         // texto :='Confirma a Compensação do Cheque nº '+DBEdit3.text+' ?';
           // panel6.Enabled:= true;
           // Botoes('G');
      //  if MESSAGEdlg(('Confirma a Compensação do Cheque nº '+DBEdit3.text+' ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
          if MessageDlg('Confirma a Compensação do Cheque nº '+DBEdit3.text+' ?', mtConfirmation,[mbyes,mbno], 0) = ID_YES then
           begin
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := RxDBCalcEdit1.Value ;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := RxDBCalcEdit1.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 99; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Depósito do Cheque Nº - '+ DBEdit3.text + ' Na conta nº '+ EDIT1.TEXT;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CMP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


            TRY
           if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;

           DM.IBTransaction.StartTransaction;

             with QupdCheques do
               begin
                  close;
                  Parambyname('pago').AsString                 := 'T';
                  Parambyname('comp_na_inclusao').Asstring     := 'T';
                  Parambyname('data_compensacao').AsDate       := DATE;
                  Parambyname('COD_CHEQUE').AsString           := DBEdit1.Text;
                  ExecSQL;
               end;
            DM.IBTransaction.CommitRetaining;
             except
            DM.IBTransaction.Rollback;
            showmessage('Erro ao Gravar a compensação do cheque');
          end;

          CONTA.SetFocus;

             if IBTRAce.Active then
              IBTRAce.Commit;

     IBTRAce.StartTransaction;
QBuscaItens.Close;
QBuscaItens.ParamByName('CONTA').Text := conta.Text;
QBuscaItens.Open;
QBuscaItens.FetchAll;

IF not QBuscaItens.Eof then
BEGIN
  BtnGravar.Enabled := True;
end else
  BtnGravar.Enabled := False;
 IBTRAce.Commit;
 contaExit(sender);
end else
Exit;
end;

procedure TFormCompensacao.contaExit(Sender: TObject);
begin
if DM.SDS_Conta_Bancaria.locate('CODIGO', (conta.Text),[])= True then
begin
conta.Text := dm.SDS_Conta_BancariaCODIGO.Text;
Edit1.Text := DM.SDS_Conta_BancariaCONTA.Text +'-'+ DM.strngfldSDS_Conta_BancariaDIGITO.Text;
Edit2.Text := dm.SDS_Conta_BancariaAGENCIA.text;
Edit3.Text := dm.SDS_Conta_BancariaTITULAR.text;
suiDBGrid1.SetFocus;

if IBTRAce.Active then
   IBTRAce.Commit;

IBTRAce.StartTransaction;
QBuscaItens.Close;
QBuscaItens.ParamByName('CONTA').Text := conta.Text;
QBuscaItens.Open;
QBuscaItens.FetchAll;

IF not QBuscaItens.Eof then
BEGIN
  BtnGravar.Enabled := True;
end else
  BtnGravar.Enabled := False;
 //IBTRAce.Commit;

end else
if not DM.SDS_Conta_Bancaria.locate('CODIGO', (conta.Text),[])= True then
begin
  ShowMessage('Conta não Localizada');
end;
end;


procedure TFormCompensacao.BtnSairClick(Sender: TObject);
begin
close;
end;

procedure TFormCompensacao.BtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormCompensacao.FormShow(Sender: TObject);
begin
dm.SDS_Conta_Bancaria.Active := False;
dm.SDS_Conta_Bancaria.Active := true;
conta.SetFocus;
end;

procedure TFormCompensacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormCompensacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormCompensacao := nil;
end;

end.
