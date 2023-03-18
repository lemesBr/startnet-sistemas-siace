unit LancCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, Mask, DBCtrls, SUIDBCtrls, StdCtrls, jpeg, ExtCtrls,
  SUIForm, ToolEdit, RXDBCtrl;

type
  TFormCheques = class(TForm)
    suiForm1: TsuiForm;
    Image1: TImage;
    edFavorecido: TEdit;
    Label1: TLabel;
    suiDBNavigator1: TsuiDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    DBComboBox1: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure suiButton1Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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

uses Principal, Vendas, Estenso, ModulodeDados;

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
formVendas.SDS_Cheques.Active := False;
formVendas.SDS_Cheques.Active := True;
formVendas.SDS_Cheques.Edit;
//DBEdit7.Text := dm.sds_clientesNome_rs.text;
end;

procedure TFormCheques.suiButton1Click(Sender: TObject);
begin
formVendas.SDS_Cheques.Post;
formVendas.SDS_Cheques.ApplyUpdates(0);
formVendas.SDS_Cheques.Next;
formVendas.SDS_Cheques.Edit;
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
       formVendas.SDS_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBEdit1.Clear;
       dbEdit1.Text    := (Copy(dbEdit4.Text, 01, 03));
       dbedit2.text    := (Copy(dbEdit4.Text, 04, 04));
       dbedit5.text    := (Copy(dbEdit4.Text, 12, 06));
       dbedit10.text   := (Copy(dbEdit4.Text, 09, 03));
       DBEdit3.text    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));

end;
end;

procedure TFormCheques.DBEdit4Enter(Sender: TObject);
begin
formVendas.SDS_Cheques.Edit;
end;

procedure TFormCheques.DBEdit7Change(Sender: TObject);
begin
Texto := FloatToStr(formVendas.SDS_ChequesVALOR_CHEQUE.AsFloat);
edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
end;

procedure TFormCheques.suiButton1Exit(Sender: TObject);
begin
DBEDIT4.SetFocus;
end;

procedure TFormCheques.DBEdit7Enter(Sender: TObject);
begin
formVendas.SDS_Cheques.Edit;
end;

procedure TFormCheques.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

end.
