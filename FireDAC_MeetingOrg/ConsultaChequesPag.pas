unit ConsultaChequesPag;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask,  Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes, Graphics,  Forms, Dialogs,DBCtrls, DBActns, ActnList,
  ComCtrls, ToolWin, Db, buttons, Menus,IBCustomDataSet, IBQuery,
  IBUpdateSQL, DBClient, SimpleDS, FMTBcd, SqlExpr, RXCtrls,
  SUIDlg, RxToolEdit;

type
  TFormConsultaChequesPag = class(TForm)
    pnpesq: TPanel;
    pc: TsuiPageControl;
    TBCPP: TsuiTabSheet;
    TabSheet1: TsuiTabSheet;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsuiButton;
    Bevel1: TBevel;
    Panel3: TPanel;
    Bevel3: TBevel;
    Button6: TsuiButton;
    Navigator: TsuiDBNavigator;
    suiDBNavigator1: TsuiDBNavigator;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TsuiEdit;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    Panel4: TPanel;
    RxLabel6: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel17: TRxLabel;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit6: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit7: TsuiDBEdit;
    suiDBEdit8: TsuiDBEdit;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit10: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit9: TsuiDBEdit;
    suiDBEdit22: TsuiDBEdit;
    suiDBEdit23: TsuiDBEdit;
    suiDBEdit25: TsuiDBEdit;
    suiDBEdit26: TsuiDBEdit;
    suiDBEdit27: TsuiDBEdit;
    suiDBEdit29: TsuiDBEdit;
    suiDBEdit30: TsuiDBEdit;
    suiDBEdit31: TsuiDBEdit;
    DBGrid2: TsuiDBGrid;
    Panel1: TPanel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel21: TRxLabel;
    RxLabel22: TRxLabel;
    suiDBEdit11: TsuiDBEdit;
    suiDBEdit12: TsuiDBEdit;
    suiDBEdit13: TsuiDBEdit;
    suiDBEdit14: TsuiDBEdit;
    suiDBEdit15: TsuiDBEdit;
    suiDBEdit16: TsuiDBEdit;
    suiDBEdit17: TsuiDBEdit;
    suiDBEdit18: TsuiDBEdit;
    suiDBEdit19: TsuiDBEdit;
    suiDBEdit20: TsuiDBEdit;
    suiDBEdit21: TsuiDBEdit;
    suiDBEdit24: TsuiDBEdit;
    suiDBEdit28: TsuiDBEdit;
    suiDBEdit32: TsuiDBEdit;
    suiDBEdit33: TsuiDBEdit;
    suiDBEdit34: TsuiDBEdit;
    suiDBEdit35: TsuiDBEdit;
    suiDBEdit36: TsuiDBEdit;
    suiDBGrid1: TsuiDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
  
  public

  end;

var
  FormConsultaChequesPag: TFormConsultaChequesPag;
  TD:TTransactionDesc;

implementation

uses    Principal, ModulodeDados, ConsContasPagar, ModulodeDadosConsultas2,
  Z_RotinasGerais;



{$R *.DFM}

procedure TFormConsultaChequesPag.FormShow(Sender: TObject);
begin
    DMC2.SQLD_ChequesBaixarPeriodo.Active:= False;
    DMC2.CDS_ChequesBaixarPeriodo.Active:= False;
    DMC2.SQLD_ChequesBaixarTitular.Active:= False;
    DMC2.CDS_ChequesBaixarTitular.Active:= False;
    DateEdit1.SetFocus;
end;

procedure TFormConsultaChequesPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaChequesPag:=nil;
end;

procedure TFormConsultaChequesPag.suiButton1Click(Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesPagPeriodo.Active:=False;
    DMC2.CDS_ChequesPagPeriodo.Active:=False;
    DMC2.SQLD_ChequesPagPeriodo.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_ChequesPagPeriodo.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_ChequesPagPeriodo.Active:=True;
    DMC2.CDS_ChequesPagPeriodo.Active:=True;
    If  DMC2.CDS_ChequesPagPeriodo.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaChequesPag.Button6Click(Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesPagTitular.Active:=False;
    DMC2.CDS_ChequesPagTitular.Active:=False;
    DMC2.SQLD_ChequesPagTitular.Params[0].AsString:=Edit1.Text;
    DMC2.SQLD_ChequesPagTitular.Active:=True;
    DMC2.CDS_ChequesPagTitular.Active:=True;
    If  DMC2.CDS_ChequesPagTitular.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaChequesPag.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaChequesPag.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaChequesPag.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaChequesPag.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaChequesPag.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaChequesPag.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaChequesPag.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaChequesPag.TabSheet1Show(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFormConsultaChequesPag.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
