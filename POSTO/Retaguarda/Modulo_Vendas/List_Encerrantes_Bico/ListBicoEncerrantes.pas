unit ListBicoEncerrantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ToolEdit, CurrEdit, Grids, DBGrids,
  Buttons, ExtCtrls, DB, IBCustomDataSet, IBQuery, DateUtil, DateUtils,
  Menus;

type
  TEncerrantesListFrm = class(TForm)
    Panel5: TPanel;
    Panel6: TPanel;
    Bevel2: TBevel;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    QryBomba: TIBQuery;
    QryBico: TIBQuery;
    QryFrentista: TIBQuery;
    QryTanque: TIBQuery;
    DtsQryBomba: TDataSource;
    DtsQryBico: TDataSource;
    DtsQryFrentista: TDataSource;
    DtsQryTanque: TDataSource;
    DtsQryBicoEnc: TDataSource;
    QryBicoEnc: TIBQuery;
    QryTotal_Litros: TIBQuery;
    PopupMenu2: TPopupMenu;
    AumentarMnu: TMenuItem;
    DiminuirMnu: TMenuItem;
    MaximizarMnu: TMenuItem;
    MinimizarMnu: TMenuItem;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    QryFrentistaCOD_FRENTISTA: TIntegerField;
    QryTotal_LitrosLITROS: TIBBCDField;
    QryTotal_LitrosGRANA: TIBBCDField;
    QryBicoEncCOD_BICOENC: TIntegerField;
    QryBicoEncDATAHORA: TDateTimeField;
    QryBicoEncDINHEIRO: TIBBCDField;
    QryBicoEncENC_DINHEIRO: TIBBCDField;
    QryBicoEncENC_LITROS: TIBBCDField;
    QryBicoEncLITROS: TIBBCDField;
    QryBicoEncNIVEL_PRECO: TIntegerField;
    QryBicoEncPRECO: TIBBCDField;
    QryBicoEncPRODUTOS_DESC: TIBStringField;
    QryBombaCOD_BOMBA: TIntegerField;
    QryBombaID_BOMBA: TIntegerField;
    QryTanqueCOD_TANQUE: TIntegerField;
    QryTanqueID_TANQUE: TIntegerField;
    Label4: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    QryProdutos: TIBQuery;
    DtsQryProdutos: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    QryProdutosCOD_PRODUTOS: TIntegerField;
    QryTotal_LitrosPRODUTOS_DESC: TIBStringField;
    QryProdutosPRODUTOS: TIBStringField;
    QryFrentistaFRENTISTA: TIBStringField;
    QryTotal_LitrosID_PRODUTOS: TIntegerField;
    QryBicoEncBICO: TIntegerField;
    QryBicoEncBOMBA: TIntegerField;
    QryBicoEncFRENTISTA: TIntegerField;
    QryBicoEncPRODUTOS: TIntegerField;
    QryBicoCOD_BICO: TIntegerField;
    QryBicoID_BICO: TIntegerField;
    QryProdutosID_PRODUTOS: TIntegerField;
    QryFrentistaID_FRENTISTA: TIntegerField;
    DBLookupComboBox3: TDBLookupComboBox;

    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1DropDown(Sender: TObject);

    procedure Limpar;
    procedure Gerar;
    procedure Imprimir;

    procedure FiltroChanged(Sender: TObject);

    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ResizeGrid(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure QryBicoEncAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EncerrantesListFrm: TEncerrantesListFrm;
  OrderbyStr: String;
//  Total_Litros : Double;

implementation

uses UnitDataM1, UnitFrmPrincipal, RepEncBico;

{$R *.dfm}

procedure TEncerrantesListFrm.FormCreate(Sender: TObject);
begin
 dateedit2.Date:=date;
 dateedit1.date:=incmonth(firstdayofprevmonth,1);
end;

procedure TEncerrantesListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([EncerrantesListFrm.QryBomba, EncerrantesListFrm.QryBico,
                  EncerrantesListFrm.QryTotal_Litros, EncerrantesListFrm.QryFrentista,
                  EncerrantesListFrm.QryProdutos, EncerrantesListFrm.QryTanque]);

 DM1.DefSenderDtsStateChange(EncerrantesListFrm.QryBicoEnc);
end;

procedure TEncerrantesListFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
DM1.CloseIBArray([EncerrantesListFrm.QryBomba, EncerrantesListFrm.QryBico,
                  EncerrantesListFrm.QryFrentista, EncerrantesListFrm.QryTanque,
                  EncerrantesListFrm.QryTotal_Litros, EncerrantesListFrm.QryProdutos,
                  EncerrantesListFrm.QryBicoEnc]);
Dm1.HandleBtn(False,False,False,False,False,False,False,False,False,False,False);
end;

procedure TEncerrantesListFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
with TDBLookupComboBox(sender).ListSource.DataSet do
 begin
  Moveby(TDBLookupComboBox(sender).DropDownRows);
  first;
 end;
end;

procedure TEncerrantesListFrm.Limpar;
begin
 QryBicoEnc.close;
 QryBicoEnc.UnPrepare;
 QryTotal_Litros.Close;
 QryTotal_Litros.UnPrepare;
 DBLookupComboBox1.KeyValue := null;
 DBLookupComboBox2.KeyValue := null;
 DBLookupComboBox3.KeyValue := null;
 DBLookupComboBox4.KeyValue := null;
 DBLookupComboBox5.KeyValue := null;
 if DBLookupComboBox1.CanFocus then
  DBLookupComboBox1.SetFocus;
 dateedit2.Date:=date;
 dateedit1.date:=incmonth(firstdayofprevmonth,1);
 Panel1.Visible := false;
 panel6.Caption := '    Encerrantes Pós-Venda';
 SpeedButton3.Click;
// ResizeGrid(SpeedButton3);
 DM1.DefSenderDtsStateChange(EncerrantesListFrm.QryBicoEnc);
end;

procedure TEncerrantesListFrm.Gerar;
var
 SYear, SMonth, SDay, EYear, EMonth, EDay: word;
begin
 DecodeDate(DateEdit1.Date, SYear, SMonth, SDay);
 DecodeDate(DateEdit2.Date, EYear, EMonth, EDay);

 if (dateedit2.Date < dateedit1.Date) then
   application.messagebox('Dados Incorretos:' + #13 +
     '"Data Final" não pode ser menor que "Data Inicial"',
     'Informação', mb_ok + mb_iconinformation);

 with QryTotal_Litros do
  begin
   Close;
   UnPrepare;
   sql.Clear;
   sql.add('select BICOENC.ID_PRODUTOS, sum(BICOENC.litros) Litros,');
   sql.add('sum(dinheiro) Grana, BICOENC.PRODUTOS_DESC');
   sql.add('from bicoenc');
   sql.add('Where COD_BICOENC <> 0');
  end;

 with QryBicoEnc do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('select BICOENC.COD_BICOENC, BICOENC.ID_BICO BICO, BICOENC.ID_BOMBA BOMBA, FRENTISTA.COD_FRENTISTA  FRENTISTA,');
   SQL.Add('BICOENC.ID_PRODUTOS PRODUTOS, BICOENC.DATAHORA, BICOENC.DINHEIRO, BICOENC.ENC_DINHEIRO, BICOENC.ENC_LITROS,');
   SQL.Add('BICOENC.LITROS, BICOENC.NIVEL_PRECO, BICOENC.PRECO, BICOENC.PRODUTOS_DESC');
   SQL.Add('from BICOENC');
   SQL.Add('LEFT OUTER JOIN FRENTISTA on (FRENTISTA.COD_FRENTISTA = BICOENC.COD_FRENTISTA)');
   SQL.Add('where COD_BICOENC <> 0');

 //---------------por Bomba----------------------------
   if dblookupcombobox1.keyvalue <> null then
    begin
     sql.add('and BICOENC.ID_BOMBA = :Bomba');
     params.parambyname('Bomba').AsInteger := DBLookupComboBox1.KeyValue;

     QryTotal_Litros.sql.add('and BICOENC.ID_BOMBA = :Bomba');
     QryTotal_Litros.params.parambyname('Bomba').AsInteger := DBLookupComboBox1.KeyValue;
    end;

   //---------------por Bico------------------------
   if dblookupcombobox2.keyvalue <> null then
    begin
     sql.add('and BICOENC.ID_BICO = :Bico');
     params.parambyname('Bico').AsInteger := DBLookupComboBox2.KeyValue;

     QryTotal_Litros.sql.add('and BICOENC.ID_BICO = :Bico');
     QryTotal_Litros.params.parambyname('Bico').AsInteger := DBLookupComboBox2.KeyValue;
    end;

   //---------------por Frentista-----------------------------
   if dblookupcombobox3.keyvalue <> null then
    begin
     sql.add('and COD_FRENTISTA = :Frentista');
     params.parambyname('Frentista').AsInteger := DBLookupComboBox3.KeyValue;

     QryTotal_Litros.sql.add('and COD_FRENTISTA = :Frentista');
     QryTotal_Litros.params.parambyname('Frentista').AsInteger := DBLookupComboBox3.KeyValue;
    end;

   //---------------por TANQUE--------------------------
   if dblookupcombobox4.keyvalue <> null then
    begin
     sql.add('and BICOENC.ID_TANQUE = :Tanque');
     params.parambyname('Tanque').AsInteger := DBLookupComboBox4.KeyValue;

     QryTotal_Litros.sql.add('and BICOENC.ID_TANQUE = :Tanque');
     QryTotal_Litros.params.parambyname('Tanque').AsInteger := DBLookupComboBox4.KeyValue;
    end;

   //---------------por PRODUTOS--------------------------
   if dblookupcombobox5.keyvalue <> null then
    begin
     sql.add('and BICOENC.ID_PRODUTOS = :Produtos');
     params.parambyname('Produtos').AsInteger := DBLookupComboBox5.KeyValue;

     QryTotal_Litros.sql.add('and BICOENC.ID_PRODUTOS = :Produtos');
     QryTotal_Litros.params.parambyname('Produtos').AsInteger := DBLookupComboBox5.KeyValue;
    end;
   //---------------por data-------------------------------
   if (DateEdit1.Date <> 0) or (DateEdit2.Date <> 0) then
    begin
     sql.add('and BICOENC.DATAHORA BETWEEN :data1 AND :data2');
     Params.ParamByName('data1').AsDateTime := strtodatetime(dateedit1.Text + ' 00:00:00');
     Params.ParamByName('data2').AsDateTime := strtodatetime(dateedit2.Text + ' 23:59:59');

     QryTotal_Litros.sql.add('and BICOENC.DATAHORA BETWEEN :data1 AND :data2');
     QryTotal_Litros.Params.ParamByName('data1').AsDateTime := strtodatetime(dateedit1.Text + ' 00:00:00');
     QryTotal_Litros.Params.ParamByName('data2').AsDateTime := strtodatetime(dateedit2.Text + ' 23:59:59');
    end;

   SQL.add('ORDER BY BICOENC.COD_BICOENC');
   OrderbyStr := 'ORDER BY BICOENC.COD_BICOENC';
   Prepare;
//   Memo1.Lines := QryBicoEnc.SQL;
   Open;
   QryTotal_Litros.sql.add('group by BICOENC.ID_PRODUTOS, BICOENC.PRODUTOS_DESC');
   QryTotal_Litros.Prepare;
 //  Memo2.Lines := QryTotal_Litros.SQL;
   QryTotal_Litros.Open;
  end;

  if QryBicoEnc.RecordCount > 0 then
  begin
   panel1.Visible := True;
   DBGrid1.Visible := True;
  end
 else
  begin
   panel1.Visible := False;
   DBGrid1.Visible := False;
  end;
 DM1.DefSenderDtsStateChange(EncerrantesListFrm.QryBicoEnc);
 DBLookupComboBox1.setfocus;
end;

procedure TEncerrantesListFrm.Imprimir;
var
 Total_Dinheiro : Double;
begin
 Screen.Cursor := crHourGlass;
 Application.CreateForm(TRepEncBicoFrm, RepEncBicoFrm);
 Total_Dinheiro := 0;
 if (dblookupcombobox1.keyvalue <> null) or (dblookupcombobox2.keyvalue <> null) or (dblookupcombobox3.keyvalue <> null) or (dblookupcombobox4.keyvalue <> null) or (DateEdit1.Date <> 0) and (DateEdit2.Date <> 0) then
 begin
  RepEncBicoFrm.QRMemo1.Lines.add('Informações:');
  RepEncBicoFrm.QRMemo1.Lines.add(' ');
 end;
 if dblookupcombobox1.keyvalue <> null then
   RepEncBicoFrm.QRMemo1.Lines.add('Bomba: ' + DBLookupComboBox1.Text);
 if dblookupcombobox2.keyvalue <> null then
   RepEncBicoFrm.QRMemo1.Lines.add('Bico: ' + DBLookupComboBox2.Text);
 if dblookupcombobox3.keyvalue <> null then
   RepEncBicoFrm.QRMemo1.Lines.add('Frentista: ' + DBLookupComboBox3.Text);
 if dblookupcombobox4.keyvalue <> null then
   RepEncBicoFrm.QRMemo1.Lines.add('Tanque: ' + DBLookupComboBox4.Text);
 if dblookupcombobox4.keyvalue <> null then
   RepEncBicoFrm.QRMemo1.Lines.add('Produto: ' + DBLookupComboBox5.Text);
 if (DateEdit1.Date <> 0) and (DateEdit2.Date <> 0) then
   RepEncBicoFrm.QRMemo1.Lines.add('Movimentação entre: ' + dateedit1.Text + ' e ' + dateedit2.Text);

 if QryTotal_Litros.RecordCount > 0 then
  begin
   QryTotal_Litros.First;
   while not QryTotal_Litros.Eof do
    begin
     Total_Dinheiro := Total_Dinheiro + QryTotal_Litros.fieldbyname('GRANA').AsFloat;
     QryTotal_Litros.Next;
    end;
   RepEncBicoFrm.QRLabel5.Caption := FormatCurr('###.###,##0.00',Total_Dinheiro);
  end;

 Screen.Cursor := crDefault;
 RepEncBicoFrm.QuickRep1.Preview;

end;

procedure TEncerrantesListFrm.DateEdit1Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
end;

procedure TEncerrantesListFrm.DateEdit2Exit(Sender: TObject);
begin
 try
   TDateEdit(Sender).CheckValidDate;
   TDateEdit(Sender).Color := clwindow;
 except
   TDateEdit(Sender).SetFocus;
   ShowMessage('Digite uma Data válida');
  end;
end;

procedure TEncerrantesListFrm.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TEncerrantesListFrm.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
 if key = #27 then
   self.Close;
end;

procedure TEncerrantesListFrm.ResizeGrid(Sender: TObject);
const
 MaxHeight: integer = 433;
 NormalHeight: integer = 310;
begin
 if Tspeedbutton(Sender).Visible then
  begin
   lockwindowupdate(handle);
   if Sender = speedbutton1 then       // Diminui visualizacao de grid
    begin
     if panel5.Height - (MaxHeight div 10) >= NormalHeight then
      begin
       panel5.Height := panel5.Height - (MaxHeight div 10);
       panel5.Top := panel5.top + (MaxHeight div 10);
      end
     else
       Sender := speedbutton3;
    end;

   if Sender = speedbutton2 then       // Aumenta visualizacao de grid
    begin
     if panel5.Height + (MaxHeight div 10) <= MaxHeight then
      begin
       panel5.Height := panel5.Height + (MaxHeight div 10);
       panel5.Top := panel5.top - (MaxHeight div 10);
      end
     else
       Sender := speedbutton4;
    end;

   if Sender = speedbutton3 then       // Minimiza visualizacao de Grid
    begin
     panel5.Top := panel5.Top + (panel5.Height - NormalHeight);
     panel5.Height := NormalHeight;
    end;

   if Sender = speedbutton4 then       // Maximiza visualizacao de Grid
    begin
     panel5.Top := panel5.Top - (MaxHeight - panel5.Height);
     panel5.Height := MaxHeight;
    end;

   speedbutton2.Visible := panel5.Height < MaxHeight;
   AumentarMnu.Enabled := panel5.Height < MaxHeight;

   speedbutton4.Visible := panel5.Height < MaxHeight;
   MaximizarMnu.Enabled := panel5.Height < MaxHeight;

   speedbutton1.Visible := (panel5.Height > NormalHeight);
   DiminuirMnu.Enabled := (panel5.Height > NormalHeight);

   speedbutton3.Visible := (panel5.Height > NormalHeight);
   MinimizarMnu.Enabled := (panel5.Height > NormalHeight);
   lockwindowupdate(0);
  end;
end;

procedure TEncerrantesListFrm.DBGrid1TitleClick(Column: TColumn);
var
 s: string;
begin
 screen.cursor := crHourGlass;
 if TRIM(Column.FieldName) = 'PRODUTOS' then
  s := 'PRODUTOS.NOME'
 else
  s := Column.FieldName;
 with QryBicoEnc do
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
 screen.cursor := crDefault;
end;

procedure TEncerrantesListFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 perform(wm_nextdlgctl,1,0);
end;

procedure TEncerrantesListFrm.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;
 if key = #13 then
  begin
   key := #0;
   PrincipalFrm.SpeedButton7.Click;
  end;
end;

procedure TEncerrantesListFrm.DateEdit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
 try
  Tdateedit(Sender).CheckValidDate
 except
  showmessage('Digite uma data válida')
 end;
end;

procedure TEncerrantesListFrm.DateEdit1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TEncerrantesListFrm.QryBicoEncAfterScroll(DataSet: TDataSet);
begin
 FiltroChanged(self);
end;

procedure TEncerrantesListFrm.FiltroChanged(Sender: TObject);
begin
 if QryBicoEnc.Active then
  begin
   screen.cursor := crhourglass;
   panel1.Caption := '(Nenhum registro encontrado)';
   panel6.Caption := '    Encerrantes Pós-Venda';
   //Dm1.CloseIBArray([QryBicoEnc]);
   QryBicoEnc.Close;
   DM1.DefSenderDtsStateChange(QryBicoEnc);
   dbgrid1.Visible := False;
   screen.cursor := crdefault;
  end;
end;

end.


