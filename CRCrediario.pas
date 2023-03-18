unit CRCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  RXCtrls, SUIEdit, SUIDBCtrls, Grids, DBGrids,
  SUIButton, StdCtrls, Mask,  DB, SUIDlg, DBCtrls,
  FMTBcd, SqlExpr, DBClient, SimpleDS, XDBGrids, sPanel,
  sDBNavigator, acDBGrid, sDBEdit, Buttons, sBitBtn, sEdit, sLabel,
  IBCustomDataSet, IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Ubibli1, RxToolEdit, RxCurrEdit, XDBLists, NxPageControl;

type
  TFormCRCrediario = class(TForm)
    Panel5: TPanel;
    Panel3: TPanel;
    Panel10: TPanel;
    RxLabel4: TRxLabel;
    RxLabel8: TRxLabel;
    Cliente: TComboEdit;
    RxLabel1: TsLabel;
    DBGrid1: TXDBGrid;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    suiButton4: TsBitBtn;
    Panel1: TPanel;
    RxLabel13: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel17: TRxLabel;
    RxLabel19: TRxLabel;
    Bevel1: TBevel;
    suiDBEdit1: TsDBEdit;
    suiDBEdit2: TsDBEdit;
    suiDBEdit3: TsDBEdit;
    suiDBEdit4: TsDBEdit;
    suiDBEdit5: TsDBEdit;
    RxLabel20: TRxLabel;
    CurrencyEdit6: TCurrencyEdit;
    Label1: TsLabelFX;
    sDBEdit1: TsDBEdit;
    RxLabel18: TRxLabel;
    RxLabel21: TRxLabel;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    RxLabel22: TRxLabel;
    RxLabel23: TRxLabel;
    Totais: TFDQuery;
    Total_v: TFDQuery;
    sBitBtn1: TsBitBtn;
    Spc_crediario_Recebido: TFDStoredProc;
    SPC_ATUALIZA: TFDStoredProc;
    Total_vCOMPRA: TFMTBCDField;
    XDBColumnsDialog: TXDBColumnsDialog;
    SPC_BAIXA_PARCELA_T: TSQLStoredProc;
    SPC_Baixa_Parcial1: TSQLStoredProc;
    SPC_Baixa_Parcial: TFDStoredProc;
    Panel2: TPanel;
    Panel6: TPanel;
    RxLabel5: TRxLabel;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    Panel8: TPanel;
    RxLabel7: TRxLabel;
    suiButton3: TsBitBtn;
    Edit2: TEdit;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    NxTabSheet3: TNxTabSheet;
    Panel4: TPanel;
    Panel11: TPanel;
    RxLabel24: TRxLabel;
    RxLabel25: TRxLabel;
    RxLabel32: TRxLabel;
    CurrencyEdit15: TCurrencyEdit;
    XDBGrid1: TXDBGrid;
    Panel12: TPanel;
    Bevel2: TBevel;
    RxLabel34: TRxLabel;
    RxLabel35: TRxLabel;
    RxLabel36: TRxLabel;
    RxLabel37: TRxLabel;
    RxLabel38: TRxLabel;
    RxLabel40: TRxLabel;
    sDBEdit2: TsDBEdit;
    sDBEdit3: TsDBEdit;
    sDBEdit4: TsDBEdit;
    sDBEdit5: TsDBEdit;
    sDBEdit6: TsDBEdit;
    sDBEdit7: TsDBEdit;
    Panel9: TPanel;
    Navigator: TsDBNavigator;
    BTBaixaParcela: TsBitBtn;
    BTBaixaTotal: TsBitBtn;
    BTPrint: TsBitBtn;
    BTJuros: TsBitBtn;
    BTBaixaParcial: TsBitBtn;
    suiButton2: TsBitBtn;
    Panel13: TPanel;
    Panel14: TPanel;
    RxLabel43: TRxLabel;
    RxLabel44: TRxLabel;
    RxLabel51: TRxLabel;
    CurrencyEdit24: TCurrencyEdit;
    XDBGrid2: TXDBGrid;
    Panel15: TPanel;
    Bevel3: TBevel;
    RxLabel53: TRxLabel;
    RxLabel54: TRxLabel;
    RxLabel55: TRxLabel;
    RxLabel56: TRxLabel;
    RxLabel57: TRxLabel;
    RxLabel59: TRxLabel;
    sDBEdit8: TsDBEdit;
    sDBEdit9: TsDBEdit;
    sDBEdit10: TsDBEdit;
    sDBEdit11: TsDBEdit;
    sDBEdit12: TsDBEdit;
    sDBEdit13: TsDBEdit;
    Panel16: TPanel;
    sBitBtn4: TsBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure BTBaixaParcelaClick(Sender: TObject);
    procedure BTBaixaTotalClick(Sender: TObject);
    procedure BTBaixaParcialClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure ClienteEnter(Sender: TObject);
    procedure BTJurosClick(Sender: TObject);
    procedure BTPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TXColumn);
    procedure suiButton3Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton2Click(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    Procedure Selecao_Grade(Tipo : Integer);
    procedure XDBColumnsDialogApply(Sender: TObject);
    procedure NxPageControl1Change(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
  private
    { Private declarations }

  public
  Contador, Contador2,I,Int:Integer;
  X: Real;
 A,B,C,D,E,F: Real;
  end;

var
  FormCRCrediario: TFormCRCrediario;
  Data, DataVenc, DataAtual, diasVenc: TDateTime;
  dia, mes, ano: Word;
  TOT, Pert, TotPert, dias : Real;
  Q: Integer;
  T: Integer;
  X: Real;


implementation

uses ModulodeDadosBaixas, ConsClientes, ModulodeDados, Z_RotinasGerais,
  Acesso, ModulodeDadosRelatorios, Principal, RCConta,
  RCParcial, DetalhesCrediario, ModulodeDadosConsultas5,
  Itensdavenda, baixaCR, CrRecebido, FichaClientes;

{$R *.dfm}

function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;


Procedure TFormCRCrediario.Selecao_Grade(Tipo : Integer);
Begin
//DMCOB.CDS_COBRANCA1.DisableControls;
DMB.SDS_Crediario_Baixa.First;
While not DMB.SDS_Crediario_Baixa.Eof do
Begin
If Tipo = 1 then// Marcar todos
BEGIN
            DBGrid1.SelectedRows.CurrentRowSelected := True ;
            if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
              B:= B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
              C:= C + DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
              D:= D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
              E:= E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
              F:= F + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit3.Text:= FloatToStr(F);
              //  inc(iQuant);
            end;

end Else

If Tipo = 2 then  // Desmarcar todas
begin
      DBGrid1.SelectedRows.CurrentRowSelected := False ;
   if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A - DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
              B:= B - DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
              C:= C - DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
              D:= D - DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
              E:= E - DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
              F:= F + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit3.Text:= FloatToStr(F);
              //  inc(iQuant);
            end;
end Else
If Tipo = 3 then  // Alternar seleção
DBGrid1.SelectedRows.CurrentRowSelected := not DBGrid1.SelectedRows.CurrentRowSelected;
DMB.SDS_Crediario_Baixa.Next;
End;
DMB.SDS_Crediario_Baixa.First;
//DMCOB.CDS_COBRANCA1.EnableControls;
End;

procedure TFormCRCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 { DMB.SDS_Crediario_Baixa.Active:= False;
  DMB.SDS_Crediario_Baixa.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS order bY data_vencimento asc';
  DMB.SDS_Crediario_Baixa.Active:= True;
TRY
DMB.SDS_Crediario_Baixa1.first;
repeat
DMB.SDS_Crediario_Baixa1.edit;
DMB.SDS_Crediario_Baixa1CHEK_BOX.Value:='';
DMB.SDS_Crediario_Baixa1.Post;
DMB.SDS_Crediario_Baixa1.ApplyUpdates(0);
DMB.SDS_Crediario_Baixa1.Next;
until DMB.SDS_Crediario_Baixa1.eof;
DMB.SDS_Crediario_Baixa1.Refresh;
dbgrid1.refresh;
DMB.SDS_Crediario_Baixa1.first;
dbgrid1.cursor:=crdefault;
except
DMB.SDS_Crediario_Baixa1.cancel;
end;  }

Action:=CaFree;
FormCRCrediario:=nil;

end;

procedure TFormCRCrediario.FormShow(Sender: TObject);
begin
//NxPageControl1.SetPageIndex(NxTabSheet1, 0);
NxPageControl1.ActivePageIndex := 0;
DM.SDS_Clientes.Active:= False;
dm.SDS_Clientes.SQL.Clear;
DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'0'+'order by NOME_RS ASC');
DM.SDS_Clientes.Active:= True;

DMB.SDS_Crediario_Baixa.Active:= False;

BTBaixaParcial.Enabled:= False;
//BTBaixaParcela.Enabled:= False;
BTBaixaTotal.Enabled:= False;
BTJuros.Enabled:= False;
BTPrint.Enabled:= False;
Navigator.Enabled:= False;
DBGrid1.Enabled:= False;
RXLabel5.Caption:= '';
RXLabel6.Caption:= '';
RXLabel7.Caption:= '';
SuiButton2.Enabled := False;


Cliente.SetFocus;
if Cliente.Text > '' then
begin
  suiButton4.Click;
end;
end;


procedure TFormCRCrediario.NxPageControl1Change(Sender: TObject);
begin
If  Cliente.Text >'' then
BEGIN
if NxPageControl1.ActivePageIndex = 0 then
 begin
   suiButton4.Click;
 end;
 if NxPageControl1.ActivePageIndex = 1 then
 begin
    X:=0;
  RxLabel25.Caption :='';

 { DMB.SDS_Crediario_Baixa.Active:= False;
  DMB.SDS_Crediario_Baixa.DataSet.CommandText:='select * from v_crediario_recebido_1 order by data_baixa asc';
  DMB.SDS_Crediario_Baixa.Active:= True;   }


 { DMB.SDS_Crediario_Baixa.Close;
  DMB.SDS_Crediario_Baixa.SQL.Text :='select * from v_crediario_recebido_1 where CODIGO_CLIENTE =:CLI order by data_vencimento asc';
  DMB.SDS_Crediario_Baixa.Params.ParamByName('CLI').AsString := Cliente.Text;
  DMB.SDS_Crediario_Baixa.Open; }

 DMB.SDS_Crediario_Baixa.Close;
 DMB.Qry_Crediario.Close;
 DMB.Qry_Crediario.CommandText :='select * from crediario where situacao = ''F'' and CODIGO_CLIENTE =:CLI and cod_empresa =:cod_emp order by data_vencimento asc';
 DMB.Qry_Crediario.Params.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
 DMB.Qry_Crediario.Params.Parambyname('Cod_emp').AsInteger    := iemp;
 DMB.Qry_Crediario.Open;
 DMB.SDS_Crediario_Baixa.Open;

  DMB.SDS_Crediario_Baixa.First;
  X:= X + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
  DMB.SDS_Crediario_Baixa.Next;
  RXLabel25.Caption:= FormatFloat('R$: ##,##0.00',X);;
  While not DMB.SDS_Crediario_Baixa.Eof do
  begin
  X:= X + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
  DMB.SDS_Crediario_Baixa.Next;
  RXLabel25.Caption:= FormatFloat('R$: ##,##0.00',X);;
  DBGrid1.Enabled := True;
  end;
  DMB.Sds_Itens_venda.Open;
  CurrencyEdit15.Value := DMB.SDS_Crediario_Baixa.RecordCount;
 end;

 if NxPageControl1.ActivePageIndex = 2 then
 begin
   X:=0;
  RxLabel44.Caption :='';

 { DMB.SDS_Crediario_Baixa.Active:= False;
  DMB.SDS_Crediario_Baixa.DataSet.CommandText:='select * from v_crediario_recebido_1 order by data_baixa asc';
  DMB.SDS_Crediario_Baixa.Active:= True;   }


 { DMB.SDS_Crediario_Baixa.Close;
  DMB.SDS_Crediario_Baixa.SQL.Text :='select * from v_crediario_recebido_1 where CODIGO_CLIENTE =:CLI order by data_vencimento asc';
  DMB.SDS_Crediario_Baixa.Params.ParamByName('CLI').AsString := Cliente.Text;
  DMB.SDS_Crediario_Baixa.Open; }

 DMB.SDS_Crediario_Baixa.Close;
 DMB.Qry_Crediario.Close;
 DMB.Qry_Crediario.CommandText :='select * from crediario where situacao = ''P'' and CODIGO_CLIENTE =:CLI and cod_empresa =:cod_emp order by data_vencimento asc';
 DMB.Qry_Crediario.Params.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
 DMB.Qry_Crediario.Params.Parambyname('Cod_emp').AsInteger    := iemp;
 DMB.Qry_Crediario.Open;
 DMB.SDS_Crediario_Baixa.Open;

  DMB.SDS_Crediario_Baixa.First;
  X:= X + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
  DMB.SDS_Crediario_Baixa.Next;
  RXLabel44.Caption:= FormatFloat('R$: ##,##0.00',X);;
  While not DMB.SDS_Crediario_Baixa.Eof do
  begin
  X:= X + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
  DMB.SDS_Crediario_Baixa.Next;
  RXLabel44.Caption:= FormatFloat('R$: ##,##0.00',X);;
  DBGrid1.Enabled := True;
  end;
  DMB.Sds_Itens_venda.Open;
  CurrencyEdit24.Value := DMB.SDS_Crediario_Baixa.RecordCount;
  end;
END;
end;

procedure TFormCRCrediario.ClienteButtonClick(Sender: TObject);
begin

    if Cliente.Text = '' then
    begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;
    end;

    if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if Cliente.Text >'' then
     begin
      FormConsClientes.Edit1.Text := Cliente.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
      FormConsClientes.Tag := 1;
      FormConsClientes.ShowModal;

      Cliente.Clear;
      Cliente.Text      := RemoveChar(DM.SDS_ClientesCODIGO.Text);

      //ClienteChange(Sender);
      RXLabel5.Caption  := DM.SDS_ClientesCODIGO.Text;
      RXLabel6.Caption  := DM.SDS_ClientesNOME_RS.Text;
      RXLabel7.Caption  := DM.SDS_ClientesCPF_CNPJ.Text;

      Application.ProcessMessages;


      Edit2.Text :='NUMEROS';
      suiButton4.Click;

      if  DMb.SDS_Crediario_Baixa.Eof then
      begin
       FormPrincipal.MsgInformacao.HTMLText.Text := 'Cliente Sem Contas a Receber!';
       FormPrincipal.MsgInformacao.Execute;
       Cliente.SetFocus;
      end;

    end;

{DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;

  DMB.SDS_Crediario_Baixa.Active:= False;
  DMB.SDS_Crediario_Baixa.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS';
  DMB.SDS_Crediario_Baixa.Active:= True;
  DMB.SDS_Crediario_Baixa1.Active:= False;
  DMB.SDS_Crediario_Baixa1.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS';
  DMB.SDS_Crediario_Baixa1.Active:= True;

      If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[]);
DMB.SDS_Crediario_Baixa.Active:= TRUE;
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;
DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For T:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediario.Navigator.Enabled:= False;
FormCRCrediario.BTBaixaParcial.Enabled:= False;
FormCRCrediario.BTBaixaTotal.Enabled:= False;
FormCRCrediario.BTBaixaParcela.Enabled:= False;
FormCRCrediario.BTPrint.Enabled:= False;
FormCRCrediario.BTJuros.Enabled:= False;
FormCRCrediario.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediario.Navigator.Enabled:= True;
FormCRCrediario.BTBaixaParcial.Enabled:= True;
FormCRCrediario.BTBaixaTotal.Enabled:= True;
FormCRCrediario.BTBaixaParcela.Enabled:= True;
FormCRCrediario.DBGrid1.Enabled:= True;
FormCRCrediario.BTPrint.Enabled:= True;
FormCRCrediario.BTJuros.Enabled:= True;
end;
end;  }

//suiButton3.SetFocus;
//DBGrid1.SetFocus;

{
RxLabel8.Caption :='';

  If  Cliente.Text >'' then
  BEGIN
 { DMB.SDS_Crediario_Baixa.Active:= False;
  DMB.SDS_Crediario_Baixa.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS order by data_vencimento asc';
  DMB.SDS_Crediario_Baixa.Active:= True;
 { DMB.SDS_Crediario_Baixa1.Active:= False;
  DMB.SDS_Crediario_Baixa1.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS order by data_vencimento asc';
  DMB.SDS_Crediario_Baixa1.Active:= True;   }


 {
 DMB.SDS_Crediario_Baixa.Close;
 DMB.Qry_Crediario.Close;
 DMB.Qry_Crediario.CommandText :='select * from CREDIARIO where CODIGO_CLIENTE =:CLI order by data_vencimento asc';
 DMB.Qry_Crediario.Params.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
 DMB.Qry_Crediario.Open;
 DMB.SDS_Crediario_Baixa.Open;

  CurrencyEdit6.Value := DMB.SDS_Crediario_Baixa.RecordCount;

  RadioButton1.Checked := False;
  BTBaixaParcela.Enabled := True;
  BTBaixaTotal.Enabled := true;
  BTBaixaParcial.Enabled := True;
  BTJuros.Enabled := True;
  suiButton1.Enabled := true;

If  Cliente.Text='' then
    Begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Cliente não localizado';
    FormPrincipal.MsgInformacao.Execute;
    Cliente.SetFocus;
    end else
X:= 0;
//DM.SDS_Cliente.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
//DM.SDS_Cliente.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;


if not DMb.SDS_Crediario_Baixa.Eof then
begin
DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DiasVenc := DataAtual - DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.Asdatetime;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
dias := DiasVenc;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Params[5].value := dias;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;

DMB.SDS_Crediario_Baixa.Active:= False;
//DMB.SDS_Crediario_Baixa1.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
//DMB.SDS_Crediario_Baixa1.Active:= True;

DMB.SDS_Crediario_Baixa.First;
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
BTBaixaParcial.Enabled:= False;
BTBaixaTotal.Enabled:= False;
BTBaixaParcela.Enabled:= False;
BTPrint.Enabled:= False;
BTJuros.Enabled:= False;
DBGrid1.Enabled:= False;
end else
begin
BTBaixaParcial.Enabled:= True;
BTBaixaTotal.Enabled:= True;
BTBaixaParcela.Enabled:= True;
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
BTJuros.Enabled:= True;
end;    }
{end
else
begin
    Cliente.color:= clWhite;
    MessageLocCli.ShowModal;
    if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
      end;
    If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[]);
DMB.SDS_Crediario_Baixa.Active:= TRUE;
RXLabel5.Caption:= DM.SDS_ClientescODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesnOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientescPF_CNPJ.Text;

DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa1.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa1.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
BTBaixaParcial.Enabled:= False;
BTBaixaTotal.Enabled:= False;
BTBaixaParcela.Enabled:= False;
BTPrint.Enabled:= False;
BTJuros.Enabled:= False;
DBGrid1.Enabled:= False;
end else
begin
Navigator.Enabled:= True;
BTBaixaParcial.Enabled:= True;
BTBaixaTotal.Enabled:= True;
BTBaixaParcela.Enabled:= True;
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
BTJuros.Enabled:= True;
end;
end;
end;}
CorSaida(Sender);
RadioButton2.Checked := False;
RadioButton3.Checked := False;

{try
dbgrid1.cursor:=crhourglass;
DMB.SDS_Crediario_Baixa1.first;
repeat
DMB.SDS_Crediario_Baixa1.edit;
DMB.SDS_Crediario_Baixa1CHEK_BOX.Value:='F';
DMB.SDS_Crediario_Baixa1.Post;
DMB.SDS_Crediario_Baixa1.ApplyUpdates(0);
DMB.SDS_Crediario_Baixa1.Next;
until DMB.SDS_Crediario_Baixa1.eof;
DMB.SDS_Crediario_Baixa1.refresh;
DMB.SDS_Crediario_Baixa.refresh;
dbgrid1.refresh;
DMB.SDS_Crediario_Baixa1.first;
dbgrid1.cursor:=crdefault;
except
DMB.SDS_Crediario_Baixa1.cancel;
DMB.SDS_Crediario_Baixa.Refresh;
end; }


 {  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''F'' WHERE SITUACAO = ''A'' AND CODIGO_CLIENTE =:VENDA';
            Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
   DMB.SDS_Crediario_Baixa.Refresh;
DBGrid1.Refresh;


   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_COMPRA) AS COMPRA from CREDIARIO where DATA_VENCIMENTO <=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   total_v.Open;

   CurrencyEdit9.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;


   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_COMPRA) as COMPRA from CREDIARIO where DATA_VENCIMENTO >=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   total_v.Open;
   CurrencyEdit8.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;

CurrencyEdit1.Clear;
CurrencyEdit2.Clear;
CurrencyEdit3.Clear;
CurrencyEdit4.Clear;
CurrencyEdit5.Clear;

DBGrid1.SetFocus;
end;
end;  }
end;



procedure TFormCRCrediario.BTBaixaParcelaClick(Sender: TObject);
begin
  Try
if FormCrRecebido =nil   then
    begin
      FormCrRecebido:=TFormCrRecebido.Create(self);
      FormCrRecebido.ShowModal;
     // ClienteExit(Sender);
      suiButton4Click(sender);

    Totais.Close;
    Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
    Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
    Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
    Totais.Open;
    // Total1 := Totais.FieldByName('SUM').AsFloat;
    CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
    CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
    CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
    CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
    CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
    CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
    Totais.close;
    DMB.SDS_Crediario_Baixa.Filtered := false;
      end;
       except

    //   ShowMessage('Erro ao tentar exibir o formulário!!');
end;


end;

procedure TFormCRCrediario.BTBaixaTotalClick(Sender: TObject);
begin

  FormRCConta:=TFormRCConta.Create(self);
  FormRCConta.Tag := 1;
  FormRCConta.ShowModal;

{CurrencyEdit1.Value:= 0;
CurrencyEdit2.Value:= 0;
CurrencyEdit3.Value:= 0;
CurrencyEdit4.Value:= 0;
CurrencyEdit5.Value:= 0;
CurrencyEdit6.Value:= 0;
CurrencyEdit7.Value:= 0;
CurrencyEdit8.Value:= 0;
CurrencyEdit9.Value:= 0;

   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_COMPRA) AS COMPRA from CREDIARIO where DATA_VENCIMENTO <=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   total_v.open;

   CurrencyEdit9.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;


   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_COMPRA) as COMPRA from CREDIARIO where DATA_VENCIMENTO >=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   total_v.Open;
   CurrencyEdit8.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;
    Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   Totais.Open;

  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;  }
  DMB.SDS_Crediario_Baixa.Filtered := false;

   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as VALOR_TOTAL from CREDIARIO where CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := iemp;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Totais.FieldByName('VALOR_TOTAL').AsFloat);

end;

procedure TFormCRCrediario.BTBaixaParcialClick(Sender: TObject);
begin
FormRCParcial:=TFormRCParcial.Create(self);
FormRCParcial.Tag := 1;
FormRCParcial.ShowModal;

  suiButton4Click(Sender);
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
f:= 0;
CurrencyEdit1.Value:= 0;
CurrencyEdit2.Value:= 0;
CurrencyEdit3.Value:= 0;
CurrencyEdit4.Value:= 0;
CurrencyEdit5.Value:= 0;
CurrencyEdit6.Value:= 0;
CurrencyEdit7.Value:= 0;
CurrencyEdit8.Value:= 0;
CurrencyEdit9.Value:= 0;

  { total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_COMPRA) AS COMPRA from CREDIARIO where DATA_VENCIMENTO <=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   total_v.open;

   CurrencyEdit9.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;


   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_COMPRA) as COMPRA from CREDIARIO where DATA_VENCIMENTO >=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   total_v.Open;
   CurrencyEdit8.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;

    Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;  }
  DMB.SDS_Crediario_Baixa.Filtered := false;

   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as VALOR_TOTAL from CREDIARIO where CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := iemp;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Totais.FieldByName('VALOR_TOTAL').AsFloat);
end;

procedure TFormCRCrediario.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCRCrediario.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCRCrediario.Edit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCRCrediario.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCRCrediario.Edit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCRCrediario.Edit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCRCrediario.ClienteEnter(Sender: TObject);
begin
 CorEntrada(Sender);

end;

procedure TFormCRCrediario.BTJurosClick(Sender: TObject);
var
X: Real;
Int: Integer;
begin
IF FormPrincipal.OrotRemJurosCre = 'S' THEN
BEGIN
if Application.MESSAGEBOX('Confirma a Remoção dos Juros?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
{DMB.SDS_Crediario_Baixa.First;
Contador2:= DMB.SDS_Crediario_Baixa.RecordCount;
For Int:=1 to Contador2 do
begin
SPC_Atualiza.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
SPC_Atualiza.Params[2].Value:= 0 ;
SPC_Atualiza.Params[3].Value:= 0 ;
SPC_Atualiza.Execproc;
DMB.SDS_Crediario_Baixa.Next;}

   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.FConsulta do
      begin
         close;
         COMMANDTEXT.Clear;
         COMMANDTEXT.Text:= 'update crediario set VALOR_JUROS = 0, VALOR_ACRESCIMO = 0 WHERE SITUACAO = ''A'' AND CODIGO_CLIENTE =:VENDA AND COD_EMPRESA =:COD_EMP';
            Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
            Parambyname('COD_EMP').AsInteger    := IEMP;
         OPEN;
      end;
   dm.IBTransaction.Commit;
   dm.FConsulta.Close;
   DMB.SDS_Crediario_Baixa.Refresh;


     DMB.SDS_Crediario_Baixa.Close;
     DMB.Qry_Crediario.Close;
     DMB.Qry_Crediario.CommandText :='select * from CREDIARIO where CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' AND COD_EMPRESA =:COD_EMP order by data_vencimento asc';
     DMB.Qry_Crediario.Params.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
     DMB.Qry_Crediario.Params.Parambyname('COD_EMP').AsInteger    := IEMP;
     DMB.Qry_Crediario.Open;
     DMB.SDS_Crediario_Baixa.Open;
     DMB.SDS_Crediario_Baixa.Refresh;

DMB.SDS_Crediario_Baixa.First;
X:=0;
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
end;

{DMB.SDS_Crediario_Baixa1.Refresh;
DMB.SDS_Crediario_Baixa1.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
A:= A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
B:= B + DMB.SDS_Crediario_Baixa1VALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
C:= C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
D:= D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
E:= E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not DMB.SDS_Crediario_Baixa1.Eof do
begin
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
A:= A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
B:= B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
C:= C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
D:= D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
E:= E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);

end;
DMB.SDS_Crediario_Baixa1.first;
DMB.SDS_Crediario_Baixa1.Refresh;
DMB.SDS_Crediario_Baixa.Refresh;     }

   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;

end;

end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormCRCrediario.BTPrintClick(Sender: TObject);
begin
IF FormPrincipal.RContasReceber = 'S' THEN
BEGIN
       FormFichaClie := TFormFichaClie.Create(self);
       FormFichaClie.SHOWMODAL;
end else
begin
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormCRCrediario.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then
begin
close;
end;

end;


procedure TFormCRCrediario.DBGrid1DblClick(Sender: TObject);
begin
Try
if FormDetCrediario=nil   then
    begin
     FormDetCrediario:=TFormDetCrediario.Create(self);
      FormDetCrediario.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;

procedure TFormCRCrediario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
   if (Key=VK_F2) then
      begin
      Cliente.SetFocus;
     // ClienteButtonClick(Sender);
      end;
end;

procedure TFormCRCrediario.suiButton1Click(Sender: TObject);
begin
{TRY
if FormBoletosBanc=nil   then
    begin
    FormBoletosBanc := TFormBoletosBanc.Create(self);
      FormBoletosBanc.Show;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end; }
end;

procedure TFormCRCrediario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
 Var
  Check: Integer;
    R: TRect;
    DtVen: TDateTime;
begin

DtVen:= DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Value;
If DtVen < Date then
Dbgrid1.Canvas.Font.Color:= clRed;
If DtVen >= Date then
Dbgrid1.Canvas.Font.Color:= clBlack;
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);


  if not odd(DMB.SDS_Crediario_Baixa.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := $00FDE2BD; //$00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
   end; 

  if (Column.Field.FieldName = 'CHEK_BOX') and (not (gdFixed in State)) then
   begin
  // Desenha um campo em branco
  Dbgrid1.Canvas.FillRect(Rect);

  // Testa de a linha está selecionada ou não
  if Dbgrid1.SelectedRows.IndexOf(Dbgrid1.DataSource.DataSet.Bookmark) >= 0 then
    DrawFrameControl(Dbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
  else
    DrawFrameControl(Dbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
  end;

    //Desenha um checkbox no dbgrid
{   if column.FieldName = 'CHEK_BOX' then
    begin
    DBGrid1.Canvas.FillRect(Rect);
    Check := 0;
    if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
    Check := DFCS_CHECKED
    else Check := 0;
    R:=Rect;
    InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
    DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;  }

{  IF Column.Field = DMB.SDS_Crediario_BaixaDATA_VENCIMENTO THEN
  begin
  DtVen:= DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Value;
  If DtVen < Date then
  //Dbgrid1.Canvas.Font.Style := Dbgrid1.Canvas.Font.Style + [fsbold];
  Dbgrid1.Canvas.Font.Color := clRed;
  If DtVen >= Date then
  //Dbgrid1.Canvas.Font.Style := Dbgrid1.Canvas.Font.Style + [fsbold];
  Dbgrid1.Canvas.Font.Color := clBlack;
  Dbgrid1.DefaultDrawDataCell(Rect, Column.field, State);
 end;  }
end;

procedure TFormCRCrediario.DBGrid1CellClick(Column: TXColumn);
begin
{DMB.SDS_Crediario_Baixa.Edit;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
DMB.SDS_Crediario_BaixaCHEK_BOX.AsString := 'F'
else DMB.SDS_Crediario_BaixaCHEK_BOX.AsString := 'T';
DMB.SDS_Crediario_Baixa.Post;
DMB.SDS_Crediario_Baixa.ApplyUpdates(0); }

{if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''F'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DMB.SDS_Crediario_Baixacodigo.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
//DM.sds_vendasCHEK_BOX.AsString := 'F'
end else
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''T'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DMB.SDS_Crediario_Baixacodigo.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
 end;
   DMB.SDS_Crediario_Baixa.Refresh;
   DBGrid1.refresh;      }


          DBGrid1.SelectedRows.CurrentRowSelected := not DBGrid1.SelectedRows.CurrentRowSelected;
         if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
              B:= B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
              C:= C + DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
              D:= D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
              E:= E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit3.Text:= FloatToStr(F);
              //  inc(iQuant);
            end else
            begin
              A:= A - DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
              B:= B - DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
              C:= C - DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
              D:= D - DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
              E:= E - DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit3.Text:= FloatToStr(F);
            end;

 {  Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;  }
{
DMB.SDS_Crediario_Baixa1.Refresh;
DMB.SDS_Crediario_Baixa1.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
A:= A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
B:= B + DMB.SDS_Crediario_Baixa1VALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
C:= C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
D:= D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
E:= E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not DMB.SDS_Crediario_Baixa1.Eof do
begin
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
A:= A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
B:= B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
C:= C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
D:= D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
E:= E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
end;
DMB.SDS_Crediario_Baixa1.first;
DMB.SDS_Crediario_Baixa1.Refresh; }
end; 

procedure TFormCRCrediario.suiButton3Click(Sender: TObject);
begin
TRY
if FormItensVenda=nil   then
    begin
    FormItensVenda := TFormItensVenda.Create(self);
      FormItensVenda.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormCRCrediario.RadioButton3Click(Sender: TObject);
begin
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
F:= 0;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit5.Text:= FloatToStr(F);

 {  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''T'' WHERE SITUACAO = ''A'' AND CODIGO_CLIENTE =:VENDA';
            Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
   DMB.SDS_Crediario_Baixa.Refresh;
DBGrid1.Refresh;  }

{DMB.SDS_Crediario_Baixa1.Refresh;
DMB.SDS_Crediario_Baixa1.First;
FormCRCrediario.A:= 0;
FormCRCrediario.B:= 0;
FormCRCrediario.C:= 0;
FormCRCrediario.D:= 0;
FormCRCrediario.E:= 0;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.A:= FormCRCrediario.A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.B:= FormCRCrediario.B + DMB.SDS_Crediario_Baixa1VALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.C:= FormCRCrediario.C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.D:= FormCRCrediario.D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.E:= FormCRCrediario.E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.Next;
FormCRCrediario.CurrencyEdit1.Text:= FloatToStr(A);
FormCRCrediario.CurrencyEdit2.Text:= FloatToStr(B);
FormCRCrediario.CurrencyEdit3.Text:= FloatToStr(C);
FormCRCrediario.CurrencyEdit4.Text:= FloatToStr(D);
FormCRCrediario.CurrencyEdit5.Text:= FloatToStr(E);
While not DMB.SDS_Crediario_Baixa1.Eof do
begin
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.A:= FormCRCrediario.A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.B:= FormCRCrediario.B + DMB.SDS_Crediario_Baixa1VALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.C:= FormCRCrediario.C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.D:= FormCRCrediario.D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
FormCRCrediario.E:= FormCRCrediario.E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.next;
FormCRCrediario.CurrencyEdit1.Text:= FloatToStr(A);
FormCRCrediario.CurrencyEdit2.Text:= FloatToStr(B);
FormCRCrediario.CurrencyEdit3.Text:= FloatToStr(C);
FormCRCrediario.CurrencyEdit4.Text:= FloatToStr(D);
FormCRCrediario.CurrencyEdit5.Text:= FloatToStr(E);
end;
DMB.SDS_Crediario_Baixa1.first;
DMB.SDS_Crediario_Baixa1.Refresh;
DMB.SDS_Crediario_Baixa.Refresh;  }

Selecao_Grade(1);


if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
BTBaixaParcial.Enabled:= False;
BTBaixaTotal.Enabled:= False;
BTBaixaParcela.Enabled:= False;
BTPrint.Enabled:= False;
BTJuros.Enabled:= False;
DBGrid1.Enabled:= False;
end else
begin
BTBaixaParcial.Enabled:= True;
BTBaixaTotal.Enabled:= True;
BTBaixaParcela.Enabled:= True;
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
BTJuros.Enabled:= True;
end;

 {  Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'''; // and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
//   Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;  }

end;

procedure TFormCRCrediario.RadioButton2Click(Sender: TObject);
begin
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
f:= 0;


              Selecao_Grade(2);

  { if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''F'' WHERE SITUACAO = ''A'' AND CODIGO_CLIENTE =:VENDA';
            Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;    }

DMB.SDS_Crediario_Baixa.Refresh;
DBGrid1.Refresh;

CurrencyEdit1.Clear;
CurrencyEdit2.Clear;
CurrencyEdit3.Clear;
CurrencyEdit4.Clear;
CurrencyEdit5.Clear;

DMB.SDS_Crediario_Baixa.Refresh;
end;

procedure TFormCRCrediario.DBGrid1Enter(Sender: TObject);
begin
//FormCRCrediario.KeyPreview := False;
end;

procedure TFormCRCrediario.DBGrid1Exit(Sender: TObject);
begin
//FormCRCrediario.KeyPreview := True;
end;

procedure TFormCRCrediario.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#27, #8,#32,#13, 'a'..'z', 'A'..'Z',  '0'..'9'])then
begin
ShowMessage(key+ ' é um caracter inválido, digite apenas letras ou números');
key := #0;
end;

if Key=#13 then
begin
   If  Cliente.Text >'' then
  BEGIN

 Application.ProcessMessages;

 suiButton4.Click;

 Application.ProcessMessages;

CurrencyEdit6.Value := DMB.SDS_Crediario_Baixa.RecordCount;

if  DMb.SDS_Crediario_Baixa.Eof then
begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Cliente Sem Contas a Receber!';
    FormPrincipal.MsgInformacao.Execute;
Cliente.SetFocus;
end;
end;
end;
end;


procedure TFormCRCrediario.suiButton2Click(Sender: TObject);
begin

if FormBaixas =nil   then
    begin

   {  FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected := not FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected;
     if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = true then
     begin
       DMB.SDS_Crediario_Baixa.Filtered := false;
      // DMB.SDS_Crediario_Baixa.Filter := FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = true;
       DMB.SDS_Crediario_Baixa.Filtered := True;
     end;  }

      FormBaixas:=TFormBaixas.Create(self);
      FormBaixas.tag := 1;
      FormBaixas.ShowModal;


        CurrencyEdit1.Value:= 0;
        CurrencyEdit2.Value:= 0;
        CurrencyEdit3.Value:= 0;
        CurrencyEdit4.Value:= 0;
        CurrencyEdit5.Value:= 0;
        CurrencyEdit6.Value:= 0;
        CurrencyEdit7.Value:= 0;
        CurrencyEdit8.Value:= 0;
        CurrencyEdit9.Value:= 0;
       Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as VALOR_TOTAL from CREDIARIO where CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := iemp;
   Totais.Open;
   // Total1 := Totais.FieldByName('SUM').AsFloat;
   RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Totais.FieldByName('VALOR_TOTAL').AsFloat);

   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_COMPRA) AS COMPRA from CREDIARIO where DATA_VENCIMENTO <=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := IEMP;
   total_v.open;

   CurrencyEdit9.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;


   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_COMPRA) as COMPRA from CREDIARIO where DATA_VENCIMENTO >=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := IEMP;
   total_v.Open;
   CurrencyEdit8.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;
    Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := IEMP;
   Totais.Open;

  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;
//  DMB.SDS_Crediario_Baixa.Filtered := false;

      end;
end;

procedure TFormCRCrediario.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text <='Z') THEN
begin
EDIT2.Text :='LETRAS';
end else
IF (Cliente.Text>='0') AND (Cliente.Text <='9') THEN
begin
EDIT2.Text:='NUMEROS';
end;
IF Cliente.Text='' THEN
begin
EDIT2.Text:=''
end;
end;

procedure TFormCRCrediario.suiButton4Click(Sender: TObject);

begin
RxLabel8.Caption :='';


CurrencyEdit1.Value:= 0;
CurrencyEdit2.Value:= 0;
CurrencyEdit3.Value:= 0;
CurrencyEdit4.Value:= 0;
CurrencyEdit5.Value:= 0;
CurrencyEdit6.Value:= 0;
CurrencyEdit7.Value:= 0;
CurrencyEdit8.Value:= 0;
CurrencyEdit9.Value:= 0;

If  Cliente.Text >'' then
BEGIN
    ClienteChange(Sender);
    Application.ProcessMessages;

    if edit2.Text = 'LETRAS' THEN
    BEGIN
    ClienteButtonClick(sender);
    end else

    IF EDIT2.Text = 'NUMEROS' THEN
    BEGIN
     DMB.SDS_Crediario_Baixa.Close;
     DMB.Qry_Crediario.Close;
     DMB.Qry_Crediario.CommandText :='select * from CREDIARIO where CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' AND COD_EMPRESA =:COD_EMP order by data_vencimento asc';
     DMB.Qry_Crediario.Params.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
     DMB.Qry_Crediario.Params.Parambyname('COD_EMP').AsInteger    := IEMP;
     DMB.Qry_Crediario.Open;
     DMB.SDS_Crediario_Baixa.Open;

      CurrencyEdit6.Value := DMB.SDS_Crediario_Baixa.RecordCount;


      BTBaixaParcela.Enabled := True;
      BTBaixaTotal.Enabled := true;
      BTBaixaParcial.Enabled := True;
      BTJuros.Enabled := True;

      X:= 0;
      //DM.SDS_Cliente.Active:= False;
      DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
     //DM.SDS_Cliente.Active:= True;
      DMB.SDS_CREDIARIO_VENCIDO.Active:= True;

      DMB.Sds_Itens_venda.Open;

      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.ADD('select * from clientes where CODIGO = ' + Cliente.Text + ' order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;

      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar (Cliente.Text),[]);

     //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));

    //  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

    IF ACHOU=FALSE THEN
    SHOWMESSAGE('Codigo do Cliente Não Localizado');

    IF ACHOU=TRUE THEN
    RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
    RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
    RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;
    end;

if not DMb.SDS_Crediario_Baixa.Eof then
begin
DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DiasVenc := DataAtual - DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.Asdatetime;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
dias := DiasVenc;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);

//ShowMessage('PERCETUAL TOTAL '+ FloatToStr(TotPert)+  ' PERC '+FloatToStr(Pert)+ ' DIAS '+FloatToStr(DIAS));

DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Params[5].value := dias;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;

{DMB.SDS_Crediario_Baixa.Active:= False;

//DMB.SDS_Crediario_Baixa1.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
//DMB.SDS_Crediario_Baixa1.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMB.SDS_Crediario_Baixa.First;
}

   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as VALOR_TOTAL from CREDIARIO where CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := iemp;
   Totais.Open;
   // Total1 := Totais.FieldByName('SUM').AsFloat;
   RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Totais.FieldByName('VALOR_TOTAL').AsFloat);


    DMb.SDS_Crediario_Baixa.Refresh;

if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
BTBaixaParcial.Enabled:= False;
BTBaixaTotal.Enabled:= False;
BTBaixaParcela.Enabled:= False;
BTPrint.Enabled:= False;
BTJuros.Enabled:= False;
DBGrid1.Enabled:= False;
end else
begin
BTBaixaParcial.Enabled:= True;
BTBaixaTotal.Enabled:= True;
BTBaixaParcela.Enabled:= True;
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
BTJuros.Enabled:= True;
end;
{end
else
begin
    Cliente.color:= clWhite;
    MessageLocCli.ShowModal;
    if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
      end;
    If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[]);
DMB.SDS_Crediario_Baixa.Active:= TRUE;
RXLabel5.Caption:= DM.SDS_ClientescODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesnOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientescPF_CNPJ.Text;

DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa1.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa1.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
BTBaixaParcial.Enabled:= False;
BTBaixaTotal.Enabled:= False;
BTBaixaParcela.Enabled:= False;
BTPrint.Enabled:= False;
BTJuros.Enabled:= False;
DBGrid1.Enabled:= False;
end else
begin
Navigator.Enabled:= True;
BTBaixaParcial.Enabled:= True;
BTBaixaTotal.Enabled:= True;
BTBaixaParcela.Enabled:= True;
DBGrid1.Enabled:= True;
BTPrint.Enabled:= True;
BTJuros.Enabled:= True;
end;
end;
end;}
CorSaida(Sender);
RadioButton2.Checked := False;
RadioButton3.Checked := False;

{try
dbgrid1.cursor:=crhourglass;
DMB.SDS_Crediario_Baixa1.first;
repeat
DMB.SDS_Crediario_Baixa1.edit;
DMB.SDS_Crediario_Baixa1CHEK_BOX.Value:='F';
DMB.SDS_Crediario_Baixa1.Post;
DMB.SDS_Crediario_Baixa1.ApplyUpdates(0);
DMB.SDS_Crediario_Baixa1.Next;
until DMB.SDS_Crediario_Baixa1.eof;
DMB.SDS_Crediario_Baixa1.refresh;
DMB.SDS_Crediario_Baixa.refresh;
dbgrid1.refresh;
DMB.SDS_Crediario_Baixa1.first;
dbgrid1.cursor:=crdefault;
except
DMB.SDS_Crediario_Baixa1.cancel;
DMB.SDS_Crediario_Baixa.Refresh;
end; }

  // if dm.IBTransaction.Active then
  //    dm.IBTransaction.Commit;
 //  dm.IBTransaction.StartTransaction;
{   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''F'' WHERE SITUACAO = ''A'' AND CODIGO_CLIENTE =:CLI';
            Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
         ExecSQL;
      end;
  //  dm.IBTransaction.Commit;
   //  dm.QConsulta.Close;      }



   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_TOTAL) AS COMPRA from CREDIARIO where DATA_VENCIMENTO <=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := IEMP;
   total_v.open;

   CurrencyEdit9.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;


   total_v.Close ;
   total_v.SQL.clear;
   total_v.SQL.Text := 'select SUM(VALOR_TOTAL) as COMPRA from CREDIARIO where DATA_VENCIMENTO >=:DATA and DATA_BAIXA is null and' +
   ' CODIGO_CLIENTE =:VENDA AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   total_v.ParamByName('DATA').AsDate := date;
   total_v.Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
   total_v.ParamByName('CODEMP').AsInteger := IEMP;
   total_v.Open;
   CurrencyEdit8.Value := total_v.FieldByName('COMPRA').AsFloat;
   total_v.Close;

CurrencyEdit1.Clear;
CurrencyEdit2.Clear;
CurrencyEdit3.Clear;
CurrencyEdit4.Clear;
CurrencyEdit5.Clear;
DMB.SDS_Crediario_Baixa.Refresh;
DBGrid1.Refresh;
DBGrid1.SetFocus;
end;
//DMB.Sds_Itens_venda.Open;
end;
CurrencyEdit1.Value := 1;
CurrencyEdit1.Value := 0;
end;

procedure TFormCRCrediario.XDBColumnsDialogApply(Sender: TObject);
begin
//   DBGrid1.StretchMode := FStretch.Checked;    { Apply your settings }
 // StretchModeCheckBox.Checked := DBGrid1.StretchMode;
end;

procedure TFormCRCrediario.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn; State: TGridDrawState);
begin
   if not odd(DMB.SDS_Crediario_Baixa.RecNo) then
  if not (gdselected in State) then
    begin
    xDBGrid1.Canvas.Brush.Color := $00FDE2BD; //$00FFEFDF;
    xDBGrid1.Canvas.FillRect(Rect);
    xDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
   end;
end;

procedure TFormCRCrediario.ClienteExit(Sender: TObject);
begin
//suiButton4.SetFocus;
{ If  Cliente.Text >'' then
  BEGIN
suiButton4Click(Sender);
end;}
CurrencyEdit1.Value := 0;
end;

procedure TFormCRCrediario.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
{DMB.SDS_Crediario_Baixa.Edit;
if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
DMB.SDS_Crediario_BaixaCHEK_BOX.AsString := 'F'
else DMB.SDS_Crediario_BaixaCHEK_BOX.AsString := 'T';
DMB.SDS_Crediario_Baixa.Post;
DMB.SDS_Crediario_Baixa.ApplyUpdates(0);}
{if DMB.SDS_Crediario_BaixaCHEK_BOX.AsString = 'T' then
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''F'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DMB.SDS_Crediario_Baixacodigo.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
//DM.sds_vendasCHEK_BOX.AsString := 'F'
end else
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''T'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DMB.SDS_Crediario_Baixacodigo.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
 end;
   DMB.SDS_Crediario_Baixa.refresh;
   DBGrid1.refresh;  }



         DBGrid1.SelectedRows.CurrentRowSelected := not DBGrid1.SelectedRows.CurrentRowSelected;
         if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
              B:= B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
              C:= C + DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
              D:= D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
              E:= E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
              F:= F + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit3.Text:= FloatToStr(F);
              //  inc(iQuant);
            end else
            begin
              A:= A - DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
              B:= B - DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
              C:= C - DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
              D:= D - DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
              E:= E - DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
              F:= F + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit3.Text:= FloatToStr(F);
            end;



  { Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;       }
{//DMB.SDS_Crediario_Baixa.Refresh;
DMB.SDS_Crediario_Baixa1.Refresh;
DMB.SDS_Crediario_Baixa1.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
A:= A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
B:= B + DMB.SDS_Crediario_Baixa1VALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
C:= C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
D:= D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
E:= E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not DMB.SDS_Crediario_Baixa1.Eof do
begin
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
A:= A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
B:= B + DMB.SDS_Crediario_Baixa1VALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
C:= C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
D:= D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
E:= E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
end;
DMB.SDS_Crediario_Baixa1.first;
DMB.SDS_Crediario_Baixa1.Refresh;    }

end;
end;

procedure TFormCRCrediario.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_space then
begin

         DBGrid1.SelectedRows.CurrentRowSelected := not DBGrid1.SelectedRows.CurrentRowSelected;
         if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
              B:= B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
              C:= C + DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
              D:= D + DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
              E:= E + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
              F:= F + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit3.Text:= FloatToStr(F);
              //  inc(iQuant);
            end else
            begin
              A:= A - DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
              B:= B - DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
              C:= C - DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
              D:= D - DMB.SDS_Crediario_BaixaVALOR_PAGO.AsFloat;
              E:= E - DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
              F:= F + DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit7.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              CurrencyEdit3.Text:= FloatToStr(F);
            end;



{  Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Cliente.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;  }
{//DMB.SDS_Crediario_Baixa.Refresh;
DMB.SDS_Crediario_Baixa1.Refresh;
DMB.SDS_Crediario_Baixa1.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
A:= A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
B:= B + DMB.SDS_Crediario_Baixa1VALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
C:= C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
D:= D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
E:= E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not DMB.SDS_Crediario_Baixa1.Eof do
begin
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
A:= A + DMB.SDS_Crediario_Baixa1VALOR_COMPRA.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
B:= B + DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
C:= C + DMB.SDS_crediario_baixa1VALOR_ACRESCIMO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
D:= D + DMB.SDS_Crediario_Baixa1VALOR_PAGO.AsFloat;
if DMB.SDS_Crediario_Baixa1CHEK_BOX.AsString = 'T' then
E:= E + DMB.SDS_Crediario_Baixa1VALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa1.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
end;
DMB.SDS_Crediario_Baixa1.first;
DMB.SDS_Crediario_Baixa1.Refresh; }
end;
end;

procedure TFormCRCrediario.CurrencyEdit1Change(Sender: TObject);
begin
IF CurrencyEdit1.Value = 0 then
begin
 // BTBaixaParcela.Enabled := False;
  BTBaixaTotal.Enabled := False;
  BTBaixaParcial.Enabled := False;
  suiButton2.Enabled := False;
end else
 IF CurrencyEdit1.Value > 0 then
begin
 // BTBaixaParcela.Enabled := False;
  BTBaixaTotal.Enabled := True;
  BTBaixaParcial.Enabled := True;
  suiButton2.Enabled := True;
end;
end;


procedure TFormCRCrediario.sBitBtn1Click(Sender: TObject);
begin
if Application.MESSAGEBOX('Confirma Setar este cliente como não Recebível?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.recebivel = 1 WHERE SITUACAO = ''A'' AND CODIGO_CLIENTE =:VENDA';
            Parambyname('VENDA').AsInteger    := StrToInt(Cliente.TEXT);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
   DMB.SDS_Crediario_Baixa.Refresh;
end;
end;


procedure TFormCRCrediario.sBitBtn4Click(Sender: TObject);
var
  Clie: String;
  Cli3: String;
begin
IF FormPrincipal.RContasReceber = 'S' THEN
BEGIN
Cli3:= cliente.Text;
DMC5.SDS_CliCrediario.Active:= False;
DMC5.SDS_CREDIARIORECEBIDO.Active:= False;
DMC5.SDS_CliCrediario.DataSet.CommandText:='select * from CLIENTES WHERE CODIGO like ' + #39 + '%' + clie + '%' + #39+ 'order by NOME_RS asc';
DMC5.SDS_CliCrediario.Active:= True;
DMC5.SDS_CREDIARIORECEBIDO.Active:= True;
If DMC5.SDS_CliCrediario.locate('CODIGO',Cli3,[])=True then
begin
//DMC5.SDS_CliCrediario.Locate('CODIGO',Cli3,[]);
//end;
Clie:= cliente.Text;
DMR.RvRelatorios.SetParam('Cli',Clie);
DMR.RvRelatorios.SelectReport('Rp_Conta_Cliente_R',False);
DMR.RvRelatorios.Execute;
end;
end else
begin
FormPrincipal.MSG_NOT.Execute;
end;
end;

end.
