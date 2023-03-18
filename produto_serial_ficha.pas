unit produto_serial_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  DB, RzEdit, RzBtnEdt, aDvGlowButton, DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RxToolEdit;

type
  TfrmProduto_serial_ficha = class(TForm)
    qrserial: TClientDataSet;
    qrserialserial: TStringField;
    dsserial: TDataSource;
    grid: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ed_cod_fornecedor: TRzButtonEdit;
    ed_fornecedor: TEdit;
    Label4: TLabel;
    ed_preco: TRzNumericEdit;
    Panel2: TPanel;
    Bevel1: TBevel;
    query: TFDQuery;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_precoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_fornecedorButtonClick(Sender: TObject);
    procedure ed_cod_fornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto_serial_ficha: TfrmProduto_serial_ficha;

implementation

uses  principal, produtos, ModulodeDados, Ubibli1, xloc_fornecedor;

{$R *.dfm}

function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;


procedure TfrmProduto_serial_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmProduto_serial_ficha.FormShow(Sender: TObject);
begin
  qrserial.open;
//  qrserial.refresh;
  dateedit1.setfocus;
end;

procedure TfrmProduto_serial_ficha.DateEdit1Enter(Sender: TObject);
begin
  if dateedit1.text = '  /  /    ' then dateedit1.date := date;
end;

procedure TfrmProduto_serial_ficha.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmProduto_serial_ficha.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key= #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmProduto_serial_ficha.ed_precoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then grid.setfocus;
end;

procedure TfrmProduto_serial_ficha.ed_cod_fornecedorButtonClick(
  Sender: TObject);
begin

    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
      
  ed_cod_fornecedor.text := DM.SDS_Fornecedorescodigo.Text;
  ed_fornecedor.text := DM.SDS_FornecedoresNOME.Text;
  ed_preco.setfocus;
end;

procedure TfrmProduto_serial_ficha.ed_cod_fornecedorKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    //ed_cod_fornecedor.text := frmprincipal.zerarcodigo(ed_cod_fornecedor.text,6);
    if ed_cod_fornecedor.text <> '000000' then
    begin
      if not DM.SDS_Fornecedores.Locate('CODIGO', removechar(ed_cod_fornecedor.text),[])=True  then
      begin
          application.messagebox('Fornecedor não cadastrado!','Atenção',mb_ok+mb_iconerror);
          ed_cod_fornecedor.setfocus;
          exit;
      end
      else
      begin
        ed_fornecedor.text := DM.SDS_FornecedoresNOME.Text;
        ed_preco.setfocus;
      end;
    end
    else
      ed_cod_fornecedorButtonClick(frmproduto_serial_ficha);
  end;
end;

procedure TfrmProduto_serial_ficha.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProduto_serial_ficha.bgravarClick(Sender: TObject);
begin
  if (ed_cod_fornecedor.text = '') then
  begin
    application.MessageBox('Favor informar o fornecedor!','Erro',mb_ok+mb_iconerror);
    exit;
  end;

  if qrserial.State in [dsinsert, dsedit] then
    if qrserial.fieldbyname('serial').asstring <> '' then
       qrserial.post;


  if qrserial.RecordCount = 0 then
  begin
    application.MessageBox('Favor informar um serial!','Erro',mb_ok+mb_iconerror);
    exit;
  end;
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS_SERIAL');
   DM.ProxCod.Open;

  qrserial.first;
  while not qrserial.eof do
  begin
    query.close;
    query.sql.clear;
    query.sql.add('insert into PRODUTOS_SERIAL');
    query.sql.add('(codigo,codproduto,serial,estoque,precocusto,situacao,');
    query.sql.add('datacompra,numeronota,codfornecedor,codnota)');
    query.sql.add('values');
    query.sql.add('(:codigo,:codproduto,:serial,:estoque,:precocusto,:situacao,');
    query.sql.add(':datacompra,:numeronota,:codfornecedor,:codnota)');
    query.parambyname('codigo').asinteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    query.parambyname('codproduto').asstring := dm.sds_produtoscodigo.asstring;
    query.parambyname('serial').AsString := qrserial.fieldbyname('serial').asstring;
    query.parambyname('estoque').asfloat := 1;
    query.parambyname('situacao').asinteger := 1;
    query.ParamByName('precocusto').asfloat := ed_preco.value;
    query.parambyname('datacompra').asdatetime := DateEdit1.date;
    query.parambyname('numeronota').asstring := edit1.text;
    query.ParamByName('codfornecedor').asstring := ed_cod_fornecedor.text;
    query.parambyname('codnota').asstring := 'AVULSO';
    query.ExecSQL;
    qrserial.next;
  end;

  close;
end;

end.
