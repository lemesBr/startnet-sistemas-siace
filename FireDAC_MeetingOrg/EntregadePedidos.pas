unit EntregadePedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, SUIDBCtrls, Grids, DBGrids, ExtCtrls,
  RXDBCtrl, StdCtrls, DBCtrls, Mask, RXCtrls,  DB, DBClient,
  SimpleDS, SUIDlg, FMTBcd, SqlExpr, Data.DBXFirebird, RxToolEdit;

type
  TFormEntregadePedidos = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    Panel7: TPanel;
    RxLabel2: TRxLabel;
    Panel2: TPanel;
    suiDBGrid2: TsuiDBGrid;
    suiDBNavigator1: TsuiDBNavigator;
    RxLabel1: TRxLabel;
    suiDBGrid1: TsuiDBGrid;
    Panel4: TPanel;
    suiButton2: TsuiButton;
    ErroGravacao: TsuiMessageDialog;
    DTS_ItensPA: TDataSource;
    SDS_ITensPA: TSimpleDataSet;
    DTS_PedidosA: TDataSource;
    SDS_PedidosA: TSimpleDataSet;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    DBDateEdit1: TDBDateEdit;
    RxLabel11: TRxLabel;
    MSGC: TsuiMessageDialog;
    SDS_PedidosACODIGO: TIntegerField;
    SDS_PedidosAVALOR_ITENS: TFMTBCDField;
    SDS_PedidosAVALOR_DESCONTO: TFMTBCDField;
    SDS_PedidosAVALOR_TOTAL: TFMTBCDField;
    SDS_PedidosAVALOR_COMISSAO: TFMTBCDField;
    SDS_PedidosAUSUARIO: TStringField;
    SDS_PedidosAUSUARIO_ENTREGA: TStringField;
    SDS_PedidosADATA_PEDIDO: TDateField;
    SDS_PedidosADATA_ENTREGA: TDateField;
    SDS_PedidosACODIGO_CLIENTE: TIntegerField;
    SDS_PedidosANOME_CLIENTE: TStringField;
    SDS_PedidosAPAGAMENTO: TStringField;
    SDS_ITensPACODIGO: TIntegerField;
    SDS_ITensPACODIGO_ID: TIntegerField;
    SDS_ITensPACODIGO_PRODUTO: TStringField;
    SDS_ITensPADESCRICAO_PRODUTO: TStringField;
    SDS_ITensPAPRECO_UNITARIO: TFMTBCDField;
    SDS_ITensPADESCONTO: TFMTBCDField;
    SDS_ITensPAQUANTIDADE: TFMTBCDField;
    SDS_ITensPAPRECO_TOTAL: TFMTBCDField;
    SPC_BAIXA_ESTOQUE: TSQLStoredProc;
    SDS_PedidosASTATUS: TStringField;
    SDS_PedidosAENC_FINANCEIRO: TFMTBCDField;
    SDS_PedidosATP: TStringField;
    SDS_ITensPAENC_FINANCEIRO: TFMTBCDField;
    suiDBNavigator2: TsuiDBNavigator;
    SDS_PedidosAOBSERVACOES: TStringField;
    DBEdit1: TDBEdit;
    RxLabel12: TRxLabel;
    DBDateEdit2: TDBDateEdit;
    suiDBEdit6: TsuiDBEdit;
    suiDBEdit7: TsuiDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntregadePedidos: TFormEntregadePedidos;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Principal;

{$R *.dfm}

procedure TFormEntregadePedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormEntregadePedidos:=nil;
end;

procedure TFormEntregadePedidos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormEntregadePedidos.FormShow(Sender: TObject);
begin
SDS_PEDIDOSA.Active:= FALSE;
sds_ItensPA.Active:= False;
SDS_PEDIDOSA.Active:= TRUE;
sds_ItensPA.Active:= True;
         if  SDS_PedidosA.RecordCount = 0 then
         begin
         SuiButton2.Enabled:= False;
         SDS_PedidosA.Active:= False;
         SDS_ItensPA.Active:= False;
         end else
         begin
         SuiButton2.Enabled:= True;
         SDS_PedidosA.Active:= True;
         SDS_ItensPA.Active:= True;
         end;
end;

procedure TFormEntregadePedidos.suiButton2Click(Sender: TObject);
VAR
Contador,I:Integer;
begin
If MSGC.ShowModal = mryes then
begin
Try
        { SDS_ITensPA.First;
         Contador:=SDS_ITensPA.RecordCount;
         For I:=1 to Contador do
         begin
         SPC_BAIXA_ESTOQUE.ParamByname('CODIGO_BARRAS').AsString := SDS_ITensPACODIGO_PRODUTO.AsString;
         SPC_BAIXA_ESTOQUE.ParamByname('Quant').Value :=  SDS_ITensPAQUANTIDADE.Text;
         SPC_BAIXA_ESTOQUE.ExecProc;

         SDS_ITensPA.Next;
         end;}
         SDS_PedidosA.Edit;
         SDS_PedidosASTATUS.Value:= 'O';
         SDS_PedidosAUSUARIO_ENTREGA.Value:= Formprincipal.UserLogado;
         SDS_PedidosADATA_ENTREGA.AsDateTime:= Date;

         TD.TransactionID := 1;
         TD.IsolationLevel := XILReadCommitted;
         DM.SQLC.StartTransaction(TD);
         SDS_PedidosA.Post;
         SDS_PedidosA.ApplyUpdates(0);
         DM.SQLC.Commit(TD);
         SDS_PedidosA.Active:= False;
         SDS_ItensPA.Active:= False;
         SDS_PedidosA.Active:= True;
         SDS_ItensPA.Active:= True;

         if  SDS_PedidosA.RecordCount = 0 then
         begin
         SuiButton2.Enabled:= False;
         SDS_PedidosA.Active:= False;
         SDS_ItensPA.Active:= False;
         end else
         begin
         SuiButton2.Enabled:= True;
         SDS_PedidosA.Active:= True;
         SDS_ItensPA.Active:= True;
         end;

               Except
     DM.SQLC.Rollback(TD);
     MessageDlg('Erro na Confirmação da Entrega do Pedido.', mtInformation,[mbOk], 0);
   end;
end;
end;

procedure TFormEntregadePedidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
