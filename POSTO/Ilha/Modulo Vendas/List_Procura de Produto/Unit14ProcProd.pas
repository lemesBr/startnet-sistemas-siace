unit Unit14ProcProd;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 ExtCtrls, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, Variants,
 Placemnt;

type
 TVendaProdutoListFrm = class(TForm)
   Panel1: TPanel;
   Edit2: TEdit;
   Label1: TLabel;
   Edit3: TEdit;
   Label3: TLabel;
   QryProdutos: TIBQuery;
   DtsQryProdutos: TDataSource;
   Panel2: TPanel;
   Panel3: TPanel;
   DBGrid1: TDBGrid;
   FormStorage1: TFormStorage;
    QryProdutosCODIGO: TIntegerField;
    QryProdutosDESCRICAO: TIBStringField;
    QryProdutosREFERENCIA: TIBStringField;
    QryProdutosPRECO_VENDA: TIBBCDField;
    QryProdutosESTOQUE: TIBBCDField;
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure Edit2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit3KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure FormShow(Sender: TObject);
   procedure DBGrid1TitleClick(Column: TColumn);
   procedure DBGrid1DblClick(Sender: TObject);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 VendaProdutoListFrm: TVendaProdutoListFrm;
 LastProdStr, LastRefProdStr, OrderByStr: string;

implementation

uses UnitDataM1, Unit13Venda;//, Unit13Venda;

{$R *.DFM}

procedure TVendaProdutoListFrm.Edit1Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
 Tedit(Sender).selectall;
end;

procedure TVendaProdutoListFrm.Edit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TVendaProdutoListFrm.Edit2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = VK_escape then
   Perform(wm_nextdlgctl, 1,0);

 if key = vk_return then
   if edit2.Text <> '' then
    begin
     if (edit2.Text = LastRefProdStr) and (QryProdutos.RecordCount <> 0) then
       key := vk_down
     else
      begin
       screen.cursor := crHourGlass;
       with QryProdutos do
        begin
         Close;
         UnPrepare;
         sql.Clear;
         sql.add('SELECT Codigo, Referencia, descricao, preco_venda, estoque FROM Produtos');
         sql.add('where UPPER(Referencia) LIKE UPPER(:1)');
         //sql.add('and tipo_produto = 0  '); não listar produtos de abastecimento (Gasolina, Diesel, Alcool..)
         params[0].AsString := '%' + Edit2.Text + '%';
         sql.add('ORDER BY Referencia');
         LastRefProdStr := Edit2.Text;
         OrderByStr := 'ORDER BY Referencia';
         Prepare;
         Open;
        end;

       if QryProdutos.RecordCount = 0 then
         Application.MessageBox('Nenhum registro encontrado.','Atenção', MB_OK + mb_iconinformation);
       Edit2.selectall;
       screen.cursor := crDefault;
      end;
    end
   else
     edit3.SetFocus;

 if (key = vk_down) then
  begin
   if QryProdutos.RecordCount <> 0 then
     dbgrid1.SetFocus;
  end;
end;

procedure TVendaProdutoListFrm.Edit3KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = VK_escape then
   self.Close;

 if key = vk_return then
   if edit3.Text <> '' then
    begin
     if (edit3.Text = LastProdStr) and (QryProdutos.RecordCount <> 0) then
       key := vk_down
     else
      begin
       screen.cursor := crHourGlass;
       with QryProdutos do
        begin
         Close;
         UnPrepare;
         sql.Clear;
         sql.add('SELECT Codigo, Referencia, descricao, Preco_Venda, estoque FROM Produtos');
         sql.add('WHERE  UPPER(descricao) LIKE UPPER(:1)');
//         sql.add('and Tipo_Produto = 0'); não listar produtos de abastecimento (Gasolina, Diesel, Alcool..)
         params[0].AsString := '%' + Edit3.Text + '%';
         sql.add('ORDER BY descricao');
         LastProdStr := Edit3.Text;
         OrderByStr := 'ORDER BY descricao';
         Prepare;
         Open;
        end;

       if QryProdutos.RecordCount = 0 then
        begin
         panel3.Caption := '  Nenhum Produto encontrado';
         Application.MessageBox('Nenhum registro encontrado.','Atenção', mb_ok + mb_iconinformation);
        end
       else
         panel3.Caption := '  Listagem de Produtos';

       Edit3.selectall;
       Screen.cursor := crDefault;
      end;
    end
   else
     edit2.SetFocus;

 if (key = vk_down) then
  begin
   if QryProdutos.RecordCount <> 0 then
     dbgrid1.SetFocus;
  end;
end;

procedure TVendaProdutoListFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
  begin
   edit3.SetFocus;
   edit3.SelectAll;
  end;

 if key = vk_return then
   DBGrid1DblClick(dbgrid1);
end;

procedure TVendaProdutoListFrm.FormShow(Sender: TObject);
begin
 screen.cursor := crDefault;
 edit3.SetFocus;
end;

procedure TVendaProdutoListFrm.DBGrid1TitleClick(Column: TColumn);
begin
 screen.cursor := crHourGlass;
 with QryProdutos do
  begin
   Close;
   UnPrepare;
   SQL.Delete(SQL.IndexOf(OrderbyStr));
   if OrderbyStr = 'ORDER BY ' + Column.FieldName then
    begin
     SQL.Add('ORDER BY ' + Column.FieldName + ' DESC');
     OrderbyStr := 'ORDER BY ' + Column.FieldName + ' DESC';
    end
   else
    begin
     SQL.Add('ORDER BY ' + Column.FieldName);
     OrderbyStr := 'ORDER BY ' + Column.FieldName;
    end;
   Prepare;
   Open;
  end;
 screen.cursor := crDefault;
end;

procedure TVendaProdutoListFrm.DBGrid1DblClick(Sender: TObject);
begin
 //VendaFrm.edit1.text:='';
 if QryProdutos.RecordCount <> 0 then
   if QryProdutos['codigo'] <> '0' then
     if not varisnull(QryProdutos['Referencia']) then
       VendaFrm.edit1.Text := QryProdutos['Referencia'];

 edit3.Clear;
 edit2.Clear;
 //VendaFrm.Edit1.selectall;
 QryProdutos.Close;
 QryProdutos.sql.Clear;
 self.Close;
end;

end.
