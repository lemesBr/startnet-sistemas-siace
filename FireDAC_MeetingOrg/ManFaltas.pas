unit ManFaltas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mylabel, Grids, DB, XDBGrids, Buttons,
  Mask, DBCtrls, RXCtrls;

type
  TFormManFaltas = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    myLabel3d2: TmyLabel3d;
    XDBGrid1: TXDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    DBMemo3: TDBMemo;
    RxLabel4: TRxLabel;
    RxLabel6: TRxLabel;
    DBMemo4: TDBMemo;
    RxLabel27: TRxLabel;
    DBMemo1: TDBMemo;
    RxLabel3: TRxLabel;
    DBEdit1: TDBEdit;
    RxLabel1: TRxLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RxLabel2: TRxLabel;
    DBEdit4: TDBEdit;
    RxLabel5: TRxLabel;
    DBEdit5: TDBEdit;
    RxLabel7: TRxLabel;
    DBEdit6: TDBEdit;
    RxLabel8: TRxLabel;
    DBEdit7: TDBEdit;
    RxLabel9: TRxLabel;
    DBEdit8: TDBEdit;
    RxLabel10: TRxLabel;
    DBEdit9: TDBEdit;
    RxLabel11: TRxLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure XDBGrid1CellClick(Column: TXColumn);
    procedure XDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure XDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XDBGrid1RowSelect(Sender: TObject; Action: TSelectAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManFaltas: TFormManFaltas;

implementation

uses Principal, ModulodeDados, ProdutosFalta, RelPedidoCompras,
  ProdutosFaltaM;

{$R *.dfm}

procedure TFormManFaltas.FormShow(Sender: TObject);
begin
dm.sds_produtos_Falta.Active := False;
dm.sds_produtos_Falta.Active := True;
end;

procedure TFormManFaltas.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_DELETE) then
    begin

 if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin
 if Application.MESSAGEBOX('Confirma a Exclusão da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) <> ID_YES then
  Exit;
  begin
      DM.sds_produtos_Falta.Delete;
      DM.sds_produtos_Falta.ApplyUpdates(0);
      XDBGrid1.SetFocus;
end;
end;
end;
end;

procedure TFormManFaltas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormManFaltas := nil;
end;

procedure TFormManFaltas.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormManFaltas.BitBtn2Click(Sender: TObject);
begin
try
  if FormPRODUTOSfALTAm=nil   then
    BEGIN
     FormPRODUTOSfALTAm := TFormPRODUTOSfALTAm.Create(self);
     FormPRODUTOSfALTAm.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Faltas!!');
end;
end;

procedure TFormManFaltas.BitBtn3Click(Sender: TObject);
begin
try
If FormPedidoCompra = nil   then
    begin
     FormPedidoCompra:=TFormPedidoCompra.Create(self);
      FormPedidoCompra.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulario de Impressaão de pedidos de compras!!');
end;
end;

procedure TFormManFaltas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormManFaltas.XDBGrid1CellClick(Column: TXColumn);
begin
DM.SDS_PRODUTOS.Locate('CODIGO', DM.sds_produtos_FaltaCOD_PRODUTO.Value,[]);
end;

procedure TFormManFaltas.XDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
DM.SDS_PRODUTOS.Locate('CODIGO', DM.sds_produtos_FaltaCOD_PRODUTO.Value,[]);
end;

procedure TFormManFaltas.XDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
DM.SDS_PRODUTOS.Locate('CODIGO', DM.sds_produtos_FaltaCOD_PRODUTO.Value,[]);
end;

procedure TFormManFaltas.XDBGrid1RowSelect(Sender: TObject;
  Action: TSelectAction);
begin
DM.SDS_PRODUTOS.Locate('CODIGO', DM.sds_produtos_FaltaCOD_PRODUTO.Value,[]);
end;

procedure TFormManFaltas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin   
  Edit1Exit(Sender);
end;
end;

procedure TFormManFaltas.CheckBox2Click(Sender: TObject);
begin
IF CheckBox2.Checked then
begin
   CheckBox1.Checked := False;
   end;
end;

procedure TFormManFaltas.CheckBox1Click(Sender: TObject);
begin
IF CheckBox1.Checked then
begin
   CheckBox2.Checked := False;
   end;
end;


procedure TFormManFaltas.Edit1Exit(Sender: TObject);
begin
 if CheckBox1.Checked = TRUE then
  begin
  DM.sds_produtos_FaltA.Locate('COD_PRODUTO',edit1.Text,[lopartialkey]);
  end else
   if CheckBox2.Checked = TRUE then
  begin
  DM.sds_produtos_FaltA.Locate('DESCRICAO',edit1.Text,[lopartialkey]);
  end;
end;

end.
