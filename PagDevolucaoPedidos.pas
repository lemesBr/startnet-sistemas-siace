unit PagDevolucaoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIButton, SUIDBCtrls, DB, DBClient, SimpleDS, Grids,
  DBGrids, RXCtrls, StdCtrls, Mask, DBCtrls, Data.DBXFirebird;

type
  TFormPagDevolucaoPedidos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    SDS_Pagamentos: TSimpleDataSet;
    DTS_Pagamentos: TDataSource;
    SDS_PagamentosCODIGO: TIntegerField;
    SDS_PagamentosDATA_AUT: TDateField;
    SDS_PagamentosDATA_PAG: TDateField;
    SDS_PagamentosHISTORICO: TStringField;
    SDS_PagamentosUSUARIO_AUT: TStringField;
    SDS_PagamentosUSUARIO_PAG: TStringField;
    SDS_PagamentosVALOR: TFMTBCDField;
    SDS_PagamentosSTATUS: TStringField;
    SDS_PagamentosCLIENTE: TStringField;
    SDS_PagamentosPAGAMENTO: TStringField;
    suiDBNavigator1: TsuiDBNavigator;
    suiButton1: TsuiButton;
    Bevel1: TBevel;
    Panel3: TPanel;
    SDS_PagamentosTIPO: TStringField;
    SDS_PagamentosCODIGO_P: TIntegerField;
    SDS_PagamentosPAG: TStringField;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit6: TsuiDBEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    SDS_PagamentosCODIGO_C: TIntegerField;
    SDS_PagamentosTP: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagDevolucaoPedidos: TFormPagDevolucaoPedidos;

implementation

uses ModulodeDados, PagDevDinheiro, PagDevCrediario, PagDevCheque,
  Principal;

{$R *.dfm}

procedure TFormPagDevolucaoPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPagDevolucaoPedidos:=nil;
end;

procedure TFormPagDevolucaoPedidos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormPagDevolucaoPedidos.FormShow(Sender: TObject);
begin
DM.SDS_Clientes.Active:= False;
DM.SDS_Clientes.Active:= True;
SDS_Pagamentos.Active:= False;
SDS_Pagamentos.Active:= True;
if SDS_Pagamentos.RecordCount = 0 then
begin
SDS_Pagamentos.Active:= False;
suiButton1.Enabled:= False;
end else
begin
SDS_Pagamentos.Active:= True;
suiButton1.Enabled:= True;
end;
end;

procedure TFormPagDevolucaoPedidos.suiButton1Click(Sender: TObject);
begin
if SDS_PagamentosTIPO.Value = 'D' then
begin
  if SDS_PagamentosTP.Value = 'C' then
begin
 if FormPagDevCREDIARIO=nil   then
    begin
     FormPagDevCREDIARIO:=TFormPagDevCREDIARIO.Create(self);
      FormPagDevCREDIARIO.ShowModal;
      end;
     end else
     begin
 if FormPagDevDinheiro=nil   then
    begin
     FormPagDevDinheiro:=TFormPagDevDinheiro.Create(self);
      FormPagDevDinheiro.ShowModal;
      end;
      end;
end else
if SDS_PagamentosTIPO.Value = 'C' then
begin

  if SDS_PagamentosTP.Value = 'H' then
begin
 if FormPagDevCheque=nil   then
    begin
     FormPagDevCheque:=TFormPagDevCheque.Create(self);
      FormPagDevCheque.ShowModal;
      end;
end else
    if SDS_PagamentosTP.Value = 'C' then
begin
 if FormPagDevCREDIARIO=nil   then
    begin
     FormPagDevCREDIARIO:=TFormPagDevCREDIARIO.Create(self);
      FormPagDevCREDIARIO.ShowModal;
      end;
end else
begin
 if FormPagDevDinheiro=nil   then
    begin
     FormPagDevDinheiro:=TFormPagDevDinheiro.Create(self);
      FormPagDevDinheiro.ShowModal;
      end;
end;
end;
end;

procedure TFormPagDevolucaoPedidos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
