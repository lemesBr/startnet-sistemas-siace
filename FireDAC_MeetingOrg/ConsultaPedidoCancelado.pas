unit ConsultaPedidoCancelado;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes, Graphics,  Forms, Dialogs,DBCtrls, DBActns, ActnList,
  ComCtrls, ToolWin, Db, buttons, Menus,IBCustomDataSet, IBQuery,
  IBUpdateSQL, DBClient, SimpleDS, FMTBcd, SqlExpr, RXCtrls,
  Mylabel, SUIDlg, RxToolEdit;

type
  TFormConsultaPedidoCancelado = class(TForm)
    pnpesq: TPanel;
    pc: TsuiPageControl;
    TBCPP: TsuiTabSheet;
    TabSheet1: TsuiTabSheet;
    TabSheet2: TsuiTabSheet;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsuiButton;
    Panel4: TPanel;
    Bevel1: TBevel;
    Panel: TPanel;
    BitBtn3: TsuiButton;
    Navigator: TsuiDBNavigator;
    Panel6: TPanel;
    Navigator3: TsuiDBNavigator;
    suiTabSheet1: TsuiTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    suiDBGrid2: TsuiDBGrid;
    Panel10: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Panel11: TPanel;
    Label9: TLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit6: TsuiDBEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Panel12: TPanel;
    suiButton3: TsuiButton;
    suiDBNavigator2: TsuiDBNavigator;
    Panel1: TPanel;
    suiButton4: TsuiButton;
    suiDBNavigator4: TsuiDBNavigator;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel33: TRxLabel;
    suiDBEdit7: TsuiDBEdit;
    suiDBEdit8: TsuiDBEdit;
    suiDBEdit9: TsuiDBEdit;
    RxLabel1: TRxLabel;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    suiButton7: TsuiButton;
    Panel3: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label5: TLabel;
    Panel16: TPanel;
    Panel17: TPanel;
    suiDBGrid4: TsuiDBGrid;
    suiDBNavigator5: TsuiDBNavigator;
    Edit1: TsuiEdit;
    Label10: TLabel;
    suiDBNavigator1: TsuiDBNavigator;
    suiDBNavigator6: TsuiDBNavigator;
    Panel5: TPanel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    suiButton8: TsuiButton;
    Edit2: TsuiEdit;
    Panel7: TPanel;
    Panel18: TPanel;
    suiDBGrid5: TsuiDBGrid;
    Panel19: TPanel;
    Panel20: TPanel;
    Label11: TLabel;
    Panel21: TPanel;
    Panel22: TPanel;
    Bevel4: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DateEdit7: TDateEdit;
    DateEdit8: TDateEdit;
    suiButton9: TsuiButton;
    Edit3: TsuiEdit;
    Panel23: TPanel;
    Panel24: TPanel;
    suiDBGrid7: TsuiDBGrid;
    Panel25: TPanel;
    Panel26: TPanel;
    Label15: TLabel;
    Panel27: TPanel;
    suiDBNavigator7: TsuiDBNavigator;
    RxLabel15: TRxLabel;
    suiDBEdit10: TsuiDBEdit;
    suiDBMemo2: TsuiDBMemo;
    RxLabel24: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    suiDBMemo1: TsuiDBMemo;
    suiDBEdit11: TsuiDBEdit;
    suiDBEdit12: TsuiDBEdit;
    suiDBEdit13: TsuiDBEdit;
    suiDBEdit14: TsuiDBEdit;
    RxLabel12: TRxLabel;
    suiDBEdit15: TsuiDBEdit;
    RxLabel13: TRxLabel;
    suiDBEdit16: TsuiDBEdit;
    RxLabel14: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel34: TRxLabel;
    RxLabel35: TRxLabel;
    suiDBEdit17: TsuiDBEdit;
    suiDBEdit18: TsuiDBEdit;
    suiDBEdit19: TsuiDBEdit;
    suiDBEdit20: TsuiDBEdit;
    suiDBGrid3: TsuiDBGrid;
    RxLabel17: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    suiDBMemo3: TsuiDBMemo;
    suiDBEdit21: TsuiDBEdit;
    suiDBEdit22: TsuiDBEdit;
    suiDBEdit23: TsuiDBEdit;
    suiDBEdit24: TsuiDBEdit;
    suiDBEdit25: TsuiDBEdit;
    RxLabel21: TRxLabel;
    RxLabel22: TRxLabel;
    suiDBEdit26: TsuiDBEdit;
    RxLabel23: TRxLabel;
    RxLabel25: TRxLabel;
    RxLabel37: TRxLabel;
    RxLabel38: TRxLabel;
    suiDBEdit27: TsuiDBEdit;
    suiDBEdit28: TsuiDBEdit;
    suiDBEdit29: TsuiDBEdit;
    suiDBEdit30: TsuiDBEdit;
    suiDBGrid6: TsuiDBGrid;
    RxLabel26: TRxLabel;
    RxLabel27: TRxLabel;
    RxLabel28: TRxLabel;
    RxLabel29: TRxLabel;
    suiDBMemo4: TsuiDBMemo;
    suiDBEdit31: TsuiDBEdit;
    suiDBEdit32: TsuiDBEdit;
    suiDBEdit33: TsuiDBEdit;
    suiDBEdit34: TsuiDBEdit;
    suiDBEdit35: TsuiDBEdit;
    RxLabel30: TRxLabel;
    RxLabel31: TRxLabel;
    suiDBEdit36: TsuiDBEdit;
    RxLabel32: TRxLabel;
    RxLabel36: TRxLabel;
    RxLabel39: TRxLabel;
    RxLabel40: TRxLabel;
    suiDBEdit37: TsuiDBEdit;
    suiDBEdit38: TsuiDBEdit;
    suiDBEdit39: TsuiDBEdit;
    suiDBEdit40: TsuiDBEdit;
    suiDBGrid8: TsuiDBGrid;
    myLabel3d1: TmyLabel3d;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiTabSheet1Show(Sender: TObject);
    procedure suiButton9Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
  
  public

  end;

var
  FormConsultaPedidoCancelado: TFormConsultaPedidoCancelado;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Z_RotinasGerais, ModulodeDadosConsultas5, Principal;



{$R *.DFM}

procedure TFormConsultaPedidoCancelado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaPedidoCancelado:=nil;
end;

procedure TFormConsultaPedidoCancelado.DateEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoCancelado.DateEdit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoCancelado.Edit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoCancelado.DateEdit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoCancelado.DateEdit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoCancelado.Edit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoCancelado.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaPedidoCancelado.FormShow(Sender: TObject);
begin
    DMC5.SQLD_PedidosGeral.Active:=FALSE;
    DMC5.CDS_PedidosGeral.Active:=FALSE;
    DMC5.SDS_ItensPedidoGeral.Active:=FALSE;
    DMC5.SQLD_PedidosCliente.Active:=FALSE;
    DMC5.CDS_PedidosCliente.Active:=FALSE;
    DMC5.SDS_ItensPedidoCliente.Active:=FALSE;
    DMC5.SQLD_PedidosUsuario.Active:=FALSE;
    DMC5.CDS_PedidosUsuario.Active:=FALSE;
    DMC5.SDS_ItensPedidoUsuario.Active:=FALSE;
    DMC5.SQLD_Pedidos_Pagamento.Active:=False;
    DMC5.CDS_Pedidos_Pagamento.Active:=False;
    DMC5.SDS_ItensPedido_Pagamento.Active:= False;
    DateEdit1.SetFocus;
end;

procedure TFormConsultaPedidoCancelado.Edit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoCancelado.Edit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoCancelado.suiButton1Click(Sender: TObject);
begin
Try
    DMC5.SQLD_PedidosGeral.Active:=False;
    DMC5.CDS_PedidosGeral.Active:=False;
    DMC5.SQLD_PedidosGeral.Params[0].AsDate:=DateEdit1.Date;
    DMC5.SQLD_PedidosGeral.Params[1].AsDate:=DateEdit2.Date;
    DMC5.SQLD_PedidosGeral.Active:=True;
    DMC5.CDS_PedidosGeral.Active:=True;
    DMC5.SDS_ItensPedidoGeral.Active:=True;
    If  DMC5.CDS_PedidosGeral.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaPedidoCancelado.TabSheet1Show(Sender: TObject);
begin
DateEdit3.SetFocus;
end;

procedure TFormConsultaPedidoCancelado.suiButton7Click(Sender: TObject);
begin
Try
    DMC5.SQLD_PedidosCliente.Active:=False;
    DMC5.CDS_PedidosCliente.Active:=False;
    DMC5.SQLD_PedidosCliente.Params[0].AsDate:=DateEdit3.Date;
    DMC5.SQLD_PedidosCliente.Params[1].AsDate:=DateEdit4.Date;
    DMC5.SQLD_PedidosCliente.Params[2].AsString:=Edit1.Text;
    DMC5.SQLD_PedidosCliente.Active:=True;
    DMC5.CDS_PedidosCliente.Active:=True;
    DMC5.SDS_ItensPedidoCliente.Active:=True;
    If  DMC5.CDS_PedidosCliente.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaPedidoCancelado.TabSheet2Show(Sender: TObject);
begin
DateEdit5.SetFocus;
end;

procedure TFormConsultaPedidoCancelado.suiButton8Click(Sender: TObject);
begin
Try
    DMC5.SQLD_PedidosUsuario.Active:=False;
    DMC5.CDS_PedidosUsuario.Active:=False;
    DMC5.SQLD_PedidosUsuario.Params[0].AsDate:=DateEdit5.Date;
    DMC5.SQLD_PedidosUsuario.Params[1].AsDate:=DateEdit6.Date;
    DMC5.SQLD_PedidosUsuario.Params[2].AsString:=Edit2.Text;
    DMC5.SQLD_PedidosUsuario.Active:=True;
    DMC5.CDS_PedidosUsuario.Active:=True;
    DMC5.SDS_ItensPedidoUsuario.Active:=True;
    If  DMC5.CDS_PedidosUsuario.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaPedidoCancelado.suiTabSheet1Show(Sender: TObject);
begin
DateEdit7.SetFocus;
end;

procedure TFormConsultaPedidoCancelado.suiButton9Click(Sender: TObject);
begin
Try
    DMC5.SQLD_Pedidos_Pagamento.Active:=False;
    DMC5.CDS_Pedidos_Pagamento.Active:=False;
    DMC5.SQLD_Pedidos_Pagamento.Params[0].AsDate:=DateEdit7.Date;
    DMC5.SQLD_Pedidos_Pagamento.Params[1].AsDate:=DateEdit8.Date;
    DMC5.SQLD_Pedidos_Pagamento.Params[2].AsString:=Edit3.Text;
    DMC5.SQLD_Pedidos_Pagamento.Active:=True;
    DMC5.CDS_Pedidos_Pagamento.Active:=True;
    DMC5.SDS_ItensPedido_Pagamento.Active:=True;
    If  DMC5.CDS_Pedidos_Pagamento.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaPedidoCancelado.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
