unit PesquisaImoveis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFPesquisaImovel = class(TForm)
    pnlPesquisa: TPanel;
    Label1: TLabel;
    spbPesquisa: TSpeedButton;
    edtPesquisa: TEdit;
    GridImovel: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbPesquisaClick(Sender: TObject);
    procedure GridImovelDblClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
    procedure GridImovelKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaImovel: TFPesquisaImovel;

implementation

uses ModulodeDados, Produtos, uDMMovimentacao;

{$R *.dfm}

procedure TFPesquisaImovel.BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
var
  Query : TFDQuery;
begin
  Query:= TFDQuery.Create(nil);
  Query.Connection := DM.Coneccao;
  Query.SQL.Add('SELECT R.RDB$RELATION_NAME, R.RDB$FIELD_NAME ');
  Query.SQL.Add('FROM RDB$RELATION_FIELDS R, RDB$FIELDS F ');
  Query.SQL.Add('WHERE F.RDB$FIELD_NAME = R.RDB$FIELD_SOURCE ');
  Query.SQL.Add('AND R.RDB$RELATION_NAME = '+QuotedStr(Tabela));
  Query.SQL.Add('ORDER BY R.RDB$FIELD_POSITION, R.RDB$FIELD_NAME');
  Query.Open;

  while not Query.Eof do
  begin
   if (Query.Fields[1].AsString = 'LOTE') or
       (Query.Fields[1].AsString = 'QUADRA') or
       (Query.Fields[1].AsString= 'DESCRICAO') or
       (Query.Fields[1].AsString= 'ENDERECO') then
   BEGIN
    if Busca <> '' then
    begin
      DMMovimentacao.dsImovel.DataSet.Filter:= Query.Fields[1].AsString+' LIKE ' +QuotedStr('%'+Busca+'%');
      DMMovimentacao.dsImovel.DataSet.Filtered:= True;
    end
    else
      DMMovimentacao.dsImovel.DataSet.Filtered:= False;

    if DMMovimentacao.dsImovel.DataSet.IsEmpty then
    begin
      DMMovimentacao.dsImovel.DataSet.Filtered:= False;
    end
    else
      Exit;
    end;

      Query.Next;
  end;
  Query.Destroy;
end;

procedure TFPesquisaImovel.FormCreate(Sender: TObject);
begin
  DMMovimentacao.dsImovel.dataset.open;
end;

procedure TFPesquisaImovel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // DMMovimentacao.dsImovel.dataset.close;
end;

procedure TFPesquisaImovel.spbPesquisaClick(Sender: TObject);
const
  Pesquisa: array[1..4] of string = ('ENDERECO', 'SITUACAO', 'N_LOTE', 'QUADRA');
VAR
  I :Integer;
begin
  for I:= 1 to 4 do
  begin
    DMMovimentacao.dsImovel.dataset.filter:= Pesquisa[I] + ' LIKE ' + QuotedStr('%'+EdtPesquisa.text+'%');
    DMMovimentacao.dsImovel.dataset.Filtered:= True;

    if not DMMovimentacao.dsImovel.DataSet.IsEmpty then
    begin
      break;
    end;

    DMMovimentacao.dsImovel.dataset.Filtered:= False;
  end;

  if DMMovimentacao.dsImovel.DataSet.IsEmpty then
  begin
    Showmessage('Nenhum registro encontrado!');
  end;
     //  BuscaValorEmTodosCamposTabela('VIEW_IMOVEL', EdtPesquisa.text) ;
end;

procedure TFPesquisaImovel.GridImovelDblClick(Sender: TObject);
begin
  if self.tag = 0 then
  begin
    if not DMMovimentacao.dsImovel.dataset.IsEmpty then
    begin
      try
        FormProdutos:= TFormProdutos.create(nil);
        dm.SDS_PRODUTOS.Active := false;
        DM.Sds_produtos.sql.clear;
        DM.Sds_produtos.sql.Add( 'select * from PRODUTOS order by DESCRICAO ASC');
        dm.SDS_PRODUTOS.Active := True;

        DM.DTS_PRODUTOS.dataset.filter:= 'CODIGO = ' +
        InttoStr(DMMovimentacao.dsImovel.dataset.fieldbyname('ID_PRODUTOS').asinteger);
        DM.DTS_PRODUTOS.dataset.Filtered:= True;
        FormProdutos.Showmodal;
      finally
        DM.DTS_PRODUTOS.dataset.Filtered:= False;
        FreeandNil(FormProdutos)
      end;
    end;
  end
  else
  if Self.tag = 1 then
  begin
    if not DMMovimentacao.dsImovel.dataset.IsEmpty then
    begin
      Close;
    end;
  end;
end;

procedure TFPesquisaImovel.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    spbPesquisa.Onclick(Sender);
end;

procedure TFPesquisaImovel.GridImovelKeyPress(Sender: TObject;
  var Key: Char);
begin
IF (KEY  = #13)  OR (Key = #27) then
Close;
end;

procedure TFPesquisaImovel.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  GridImovel.SetFocus;
end;
end;

end.
