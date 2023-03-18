unit etiquetasPPLA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  Buttons, SUIEdit, Mask,
  Grids, XDBGrids, DB, DBClient, ACBrDevice, ACBrBase, ACBrETQ, RxToolEdit,
  sLabel;

type
  TFormEtiquetasPPLA = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    myLabel3d1: TsLabelFX;
    ComboEdit1: TComboEdit;
    E_Nome: TsuiEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    Ecopias: TEdit;
    Label3: TLabel;
    cbPorta: TComboBox;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet2Codigo_barras: TStringField;
    ClientDataSet2Descricao: TStringField;
    ClientDataSet2Valor: TFMTBCDField;
    ClientDataSet2Empresa: TStringField;
    ClientDataSet2codigo: TIntegerField;
    BitBtn4: TBitBtn;
    XDBGrid1: TXDBGrid;
    BitBtn5: TBitBtn;
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure BitBtn4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    porta, comp :string;
  end;

var
  FormEtiquetasPPLA: TFormEtiquetasPPLA;

implementation

uses Principal, ConsProdutos, ModulodeDados;

{$R *.dfm}


procedure TFormEtiquetasPPLA.ComboEdit1ButtonClick(Sender: TObject);
begin
Try
if FormConsProdutos=nil   then
    begin
    FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.Showmodal;
      ComboEdit1.Text := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
      E_Nome.Text := dm.SDS_PRODUTOSDESCRICAO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de pesquisa de produtos!!');
end;
end;

procedure TFormEtiquetasPPLA.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormEtiquetasPPLA.BitBtn3Click(Sender: TObject);
var
  F: TextFile;
  ni :Integer;
begin
  porta := cbPorta.Text;
  comp := Edit1.Text;
if CheckBox1.Checked = false then
begin
try
AssignFile(F,''+PORTA+'');
Rewrite(F);
//SaveRecno(DM.SDS_PRODUTOS); //Funcao que fiz para salvar posicao do registro
ClientDataSet2.First;
while not ClientDataSet2.Eof do begin
//Imprimi etiquetas de acordo com a quantidade do estoque
for nI := 1 to strtoint(ECopias.text) do begin
writeln(F,'c0000');
writeln(F,'KI503');
writeln(F,'O0220');
writeln(F,'f220');
writeln(F,'KW1197');
writeln(F,'KI7');
writeln(F,'V0');
writeln(F,'L');
writeln(F,'H12');
writeln(F,'PC');
writeln(F,'A2');
writeln(F,'D11');
writeln(F,'111100000420020',''+clientdataset2descricao.TEXT+'');
writeln(F,'111100000340020',''+'R$'+clientdataset2Valor.TEXT+'');
writeln(F,'1F2202400030019',''+clientdataset2Codigo_barras.asString+'');
writeln(F,'1F2202400030158',''+clientdataset2Codigo_barras.asString+'');
writeln(F,'1F2202400030299',''+clientdataset2Codigo_barras.Asstring+'');
writeln(F,'111100000340159',''+'R$'+clientdataset2Valor.TEXT+'');
writeln(F,'111100000410159',''+clientdataset2descricao.TEXT+'');
writeln(F,'111100000340300',''+'R$'+clientdataset2Valor.TEXT+'');
writeln(F,'111100000410300',''+clientdataset2descricao.TEXT+'');
writeln(F,'^01');
writeln(F,'Q0001');
writeln(F,'E');
end;
ClientDataSet2.Next;
end;
//RestRecno(DM.SDS_PRODUTOS); //Retorno no registro onde estava localizado
finally
Closefile(F);
end;
end else

if CheckBox1.Checked = true then
   begin
 try
AssignFile(F,''+comp+'');
Rewrite(F);
//SaveRecno(DM.SDS_PRODUTOS); //Funcao que fiz para salvar posicao do registro
ClientDataSet2.First;
while not ClientDataSet2.Eof do begin
//Imprimi etiquetas de acordo com a quantidade do estoque
for nI := 1 to strtoint(Ecopias.text) do begin
writeln(F,'c0000');
writeln(F,'KI503');
writeln(F,'O0220');
writeln(F,'f220');
writeln(F,'KW1197');
writeln(F,'KI7');
writeln(F,'V0');
writeln(F,'L');
writeln(F,'H12');
writeln(F,'PC');
writeln(F,'A2');
writeln(F,'D11');
writeln(F,'111100000420020',''+clientdataset2descricao.TEXT+'');
writeln(F,'111100000340020',''+'R$'+clientdataset2Valor.TEXT+'');
writeln(F,'1F2202400030019',''+clientdataset2Codigo_barras.asString+'');
writeln(F,'1F2202400030158',''+clientdataset2Codigo_barras.asString+'');
writeln(F,'1F2202400030299',''+clientdataset2Codigo_barras.Asstring+'');
writeln(F,'111100000340159',''+'R$'+clientdataset2Valor.TEXT+'');
writeln(F,'111100000410159',''+clientdataset2descricao.TEXT+'');
writeln(F,'111100000340300',''+'R$'+clientdataset2Valor.TEXT+'');
writeln(F,'111100000410300',''+clientdataset2descricao.TEXT+'');
writeln(F,'^01');
writeln(F,'Q0001');
writeln(F,'E');
end;
ClientDataSet2.Next;
end;
//RestRecno(DM.SDS_PRODUTOS); //Retorno no registro onde estava localizado
finally
Closefile(F);
end;

end;
end;

procedure TFormEtiquetasPPLA.BitBtn4Click(Sender: TObject);
begin
       ClientDataSet2.Insert;
       ClientDataSet2codigo.Text :=  DM.SDS_PRODUTOSCODIGO.Text;
       ClientDataSet2Descricao.Text := E_Nome.Text;
       ClientDataSet2Codigo_barras.Text := dm.SDS_PRODUTOSCODIGO_BARRAS.Text;
       ClientDataSet2Valor.Text := DM.SDS_PRODUTOSPRECO_VENDA.Text;
       ClientDataSet2Empresa.Text := DM.SDS_EmpresaNOME_FANTASIA.TEXT;
       ClientDataSet2.Post;
end;

procedure TFormEtiquetasPPLA.FormCreate(Sender: TObject);
begin
  with clientDataset2 do
  Begin
//  Filename:=ExtractFilepath(paramstr(0))+'ETIQUETA.xlm';
//  if not FileExists(filename) then
  createdataset;
  open;
  end;
  while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;
end;

procedure TFormEtiquetasPPLA.BitBtn5Click(Sender: TObject);
begin
   while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;
end;

procedure TFormEtiquetasPPLA.ComboEdit1Exit(Sender: TObject);
begin

if dm.SDS_produtos.Locate('codigo_barras',ComboEdit1.Text, []) = True then
 BEGIN
   E_Nome.Text := DM.SDS_PRODUTOSDESCRICAO.Text;
 end else
   if not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
        ShowMessage('Produto nao localizado, ou não Cadastrado');
      end;
// BitBtn4.SetFocus;
end;

procedure TFormEtiquetasPPLA.BitBtn4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then
  begin
ComboEdit1.SetFocus;
ComboEdit1.Clear;
end;
end;

procedure TFormEtiquetasPPLA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION:=caFree;
FormEtiquetasPPLA := nil;
end;

procedure TFormEtiquetasPPLA.ComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
 begin
      if DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
          // ComboEdit1.Text := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
           E_Nome.Text := dm.SDS_PRODUTOSDESCRICAO.Text;
      end else
      if not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
        ShowMessage('Produto nao localizado, ou não Cadastrado');
      end;
end;
end;

procedure TFormEtiquetasPPLA.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    begin
      ClientDataSet2.Delete;
    end;
end;

procedure TFormEtiquetasPPLA.CheckBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormEtiquetasPPLA.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
