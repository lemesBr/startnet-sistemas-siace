unit Chequesavulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, DB, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ToolEdit, RXDBCtrl, Mask, jpeg, ExtCtrls,
  SUIButton, SUIDBCtrls, Grids, DBGrids;

type
  TFormChAvulso = class(TForm)
    suiDBNavigator1: TsuiDBNavigator;
    suiButton3: TsuiButton;
    suiButton2: TsuiButton;
    suiButton1: TsuiButton;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    edFavorecido: TEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBComboBox1: TDBComboBox;
    Panel1: TPanel;
    suiButton4: TsuiButton;
    Label5: TLabel;
    dBEdit4: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    DBGrid1: TsuiDBGrid;
    procedure suiButton3Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChAvulso: TFormChAvulso;
   CodigoCheque: Integer;
   texto : string;

implementation

uses ModulodeDadosBaixas, Z_RotinasGerais, Estenso, ModulodeDados, Principal;

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

procedure TFormChAvulso.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 then
       begin
       DMB.SDS_Cheques.Edit;
       CodigoCheque := WordsCount(Edit2.Text); // Conta digitos
      // DBEdit1.Clear;
       DMB.Sds_chequesCONTA_CORRENTE.TEXT    := (Copy(Edit2.Text, 4, 07)) +'-'+ (Copy(Edit2.Text, 11, 01));
end;

end;

procedure TFormChAvulso.suiButton1Click(Sender: TObject);
begin
DMB.Sds_chequesCOD_BARRAS_CHEQUE.Text := dBEdit4.Text + EDIT1.Text +  EDIT2.Text;
DMB.Sds_chequesCODIGO.Text := '1';
DMB.Sds_chequesDATA_CADASTRO.AsDateTime := Date;
DMB.Sds_chequesCOD_EMPRESA.Text         :=  DM.SDS_EmpresaCODIGO.Text;
DMB.SDS_Cheques.Post;
DMB.SDS_Cheques.ApplyUpdates(0);

suiButton4.Enabled := TRUE;
suiButton3.Enabled := TRUE;
suiButton1.Enabled := FALSE;
suiButton2.Enabled := FALSE;
end;


procedure TFormChAvulso.suiButton3Click(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label3.Caption ='S'then
begin
DMB.SDS_Cheques.active := False;
DMB.SDS_Cheques.active := true;
Panel1.Enabled := True;
DMB.SDS_Cheques.Insert;
DBEdit4.Clear;
Edit1.clear;
edit2.Clear;
suiButton2.Enabled := TRUE;
suiButton1.Enabled := TRUE;
suiButton3.Enabled := FALSE;
suiButton4.Enabled := FALSE;
DBEdit4.SetFocus;
end;
end;

procedure TFormChAvulso.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 then
       begin
       DMB.SDS_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBEdit1.Clear;
       DMB.Sds_chequesBANCO.TEXT    := (Copy(dbEdit4.Text, 01, 03));
       DMB.SDS_ChequeSAGENCIA.TEXT    := (Copy(dbEdit4.Text, 04, 04));
    //   DMB.Sds_chequesN_CHEQUE.TEXT   := (Copy(dbEdit4.Text, 12, 06));
    //   dbedit10.text   := (Copy(dbEdit4.Text, 09, 03));
   //    DMB.Sds_chequesCONTA_CORRENTE.TEXT    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));
end;
end;

procedure TFormChAvulso.suiButton4Click(Sender: TObject);
begin
  if FormPrincipal.Label2.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label2.Caption ='S'then
begin
   suiButton2.Enabled := TRUE;
   suiButton1.Enabled := TRUE;
   suiButton3.Enabled := FALSE;
   suiButton4.Enabled := FALSE;
   DMB.SDS_Cheques.Edit;
end;
end;

procedure TFormChAvulso.DBEdit6Exit(Sender: TObject);
begin
Texto := FloatToStr(DMb.Sds_ChequesVALOR_CHEQUE.AsFloat);
edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
CorSaida(SENDER);
end;

procedure TFormChAvulso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormChAvulso := nil;
end;

procedure TFormChAvulso.DBDateEdit1Exit(Sender: TObject);
begin
SUIBUTTON1.SETFOCUS;
CorSaida(SENDER);
end;

procedure TFormChAvulso.DBEdit4Enter(Sender: TObject);
begin
COReNTRADA(Sender);
end;

procedure TFormChAvulso.DBEdit4Exit(Sender: TObject);
begin
CorSaida(SENDER);
        if dBEdit4.Text > '' then
        begin
        DMB.SDS_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBEdit1.Clear;
       DMB.Sds_chequesBANCO.TEXT    := (Copy(dbEdit4.Text, 01, 03));
       DMB.SDS_ChequeSAGENCIA.TEXT    := (Copy(dbEdit4.Text, 04, 04));
end;
end;

procedure TFormChAvulso.suiButton2Click(Sender: TObject);
begin
  suiButton4.Enabled := TRUE;
suiButton3.Enabled := TRUE;
suiButton1.Enabled := FALSE;
suiButton2.Enabled := FALSE;
dmb.SDS_Cheques.Cancel;
end;

procedure TFormChAvulso.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
IF KEY=#13 then
       begin
       DMB.SDS_Cheques.Edit;
       CodigoCheque := WordsCount(Edit1.Text); // Conta digitos
       //DBEdit1.Clear;
       DMB.Sds_chequesN_CHEQUE.TEXT   := (Copy(Edit1.Text, 4, 06));
       dbedit10.text   := (Copy(Edit1.Text, 01, 03));
   //    DMB.Sds_chequesCONTA_CORRENTE.TEXT    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));
end;
end;

procedure TFormChAvulso.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DMB.Sds_cheques.State in [dsInsert, dsEdit, dsSetKey] then
 begin
  ShowMessage('Antes de Sair Você Deve Salvar ou Cancelar o lançamento!!!');
    CanClose := False;
end;
end;

procedure TFormChAvulso.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormChAvulso.Edit1Exit(Sender: TObject);
begin
        if Edit1.Text > '' then
        begin
       DMB.SDS_Cheques.Edit;
       CodigoCheque := WordsCount(Edit1.Text); // Conta digitos
       //DBEdit1.Clear;
       DMB.Sds_chequesN_CHEQUE.TEXT   := (Copy(Edit1.Text, 4, 06));
       dbedit10.text   := (Copy(Edit1.Text, 01, 03));
end;
end;

procedure TFormChAvulso.Edit2Exit(Sender: TObject);
begin
      if Edit2.Text > '' then
      begin
       DMB.SDS_Cheques.Edit;
       CodigoCheque := WordsCount(Edit2.Text); // Conta digitos
      // DBEdit1.Clear;
       DMB.Sds_chequesCONTA_CORRENTE.TEXT    := (Copy(Edit2.Text, 4, 07)) +'-'+ (Copy(Edit2.Text, 11, 01));
end;
end;

end.
