unit RelClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzRadGrp, ExtCtrls, SUIButton;

type
  TFormRelClientes = class(TForm)
    suiButton3: TsuiButton;
    suiButton2: TsuiButton;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    suiCheckBox3: TsuiCheckBox;
    suiCheckBox4: TsuiCheckBox;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    suiCheckBox1: TsuiCheckBox;
    suiCheckBox2: TsuiCheckBox;
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    procedure suiCheckBox3Click(Sender: TObject);
    procedure suiCheckBox4Click(Sender: TObject);
    procedure suiCheckBox1Click(Sender: TObject);
    procedure suiCheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelClientes: TFormRelClientes;

implementation

uses ModulodeDadosConsultas, RelatorioClientes;

{$R *.dfm}

procedure TFormRelClientes.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormRelClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormRelClientes := nil;
end;

procedure TFormRelClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
close;
end;

procedure TFormRelClientes.suiButton3Click(Sender: TObject);
var
 tipof, tipoj :string;
begin

tipof := 'F';
tipoj := 'J';

dmc.Cds_clientes.Active :=FALSE;
dmc.Qry_clientes.close;
dmc.Qry_clientes.SQL.Clear;
dmc.Qry_clientes.SQL.add('select * from clientes where CODIGO >0'+'');

if suiCheckBox1.Checked = True then
dmc.Qry_clientes.SQL.add('and TIPO ='+QuotedStr(tipof)+'');

if suiCheckBox2.Checked = True then
dmc.Qry_clientes.SQL.add('and TIPO ='+QuotedStr(tipoj)+'');

if suiCheckBox3.Checked = True then
dmc.Qry_clientes.SQL.add('order by codigo asc');

if suiCheckBox4.Checked = True then
dmc.Qry_clientes.SQL.add('order by nome_rs asc');
dmc.Qry_clientes.Open;
dmc.Cds_clientes.Active :=true;

FormRelatorioClientes := TFormRelatorioClientes.Create(self);
FormRelatorioClientes.RLReport1.Prepare;
FormRelatorioClientes.RLReport1.Preview();

end;

procedure TFormRelClientes.suiCheckBox3Click(Sender: TObject);
begin
suiCheckBox4.Checked := False;
end;

procedure TFormRelClientes.suiCheckBox4Click(Sender: TObject);
begin
suiCheckBox3.Checked := False;
end;

procedure TFormRelClientes.suiCheckBox1Click(Sender: TObject);
begin
suiCheckBox2.Checked := False;
end;

procedure TFormRelClientes.suiCheckBox2Click(Sender: TObject);
begin
suiCheckBox1.Checked := False;
end;

end.
