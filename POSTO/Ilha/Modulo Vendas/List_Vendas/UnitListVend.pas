unit UnitListVend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, ToolEdit, Grids, DBGrids, StdCtrls, DBCtrls, Buttons, ExtCtrls,DateUtil,
  RXCtrls, variants, DB, DBTables, IBCustomDataSet, IBQuery, Menus, IBSQL,DateUtils,
  Placemnt;

type
  TVendaListFrm = class(TForm)
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DtsQryClientes: TDataSource;
    QryListVend: TIBQuery;
    DtsQryListVend: TDataSource;
    Timer1: TTimer;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid3: TDBGrid;
    PopupMenu2: TPopupMenu;
    AumentarMnu: TMenuItem;
    DiminuirMnu: TMenuItem;
    MaximizarMnu: TMenuItem;
    MinimizarMnu: TMenuItem;
    QryVendedor: TIBQuery;
    DtsQryVendedor: TDataSource;
    QryClientes: TIBQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    QryDesconto: TIBQuery;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    FormStorage1: TFormStorage;
    Edit4: TEdit;
    Label5: TLabel;
    QryListVendNUM_SERIE: TIBStringField;
    QryListVendPRODUTO: TIBStringField;
    QryListVendPRC_VENDA: TIBBCDField;
    QryListVendFIM_GARANTIA_APOS_VENDA: TDateTimeField;
    QryListVendFIM_GARANTIA_FABRICANTE: TDateTimeField;
    QryListVendSUBTOTAL: TIBBCDField;
    QryListVendREF_PRODUTOS: TIBStringField;
    QryListVendQUANTIDADE: TIBBCDField;
    QryListVendNUM_NF: TIBStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label17: TLabel;
    QryPdv: TIBQuery;
    DsPdv: TDataSource;
    Edit1: TEdit;
    QryValorTotal: TIBQuery;

    procedure Gerar(sender:tobject);
    procedure Limpar(Sender: TObject);
    procedure FiltroChanged(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Imprimir(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SQLProc;
    procedure ResizeGrid(sender: tobject);
    procedure DateEdit1Change(Sender: TObject);
    procedure QryVendedorAfterScroll(DataSet: TDataSet);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DateEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label17MouseEnter(Sender: TObject);
    procedure Label17MouseLeave(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendaListFrm: TVendaListFrm;
  OrderbyStr: String;
  codcli: integer;

implementation

uses UnitDataM1, UnitQRVend, UnitFrmPrincipal;

{$R *.DFM}

procedure TVendaListFrm.FormCreate(Sender: TObject);
begin
 timer1.Enabled := false;
 timer1.Interval := Tempo_Digitacao;

 panel1.width := Edit1.Width;
 panel1.left := Edit1.Left;
 panel1.Top  := (Edit1.Top + Edit1.Height) + 1;
 DBgrid1.Columns[0].Width := Panel1.Width - 24;

 dateedit2.Date:=date;
 dateedit1.date:=incmonth(firstdayofprevmonth,1);
end;

procedure TVendaListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([VendaListFrm.QryClientes,VendaListFrm.QryVendedor, QryPDV]);
 DM1.DefSenderDtsStateChange(VendaListFrm.QryListVend);
end;

//------ Procedure GERAr ------
procedure TVendaListFrm.Gerar(sender:tobject);
var
 t:integer;
begin
//SELECAO ITENS
try
  if (dateedit2.Date < dateedit1.Date) then
   application.messagebox('Dados Incorretos:' + #13 +
                          '"Data Final" não pode ser menor que "Data Inicial"',
                          'Informação', mb_ok + mb_iconinformation)
  else
   begin
    QryListVend.Tag:=0;       
    with QryListVend do
     begin
      close;
      sql.Clear;
      sql.add('SELECT');
      sql.add('Ref_produtos,Num_serie,Produto,Prc_Venda,FIM_GARANTIA_APOS_VENDA,FIM_GARANTIA_FABRICANTE,sum(QUANTIDADE) QUANTIDADE, sum(Subtotal) SubTotal,nf_entrada.NUM_NF FROM pedidos_itens');
      sql.add('LEFT OUTER JOIN nf_entrada on (Pedidos_Itens.COD_NF_ENTRADA=NF_ENTRADA.COD_NF_ENTRADA)');
      if (edit1.text<>'')or(dblookupcombobox1.KeyValue<>null)or(DateEdit1.Date <= DateEdit2.Date)then                        //coloca o where caso algo seja preenchido
       begin
        sql.add(' WHERE PEDIDOS_ITENS.COD_PEDIDOS IN (SELECT Cod_Pedidos FROM PEDIDOS where');

       //----contagem dos descontos------
        QryDesconto.Close;
        QryDesconto.SQL.Clear;
        QryDesconto.SQL.Add('Select sum(desconto) desconto from Pedidos where');

       //contagem do total vendido
        QryValorTotal.Close;
        QryValorTotal.SQL.Clear;
        QryValorTotal.SQL.Add('Select sum(valor_totalproduto) valor_total from Pedidos where');

          //----por Cliente
        If edit1.text<>'' then
         begin
          QryDesconto.SQL.Add(' (Cod_Cli_DESTINATARIO = :cliente)');
          QryDesconto.ParamByName('cliente').asinteger:=codcli;

          QryValorTotal.SQL.Add(' (Cod_Cli_DESTINATARIO = :cliente)');
          QryValorTotal.ParamByName('cliente').asinteger:=codcli;

          sql.add(' (Cod_Cli_DESTINATARIO = :cliente)');
          params.parambyname('cliente').asinteger:=codcli;
          t:=1;
         end;
      //----por Vendedor
        if dblookupcombobox1.KeyValue<>null then
         begin
          if t=1 then
           begin
            sql.add(' and');
            QryDesconto.SQL.Add(' and');
           end;

          sql.add(' ( Cod_Vend = :Vend)');
          params.parambyname('vend').asinteger:=dblookupcombobox1.keyvalue;

          QryDesconto.SQL.Add(' ( Cod_Vend = :Vended)');
          QryDesconto.ParamByName('Vended').asinteger:=dblookupcombobox1.keyvalue;

          QryValorTotal.SQL.Add(' ( Cod_Vend = :Vended)');
          QryValorTotal.ParamByName('Vended').asinteger:=dblookupcombobox1.keyvalue;

          t:=1;
         end;
        //----por Ponto de Venda
        if dblookupcombobox2.KeyValue<>null then
         begin
          if t=1 then
           begin
            sql.add(' and');
            QryDesconto.SQL.Add(' and');
           end;
          sql.add(' ( Codpdv = :CodPdv)');
          params.parambyname('CODPDV').asinteger:=dblookupcombobox2.keyvalue;

          QryDesconto.SQL.Add(' ( CodPDV = :CODPDV)');
          QryDesconto.ParamByName('CODPDV').asinteger:=dblookupcombobox2.keyvalue;

          QryValorTotal.SQL.Add(' ( CodPDV = :CODPDV)');
          QryValorTotal.ParamByName('CODPDV').asinteger:=dblookupcombobox2.keyvalue;

          t:=1;
         end;
      //----entre Datas
        if (length(trim(dateedit1.text))>=8) and (length(trim(dateedit2.text))>=8) then
         begin
          if t=1 then
           begin
            sql.add(' and');
            QryDesconto.SQL.Add(' and');
           end;
          sql.add('((Datahora >= :DataInicial) and (Datahora <= :DataFinal))');
          Params.ParamByName('DataInicial').asdatetime := strtodatetime(dateedit1.text+' 00:00:00');
          Params.ParamByName('DataFinal').asdatetime := strtodatetime(dateedit2.text+' 23:59:59');

          QryDesconto.SQL.Add('((Datahora >= :DataIni) and (Datahora <= :DataFim))');
          QryDesconto.Params.ParamByName('DataIni').asdatetime := strtodatetime(dateedit1.text+' 00:00:00');
          QryDesconto.Params.ParamByName('DataFim').asdatetime := strtodatetime(dateedit2.text+' 23:59:59');

          QryValorTotal.SQL.Add('((Datahora >= :DataIni) and (Datahora <= :DataFim))');
          QryValorTotal.Params.ParamByName('DataIni').asdatetime := strtodatetime(dateedit1.text+' 00:00:00');
          QryValorTotal.Params.ParamByName('DataFim').asdatetime := strtodatetime(dateedit2.text+' 23:59:59');

          t:=1;
         end;
        sql.add(')');

        //----por numero de nota
        If edit4.text<>'' then
         begin
          sql.add(' and (nf_entrada.NUM_NF = :NUM_NOTA)');
          params.parambyname('NUM_NOTA').AsString:=edit4.text;
         end;
        //----por Referencia
        If edit2.text<>'' then
         begin
          sql.add(' and (REF_PRODUTOS = :REF_PRODUTOS)');
          params.parambyname('REF_PRODUTOS').AsString:=edit2.text;
         end;
        //----por Nº de Série
        If edit3.text<>'' then
         begin
          sql.add(' and (NUM_SERIE = :NUM_SERIE)');
          params.parambyname('NUM_SERIE').AsString:=edit3.text;
         end;
        //----por Garantia Cliente
{
        If edit4.text<>'' then
         begin
          sql.add(' and (FIM_GARANTIA_APOS_VENDA = :GARCLI)');
          params.parambyname('GARCLI').AsString:=edit4.text;
         end;
          //----por Garantia Fornnecedor
        If edit5.text<>'' then
         begin
          sql.add(' and (FIM_GARANTIA_FABRICANTE = :GARFAB)');
          params.parambyname('GARFAB').AsString:=edit5.text;
         end;
              }
       end;

      sql.add('group by REF_PRODUTOS,Num_serie,produto,prc_venda,FIM_GARANTIA_APOS_VENDA,FIM_GARANTIA_FABRICANTE,nf_entrada.NUM_NF');
      sql.add('ORDER BY REF_PRODUTOS');
      orderbystr:='ORDER BY REF_PRODUTOS';
      Prepare;
      Open;
      QryDesconto.Prepare;
      QryDesconto.Open;
      QryValorTotal.Prepare;
      QryValorTotal.Open;
     end;

    if QryListVend.RecordCount = 0 then
     panel3.Caption := '  Nenhum Item Vendido encontrado'
    else if QryListVend.RecordCount = 0 then
     panel3.Caption := '  Listagem de Itens Vendidos';

    dbgrid3.visible:=True;
    if QryListVend.Active then
     QryListVend.Tag:=1;
    DM1.DefSenderDtsStateChange(QryListVend);
   end;
except
 begin
  showmessage('Erro: Verifique dados digitados');
  dblookupcombobox1.setfocus;
 end;
end;
end;

//------ IMPRESSAO DE RELATORIOS ------
Procedure TVendaListFrm.Imprimir(Sender: TObject);
begin
 //----- Itens -----
if QrylistVend.active then
 if QrylistVend.recordcount > 0 then
 begin
   application.createform(TVendaRepFrm,VendaRepFrm);
   with VendaRepFrm do
    begin
     qrlabel2.Caption:=principalfrm.logolabel.caption;
     QRMemo1.lines.clear;
     QRMemo2.lines.clear;
     //------- campos do relatorio --------
     QRMemo1.lines.add('Relatório de Vendas entre '+dateedit1.text+' e '+dateedit2.text);
     if dblookupcombobox1.text<>'' then
      QRMemo1.lines.add('Vendedor(a): '+dblookupcombobox1.text);
     if edit1.text<>'' then
      QRMemo1.lines.add('Cliente: '+edit1.text);
     if dblookupcombobox2.text<>'' then
      QRMemo1.lines.add('Ponto de Venda : '+dblookupcombobox2.text);

     QRLabel17.caption:='R$ ' + FormatCurr('0.00', QryValorTotal['valor_total']);
     //---descontos no período
     QRLabel6.caption:='R$ ' + FormatCurr('0.00', QryDesconto['desconto']);

     VendaRepFrm.QuickRep1.Preview;
     VendaRepFrm.free;
    end;
 end
else
 application.messagebox('Nenhum relatório válido gerado'+#13+
                        'Selecione os filtros desejados e clique em "Gerar"','Atenção', mb_ok+mb_iconinformation);

end;

procedure TVendaListFrm.FiltroChanged(Sender: TObject);
begin
if QryListVend.Active then
 begin
  screen.cursor := crhourglass;
  panel3.caption := '  Listagem de Vendas';
  Dm1.CloseIBArray([QryListVend]);
  DM1.DefSenderDtsStateChange(QryListVend);
  dbgrid3.visible:=false;
  screen.cursor := crdefault;
 end;
end;

//------Procedure LIMPAR TUDO------
procedure TVendaListFrm.Limpar(Sender: TObject);
begin
 panel3.caption := '  Listagem de Vendas';
 dateedit1.date:=incmonth(firstdayofprevmonth,1);
 dateedit2.date:=Date;
 dblookupcombobox1.KeyValue:=null;
 dblookupcombobox2.KeyValue:=null;
 edit1.clear;
 edit2.clear;
 edit3.clear;
 edit4.clear; 
 dbgrid3.visible:=false;
 DbLookupcombobox1.Setfocus;
 SpeedButton3.Click;
end;

//---------color fields---------
procedure TVendaListFrm.DBLookupComboBox2Enter(Sender: TObject);
begin
tdblookupcombobox(sender).color:=claqua;
end;

procedure TVendaListFrm.DBLookupComboBox2Exit(Sender: TObject);
begin
tdblookupcombobox(sender).color:=clwindow;
end;

procedure TVendaListFrm.DateEdit1Enter(Sender: TObject);
begin
tdateedit(sender).color:=claqua;
end;

procedure TVendaListFrm.DateEdit1Exit(Sender: TObject);
begin
try
 DateEdit1.CheckValidDate;
 DateEdit1.Color:=clwindow;
except
 DateEdit1.SetFocus;
 ShowMessage('Digite uma Data valida');
 end;
end;

//----------tab perform-----------
procedure TVendaListFrm.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
 perform(wm_nextdlgctl,0,0);
if key = vk_escape then
 self.close;
end;

procedure TVendaListFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
DM1.CloseIBArray([VendaListFrm.QryListVend,VendaListFrm.QryClientes,VendaListFrm.QryVendedor,QryPDV]);
Dm1.HandleBtn(False,False,False,False,False,False,False,False,False,False,False);
end;

procedure TVendaListFrm.Edit5Enter(Sender: TObject);
begin
Tedit(sender).color:=claqua;
end;

procedure TVendaListFrm.Edit5Exit(Sender: TObject);
begin
Tedit(sender).color:=clwindow;
end;

procedure TVendaListFrm.DBGrid3TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 s := TRIM(Column.FieldName);
 with QryListVend do
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

{ dbgrid3.Columns.items[0].Width:=70;
 dbgrid3.Columns.items[1].Width:=100;
 dbgrid3.Columns.items[2].Width:=100;
 dbgrid3.Columns.items[3].Width:=100;
 dbgrid3.Columns.items[4].Width:=100;}
end;

procedure TVendaListFrm.Edit1Change(Sender: TObject);
begin
 timer1.Enabled:=false;
 timer1.Enabled:=true;
 FiltroChanged(self);
end;

procedure TVendaListFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return  then
  begin
   if edit1.text<>'' then
    begin
     if QryClientes.RecordCount = 0 then
      begin
       application.messageBox('Cadastro Não Encontrado!', 'Informação', mb_Ok + mb_IconInformation);
       edit1.setfocus;
      end
     else
      begin
       if (panel1.Visible)  then
        if QryClientes.RecordCount<>1 then
         begin
          if dbgrid1.CanFocus then
           dbgrid1.setfocus;
         end
         else
          dbgrid2dblclick(self)
        else Gerar(self);
      end;
    end
   else
    perform(wm_nextdlgctl,0,0);
  end;

if key = vk_escape then
 if panel1.Visible then
   panel1.Visible := false
  else
   perform(wm_nextdlgctl,1,0);
end;

procedure TVendaListFrm.Edit1Enter(Sender: TObject);
begin
Tedit(sender).color:=claqua;
end;

procedure TVendaListFrm.Edit1Exit(Sender: TObject);
begin
Tedit(sender).color:=clwindow;
end;

procedure TVendaListFrm.DBGrid2DblClick(Sender: TObject);
begin
codcli:=QryClientes['codcli'];
edit1.onchange:=nil;
edit1.text:= QryClientes['nome'];
edit1.onchange:=Edit1Change;
panel1.visible:=false;
edit1.setFocus;
end;

procedure TVendaListFrm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
 dbgrid2dblclick(self);
if key = vk_escape then
 Edit1.SetFocus;
end;

procedure TVendaListFrm.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 perform(wm_nextdlgctl,1,0);
{
if key=vk_return then
begin
if datamodule2.QrylistVend3.active then
if datamodule2.QrylistVend3.RecordCount<>0 then
 begin
 if not varisnull(datamodule2.QrylistVend3['REF_PRODUTOS']) then
  begin
   if not frmprincipal.addachild(frmcadprod) then
    begin
     lockwindowupdate(handle);
     application.CreateForm(Tfrmcadprod, frmCadprod);
     lockwindowupdate(0);
    end;
   frmcadprod.setfocus;
   frmcadprod.bringtofront;

   frmcadprod.edit3.setfocus;
   frmcadprod.edit3.text:=datamodule2.QrylistVend3['REF_PRODUTOS'];

   frmcadprod.Edit3KeyDown(frmlistvend,key,shift);      //"press" enter
  end;
 end
else
  application.MessageBox('Nenhum Produto Selecionado','Erro', mb_Ok + mb_iconerror);

end; }
end;

procedure TVendaListFrm.DBGrid3DblClick(Sender: TObject);
var
 Key: Word;
 Shift: TShiftState;
begin
  key:= $0D;
  dbgrid3keydown(self,key,shift);

end;

procedure TVendaListFrm.Timer1Timer(Sender: TObject);
begin
if edit1.text <> '' then
 SQLProc
else
 panel1.Visible := false;

timer1.Enabled := false;
end;

procedure TVendaListFrm.SQLProc;
begin
with QryClientes do
 begin
  close;
  sql.clear;
  sql.add('Select * from CADASTRO where UPPER(Nome) LIKE UPPER (:cliente)');
  params.ParamByName('cliente').AsString := '%' + edit1.Text + '%';
  open;
  If QryClientes.recordCount > 0 Then
   panel1.visible:=true;
 end;
timer1.Enabled := false;
end;

procedure TVendaListFrm.ResizeGrid(sender: tobject);
Const
 MaxHeight: integer = 433;
 NormalHeight: integer = 305;
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
procedure TVendaListFrm.DateEdit1Change(Sender: TObject);
begin
FiltroChanged(self);
end;

procedure TVendaListFrm.QryVendedorAfterScroll(DataSet: TDataSet);
begin
FiltroChanged(self);
end;

procedure TVendaListFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
with TDBLookupComboBox(sender).ListSource.DataSet do
 begin
  Moveby(TDBLookupComboBox(sender).DropDownRows);
  first;
 end;
end;

procedure TVendaListFrm.Edit2Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TVendaListFrm.DateEdit2Exit(Sender: TObject);
begin
try
 DateEdit2.CheckValidDate;
 DateEdit2.Color:=clwindow;
except
 DateEdit2.SetFocus;
 ShowMessage('Digite uma Data valida');
 end;
end;

procedure TVendaListFrm.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if column.Title.Caption = 'Garantia Cliente' then
begin
 if not varisnull(QryListVend['FIM_GARANTIA_APOS_VENDA']) then
  begin
   if QryListVend['FIM_GARANTIA_APOS_VENDA'] >= strtodatetime(datetostr(date)+' 00:00:00')then
    begin
     Dbgrid3.Canvas.Font.color:=clgreen;
     Dbgrid3.Canvas.TextRect(rect, rect.Left+3, rect.Top+3, ' - Em Garantia -');
    end;
   if QryListVend['FIM_GARANTIA_APOS_VENDA'] < strtodatetime(datetostr(date)+' 00:00:00') then
    begin
     Dbgrid3.Canvas.Font.color:=clred;
     Dbgrid3.Canvas.TextRect(rect, rect.Left+3, rect.Top+3, ' - Sem Garantia -');
    end;
  end
 else
  begin
   Dbgrid3.Canvas.Font.color:=clred;
   Dbgrid3.Canvas.TextRect(rect, rect.Left+3, rect.Top+3, ' - Sem Garantia -');
  end;
end;
if column.Title.Caption = 'Garantia Fabricante' then
begin
 if not varisnull(QryListVend['FIM_GARANTIA_FABRICANTE']) then
  begin
   if QryListVend['FIM_GARANTIA_FABRICANTE'] >= strtodatetime(datetostr(date)+' 00:00:00') then
    begin
     Dbgrid3.Canvas.Font.color:=clgreen;
     Dbgrid3.Canvas.TextRect(rect, rect.Left+3, rect.Top+3, ' - Em Garantia -');
    end;
   if (QryListVend['FIM_GARANTIA_FABRICANTE'] < strtodatetime(datetostr(date)+' 00:00:00')) or (varisnull(QryListVend['FIM_GARANTIA_FABRICANTE'])) then
    begin
     Dbgrid3.Canvas.Font.color:=clred;
     Dbgrid3.Canvas.TextRect(rect, rect.Left+3, rect.Top+3, ' - Sem Garantia -');
    end;
  end
 else
  begin
   Dbgrid3.Canvas.Font.color:=clred;
   Dbgrid3.Canvas.TextRect(rect, rect.Left+3, rect.Top+3, ' - Sem Garantia -');
  end;
end;
end;

procedure TVendaListFrm.DateEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
 begin
  perform(wm_nextdlgctl,0,0);
 end;
if key=vk_escape then
 begin
 perform(wm_nextdlgctl,1,0);
 end;
end;

procedure TVendaListFrm.DBLookupComboBox2DropDown(Sender: TObject);
begin
with TDBLookupComboBox(sender).ListSource.DataSet do
 begin
  Moveby(TDBLookupComboBox(sender).DropDownRows);
  first;
 end;
end;

procedure TVendaListFrm.Label1MouseEnter(Sender: TObject);
begin
 if Principalfrm.AtendenteMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TVendaListFrm.Label1MouseLeave(Sender: TObject);
begin
 if Principalfrm.AtendenteMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TVendaListFrm.Label1Click(Sender: TObject);
begin
 if Principalfrm.AtendenteMnu.visible then
  Principalfrm.AtendenteMnu.click;
end;

procedure TVendaListFrm.Label17MouseEnter(Sender: TObject);
begin
 if PrincipalFrm.PontosdeVendaMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TVendaListFrm.Label17MouseLeave(Sender: TObject);
begin
 if PrincipalFrm.PontosdeVendaMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TVendaListFrm.Label17Click(Sender: TObject);
begin
 if PrincipalFrm.PontosdeVendaMnu.visible then
  PrincipalFrm.PontosdeVendaMnu.click;
end;

procedure TVendaListFrm.Label3MouseEnter(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TVendaListFrm.Label3MouseLeave(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TVendaListFrm.Label3Click(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.ProdutosMnu.click;
end;

procedure TVendaListFrm.Label2MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TVendaListFrm.Label2MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TVendaListFrm.Label2Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.click;
end;

end.
