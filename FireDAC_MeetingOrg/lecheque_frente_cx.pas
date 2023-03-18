unit lecheque_frente_cx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, rxToolEdit, RXDBCtrl, SUIButton, Mask,
  SUIDBCtrls, jpeg, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  XDBGrids, Buttons, sBitBtn, sPanel, sDBNavigator;

type
  TFormChequesFrente = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edFavorecido: TEdit;
    suiDBNavigator1: TsDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    DBEdit4: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBComboBox1: TDBComboBox;
    suiButton3: TsBitBtn;
    Label5: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid1: TXDBGrid;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit11: TDBEdit;
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure suiButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChequesFrente: TFormChequesFrente;
  texto : string;
  CodigoCheque: Integer;


implementation

uses RegPedido, Estenso, Principal;

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



procedure TFormChequesFrente.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
 IF KEY=#13 then
       begin
       FormCupomFiscal.SDS_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBEdit1.Clear;
       dbEdit1.Text    := (Copy(dbEdit4.Text, 01, 03));
       dbedit2.text    := (Copy(dbEdit4.Text, 04, 04));
       dbedit5.text    := (Copy(dbEdit4.Text, 12, 06));
       dbedit10.text   := (Copy(dbEdit4.Text, 09, 03));
       DBEdit3.text    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));

end;
end;

procedure TFormChequesFrente.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
  FormCupomFiscal.SDS_Cheques.Active := False;
  FormCupomFiscal.SDS_Cheques.Active := True;
  //FormCupomFiscal.SDS_Cheques.Edit;
  suiButton3Click(Sender);
end;

procedure TFormChequesFrente.DBEdit4Enter(Sender: TObject);
begin
FormCupomFiscal.SDS_Cheques.Edit;
end;

procedure TFormChequesFrente.DBEdit7Enter(Sender: TObject);
begin
FormCupomFiscal.SDS_Cheques.Edit;
end;

procedure TFormChequesFrente.suiButton1Click(Sender: TObject);
var
Contador, I :Integer;
begin
FormCupomFiscal.SDS_Cheques.Post;
FormCupomFiscal.SDS_Cheques.ApplyUpdates(0);
         { begin
          SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          SPC_MOV_DIARIO.Params[2].AsString:= 'Pagto da Vda-CF'+ FormCupomFiscal.SDS_ChequesCODIGO_COMPRA.Text +'Em Cheque Nº '+ FormCupomFiscal.SDS_ChequesN_CHEQUE.Text+' parc. ' + FormCupomFiscal.SDS_ChequesQNT.Text + ' - ' + FormCupomFiscal.SDS_ChequesTITULAR.Text;
          SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          SPC_MOV_DIARIO.Params[5].Value:= FormCupomFiscal.SDS_ChequesVALOR_CHEQUE.AsFloat;
          SPC_MOV_DIARIO.Params[6].Value:= 0;
          SPC_MOV_DIARIO.Params[7].Value:= NULL;
          SPC_MOV_DIARIO.Params[8].Value:= NULL;
          SPC_MOV_DIARIO.Params[9].Value:= FormCupomFiscal.SDS_ChequesCODIGO_COMPRA.Value;
          SPC_MOV_DIARIO.Params[10].Value:= 'VEN';
          SPC_MOV_DIARIO.ExecProc; }
//          FormCupomFiscal.SDS_Cheques.NEXT;
      

FormCupomFiscal.SDS_Cheques.Next;
suiButton1.Enabled := False;
panel1.enabled := False;
DBEdit4.SetFocus;

end;

procedure TFormChequesFrente.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormChequesFrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormChequesFrente := nil;
end;

procedure TFormChequesFrente.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormChequesFrente.DBEdit6Change(Sender: TObject);
begin
Texto := FloatToStr(FormCupomFiscal.SDS_ChequesVALOR_CHEQUE.AsFloat);
edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
end;

procedure TFormChequesFrente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (Key=VK_F4) then
      begin
       suiButton3Click(SENDER);
      end;
if (Key=VK_F5) then
      begin
       suiButton1Click(SENDER);
      end;

 if (Key=VK_F6) then
      begin
      Close;
      end;
end;

procedure TFormChequesFrente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{if FormCupomFiscal.SDS_Cheques.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  showmessage('Antes de Sair Você Deve Salvar ou Cancelar a venda !!!');
  CanClose := False;
  end;  }
end;

procedure TFormChequesFrente.suiButton3Click(Sender: TObject);
begin
 FormCupomFiscal.SDS_Cheques.Edit;
 suiButton1.Enabled := True;
 panel1.enabled := True;
 DBEdit4.SetFocus;
end;

end.
