unit ConsultaChequesRetornados;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask,  Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes, Graphics,  Forms, Dialogs,DBCtrls, DBActns, ActnList,
  ComCtrls, ToolWin, Db, buttons, Menus,RXCtrls,
  SUIDlg, RxToolEdit;

type
  TFormConsultaChequesRetornados = class(TForm)
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
    Button6: TsuiButton;
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
    TabSheetRetPagos: TsuiTabSheet;
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
    suiDBGrid1: TsuiDBGrid;
    Panel2: TPanel;
    suiDBNavigator2: TsuiDBNavigator;
    Panel5: TPanel;
    RxLabel25: TRxLabel;
    RxLabel26: TRxLabel;
    RxLabel27: TRxLabel;
    RxLabel28: TRxLabel;
    RxLabel29: TRxLabel;
    RxLabel30: TRxLabel;
    RxLabel31: TRxLabel;
    RxLabel32: TRxLabel;
    RxLabel33: TRxLabel;
    RxLabel34: TRxLabel;
    RxLabel35: TRxLabel;
    RxLabel36: TRxLabel;
    suiDBEdit39: TsuiDBEdit;
    suiDBEdit40: TsuiDBEdit;
    suiDBEdit41: TsuiDBEdit;
    suiDBEdit42: TsuiDBEdit;
    suiDBEdit43: TsuiDBEdit;
    suiDBEdit44: TsuiDBEdit;
    suiDBEdit45: TsuiDBEdit;
    suiDBEdit46: TsuiDBEdit;
    suiDBEdit47: TsuiDBEdit;
    suiDBEdit48: TsuiDBEdit;
    suiDBEdit49: TsuiDBEdit;
    suiDBEdit50: TsuiDBEdit;
    suiDBEdit51: TsuiDBEdit;
    suiDBEdit52: TsuiDBEdit;
    suiDBEdit53: TsuiDBEdit;
    suiDBEdit54: TsuiDBEdit;
    suiDBEdit55: TsuiDBEdit;
    suiDBEdit56: TsuiDBEdit;
    suiDBGrid2: TsuiDBGrid;
    Label1: TLabel;
    DateEdit3: TDateEdit;
    Label3: TLabel;
    DateEdit4: TDateEdit;
    Bevel3: TBevel;
    ButtonConsRetBai: TsuiButton;
    Bevel2: TBevel;
    DateEdit5: TDateEdit;
    Label5: TLabel;
    DateEdit6: TDateEdit;
    Label6: TLabel;
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
    procedure ButtonConsRetBaiClick(Sender: TObject);
    procedure TabSheetRetPagosShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
  
  public

  end;

var
  FormConsultaChequesRetornados: TFormConsultaChequesRetornados;

implementation

uses    Principal, ModulodeDados,  ModulodeDadosConsultas2,
  Z_RotinasGerais;



{$R *.DFM}

procedure TFormConsultaChequesRetornados.FormShow(Sender: TObject);
begin
    DMC2.SQLD_ChequesRetornadosPeriodo.Active:=False;
    DMC2.CDS_ChequesRetornadosPeriodo.Active:=False;
    DMC2.SQLD_ChequesRetornadosBaixar.Active:=False;
    DMC2.CDS_ChequesRetornadosBaixar.Active:=False;
    DMC2.SQLD_ChequesRetornadosBaixados.Active:=False;
    DMC2.CDS_ChequesRetornadosBaixados.Active:=False;
    DateEdit1.SetFocus;
end;

procedure TFormConsultaChequesRetornados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaChequesRetornados:=nil;
end;

procedure TFormConsultaChequesRetornados.Button6Click(Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesRetornadosBaixar.Active:=False;
    DMC2.CDS_ChequesRetornadosBaixar.Active:=False;
    DMC2.SQLD_ChequesRetornadosBaixar.Params[0].AsDate:=DateEdit3.Date;
    DMC2.SQLD_ChequesRetornadosBaixar.Params[1].AsDate:=DateEdit4.Date;
    DMC2.SQLD_ChequesRetornadosBaixar.Active:=True;
    DMC2.CDS_ChequesRetornadosBaixar.Active:=True;
    If  DMC2.CDS_ChequesRetornadosBaixar.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaChequesRetornados.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaChequesRetornados.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaChequesRetornados.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaChequesRetornados.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaChequesRetornados.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaChequesRetornados.suiButton1Click(Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesRetornadosPeriodo.Active:=False;
    DMC2.CDS_ChequesRetornadosPeriodo.Active:=False;
    DMC2.SQLD_ChequesRetornadosPeriodo.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_ChequesRetornadosPeriodo.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_ChequesRetornadosPeriodo.Active:=True;
    DMC2.CDS_ChequesRetornadosPeriodo.Active:=True;
    If  DMC2.CDS_ChequesRetornadosPeriodo.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaChequesRetornados.TabSheet1Show(Sender: TObject);
begin
DateEdit3.SetFocus;
end;

procedure TFormConsultaChequesRetornados.ButtonConsRetBaiClick(
  Sender: TObject);
begin
Try
    DMC2.SQLD_ChequesRetornadosBaixados.Active:=False;
    DMC2.CDS_ChequesRetornadosBaixados.Active:=False;
    DMC2.SQLD_ChequesRetornadosBaixados.Params[0].AsDate:=DateEdit6.Date;
    DMC2.SQLD_ChequesRetornadosBaixados.Params[1].AsDate:=DateEdit5.Date;
    DMC2.SQLD_ChequesRetornadosBaixados.Active:=True;
    DMC2.CDS_ChequesRetornadosBaixados.Active:=True;
    If  DMC2.CDS_ChequesRetornadosBaixados.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaChequesRetornados.TabSheetRetPagosShow(
  Sender: TObject);
begin
DateEdit6.SetFocus;
end;

procedure TFormConsultaChequesRetornados.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
