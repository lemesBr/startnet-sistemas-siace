unit Unit15ProcCli;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 ExtCtrls, StdCtrls, Grids, DBGrids, DB, Variants, IBCustomDataSet,
 IBQuery, Placemnt;

type
 TVendaClienteListFrm = class(TForm)
   Panel1: TPanel;
   Label2: TLabel;
   Edit1: TEdit;
   QryClientes: TIBQuery;
   DtsQryClientes: TDataSource;
   Panel2: TPanel;
   Panel3: TPanel;
   DBGrid1: TDBGrid;
   FormStorage1: TFormStorage;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit1Enter(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure DBGrid1TitleClick(Column: TColumn);
   procedure Edit1Exit(Sender: TObject);
   procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 VendaClienteListFrm: TVendaClienteListFrm;
 LastCliStr, orderbystr: string;

implementation

uses UnitDataM1, Unit13Venda;//, Unit13Venda;

{$R *.DFM}

procedure TVendaClienteListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{
if self.tag = 1 then
 begin
  If (QryClientes.recordcount = 0) or ((edit1.text = '') then
   frmvenda.label12.caption:='Venda Avulso.'
  else
   if not ((datamodule2.tblitem.recordcount > 0) and datamodule2.tblpedido.locate('Codcliente;FormaPGT', varArrayOf([QryClientes['codcliente'],null]), [])) then
    begin
     frmvenda.label12.caption:=QryClientes['nome'];
     datamodule1.tblcadastro.locate('Codcliente',QryClientes['codcliente'],[]);
     if datamodule2.tblpedido.locate('Codcliente;FormaPGT', varArrayOf([QryClientes['codcliente'],null]), []) then
      begin         //Caso pedido em aberto!
       datamodule1.tblcadastro.locate('Codcliente',QryClientes['codcliente'],[]);
       frmvenda.currencyedit2.value:=datamodule2.tblpedido['valor'];
       GTotal:=datamodule2.tblpedido['valor'];
       frmvenda.dblookupcombobox1.keyvalue:=datamodule2.tblpedido['CodVend'];
       frmvenda.statusbar1.panels[2].text:='Pedido Nº: '+ inttostr(datamodule2.tblpedido['codped']);
       frmvenda.statusbar1.panels[0].text:='F2 - Novo Pedido  /  F5 - Produto  /  F8 - Cancela Pedido';
      end;
     self.tag:=0;
     edit1.clear;
     edit2.clear;
    end
   else
    begin
     datamodule2.tblpedido.last;
     application.messagebox('Cliente com pedido em Aberto - Não pode ser selecionado',
                            'Atenção', mb_ok + mb_iconerror);
     action:=canone;
    end;
 end
else
 begin
  frmvenda.label12.caption:='Venda Avulso.';
  self.tag:=0;
 end;
QryClientes.close;
QryClientes.sql.clear;
}
end;

procedure TVendaClienteListFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = VK_escape then
  begin
   //  self.tag:=0;
   self.Close;
  end;

 if key = vk_return then
   if edit1.Text <> '' then
    begin
     if (edit1.Text = LastCliStr) and (QryClientes.RecordCount <> 0) then
       key := vk_down
     else
      begin
       screen.cursor := crHourGlass;
       with QryClientes do
        begin
         Close;
         UnPrepare;
         sql.Clear;
         sql.add('SELECT Codigo, Nome_rs, Endereco, Ponto_Referencia, Ativo, CPF_cnpj, INSCEST, UF FROM Clientes WHERE UPPER(Nome_rs) LIKE UPPER(:1)');
         params[0].AsString := '%' + Edit1.Text + '%';
         sql.add('ORDER BY Nome_rs');
         LastCliStr := Edit1.Text;
         OrderByStr := 'ORDER BY Nome_rs';
         Prepare;
         Open;
        end;

       if QryClientes.RecordCount = 0 then
        begin
         panel3.Caption := '  Nenhuma Empresa/Pessoa Física encontrada';
         Application.MessageBox('Nenhuma Empresa/Pessoa Física encontrada',
           'Atenção', mb_ok + mb_iconinformation);
        end
       else
         panel3.Caption := '  Listagem de Clientes / <F1> Cliente Avulso';

       Edit1.selectall;
       Screen.cursor := crDefault;
      end;
    end;

 if (key = vk_down) then
  begin
   if QryClientes.RecordCount <> 0 then
     dbgrid1.SetFocus;
  end;

 if Key = vk_F1 then
  begin
   if Application.MessageBox('Selecionar Venda Avulso?', 'Atenção!',
                              MB_YESNO + MB_ICONINFORMATION) = idYes then
    begin
     VendaFrm.label12.Caption := 'Venda Avulso.';
     CODCLIFlag := -1;
     VendaFrm.QryCadastro.locate('Codigo', 1, []);
     QryClientes.Close;
     QryClientes.sql.Clear;
     self.Close;
    end;
  end;
end;

procedure TVendaClienteListFrm.Edit1Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
 Tedit(Sender).selectall;
end;

procedure TVendaClienteListFrm.FormShow(Sender: TObject);
begin
 screen.cursor := crDefault;
 edit1.SetFocus;
end;

procedure TVendaClienteListFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   DBGrid1DblClick(dbgrid1);
 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TVendaClienteListFrm.DBGrid1DblClick(Sender: TObject);
begin
 if (QryClientes.RecordCount > 0) and (QryClientes['ativo'] = 'A') then
  begin
   VendaFrm.label12.Caption := 'Venda Avulso.';
   VendaFrm.label12.Caption := QryClientes['nome_rs'];
   CODCLIFlag := QryClientes['CODIGO'];
   VendaFrm.QryCadastro.locate('Codigo', QryClientes['codigo'], []);
   QryClientes.Close;
   QryClientes.sql.Clear;
   self.Close;
  end
 else
  begin
   VendaFrm.label12.Caption := 'Venda Avulso.';
   Application.MessageBox('Este Cliente está Bloqueado para compras.', 'Atenção!', MB_OK + MB_ICONINFORMATION)
  end;
end;

procedure TVendaClienteListFrm.DBGrid1TitleClick(Column: TColumn);
begin
 screen.cursor := crHourGlass;
 with QryClientes do
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

procedure TVendaClienteListFrm.Edit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TVendaClienteListFrm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if column.Title.Caption = 'Situação' then
  begin
   if QryClientes['ATIVO'] = 'A' then
    begin
     DBGrid1.Canvas.Font.color := clGreen;
     DBGrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3, ' - Normal - ');
    end
   else if QryClientes['ATIVO'] = 'I' then
    begin
     DBGrid1.Canvas.Font.color := clRed;
     DBGrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3, ' - Bloqueado -');
    end;
  end;
end;

end.
