unit ConsultaChequesBaixados;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes,  Graphics,  Forms, Dialogs,DBCtrls, DBActns, ActnList,
  ComCtrls, ToolWin, Db, buttons, Menus, RXCtrls,
  SUIDlg, RxToolEdit;

type
  TFormConsultaChequesBaixados = class(TForm)
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
    RxLabel8: TRxLabel;
    RxLabel1: TRxLabel;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit10: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit9: TsuiDBEdit;
    RxLabel3: TRxLabel;
    RxLabel7: TRxLabel;
    Bevel1: TBevel;
    Panel3: TPanel;
    Navigator: TsuiDBNavigator;
    suiDBNavigator1: TsuiDBNavigator;
    Label4: TLabel;
    Label2: TLabel;
    suiDBEdit21: TsuiDBEdit;
    RxLabel17: TRxLabel;
    RxLabel18: TRxLabel;
    suiDBEdit22: TsuiDBEdit;
    suiDBEdit23: TsuiDBEdit;
    suiDBEdit24: TsuiDBEdit;
    suiDBEdit25: TsuiDBEdit;
    suiDBEdit26: TsuiDBEdit;
    RxLabel19: TRxLabel;
    suiDBEdit27: TsuiDBEdit;
    RxLabel20: TRxLabel;
    suiDBEdit28: TsuiDBEdit;
    suiDBEdit29: TsuiDBEdit;
    Panel1: TPanel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel21: TRxLabel;
    RxLabel22: TRxLabel;
    RxLabel23: TRxLabel;
    RxLabel24: TRxLabel;
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
    suiDBEdit30: TsuiDBEdit;
    suiDBEdit31: TsuiDBEdit;
    suiDBEdit32: TsuiDBEdit;
    suiDBEdit33: TsuiDBEdit;
    suiDBEdit34: TsuiDBEdit;
    suiDBEdit35: TsuiDBEdit;
    suiDBEdit36: TsuiDBEdit;
    suiDBEdit37: TsuiDBEdit;
    Edit1: TsuiEdit;
    Label1: TLabel;
    Bevel3: TBevel;
    Button6: TsuiButton;
    suiDBGrid1: TsuiDBGrid;
    MSG_ERRO: TsuiMessageDialog;
    MSG_NR: TsuiMessageDialog;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
  
  public

  end;

var
  FormConsultaChequesBaixados: TFormConsultaChequesBaixados;


implementation

uses    Principal, ModulodeDados,  ModulodeDadosConsultas2,
  Z_RotinasGerais;



{$R *.DFM}

procedure TFormConsultaChequesBaixados.FormShow(Sender: TObject);
begin
    DMC2.SQLD_ChequesRetornadosPeriodo.Active:=False;
    DMC2.CDS_ChequesRetornadosPeriodo.Active:=False;
    DMC2.SQLD_ChequesRetornadosBaixar.Active:=False;
    DMC2.CDS_ChequesRetornadosBaixar.Active:=False;
    DMC2.SQLD_ChequesRetornadosBaixados.Active:=False;
    DMC2.CDS_ChequesRetornadosBaixados.Active:=False;
    DateEdit1.SetFocus;
end;

procedure TFormConsultaChequesBaixados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaChequesBaixados:=nil;
end;

procedure TFormConsultaChequesBaixados.Button6Click(Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesBaixadosTitular.Active:=False;
    DMC2.CDS_ChequesBaixadosTitular.Active:=False;
    DMC2.SQLD_ChequesBaixadosTitular.Params[0].AsString:=Edit1.Text;
    DMC2.SQLD_ChequesBaixadosTitular.Active:=True;
    DMC2.CDS_ChequesBaixadosTitular.Active:=True;
    If  DMC2.CDS_ChequesBaixadosTitular.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaChequesBaixados.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaChequesBaixados.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaChequesBaixados.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaChequesBaixados.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaChequesBaixados.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaChequesBaixados.suiButton1Click(Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesBaixadosPeriodo.Active:=False;
    DMC2.CDS_ChequesBaixadosPeriodo.Active:=False;
    DMC2.SQLD_ChequesBaixadosPeriodo.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_ChequesBaixadosPeriodo.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_ChequesBaixadosPeriodo.Active:=True;
    DMC2.CDS_ChequesBaixadosPeriodo.Active:=True;
    If  DMC2.CDS_ChequesBaixadosPeriodo.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaChequesBaixados.TabSheet1Show(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFormConsultaChequesBaixados.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaChequesBaixados.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaChequesBaixados.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
