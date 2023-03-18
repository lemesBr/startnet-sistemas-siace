unit UnitListProxContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls, Mask, ToolEdit, DB,
  IBCustomDataSet, IBQuery,DateUtil, DateUtils, Menus, Placemnt, DBCtrls;

type
  TRelacionamentoListFrm = class(TForm)
    QryRelacionamento: TIBQuery;
    DstQryRelacionamento: TDataSource;
    PopupMenu2: TPopupMenu;
    AumentarMnu: TMenuItem;
    DiminuirMnu: TMenuItem;
    MaximizarMnu: TMenuItem;
    MinimizarMnu: TMenuItem;
    FormStorage1: TFormStorage;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Bevel2: TBevel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DtsQryVendedor: TDataSource;
    QryVendedor: TIBQuery;
    procedure Gerar(sender:tobject);
    procedure Limpar(Sender: TObject);
    procedure Imprimir(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure FiltroChanged(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelacionamentoListFrm: TRelacionamentoListFrm;
  OrderbyStr: String;

implementation

uses UnitDataM1, UnitRepProxContato, UnitFrmPrincipal, Unit2;

{$R *.dfm}

procedure TRelacionamentoListFrm.FormCreate(Sender: TObject);
begin
dateedit1.Date:=date;
dateedit2.date:=incmonth(firstdayofNextmonth,0);
FiltroChanged(Self);
end;

procedure TRelacionamentoListFrm.DateEdit1Enter(Sender: TObject);
begin
Tedit(sender).color:=claqua;
end;

procedure TRelacionamentoListFrm.DateEdit1Exit(Sender: TObject);
begin
Tedit(sender).color:=clwindow;
end;

procedure TRelacionamentoListFrm.FormActivate(Sender: TObject);
begin
  DM1.OpenIBArray([QryVendedor]); 
 DM1.DefSenderDtsStateChange(RelacionamentoListFrm.QryRelacionamento);
end;

procedure TRelacionamentoListFrm.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 perform(wm_nextdlgctl,1,0);
end;

procedure TRelacionamentoListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
 Dm1.HandleBtn(False,False,False,False,False,False,False,False,False,False,False);
 DM1.CloseIBArray([QryVendedor]);
end;

procedure TRelacionamentoListFrm.Gerar(sender: tobject);
begin
DBGrid3.visible:=False;
//SELECAO ITENS
 if (dateedit2.Date < dateedit1.Date) then
   application.messagebox('Dados Incorretos:' + #13 +
                          '"Data Final" não pode ser menor que "Data Inicial"',
                          'Informação', mb_ok + mb_iconinformation)
  else
   begin
    with QryRelacionamento do
     begin
      close;
      Unprepare;
      sql.Clear;
      sql.add('SELECT CODCLI, NOME, ULTIMO_CONTATO, PROXIMO_CONTATO From  CADASTRO');
      sql.add('Where PROXIMO_CONTATO between :DataInicial and :DataFinal');
      Params.ParamByName('DataInicial').AsDateTime := StrToDateTime(DateEdit1.Text + ' 00:00:00');
      Params.ParamByName('DataFinal').AsDateTime   := StrToDateTime(DateEdit2.Text + ' 23:59:59');
      if dblookupcombobox1.KeyValue<>null then
       begin
        sql.add(' and ( CodVend_ultimo_Contato = :Vend)');
        params.parambyname('vend').asinteger:=dblookupcombobox1.keyvalue;
       end;
      SQL.Add('Order By PROXIMO_CONTATO');
      OrderbyStr := 'Order By PROXIMO_CONTATO';
      Prepare;
      open;
     end;
    if QryRelacionamento.recordcount > 0 then
     begin
      DBGrid3.visible:=True;
      Panel3.Visible :=True;
      DM1.DefSenderDtsStateChange(RelacionamentoListFrm.QryRelacionamento);
     end
    else
     begin
      Panel2.Caption := '(Nenhum registro encontrado)';
      QryRelacionamento.Close;
      DM1.DefSenderDtsStateChange(RelacionamentoListFrm.QryRelacionamento);
     end;
   end;
end;

procedure TRelacionamentoListFrm.Limpar(Sender: TObject);
begin
 DBGrid3.visible:=False;
 dateedit1.Date:=date;
 dateedit2.date:=IncMonth(FirstDayOfNextMonth,1);
 DateEdit2.SetFocus;
 DBLookUpComboBox1.KeyValue := Null;
 QryRelacionamento.Close;
 DM1.DefSenderDtsStateChange(RelacionamentoListFrm.QryRelacionamento);
end;

procedure TRelacionamentoListFrm.DateEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_return then
 perform(wm_nextdlgctl,0,0);
if key = vk_escape then
 self.close;
end;

procedure TRelacionamentoListFrm.DateEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_return then
 Gerar(self);
if key = vk_escape then
 perform(wm_nextdlgctl,1,0);
end;

procedure TRelacionamentoListFrm.SpeedButton2Click(Sender: TObject);
Const
 MaxHeight: integer = 433;
 NormalHeight: integer = 345;
begin
if Tspeedbutton(sender).Visible then
 begin
  lockwindowupdate(handle);
  if sender = speedbutton1 then       // Diminui visualizacao de grid
   begin
    if panel2.Height - (MaxHeight div 10) >= NormalHeight then
     begin
      panel2.Height := panel2.Height - (MaxHeight div 10);
      panel2.Top := panel2.top + (MaxHeight div 10);
     end
    else
     Sender:= speedbutton3;
   end;

  if sender = speedbutton2 then       // Aumenta visualizacao de grid
   begin
    if panel2.Height + (MaxHeight div 10) <= MaxHeight then
     begin
      panel2.Height := panel2.Height + (MaxHeight div 10);
      panel2.Top := panel2.top - (MaxHeight div 10);
     end
    else
     Sender := speedbutton4;
   end;

  if sender = speedbutton3 then       // Minimiza visualizacao de Grid
   begin
    panel2.Top := panel2.Top + (panel2.Height - NormalHeight);
    panel2.Height := NormalHeight;
   end;

  if sender = speedbutton4 then       // Maximiza visualizacao de Grid
   begin
    panel2.Top := panel2.Top - (MaxHeight - panel2.Height);
    panel2.Height := MaxHeight;
   end;

  speedbutton2.visible := panel2.Height < MaxHeight;
  AumentarMnu.enabled  := panel2.Height < MaxHeight;

  speedbutton4.visible := panel2.Height < MaxHeight;
  MaximizarMnu.enabled := panel2.Height < MaxHeight;

  speedbutton1.visible := (panel2.Height > NormalHeight);
  DiminuirMnu.enabled  := (panel2.Height > NormalHeight);

  speedbutton3.visible := (panel2.Height > NormalHeight);
  MinimizarMnu.enabled := (panel2.Height > NormalHeight);
  lockwindowupdate(0);
 end;
end;

procedure TRelacionamentoListFrm.Imprimir(Sender: TObject);
begin
application.createform(tRelacionamentoRepFrm, RelacionamentoRepFrm);
RelacionamentoRepFrm.qrContatoProx.Preview;
end;

procedure TRelacionamentoListFrm.DBGrid3DblClick(Sender: TObject);
begin
 PrincipalFrm.AddAChild(TClienteCadFrm, ClienteCadFrm);
 DM1.DstCadastro.Locate('CODCLI', QryRelacionamento['CODCLI'], []);
 ClienteCadFrm.edit1.onchange := nil;
 ClienteCadFrm.edit1.Text := QryRelacionamento['NOME'];
 ClienteCadFrm.edit1.onchange := ClienteCadFrm.edit1change;
 ClienteCadFrm.abilita;
end;

procedure TRelacionamentoListFrm.FiltroChanged(Sender: TObject);
begin
 Screen.Cursor   := crhourglass;
 Panel2.Caption  := 'Listagem de Contatos com Clientes';
 DBGrid3.Visible := False;
 Panel3.Visible  := False;
 Screen.Cursor   := crdefault;
end;

procedure TRelacionamentoListFrm.DateEdit1Change(Sender: TObject);
begin
 FiltroChanged(Self);
end;

procedure TRelacionamentoListFrm.DBLookupComboBox1DropDown(
  Sender: TObject);
begin
with TDBLookupComboBox(sender).ListSource.DataSet do
 begin
  Moveby(TDBLookupComboBox(sender).DropDownRows);
  first;
 end;
end;

procedure TRelacionamentoListFrm.DBGrid3TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 s := TRIM(Column.FieldName);
 with QryRelacionamento do
  begin
   Close;
   SQL.Delete(SQL.IndexOf(OrderbyStr));
   if OrderbyStr <> 'ORDER BY ' + s then
    begin
     SQL.Add('ORDER BY ' + s);
     OrderbyStr := 'ORDER BY ' + s;
    end
   else
    begin
     SQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 Screen.Cursor := crDefault;
end;

end.
