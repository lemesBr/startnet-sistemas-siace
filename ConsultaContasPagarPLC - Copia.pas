unit ConsultaContasPagarPLC;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask, ToolEdit, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes, Graphics,  Forms, Dialogs,DBCtrls, DBActns, ActnList,
  ComCtrls, ToolWin, Db, buttons, Menus,IBCustomDataSet, IBQuery,
  DBXpress, IBUpdateSQL, DBClient, SimpleDS, FMTBcd, SqlExpr, RXCtrls;

type
  TFormConsultaContasPagarPLC = class(TForm)
    pnpesq: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    pc: TsuiPageControl;
    TBCPP: TsuiTabSheet;
    DBGrid2: TsuiDBGrid;
    TabSheet1: TsuiTabSheet;
    TabSheet2: TsuiTabSheet;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsuiButton;
    suiButton3: TsuiButton;
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
    Bevel2: TBevel;
    Edit1: TEdit;
    Panel: TPanel;
    BitBtn3: TsuiButton;
    Navigator: TsuiDBNavigator;
    Panel1: TPanel;
    suiButton4: TsuiButton;
    Navigator2: TsuiDBNavigator;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Button6: TsuiButton;
    suiButton7: TsuiButton;
    Edit2: TEdit;
    DBGrid1: TsuiDBGrid;
    DBGrid3: TsuiDBGrid;
    Panel5: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    suiButton8: TsuiButton;
    suiButton9: TsuiButton;
    Edit3: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    suiButton10: TsuiButton;
    Navigator3: TsuiDBNavigator;
    RxLabel9: TRxLabel;
    suiDBEdit11: TsuiDBEdit;
    suiDBEdit12: TsuiDBEdit;
    suiDBEdit16: TsuiDBEdit;
    suiDBEdit15: TsuiDBEdit;
    RxLabel12: TRxLabel;
    RxLabel10: TRxLabel;
    suiDBEdit13: TsuiDBEdit;
    suiDBEdit14: TsuiDBEdit;
    suiDBEdit17: TsuiDBEdit;
    RxLabel11: TRxLabel;
    suiDBEdit18: TsuiDBEdit;
    RxLabel14: TRxLabel;
    suiDBEdit19: TsuiDBEdit;
    suiDBEdit20: TsuiDBEdit;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel25: TRxLabel;
    RxLabel26: TRxLabel;
    RxLabel27: TRxLabel;
    RxLabel28: TRxLabel;
    suiDBEdit31: TsuiDBEdit;
    suiDBEdit32: TsuiDBEdit;
    suiDBEdit33: TsuiDBEdit;
    suiDBEdit34: TsuiDBEdit;
    suiDBEdit35: TsuiDBEdit;
    suiDBEdit36: TsuiDBEdit;
    RxLabel17: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    RxLabel22: TRxLabel;
    suiDBEdit21: TsuiDBEdit;
    suiDBEdit22: TsuiDBEdit;
    suiDBEdit23: TsuiDBEdit;
    suiDBEdit24: TsuiDBEdit;
    suiDBEdit25: TsuiDBEdit;
    suiDBEdit26: TsuiDBEdit;
    suiDBEdit27: TsuiDBEdit;
    suiDBEdit28: TsuiDBEdit;
    suiDBEdit29: TsuiDBEdit;
    suiDBEdit30: TsuiDBEdit;
    RxLabel23: TRxLabel;
    RxLabel24: TRxLabel;
    RxLabel29: TRxLabel;
    RxLabel30: TRxLabel;
    RxLabel31: TRxLabel;
    RxLabel32: TRxLabel;
    suiDBEdit37: TsuiDBEdit;
    suiDBEdit38: TsuiDBEdit;
    suiDBEdit39: TsuiDBEdit;
    suiDBEdit40: TsuiDBEdit;
    suiDBEdit41: TsuiDBEdit;
    suiDBEdit42: TsuiDBEdit;
    suiDBEdit43: TsuiDBEdit;
    suiDBEdit44: TsuiDBEdit;
    Label35: TLabel;
    RxLabel13: TRxLabel;
    RxLabel21: TRxLabel;
    Label5: TLabel;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiButton9Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
  
  public

  end;

var
  FormConsultaContasPagarPLC: TFormConsultaContasPagarPLC;
  TD:TTransactionDesc;

implementation

uses    Principal, ModulodeDados, ConsContasPagar,
  Z_RotinasGerais, ModulodeDadosConsultas;



{$R *.DFM}

procedure TFormConsultaContasPagarPLC.FormShow(Sender: TObject);
begin
    DBGrid2.DataSource:= DMC.Dts_CPNA_Data;
    Navigator.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit1.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit2.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit3.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit4.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit5.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit6.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit7.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit8.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit9.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit10.DataSource:= DMC.Dts_CPNA_Data;
    DateEdit1.SetFocus;
end;

procedure TFormConsultaContasPagarPLC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaContasPagarPLC:=nil;
DMC.SQLD_CPNA_Data.Active:= False;
DMC.CDS_CPNA_Data.Active:= False;
DMC.SQLD_CPNA_FOR.Active:= False;
DMC.CDS_CPNA_FOR.Active:= False;
DMC.SQLD_CPA_Data.Active:= False;
DMC.CDS_CPA_Data.Active:= False;
DMC.SQLD_CPA_FOR.Active:= False;
DMC.CDS_CPA_FOR.Active:= False;
DMC.SQLD_CPP_Data.Active:= False;
DMC.CDS_CPP_Data.Active:= False;
DMC.SQLD_CPP_FOR.Active:= False;
DMC.CDS_CPP_FOR.Active:= False;
end;

procedure TFormConsultaContasPagarPLC.DateEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaContasPagarPLC.DateEdit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaContasPagarPLC.Edit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaContasPagarPLC.DateEdit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaContasPagarPLC.DateEdit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaContasPagarPLC.Edit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaContasPagarPLC.suiButton1Click(Sender: TObject);
begin
Try
    EDIT1.Clear;
    DBGrid2.DataSource:= DMC.Dts_CPNA_Data;
    Navigator.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit1.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit2.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit3.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit4.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit5.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit6.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit7.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit8.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit9.DataSource:= DMC.Dts_CPNA_Data;
    suiDBEdit10.DataSource:= DMC.Dts_CPNA_Data;

    DMC.SQLD_CPNA_Data.Active:=False;
    DMC.CDS_CPNA_Data.Active:=False;
    DMC.SQLD_CPNA_Data.Params[0].AsDate:=DateEdit1.Date;
    DMC.SQLD_CPNA_Data.Params[1].AsDate:=DateEdit2.Date;
    DMC.SQLD_CPNA_Data.Active:=True;
    DMC.CDS_CPNA_Data.Active:=True;
    If  DMC.CDS_CPNA_Data.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;
end;

procedure TFormConsultaContasPagarPLC.suiButton3Click(Sender: TObject);
begin
If Edit1.Text='' then
   begin
      MessageDlg('Entre Com o Nome do Fornecedor', mtInformation, [mbOK], 0);
      Edit1.SetFocus;
      end
  else
Try
    DATEEDIT1.Clear;
    DATEEDIT2.Clear;
    DBGrid2.DataSource:= DMC.Dts_CPNA_FOR;
    Navigator.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit1.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit2.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit3.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit4.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit5.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit6.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit7.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit8.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit9.DataSource:= DMC.Dts_CPNA_FOR;
    suiDBEdit10.DataSource:= DMC.Dts_CPNA_FOR;
    DMC.SQLD_CPNA_FOR.Active:=False;
    DMC.CDS_CPNA_FOR.Active:=False;
    DMC.SQLD_CPNA_FOR.Params[0].AsString:= Edit1.text;
    DMC.SQLD_CPNA_FOR.Active:=True;
    DMC.CDS_CPNA_FOR.Active:=True;
    if  DMC.CDS_CPNA_FOR.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;

end;

procedure TFormConsultaContasPagarPLC.Button6Click(Sender: TObject);
begin
Try
    EDIT2.Clear;
    DBGrid1.DataSource:= DMC.Dts_CPA_Data;
    Navigator2.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit11.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit12.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit13.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit14.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit15.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit16.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit17.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit18.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit19.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit20.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit31.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit32.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit33.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit34.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit35.DataSource:= DMC.Dts_CPA_Data;
    suiDBEdit36.DataSource:= DMC.Dts_CPA_Data;

    DMC.SQLD_CPA_Data.Active:=False;
    DMC.CDS_CPA_Data.Active:=False;
    DMC.SQLD_CPA_Data.Params[0].AsDate:=DateEdit3.Date;
    DMC.SQLD_CPA_Data.Params[1].AsDate:=DateEdit4.Date;
    DMC.SQLD_CPA_Data.Active:=True;
    DMC.CDS_CPA_Data.Active:=True;
    If  DMC.CDS_CPA_Data.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;
end;

procedure TFormConsultaContasPagarPLC.suiButton7Click(Sender: TObject);
begin
If Edit2.Text='' then
   begin
      MessageDlg('Entre Com o Nome do Fornecedor', mtInformation, [mbOK], 0);
      Edit2.SetFocus;
      end
  else
Try
    DATEEDIT3.Clear;
    DATEEDIT4.Clear;
    DBGrid1.DataSource:= DMC.Dts_CPA_FOR;
    Navigator2.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit11.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit12.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit13.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit14.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit15.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit16.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit17.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit18.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit19.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit20.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit31.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit32.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit33.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit34.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit35.DataSource:= DMC.Dts_CPA_FOR;
    suiDBEdit36.DataSource:= DMC.Dts_CPA_FOR;
    DMC.SQLD_CPA_FOR.Active:=False;
    DMC.CDS_CPA_FOR.Active:=False;
    DMC.SQLD_CPA_FOR.Params[0].AsString:= Edit2.text;
    DMC.SQLD_CPA_FOR.Active:=True;
    DMC.CDS_CPA_FOR.Active:=True;
    if  DMC.CDS_CPA_FOR.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;

end;

procedure TFormConsultaContasPagarPLC.suiButton8Click(Sender: TObject);
begin
Try
    EDIT3.Clear;
    DBGrid3.DataSource:= DMC.Dts_CPP_Data;
    Navigator3.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit21.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit22.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit23.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit24.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit25.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit26.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit27.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit28.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit29.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit30.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit37.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit38.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit39.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit40.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit41.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit42.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit43.DataSource:= DMC.Dts_CPP_Data;
    suiDBEdit44.DataSource:= DMC.Dts_CPP_Data;

    DMC.SQLD_CPP_Data.Active:=False;
    DMC.CDS_CPP_Data.Active:=False;
    DMC.SQLD_CPP_Data.Params[0].AsDate:=DateEdit5.Date;
    DMC.SQLD_CPP_Data.Params[1].AsDate:=DateEdit6.Date;
    DMC.SQLD_CPP_Data.Active:=True;
    DMC.CDS_CPP_Data.Active:=True;
    If  DMC.CDS_CPP_Data.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;
end;

procedure TFormConsultaContasPagarPLC.suiButton9Click(Sender: TObject);
begin
If Edit3.Text='' then
   begin
      MessageDlg('Entre Com o Nome do Fornecedor', mtInformation, [mbOK], 0);
      Edit3.SetFocus;
      end
  else
Try
    DATEEDIT5.Clear;
    DATEEDIT6.Clear;
    DBGrid3.DataSource:= DMC.Dts_CPP_FOR;
    Navigator3.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit21.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit22.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit23.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit24.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit25.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit26.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit27.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit28.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit29.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit30.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit37.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit38.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit39.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit40.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit41.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit42.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit43.DataSource:= DMC.Dts_CPP_FOR;
    suiDBEdit44.DataSource:= DMC.Dts_CPP_FOR;
    DMC.SQLD_CPP_FOR.Active:=False;
    DMC.CDS_CPP_FOR.Active:=False;
    DMC.SQLD_CPP_FOR.Params[0].AsString:= Edit3.text;
    DMC.SQLD_CPP_FOR.Active:=True;
    DMC.CDS_CPP_FOR.Active:=True;
    if  DMC.CDS_CPP_FOR.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;

end;

procedure TFormConsultaContasPagarPLC.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaContasPagarPLC.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
