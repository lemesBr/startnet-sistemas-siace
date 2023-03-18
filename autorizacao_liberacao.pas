unit autorizacao_liberacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, StdCtrls, Buttons, DB, DBCtrls, SUIEdit, 
  RXCtrls, ExtCtrls, frxClass, sLabel;

type
  TFormAtutoriza = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Bevel2: TBevel;
    myLabel3d1: TsLabelFX;
    Edit1: TsuiEdit;
    Edit11: TDBLookupComboBox;
    Confirma: TBitBtn;
    XDBGrid1: TXDBGrid;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure ConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure XDBGrid1CellClick(Column: TXColumn);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtutoriza: TFormAtutoriza;
  senhaatual, user : string ;
  
implementation

uses ModulodeDadosConsultas, ModulodeDados, Z_CriptDecript, Z_RotinasGerais;

{$R *.dfm}

procedure TFormAtutoriza.ConfirmaClick(Sender: TObject);
begin
SenhaAtual:= Wcriptografar(Edit1.Text,5);
USER:=(edit11.Text);

 if not DM.SDS_Usuarios.Locate('Usuario;senha',VarArrayOf([user,SenhaAtual]),[locaseInsensitive])then
 begin
  ShowMessage('Usuário ou senha não Confere, Tente Novamente....');
  edit1.setfocus;
   end else

 if DM.SDS_UsuariosAUTORIZA.Text = '' then
 begin
  ShowMessage('Usuário não Está autorizado a fornecer autoriazação para Compras a Prazo...');
  edit1.setfocus;
 end else

 if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,SenhaAtual]),[locaseInsensitive])then
 if DM.SDS_UsuariosAUTORIZA.Text = 'S' then
 begin
 dmc.sds_libera.Locate('cod_venda', DMC.qryLiberarCOD_VENDA.Text,[loPartialKey, loCaseInsensitive]);
 dmc.sds_libera.Edit;
 DMC.sds_liberaLIBERA.Text := 'S';
 DMC.sds_libera.Post;
 DMC.sds_libera.ApplyUpdates(0);
 close;
 end;
end;

procedure TFormAtutoriza.FormShow(Sender: TObject);
begin
if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  DM.QConsulta.SQL.Clear;
  DM.QConsulta.SQL.Add('delete from liberacao_cliente where cod_cliente is null');
  DM.QConsulta.ExecSQL;
  dm.IBTransaction.Commit;
  dm.QConsulta.Close;


       DMC.sds_libera.Active := False;
       DMC.sds_libera.Active := True;

       DMC.qryLiberar.Active := False;
       DMC.qryLiberar.Active := True;

     {  DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DMC.sds_liberaCOD_CLIENTE.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;


       if DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat < 0 then
       begin
       Memo1.Lines.Add('!!! LIMITE DE CREDITO EXCEDIDO EM R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITELIMITE_DIPONIVEL.AsCurrency) + ' !!! ')
       end;
       if DMC.CDS_LIMITELIMITE_DE_CREDITO.AsFloat < 0 then
       begin
       Memo1.Lines.Add('!!! LIMITE DE CREDITO R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITELIMITE_DE_CREDITO.AsCurrency) + ' !!! ')
       end;

       if DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! DÉBITOS VENCIDOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITEV_CRED_VENCIDO.AsCurrency) + ' !!! ')
       end;

       if DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! CHEQUES VENCIDOS NÃO COMPENSADOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsCurrency) + ' !!! ')
       end; }



end;

procedure TFormAtutoriza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
FormAtutoriza := nil;
end;

procedure TFormAtutoriza.FormKeyPress(Sender: TObject; var Key: Char);
begin
//if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormAtutoriza.BitBtn2Click(Sender: TObject);
begin
        dmc.sds_libera.Locate('cod_venda', DMC.qryLiberarCOD_VENDA.Text,[loPartialKey, loCaseInsensitive]);

        DMC.sds_libera.Edit;
        DMC.sds_liberaSolicita.text := 'N';
        DMC.sds_liberaAUTO_LIBERA.Text := 'N';
        DMC.sds_libera.Post;
        DMC.sds_libera.ApplyUpdates(0);

end;

procedure TFormAtutoriza.XDBGrid1CellClick(Column: TXColumn);
begin
     if (DMC.qryLiberarVALOR_VENCIDO.AsFloat - DMC.qryLiberarLIMITE_DE_CREDITO.AsFloat) < 0 then
       begin
       Memo1.Lines.Add('!!! LIMITE DE CREDITO EXCEDIDO EM R$: ' + FormatFloat('##,##0.00', DMC.qryLiberarLIMITE_DE_CREDITO.AsCurrency - DMC.qryLiberarVALOR_PAGAR.AsCurrency) + ' !!! ')
       end;
       if DMC.qryLiberarLIMITE_DE_CREDITO.AsFloat < 0 then
       begin
       Memo1.Lines.Add('!!! LIMITE DE CREDITO R$: ' + FormatFloat('##,##0.00',DMC.qryLiberarLIMITE_DE_CREDITO.AsCurrency) + ' !!! ')
       end;

       if DMC.qryLiberarVALOR_VENCIDO.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! DÉBITOS VENCIDOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.qryLiberarVALOR_VENCIDO.AsCurrency) + ' !!! ')
       end;

       if DMC.qryLiberarCHEQUES_COMPESAR.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! CHEQUES VENCIDOS NÃO COMPENSADOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.qryLiberarCHEQUES_COMPESAR.asCurrency) + ' !!! ')
       end; 
end;

procedure TFormAtutoriza.BitBtn1Click(Sender: TObject);
begin
        dmc.sds_libera.Locate('cod_venda', DMC.qryLiberarCOD_VENDA.Text,[loPartialKey, loCaseInsensitive]);
        dmc.sds_libera.Edit;
        DMC.sds_libera.Delete;
       // DMC.sds_libera.Post;
        DMC.sds_libera.ApplyUpdates(0);

        DMC.qryLiberar.Refresh;
end;

end.
