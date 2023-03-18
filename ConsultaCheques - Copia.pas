unit ConsultaCheques;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask, ToolEdit, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes,  Graphics,  Forms, Dialogs,DBCtrls, ActnList,
  ComCtrls, ToolWin, Db, buttons, Menus,
  DBXpress, DBClient, FMTBcd, SqlExpr, RXCtrls,
  SUIDlg;

type
  TFormConsultaCheques = class(TForm)
    pnpesq: TPanel;
    pc: TsuiPageControl;
    TBCPP: TsuiTabSheet;
    DBGrid2: TsuiDBGrid;
    TabSheet1: TsuiTabSheet;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsuiButton;
    Panel4: TPanel;
    RxLabel6: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel2: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit6: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit7: TsuiDBEdit;
    suiDBEdit8: TsuiDBEdit;
    RxLabel1: TRxLabel;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit10: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit9: TsuiDBEdit;
    RxLabel3: TRxLabel;
    RxLabel7: TRxLabel;
    Bevel1: TBevel;
    Panel3: TPanel;
    Bevel3: TBevel;
    Button6: TsuiButton;
    Navigator: TsuiDBNavigator;
    suiDBNavigator1: TsuiDBNavigator;
    Label4: TLabel;
    Label2: TLabel;
    suiDBEdit22: TsuiDBEdit;
    suiDBEdit23: TsuiDBEdit;
    RxLabel8: TRxLabel;
    Panel1: TPanel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
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
    suiDBGrid1: TsuiDBGrid;
    Label1: TLabel;
    Edit1: TsuiEdit;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
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
  FormConsultaCheques: TFormConsultaCheques;
  TD:TTransactionDesc;

implementation

uses    Principal, ModulodeDados, ConsContasPagar, ModulodeDadosConsultas2,
  Z_RotinasGerais;



{$R *.DFM}

procedure TFormConsultaCheques.FormShow(Sender: TObject);
begin
    DMC2.SQLD_ChequesBaixarPeriodo.Active:= False;
    DMC2.CDS_ChequesBaixarPeriodo.Active:= False;
    DMC2.SQLD_ChequesBaixarTitular.Active:= False;
    DMC2.CDS_ChequesBaixarTitular.Active:= False;
    DateEdit1.SetFocus;
end;

procedure TFormConsultaCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaCheques:=nil;
end;

procedure TFormConsultaCheques.suiButton1Click(Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesBaixarPeriodo.Active:=False;
    DMC2.CDS_ChequesBaixarPeriodo.Active:=False;
    DMC2.SQLD_ChequesBaixarPeriodo.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_ChequesBaixarPeriodo.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_ChequesBaixarPeriodo.Active:=True;
    DMC2.CDS_ChequesBaixarPeriodo.Active:=True;
    If  DMC2.CDS_ChequesBaixarPeriodo.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaCheques.Button6Click(Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesBaixarTitular.Active:=False;
    DMC2.CDS_ChequesBaixarTitular.Active:=False;
    DMC2.SQLD_ChequesBaixarTitular.Params[0].AsString:=Edit1.Text;
    DMC2.SQLD_ChequesBaixarTitular.Active:=True;
    DMC2.CDS_ChequesBaixarTitular.Active:=True;
    If  DMC2.CDS_ChequesBaixarTitular.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaCheques.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaCheques.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCheques.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCheques.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCheques.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCheques.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaCheques.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaCheques.TabSheet1Show(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFormConsultaCheques.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
