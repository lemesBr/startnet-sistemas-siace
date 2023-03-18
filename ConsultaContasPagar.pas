unit ConsultaContasPagar;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask, rxToolEdit, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes, Graphics,  Forms, Dialogs,DBCtrls, RXCtrls, 
  Db, buttons, Menus;

type
  TFormConsultaContasPagar = class(TForm)
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
    RxLabel33: TRxLabel;
    RxLabel34: TRxLabel;
    RxLabel35: TRxLabel;
    RxLabel36: TRxLabel;
    RxLabel37: TRxLabel;
    RxLabel38: TRxLabel;
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
   X: Real;
  end;

var
  FormConsultaContasPagar: TFormConsultaContasPagar;

implementation

uses    Principal, ModulodeDados, ConsContasPagar, ModulodeDadosConsultas2,
  Z_RotinasGerais;



{$R *.DFM}

procedure TFormConsultaContasPagar.FormShow(Sender: TObject);
begin
    DBGrid2.DataSource:= DMC2.Dts_CPNA_Data;
    Navigator.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit1.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit2.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit3.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit4.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit5.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit6.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit7.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit8.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit9.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit10.DataSource:= DMC2.Dts_CPNA_Data;
    DateEdit1.SetFocus;
end;

procedure TFormConsultaContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaContasPagar:=nil;
DMC2.SQLD_CPNA_Data.Active:= False;
DMC2.CDS_CPNA_Data.Active:= False;
DMC2.SQLD_CPNA_FOR.Active:= False;
DMC2.CDS_CPNA_FOR.Active:= False;
DMC2.SQLD_CPA_Data.Active:= False;
DMC2.CDS_CPA_Data.Active:= False;
DMC2.SQLD_CPA_FOR.Active:= False;
DMC2.CDS_CPA_FOR.Active:= False;
DMC2.SQLD_CPP_Data.Active:= False;
DMC2.CDS_CPP_Data.Active:= False;
DMC2.SQLD_CPP_FOR.Active:= False;
DMC2.CDS_CPP_FOR.Active:= False;
end;

procedure TFormConsultaContasPagar.DateEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaContasPagar.DateEdit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaContasPagar.Edit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaContasPagar.DateEdit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaContasPagar.DateEdit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaContasPagar.Edit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaContasPagar.suiButton1Click(Sender: TObject);
 var
  INICIO, final, TIPO : STRING;
 DataIni, DataFin: String;
begin
Try
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;

    EDIT1.Clear;
    DBGrid2.DataSource:= DMC2.Dts_CPNA_Data;
    Navigator.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit1.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit2.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit3.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit4.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit5.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit6.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit7.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit8.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit9.DataSource:= DMC2.Dts_CPNA_Data;
    suiDBEdit10.DataSource:= DMC2.Dts_CPNA_Data;

  {  DMC2.SQLD_CPNA_Data.Active:=False;
    DMC2.CDS_CPNA_Data.Active:=False;
    DMC2.SQLD_CPNA_Data.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_CPNA_Data.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_CPNA_Data.Active:=True;
    DMC2.CDS_CPNA_Data.Active:=True;  }
    DMC2.CDS_CPNA_Data.Active:=False;
    DMC2.SQLD_CPNA_Data.close;
    DMC2.SQLD_CPNA_Data.SQL.Clear;
    DMC2.SQLD_CPNA_Data.SQL.add('select * from V_CONTAS_PAGAR where CODIGO >0'+'');
    if inicio > ' / /   ' then
    DMC2.SQLD_CPNA_Data.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    DMC2.SQLD_CPNA_Data.SQL.add('ORDER BY DATA_VENCIMENTO ASC');
    DMC2.SQLD_CPNA_data.Active :=TRUE;
    DMC2.CDS_CPNA_Data.Active :=TRUE;
    
    If  DMC2.CDS_CPNA_Data.EOF then
 Begin
    MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;


begin
X:= 0;
DMC2.CDS_CPNA_Data.First;
X:= X + DMC2.CDS_CPNA_DataVALOR_PARCELA.AsFloat;
DMC2.CDS_CPNA_Data.Next;
RXLabel33.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC2.CDS_CPNA_Data.Eof do
begin
X:= X + DMC2.CDS_CPNA_DataVALOR_PARCELA.AsFloat;
DMC2.CDS_CPNA_Data.Next;
RXLabel33.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
end;

        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;
end;

procedure TFormConsultaContasPagar.suiButton3Click(Sender: TObject);
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
    DBGrid2.DataSource:= DMC2.Dts_CPNA_FOR;
    Navigator.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit1.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit2.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit3.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit4.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit5.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit6.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit7.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit8.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit9.DataSource:= DMC2.Dts_CPNA_FOR;
    suiDBEdit10.DataSource:= DMC2.Dts_CPNA_FOR;
    {DMC2.SQLD_CPNA_FOR.Active:=False;
    DMC2.CDS_CPNA_FOR.Active:=False;
    DMC2.SQLD_CPNA_FOR.Params[0].AsString:= Edit1.text;
    DMC2.SQLD_CPNA_FOR.Active:=True;
    DMC2.CDS_CPNA_FOR.Active:=True; }


    if  DMC2.CDS_CPNA_FOR.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;


begin
RxLabel33.Caption := '0';
X:= 0;
DMC2.CDS_CPNA_FOR.First;
X:= X + DMC2.CDS_CPNA_FORVALOR_PARCELA.AsFloat;
DMC2.CDS_CPNA_FOR.Next;
RXLabel33.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC2.CDS_CPNA_FOR.Eof do
begin
X:= X + DMC2.CDS_CPNA_FORVALOR_PARCELA.AsFloat;
DMC2.CDS_CPNA_FOR.Next;
RXLabel33.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;

end;

procedure TFormConsultaContasPagar.Button6Click(Sender: TObject);
 var
  INICIO, final, TIPO : STRING;
 DataIni, DataFin: String;
begin
Try
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit3.TexT;
    final:=dateedit4.TexT;
    EDIT2.Clear;
    DBGrid1.DataSource:= DMC2.Dts_CPA_Data;
    Navigator2.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit11.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit12.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit13.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit14.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit15.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit16.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit17.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit18.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit19.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit20.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit31.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit32.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit33.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit34.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit35.DataSource:= DMC2.Dts_CPA_Data;
    suiDBEdit36.DataSource:= DMC2.Dts_CPA_Data;

   { DMC2.SQLD_CPA_Data.Active:=False;
    DMC2.CDS_CPA_Data.Active:=False;
    DMC2.SQLD_CPA_Data.Params[0].AsDate:=DateEdit3.Date;
    DMC2.SQLD_CPA_Data.Params[1].AsDate:=DateEdit4.Date;
    DMC2.SQLD_CPA_Data.Active:=True;
    DMC2.CDS_CPA_Data.Active:=True; }
     DMC2.CDS_CPA_Data.Active:=False;
    DMC2.SQLD_CPA_Data.close;
    DMC2.SQLD_CPA_Data.SQL.Clear;
    DMC2.SQLD_CPA_Data.SQL.add('select * from V_CONTAS_AUTORIZADA where CODIGO >0'+'');
    if inicio > ' / /   ' then
    DMC2.SQLD_CPA_Data.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    DMC2.SQLD_CPA_Data.SQL.add('ORDER BY DATA_VENCIMENTO ASC');
    DMC2.SQLD_CPA_data.Active :=TRUE;
    DMC2.CDS_CPA_Data.Active :=TRUE;

    If  DMC2.CDS_CPA_Data.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;

  begin
X:= 0;
DMC2.CDS_CPA_Data.First;
X:= X + DMC2.CDS_CPA_DataVALOR_PARCELA.AsFloat;
DMC2.CDS_CPA_Data.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC2.CDS_CPA_Data.Eof do
begin
X:= X + DMC2.CDS_CPA_DataVALOR_PARCELA.AsFloat;
DMC2.CDS_CPA_Data.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;
end;

procedure TFormConsultaContasPagar.suiButton7Click(Sender: TObject);
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
    DBGrid1.DataSource:= DMC2.Dts_CPA_FOR;
    Navigator2.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit11.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit12.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit13.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit14.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit15.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit16.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit17.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit18.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit19.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit20.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit31.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit32.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit33.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit34.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit35.DataSource:= DMC2.Dts_CPA_FOR;
    suiDBEdit36.DataSource:= DMC2.Dts_CPA_FOR;
    DMC2.SQLD_CPA_FOR.Active:=False;
    DMC2.CDS_CPA_FOR.Active:=False;
    DMC2.SQLD_CPA_FOR.Params[0].AsString:= Edit2.text;
    DMC2.SQLD_CPA_FOR.Active:=True;
    DMC2.CDS_CPA_FOR.Active:=True;
    if  DMC2.CDS_CPA_FOR.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;

  begin
RxLabel36.Caption := '0';
X:= 0;
DMC2.CDS_CPA_FOR.First;
X:= X + DMC2.CDS_CPA_FORVALOR_PARCELA.AsFloat;
DMC2.CDS_CPA_FOR.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC2.CDS_CPA_FOR.Eof do
begin
X:= X + DMC2.CDS_CPA_FORVALOR_PARCELA.AsFloat;
DMC2.CDS_CPA_FOR.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
end;
        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;

end;

procedure TFormConsultaContasPagar.suiButton8Click(Sender: TObject);
 var
  INICIO, final, TIPO : STRING;
 DataIni, DataFin: String;
begin
Try
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit5.TexT;
    final:=dateedit6.TexT;
    EDIT3.Clear;
    DBGrid3.DataSource:= DMC2.Dts_CPP_Data;
    Navigator3.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit21.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit22.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit23.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit24.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit25.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit26.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit27.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit28.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit29.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit30.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit37.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit38.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit39.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit40.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit41.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit42.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit43.DataSource:= DMC2.Dts_CPP_Data;
    suiDBEdit44.DataSource:= DMC2.Dts_CPP_Data;

  {  DMC2.SQLD_CPP_Data.Active:=False;
    DMC2.CDS_CPP_Data.Active:=False;
    DMC2.SQLD_CPP_Data.Params[0].AsDate:=DateEdit5.Date;
    DMC2.SQLD_CPP_Data.Params[1].AsDate:=DateEdit6.Date;
    DMC2.SQLD_CPP_Data.Active:=True;
    DMC2.CDS_CPP_Data.Active:=True;  }

    DMC2.CDS_CPp_Data.Active:=False;
    DMC2.SQLD_CPp_Data.close;
    DMC2.SQLD_CPp_Data.SQL.Clear;
    DMC2.SQLD_CPp_Data.SQL.add('select * from V_CONTAS_PAGAS where CODIGO >0'+'');
    if inicio > ' / /   ' then
    DMC2.SQLD_CPp_Data.SQL.add('and DATA_BAIXA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_BAIXA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    DMC2.SQLD_CPp_Data.SQL.add('ORDER BY DATA_BAIXA ASC');
    DMC2.SQLD_CPp_data.Active :=TRUE;
    DMC2.CDS_CPp_Data.Active :=TRUE;

    If  DMC2.CDS_CPP_Data.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;
   begin
X:= 0;
DMC2.CDS_CPP_Data.First;
X:= X + DMC2.CDS_CPP_DataVALOR_PARCELA.AsFloat;
DMC2.CDS_CPP_Data.Next;
RXLabel38.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC2.CDS_CPP_Data.Eof do
begin
X:= X + DMC2.CDS_CPP_DataVALOR_PARCELA.AsFloat;
DMC2.CDS_CPP_Data.Next;
RXLabel38.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
end;

        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;
end;

procedure TFormConsultaContasPagar.suiButton9Click(Sender: TObject);
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
    DBGrid3.DataSource:= DMC2.Dts_CPP_FOR;
    Navigator3.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit21.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit22.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit23.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit24.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit25.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit26.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit27.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit28.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit29.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit30.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit37.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit38.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit39.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit40.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit41.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit42.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit43.DataSource:= DMC2.Dts_CPP_FOR;
    suiDBEdit44.DataSource:= DMC2.Dts_CPP_FOR;
    DMC2.SQLD_CPP_FOR.Active:=False;
    DMC2.CDS_CPP_FOR.Active:=False;
    DMC2.SQLD_CPP_FOR.Params[0].AsString:= Edit3.text;
    DMC2.SQLD_CPP_FOR.Active:=True;
    DMC2.CDS_CPP_FOR.Active:=True;
    if  DMC2.CDS_CPP_FOR.EOF then
  Begin
       MessageDlg('Nenhum Registro Foi Encontrado', mtInformation, [mbOK], 0);
  end;
begin
X:= 0;
DMC2.CDS_CPP_FOR.First;
X:= X + DMC2.CDS_CPP_FORVALOR_PARCELA.AsFloat;
DMC2.CDS_CPP_FOR.Next;
RXLabel38.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMC2.CDS_CPP_FOR.Eof do
begin
X:= X + DMC2.CDS_CPP_FORVALOR_PARCELA.AsFloat;
DMC2.CDS_CPP_FOR.Next;
RXLabel38.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
end;

        Except
     MessageDlg('Erro na Consulta.', mtInformation,[mbOk], 0);
   end;

end;

procedure TFormConsultaContasPagar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaContasPagar.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
