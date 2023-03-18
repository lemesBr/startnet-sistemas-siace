unit aniversario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mylabel, ExtCtrls, SUIButton, Mask, Buttons,
  sBitBtn, sComboBox, sMaskEdit, sCustomComboEdit, sTooledit, sLabel;

type
  TFormAniversario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    myLabel3d1: TsLabelFX;
    Label5: TLabel;
    DateEdit3: TsDateEdit;
    DateEdit4: TsDateEdit;
    Label6: TLabel;
    suiButton1: TsBitBtn;
    suiButton11: TsBitBtn;
    ComboBox1: TsComboBox;
    Label1: TLabel;
    suiButton3: TsBitBtn;
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAniversario: TFormAniversario;

implementation

uses ModulodeDadosConsultas, ModulodeDados, Aniversariantes;

{$R *.dfm}

procedure TFormAniversario.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormAniversario.suiButton11Click(Sender: TObject);
var
  inicio, final :string;
  DeStr : string;
begin
if ComboBox1.Text='Janeiro' then
begin
DeStr:='01';
end else
if ComboBox1.Text='Fevereiro' then
begin
DeStr:='02';
end else
if ComboBox1.Text='Março' then
begin
 DeStr:='03';
end else
if ComboBox1.Text='Abril' then
begin
DeStr:='04';
end else
if ComboBox1.Text='Maio' then
begin
DeStr:='05';
end else
if ComboBox1.Text='Junho' then
begin
DeStr:='06';
end else
if ComboBox1.Text='Julho' then
begin
DeStr:='07';
end else
if ComboBox1.Text='Agosto' then
begin
DeStr:='08';
end else
if ComboBox1.Text='Setembro' then
begin
DeStr:='09';
end else
if ComboBox1.Text='Outubro' then
begin
DeStr:='10';
end else
if ComboBox1.Text='Novembro' then
begin
DeStr:='11';
end else
if ComboBox1.Text='Dezembro' then
begin
DeStr:='12';
end;

    inicio := DateToStr(Date);
    final  := DateToStr(Date);

    inicio:=dateedit3.TexT;
    final:=dateedit4.TexT;

    dmc.Qry_clientes.close;
    dmc.Qry_clientes.SQL.Clear;
    dmc.Qry_clientes.SQL.add('select * from clientes where CODIGO >0'+'');
    if DeStr > '' then
    dmc.Qry_clientes.SQL.add('and extract(month from nascimento_ia)='+DeStr+'');
    if inicio > ' / /   ' then
    dmc.Qry_clientes.SQL.add('and NASCIMENTO_IA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and NASCIMENTO_IA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    dmc.Qry_clientes.SQL.add('ORDER BY NOME_RS ASC');
    dmc.Qry_clientes.Open;
    dmc.cds_clientes.active := false;
    dmc.cds_clientes.active := True;

    if not dmc.cds_clientes.eof then
    begin

    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
     BEGIN
     FormAniversariantes := TFormAniversariantes.Create(self);
     FormAniversariantes.RLReport1.DefaultFilter.Destroy;
     FormAniversariantes.RLReport1.Prepare;
     FormAniversariantes.RLReport1.PreviewModal;
     END ELSE
      IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
      begin
      FormAniversariantes := TFormAniversariantes.Create(self);
      FormAniversariantes.RLReport1.Prepare;
      FormAniversariantes.RLReport1.PreviewModal;
      end;


      end else
      begin
      ShowMessage('Sem Dados para emitir Selecione outro periodo...');
      end;
      end;


procedure TFormAniversario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := cafree;
FormAniversario := nil;
end;

procedure TFormAniversario.suiButton3Click(Sender: TObject);
begin
DateEdit3.Clear;
DateEdit4.Clear;
ComboBox1.ItemIndex := 0;
end;

procedure TFormAniversario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
