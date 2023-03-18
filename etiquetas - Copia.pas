unit etiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mylabel, ExtCtrls, Buttons, SUIEdit, Mask,
  ToolEdit, Grids, XDBGrids, DB, DBClient, Printers;

type
  TFormEtiquetas = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    myLabel3d1: TmyLabel3d;
    RxDBComboEdit1: TComboEdit;
    E_Nome: TsuiEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    etq: TEdit;
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
    BitBtn4: TBitBtn;
    XDBGrid1: TXDBGrid;
    BitBtn5: TBitBtn;
    Modelo: TComboBox;
    Edit2: TEdit;
    ClientDataSet2codigo: TIntegerField;
    CheckBox2: TCheckBox;
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure BitBtn4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit1Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure AtualizaImp;

    private
    { Private declarations }
  public
    { Public declarations }
    porta, comp :string;
    ImprDefault : String ;

  end;

var
  FormEtiquetas: TFormEtiquetas;

implementation

uses Principal, ConsProdutos, ModulodeDados, ConsProdutosVendas;


{$R *.dfm}


procedure TFormEtiquetas.RxDBComboEdit1ButtonClick(Sender: TObject);
begin

     FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
     FormConsProdutosVendas.Edit1.Text := RxDBComboEdit1.Text;
     FormConsProdutosVendas.Showmodal;
     RxDBComboEdit1.Text :=DM.Sds_produtos_cCODIGO_BARRAS.Text;
     E_nome.Text := dm.Sds_produtos_cDESCRICAO.Text;
     RxDBComboEdit1.SetFocus;
end;

procedure TFormEtiquetas.BitBtn1Click(Sender: TObject);
Var
  vetq: TStringList;
  s,c,c1,c2, c3, c4:String;
  pi,pf,i:integer;
  f:textfile;
  porta, comp :string;
begin
  vetq := TStringList.create;
  vetq.clear;
  porta := cbPorta.Text;
  comp := Edit1.Text;

  // Cabeçalho da Etiqueta
  vetq.Add('Q228,8');
  vetq.Add('q704');
  vetq.Add('rN');
  vetq.Add('S4');
  vetq.Add('D7');
  vetq.Add('ZT');
  vetq.Add('JB');
  vetq.Add('OD');
  vetq.Add('R0,0');
  vetq.Add('N');

  // Coluna 1
  vetq.Add('A600,210,2,4,1,1,N,"'+DM.SDS_EmpresaNOME_FANTASIA.Text+'"');
  vetq.Add('A600,175,2,3,1,1,N,"'+DM.SDS_PRODUTOSDESCRICAO.AsString+'"');
  vetq.Add('A600,85,2,3,1,1,N,"R$"');
  vetq.Add('A550,85,2,5,1,1,N,"'+DM.SDS_PRODUTOSPRECO_VENDA.Text+'"');
  vetq.Add('B380,116,2,E30,3,6,75,B,,"'+DM.SDS_PRODUTOSCODIGO_BARRAS.AsString+'"');

  // Coluna 2
 { vetq.Add('A345,45,2,3,1,1,N,"[PRECO]"');
  vetq.Add('A459,40,2,1,1,1,N,"A Vista R$"');
  vetq.Add('A467,103,2,2,1,1,N,"[DESCRICAO]"');
  vetq.Add('A386,151,2,3,1,1,N,"[CODBARRAS]"');
  vetq.Add('A406,277,2,2,1,1,N,"DEVMEDIA"');
  vetq.Add('B297,154,0,2,2,5,72,N,"[CODBARRAS]"');

  // Coluna 3
  vetq.Add('A585,45,2,3,1,1,N,"[PRECO]"');
  vetq.Add('A699,40,2,1,1,1,N,"A Vista R$"');
  vetq.Add('A707,103,2,2,1,1,N,"[DESCRICAO]"');
  vetq.Add('A626,151,2,3,1,1,N,"[CODBARRAS]"');
  vetq.Add('A646,277,2,2,1,1,N,"DEVMEDIA"');
  vetq.Add('B537,154,0,2,2,5,72,N,"[CODBARRAS]"');   }
  // Rodapé da Etiqueta
  vetq.Add('P1');

  // substitui as variáveis delimitadas por [] pelo conteúdo do campo
 // for i:=0 to vetq.count - 1 do
  for I := 1 to strtoint(etq.text) do
  begin
      s := Vetq.strings[i];
     { pi := pos('[', s);
      pf := pos(']', s);
      while pi > 0 do
      begin
         c := copy(s, pi + 1, pf - pi - 1);
         c1 := DM.SDS_PRODUTOSCODIGO_BARRAS.AsString;
         s  := StringReplace(s, '[' + c + ']', c1, [rfReplaceAll]);
         pi := pos('[', s);
         pf := pos(']', s);
      end; }
      vetq.strings[i] := s;
  end;

  // gera arquivo texto com o conteúdo que será enviado para a impressora
  vetq.SaveToFile('c:\SIACE\etiqueta.txt');

   // criar um arquivo .bat para enviar o arquivo texto gerado para a impressora atraves da porta LPT1
   // usando o comando type do DOS
   if CheckBox1.Checked = False then
   begin
   if not FileExists('C:\SIACE\PRINTLBL.BAT') then
   begin
      AssignFile(F, 'C:\SIACE\PRINTLBL.BAT');
      try
          Rewrite(F);
          Writeln(F, 'TYPE C:\SIACE\ETIQUETA.TXT > '+PORTA+'');
       finally
          CloseFile(F);
       end
    end;
     WinExec('C:\siace\PRINTLBL.BAT', SW_Show);
    end else

   if CheckBox1.Checked = true then
   begin
   if not FileExists('C:\SIACE\PRINTLBL.BAT') then
   begin
      AssignFile(F, 'C:\SIACE\PRINTLBL.BAT');
      try
          Rewrite(F);
          Writeln(F, 'TYPE C:\SIACE\ETIQUETA.TXT > '+comp+'');
       finally
          CloseFile(F);
       end
    end;
     WinExec('C:\siace\PRINTLBL.BAT', SW_Show);
   end;
    //shellexecute(0, 'Open', PChar('C:\siace\PRINTLBL.BAT'), nil, nil, Ord(SW_HIDE));

   // Para usar USB tem que compartilhar a impressora e enviar o arquivo para o compartilhamento
   // Ex: Type c:\etiqueta.txt > \\computador\impressora

end;



procedure TFormEtiquetas.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormEtiquetas.BitBtn3Click(Sender: TObject);
var
  F: TextFile;
  ni :Integer;
begin
  porta := cbPorta.Text;
  comp := Edit1.Text;

if CheckBox2.Checked = True then
begin
if modelo.ItemIndex = 0 then
begin
if CheckBox1.Checked = false then
begin
try
AssignFile(F,''+PORTA+'');
Rewrite(F);
writeln(F,'Q0001,0'); //LARGURA da etiqueta segundo o manual E ESPACAMENTO
writeln(F,'q831'); //aLTURA da etiqueta seg. o manual EM DOTS 1MM = 8 DOTS
writeln(F,'rN'); //
writeln(F,'S1'); //
writeln(F,'D7'); //densidae da impressao
writeln(F,'ZT'); // orientacao da impressao
writeln(F,'JB');
writeln(F,'OD');
writeln(F,'R56,0');
//SaveRecno(DM.SDS_PRODUTOS); //Funcao que fiz para salvar posicao do registro
ClientDataSet2.First;
while not ClientDataSet2.Eof do begin
//Imprimi etiquetas de acordo com a quantidade do estoque
for nI := 1 to strtoint(etq.text) do begin
writeln(F,'N');
//Codigo de barras
writeln(F,'A24,16,0,2,2,2,N,"'+copy(clientdataset2Empresa.TEXT,1,25)+'"');
writeln(F,'A24,56,0,1,2,2,N,"'+copy(clientdataset2descricao.TEXT,1,25)+'"');
writeln(F,'A96,128,0,1,4,4,N,"'+clientdataset2Valor.TEXT+'"');
writeln(F,'A24,128,0,1,2,2,N,"R$"');
writeln(F,'B384,88,0,E30,3,6,100,B,"'+clientdataset2Codigo_barras.asString+'"');
writeln(F,'X0,223,1,0,224');
//Vr. do Fator
writeln(F,'P1');
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
writeln(F,'Q0001,0'); //LARGURA da etiqueta segundo o manual E ESPACAMENTO
writeln(F,'q831'); //aLTURA da etiqueta seg. o manual EM DOTS 1MM = 8 DOTS
writeln(F,'rN'); //
writeln(F,'S1'); //
writeln(F,'D7'); //densidae da impressao
writeln(F,'ZT'); // orientacao da impressao
writeln(F,'JB');
writeln(F,'OD');
writeln(F,'R56,0');
//SaveRecno(DM.SDS_PRODUTOS); //Funcao que fiz para salvar posicao do registro
ClientDataSet2.First;
while not ClientDataSet2.Eof do begin
//Imprimi etiquetas de acordo com a quantidade do estoque
for nI := 1 to strtoint(etq.text) do begin
writeln(F,'N');
//Codigo de barras
writeln(F,'A24,16,0,2,2,2,N,"'+copy(clientdataset2Empresa.TEXT,1,25)+'"');
writeln(F,'A24,56,0,1,2,2,N,"'+copy(clientdataset2descricao.TEXT,1,25)+'"');
writeln(F,'A96,128,0,1,4,4,N,"'+clientdataset2Valor.TEXT+'"');
writeln(F,'A24,128,0,1,2,2,N,"R$"');
writeln(F,'B384,88,0,E30,3,6,100,B,"'+clientdataset2Codigo_barras.asString+'"');
writeln(F,'X0,223,1,0,224');
//Vr. do Fator
writeln(F,'P1');
end;
ClientDataSet2.Next;
end;
//RestRecno(DM.SDS_PRODUTOS); //Retorno no registro onde estava localizado
finally
Closefile(F);
end;

end;
end;

if modelo.ItemIndex = 1 then
begin
if CheckBox1.Checked = false then
   begin
try
AssignFile(F,''+PORTA+'');
Rewrite(F);
writeln(F,'I8,A,001');
writeln(F,'Q168,016'); //LARGURA da etiqueta segundo o manual E ESPACAMENTO
writeln(F,'q831'); //aLTURA da etiqueta seg. o manual EM DOTS 1MM = 8 DOTS
writeln(F,'rN'); //
writeln(F,'S1'); //
writeln(F,'D7'); //densidae da impressao
writeln(F,'ZT'); // orientacao da impressao
writeln(F,'JB');
writeln(F,'OD');
writeln(F,'R4,0');
writeln(F,'f100');
//SaveRecno(DM.SDS_PRODUTOS); //Funcao que fiz para salvar posicao do registro
ClientDataSet2.First;
while not ClientDataSet2.Eof do begin
//Imprimi etiquetas de acordo com a quantidade do estoque
for nI := 1 to strtoint(etq.text) do begin
writeln(F,'N');
//Codigo de barras
//writeln(F,'A24,16,0,2,2,2,N,"'+clientdataset2Empresa.TEXT+'"');
writeln(F,'A24,12,110,8,28,N,"'+copy(clientdataset2descricao.TEXT,1,25)+'"');
writeln(F,'A96,6,0,23,28,N,"'+clientdataset2Valor.TEXT+'"');
writeln(F,'A24,128,0,1,2,2,N,"R$"');
writeln(F,'B35,32,0,2,4,10,54,B,"'+dm.sds_produtos_cCodigo_barras.asString+'"');
//writeln(F,'X0,223,1,0,224');
//Vr. do Fator
writeln(F,'P1');
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
writeln(F,'I8,A,001');
writeln(F,'Q168,016'); //LARGURA da etiqueta segundo o manual E ESPACAMENTO
writeln(F,'q831'); //aLTURA da etiqueta seg. o manual EM DOTS 1MM = 8 DOTS
writeln(F,'rN'); //
writeln(F,'S1'); //
writeln(F,'D7'); //densidae da impressao
writeln(F,'ZT'); // orientacao da impressao
writeln(F,'JB');
writeln(F,'OD');
writeln(F,'R4,0');
writeln(F,'f100');
//SaveRecno(DM.SDS_PRODUTOS); //Funcao que fiz para salvar posicao do registro
ClientDataSet2.First;
while not ClientDataSet2.Eof do
begin
//Imprimi etiquetas de acordo com a quantidade do estoque
for nI := 1 to strtoint(etq.text) do
begin
writeln(F,'N');

//Codigo de barras
writeln(F,'A30,5,0,1,1,1,N,"'+copy(clientdataset2descricao.TEXT,1,25)+'"');
writeln(F,'A90,110,0,1,2,2,N,"'+clientdataset2Valor.TEXT+'"');
writeln(F,'A30,110,0,1,2,2,N,"R$"');
writeln(F,'B30,25,0,2,3,7,50,B,"'+dm.sds_produtos_cCodigo.text+'"');
// 2
writeln(F,'A310,5,0,1,1,1,N,"'+copy(clientdataset2descricao.TEXT,1,25)+'"');
writeln(F,'A350,110,0,1,2,2,N,"'+clientdataset2Valor.TEXT+'"');
writeln(F,'A310,110,0,1,2,2,N,"R$"');
writeln(F,'B310,25,0,2,3,7,50,B,"'+dm.sds_produtos_cCodigo.text+'"');
//3
writeln(F,'A586,5,0,1,1,1,N,"'+copy(clientdataset2descricao.TEXT,1,25)+'"');
writeln(F,'A636,110,0,1,2,2,N,"'+clientdataset2Valor.TEXT+'"');
writeln(F,'A586,110,0,1,2,2,N,"R$"');
writeln(F,'B586,25,0,2,3,7,50,B,"'+dm.sds_produtos_cCodigo.text+'"');

writeln(F,'P1');
end;
ClientDataSet2.Next;
end;
finally
Closefile(F);
end;

end;
end;

if modelo.ItemIndex = 2 then
begin
if CheckBox1.Checked = false then
begin
try
AssignFile(F,''+PORTA+'');
Rewrite(F);
writeln(F,'<xpml><page quantity=0  pitch=32.5 mm ></xpml>SIZE 91.5 mm, 32.5 mm');
writeln(F,'DIRECTION 0,0'); //LARGURA da etiqueta segundo o manual E ESPACAMENTO
writeln(F,'REFERENCE 0,0'); //aLTURA da etiqueta seg. o manual EM DOTS 1MM = 8 DOTS
writeln(F,'OFFSET 0 mm'); //
writeln(F,'SET PEEL OFF'); //
writeln(F,'SET CUTTER OFF'); //densidae da impressao
writeln(F,'<xpml></page></xpml><xpml><page quantity=1 pitch=32.5 mm ></xpml>SET TEAR ON'); // orientacao da impressao
writeln(F,'CLS');
//SaveRecno(DM.SDS_PRODUTOS); //Funcao que fiz para salvar posicao do registro
ClientDataSet2.First;
while not ClientDataSet2.Eof do begin
//Imprimi etiquetas de acordo com a quantidade do estoque
for nI := 1 to strtoint(etq.text) do begin
writeln(F,'CODEPAGE 1252');
writeln(F,'TEXT 16,60,"0",0,12,12,"'+copy(clientdataset2descricao.TEXT,1,25)+'"');
writeln(F,'BARCODE 16,112,"39",94,0,0,2,5,"'+dm.sds_produtos_cCodigo_barras.asString+'"');
writeln(F,'TEXT 122,211,"0",0,12,12,"'+dm.sds_produtos_cCodigo_barras.asString+'"');
writeln(F,'TEXT 563,124,"0",0,16,12,"'+clientdataset2Valor.TEXT+'"');
writeln(F,'TEXT 488,124,"0",0,12,12,"R$"');
writeln(F,'TEXT 16,20,"0",0,12,12,"'+clientdataset2Empresa.TEXT+'"');
writeln(F,'PRINT 1,1');
writeln(F,'<xpml></page></xpml><xpml><end/></xpml>');
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
writeln(F,'<xpml><page quantity=0 pitch=32.5 mm ></xpml>SIZE 91.5 mm, 32.5 mm');
writeln(F,'DIRECTION 0,0'); //LARGURA da etiqueta segundo o manual E ESPACAMENTO
writeln(F,'REFERENCE 0,0'); //aLTURA da etiqueta seg. o manual EM DOTS 1MM = 8 DOTS
writeln(F,'OFFSET 0 mm'); //
writeln(F,'SET PEEL OFF'); //
writeln(F,'SET CUTTER OFF'); //densidae da impressao
writeln(F,'<xpml></page></xpml><xpml><page quantity=1 pitch=32.5 mm ></xpml>SET TEAR ON'); // orientacao da impressao
writeln(F,'CLS');
//SaveRecno(DM.SDS_PRODUTOS); //Funcao que fiz para salvar posicao do registro
ClientDataSet2.First;
while not ClientDataSet2.Eof do begin
//Imprimi etiquetas de acordo com a quantidade do estoque
for nI := 1 to strtoint(etq.text) do begin
writeln(F,'CODEPAGE 1252');
writeln(F,'TEXT 16,60,"0",0,12,12,"'+copy(clientdataset2descricao.TEXT,1,25)+'"');
writeln(F,'BARCODE 16,112,"39",94,0,0,2,5,"'+dm.sds_produtos_cCodigo_barras.asString+'"');
writeln(F,'TEXT 122,211,"0",0,12,12,"'+dm.sds_produtos_cCodigo_barras.asString+'"');
writeln(F,'TEXT 543,124,"0",0,16,12,"'+clientdataset2Valor.TEXT+'"');
writeln(F,'TEXT 488,124,"0",0,12,12,"R$"');
writeln(F,'TEXT 16,20,"0",0,12,12,"'+clientdataset2Empresa.TEXT+'"');
writeln(F,'PRINT 1,1');
writeln(F,'<xpml></page></xpml><xpml><end/></xpml>');
end;
ClientDataSet2.Next;
end;
//RestRecno(DM.SDS_PRODUTOS); //Retorno no registro onde estava localizado
finally
Closefile(F);
end;
end;
end;
end;
end;

procedure TFormEtiquetas.BitBtn4Click(Sender: TObject);
begin
       ClientDataSet2.Insert;
       ClientDataSet2codigo.Text :=  DM.Sds_produtos_cCODIGO.Text;
       ClientDataSet2Descricao.Text := E_Nome.Text;
       ClientDataSet2Codigo_barras.Text := DM.Sds_produtos_cCODIGO_BARRAS.Text;
       ClientDataSet2Valor.Text := DM.SDS_PRODUTOS_CPRECO_VENDA.Text;
       ClientDataSet2Empresa.Text := DM.SDS_EmpresaNOME_FANTASIA.TEXT;
       ClientDataSet2.Post;
end;

procedure TFormEtiquetas.FormCreate(Sender: TObject);
begin
  with clientDataset2 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'ETIQUETA.xlm';
  if not FileExists(filename) then
  createdataset;
  open;
  end;
  while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;
end;

procedure TFormEtiquetas.BitBtn5Click(Sender: TObject);
begin

  with clientDataset2 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'ETIQUETA.xlm';
  if not FileExists(filename) then
  createdataset;
  open;
  end;
  while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;


        ClientDataset2.open;
end;

procedure TFormEtiquetas.RxDBComboEdit1Exit(Sender: TObject);
begin

{if dm.SDS_produtos.Locate('codigo_barras',ComboEdit1.Text, []) = True then
 BEGIN
   E_Nome.Text := DM.SDS_PRODUTOSDESCRICAO.Text;
 end else
   if not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
        ShowMessage('Produto nao localizado, ou não Cadastrado');
      end;}
// BitBtn4.SetFocus;
end;

procedure TFormEtiquetas.BitBtn4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then
  begin
RxdbComboEdit1.SetFocus;
rxdbComboEdit1.Clear;
end;
end;

procedure TFormEtiquetas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION:=caFree;
FormEtiquetas := nil;
end;

procedure TFormEtiquetas.RxDBComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
{ if Key = #13 then
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
end; }

if (Key=#13) then
begin
// DMOS.SDS_OS_PRODUTO.Insert;

if edit2.Text='LETRAS' THEN
BEGIN
  if RxDBComboEdit1.Text > '' then
 begin
// DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.Text := '1';

 FormConsProdutosVendas:=NIL;
 FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
 FormConsProdutosVendas.Edit1.Text := RxDBComboEdit1.Text;
 FormConsProdutosVendas.Showmodal;
 RxDBComboEdit1.Text :=DM.Sds_produtos_cCODIGO_BARRAS.Text;
 E_nome.Text := dm.Sds_produtos_cDESCRICAO.Text;
 RxDBComboEdit1.SetFocus;
 end ;

//IF ACHOU=TRUE THEN

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
if RxDBComboEdit1.Text > '' then
 begin
//ComboEdit1.Text := FormatFloat('0000',StrToFloat(ComboEdit1.Text));
// ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + RxDBComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', RxDBComboEdit1.Text,[])=True then
      begin
     // DM.Sds_pedidos_itens.Edit;
     // DM.Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
        RxDBComboEdit1.Text :=DM.Sds_produtos_cCODIGO_BARRAS.Text;
        E_nome.Text := dm.Sds_produtos_cDESCRICAO.Text;
        //RxDBComboEdit1.SetFocus;
        RxDBComboEdit1.SetFocus;
      end else

      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', RxDBComboEdit1.Text,[])=True then
      begin
      //SHOWMESSAGE('Produto Não Localizado');
      // ComboEdit1.SetFocus;
       FormConsProdutosVendas:=NIL;
       FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
       FormConsProdutosVendas.Edit1.Text := RxDBComboEdit1.Text;
       FormConsProdutosVendas.Showmodal;
       RxDBComboEdit1.Text :=DM.Sds_produtos_cCODIGO_BARRAS.Text;
       E_nome.Text := dm.Sds_produtos_cDESCRICAO.Text;
       RxDBComboEdit1.SetFocus;
       end ;

       end;
end;
end;
end;


procedure TFormEtiquetas.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
    begin
      ClientDataSet2.Delete;
    end;
end;

procedure TFormEtiquetas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then close;

if not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TComboEdit)then
 
  If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormEtiquetas.RxDBComboEdit1Change(Sender: TObject);
begin
IF (RxDBComboEdit1.Text>='A') AND (RxDBComboEdit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (RxDBComboEdit1.Text>='0') AND (RxDBComboEdit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF RxDBComboEdit1.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormEtiquetas.CheckBox2Click(Sender: TObject);
begin
{if CheckBox2.Checked = True then
begin
  CheckBox3.Checked := False;
end;
if CheckBox2.Checked = false then
begin
  CheckBox3.Checked := True;
end;}
end;

procedure TFormEtiquetas.CheckBox3Click(Sender: TObject);
begin
{if CheckBox3.Checked = True then
begin
  CheckBox2.Checked := False;
end;
if CheckBox3.Checked = false then
begin
  CheckBox2.Checked := True;
end;}
end;



procedure tFormEtiquetas.AtualizaImp;
const 
what: array[0..1] of string = ('True','False'); 
var 
Device, FName, Port : array[0..100] of Char; 
DevMode : THandle; 
begin 
Printer.GetPrinter(Device, FName, Port, DevMode); 
ImprDefault := StrPas(Port);
end;

end.
