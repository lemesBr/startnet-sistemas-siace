unit Unit1Comissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, DBCtrls, Grids, DBGrids, ExtCtrls, CurrEdit,DateUtil, Variants,
  DB, IBCustomDataSet, IBQuery;

type
  TVendedorComissaoListFrm = class(TForm)
    GroupBox1: TGroupBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Bevel1: TBevel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    QryComissao: TIBQuery;
    QryVendedor: TIBQuery;
    DtsQryVendedor: TDataSource;

    procedure Gerar(Sender: TObject);
    procedure Limpar(sender:tobject);
    procedure Imprimir(sender: tobject);

    procedure FormCreate(Sender: TObject);

    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendedorComissaoListFrm: TVendedorComissaoListFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitQRComissao;

{$R *.DFM}

procedure TVendedorComissaoListFrm.FormCreate(Sender: TObject);
begin
dateedit2.Date:=date;
dateedit1.date:=incmonth(firstdayofprevmonth,1);

qryvendedor.open;
end;

//-------------procedure GERAR consulta de vendas-------------------------
procedure TVendedorComissaoListFrm.Gerar(Sender:tobject);
begin
if (length(trim(dateedit1.text))>=8) and (DBLookupComboBox1.KeyValue<>null) then
 begin
  with QryComissao do
   begin
    close;
    unprepare;
    sql.clear;
    sql.add('select SUM(valor_totalnf) TotalValor from Pedidos where (DATAHORA_EMISSAO >= :DataInicial) and (DATAHORA_EMISSAO <= :DataFinal) and Cod_Vend = :vendedor');
    params.parambyname('DataInicial').asdatetime := StrToDateTime(dateedit1.text + ' 00:00:00');
    params.parambyname('DataFinal').asdatetime   := StrToDateTime(dateedit2.text + ' 23:59:59');
    params.parambyname('vendedor').asinteger := dblookupcombobox1.KeyValue;
    prepare;
    open;
   end;

  currencyedit3.value:= qryvendedor['comissao'];   //comissao do vendedor
  if qrycomissao['TotalValor'] <> null then
   begin
    currencyedit2.value:= QryComissao['TotalValor'];          //total de venda em real
    currencyedit1.value:=(qrycomissao['TotalValor']*(qryvendedor['comissao']/100));//total da comissao do vendedor em real
    DM1.DefSenderDtsStateChange(QryComissao);
   end
  else
   begin
    currencyedit2.Value:=0;
    currencyedit1.text:='0';
   end;
  currencyedit3.visible:=true;
  currencyedit1.visible:=true;

  currencyedit2.visible:=true;
 end
else
 begin
  PrincipalFrm.CamposNaoPreenchidos(label3);
  Showmessage('Preenchimento Incorreto.'+#13#10+'Preencha todos os campos para calcular a comissão.');
 end;
end;


//-------------procedure LIMPAR TUDO----------------------
procedure TVendedorComissaoListFrm.Limpar(sender:tobject);
begin
 dateedit1.date:=incmonth(firstdayofprevmonth,1);
 dateedit2.date:=date;
 dblookupcombobox1.KeyValue:=null;
 currencyedit3.visible:=false;
 currencyedit1.visible:=false;

 currencyedit2.visible:=false;

 with qrycomissao do
  begin
   sql.clear;
   close;
  end;
 PrincipalFrm.CamposPreenchidos(label3);
 dblookupcombobox1.setfocus;
 DM1.DefSenderDtsStateChange(QryComissao);
end;

//--------Procedure IMPRIMIR-----------------------------------------------------------------
procedure TVendedorComissaoListFrm.Imprimir(sender:tobject);
begin
if currencyedit3.Value <> 0 then
 application.createform(tVendedorComissaoRepFrm, VendedorComissaoRepFrm);
 with VendedorComissaoRepFrm do
  begin
   QRLabel7.Caption:='Comissão calculada no período de ' + dateedit1.text + 
                     ' a ' + dateedit2.text ;
   qrlabel9.caption:= DBLookupComboBox1.Text;
   Qrlabel22.caption:=principalFrm.LogoLabel.caption;
   qrlabel11.caption:= formatcurr('0.00', currencyedit3.value);
   qrlabel12.caption:=formatcurr('0.00',currencyedit2.value);
   QRLabel8.Caption:=formatcurr('0.00',currencyedit1.value);
   Quickrep1.Preview;
  end;
end;

procedure TVendedorComissaoListFrm.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_return then
 perform(wm_nextdlgctl,0,0);
if key=vk_escape then
 self.close;
end;

procedure TVendedorComissaoListFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
DBLookupcombobox1.color:=claqua;
end;

procedure TVendedorComissaoListFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
dblookupcombobox1.color:=clwindow;
end;

procedure TVendedorComissaoListFrm.DateEdit1Enter(Sender: TObject);
begin
tdateedit(sender).color:=claqua;
end;

procedure TVendedorComissaoListFrm.DateEdit1Exit(Sender: TObject);
begin
tdateedit(sender).color:=clwindow;
end;

procedure TVendedorComissaoListFrm.DateEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 PrincipalFrm.speedbutton7.click;
if key=vk_escape then
 perform(wm_nextdlgctl,1,0);
end;

procedure TVendedorComissaoListFrm.formclose(sender: TObject;
  var Action: TCloseAction);
begin
 dm1.CloseIBArray([qrycomissao, qryvendedor]);
 Action := cafree;

 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);
end;

procedure TVendedorComissaoListFrm.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 perform(wm_nextdlgctl,0,0);
if key=vk_escape then
 perform(wm_nextdlgctl,1,0);
end;

procedure TVendedorComissaoListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([QryVendedor]);
 DM1.DefSenderDtsStateChange(QryComissao);
end;

procedure TVendedorComissaoListFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TVendedorComissaoListFrm.Label3MouseEnter(Sender: TObject);
begin
 if Principalfrm.AtendenteMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TVendedorComissaoListFrm.Label3MouseLeave(Sender: TObject);
begin
 if Principalfrm.AtendenteMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TVendedorComissaoListFrm.Label3Click(Sender: TObject);
begin
 if Principalfrm.AtendenteMnu.visible then
  Principalfrm.AtendenteMnu.click;
end;

end.
