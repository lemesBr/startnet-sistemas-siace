unit UnitConsultaGeral;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Grids, DBGrids, DB, StdCtrls, IBCustomDataSet, IBQuery, Buttons,
 ComCtrls, Provider, DBClient, DBLocal, DBLocalI, IBDatabase, ExtCtrls,
 Placemnt;

type
 TConsultaGeralListFrm = class(TForm)
   DBGrid1: TDBGrid;
   DtsQryConsulta: TDataSource;
   StatusBar1: TStatusBar;
   QryConsulta: TIBQuery;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Label1: TLabel;
   Label2: TLabel;
   Label3: TLabel;
   Edit1: TEdit;
   ComboBox1: TComboBox;
   ComboBox2: TComboBox;
   BitBtn1: TBitBtn;
   BitBtn2: TBitBtn;
   FormStorage1: TFormStorage;
   procedure BitBtn2Click(Sender: TObject);
   procedure BitBtn1Click(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure ComboBox1Enter(Sender: TObject);
   procedure ComboBox1Exit(Sender: TObject);
   procedure DtsQryConsultaDataChange(Sender: TObject; Field: TField);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure ComboBox1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure ComboBox2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

   procedure SetStrValues(MasterIBDst, DetailIBDst: TIBDataset;
     MasterTbl, DetailTbl: string; TblFields: array of string;
     TblFieldsStr: array of string; InvTblFields: array of integer);
   procedure SetFullOuterJoin(varFullOuterJoin: boolean);

   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBGrid1TitleClick(Column: TColumn);
   procedure FormCreate(Sender: TObject);

 private
   { Private declarations }
   FullOuterJoin: boolean;
   DBDetail, DBMaster, LastDBTable, OrderbyStr: string;
   InvisibleFields: array of integer;
   DBFields: string;
   DBFieldsArray: array of string;
   DBMasterDst, DBDetailDst: TIBDataset;

 public
   { Public declarations }
 end;

var
 ConsultaGeralListFrm: TConsultaGeralListFrm;

implementation

uses UnitDataM1, UnitFuncoes;

{$R *.dfm}

procedure TConsultaGeralListFrm.SetFullOuterJoin(varFullOuterJoin: boolean);
begin
 FullOuterJoin := varFullOuterJoin;
end;

//------ Set Default Table and Field to look for ------ Fields must be comma separated 'DBFieldName, DisplayFieldName'
procedure TConsultaGeralListFrm.SetStrValues(MasterIBDst, DetailIBDst: TIBDataset;
 MasterTbl, DetailTbl: string; TblFields: array of string;
 TblFieldsStr: array of string; InvTblFields: array of integer);
var
 x: integer;
begin
 combobox1.Items.Clear;

 DBFields := TblFields[0] + ' ' + TblFieldsStr[0];

 DBMaster := MasterTbl;
 DBMasterDst := MasterIBDst;
 DBDetailDst := DetailIBDst;
 DBDetail := DetailTbl;

 setlength(DBFieldsArray, length(TblFields));
 DBFieldsArray[0] := TblFields[0];
 for x := 1 to High(TblFields) do
  begin
   DBFieldsArray[x] := TblFields[x];
   DBFields := DBFields + ', ' + TblFields[x] + ' ' + TblFieldsStr[x];
  end;

 for x := 0 to High(TblFieldsStr) do
   combobox1.items.add(TblFieldsStr[x]);

 setlength(InvisibleFields, length(InvTblFields));
 for x := 0 to High(InvTblFields) do
  begin
   combobox1.Items.Delete(InvTblFields[x] - x);
   InvisibleFields[x] := InvTblFields[x];
  end;
 combobox1.ItemIndex := 0;
end;


procedure TConsultaGeralListFrm.BitBtn2Click(Sender: TObject);
var
 x: integer;
begin
 screen.cursor := crHourGlass;
 try
   with QryConsulta do
    begin
     Close;
     Unprepare;
     Sql.Clear;

     if (DBDetail <> '') then
      begin
       Sql.add('Select ' + DBFields + ' from ' + DBMaster);
       if FullOuterJoin then
         sql.Add(' FULL OUTER JOIN ' + DBDetail + ' ON (' + DBMaster +
           '.' + DBFieldsArray[1] + ' = ' + DBDetail + '.' + DBFieldsArray[1] + ')')
       else
         sql.Add(' RIGHT OUTER JOIN ' + DBDetail + ' ON (' + DBMaster +
           '.' + DBFieldsArray[1] + ' = ' + DBDetail + '.' + DBFieldsArray[1] + ')');
       Sql.add(' where (' + DBFieldsArray[0] + ' <> 0) and Upper(' +
         DBFieldsArray[Combobox1.ItemIndex + length(InvisibleFields)] + ') like upper(:1)');
      end
     else
       Sql.add('Select ' + DBFields + ' from ' + DBMaster + ' where (' +
         DBFieldsArray[0] + ' <> 0) and Upper(' + DBFieldsArray[Combobox1.ItemIndex +
         length(InvisibleFields)] + ') like upper(:1)');

     case combobox2.ItemIndex of
       0: Params[0].AsString := '%' + edit1.Text + '%';
       //'Contenham o "texto" digitado'
       1: Params[0].AsString := edit1.Text + '%';
       //'Iniciem com o "texto" digitado'
       2: Params[0].AsString := edit1.Text;
       //'Coincidam com o "texto" digitado'
      end;

     Sql.add('ORDER BY ' + DBFieldsArray[Combobox1.ItemIndex + length(InvisibleFields)]);
     OrderbyStr := 'ORDER BY ' + DBFieldsArray[Combobox1.ItemIndex + length(InvisibleFields)];

     Prepare;
     Open;
    end;

   if QryConsulta.RecordCount = 0 then
     statusbar1.Panels[0].Text := '  Nenhum Produto encontrado';

   if QryConsulta.Active then
     for x := 0 to High(InvisibleFields) do
       dbgrid1.Columns.Items[InvisibleFields[x]].Visible := False;

 except
    begin
     logtofile('Erro :: Consulta incorreta', True);
     logtofile('Msg  :: Texto digitado é maior que o tamanho disponível do campo "' +
       combobox1.Text + '" #13 Digite um texto menor e tente novamente.', False);
     screen.cursor := crDefault;
     application.MessageBox(PChar('Texto digitado é maior que o tamanho disponível do campo "' +
       combobox1.Text + '"' + #13 +
       'Digite um texto menor e tente novamente.'),
       'Atenção :: Erro', mb_ok + mb_Iconerror);
     edit1.SetFocus;
    end;
  end;
 screen.cursor := crDefault;
end;

procedure TConsultaGeralListFrm.BitBtn1Click(Sender: TObject);
begin
 FullOuterJoin := False;
 self.Close;
end;

procedure TConsultaGeralListFrm.FormShow(Sender: TObject);
begin
 if LastDBTable <> DBMaster then
  begin
   edit1.Clear;
   combobox1.ItemIndex := 0;
   combobox2.ItemIndex := 0;
   if QryConsulta.Active then
    begin
     QryConsulta.Close;
     QryConsulta.UnPrepare;
    end;
  end;

 if edit1.CanFocus then
   edit1.SetFocus;
end;

procedure TConsultaGeralListFrm.DBGrid1DblClick(Sender: TObject);
var
 FoundRec: boolean;
begin
 try
   if (DBDetail <> '') then
    begin
     if not FullOuterJoin then
      begin
       DBMasterDst.Locate(DBFieldsArray[1], QryConsulta.Fields[1].AsVariant, []);
       FoundRec := DBDetailDst.Locate(DBFieldsArray[0], QryConsulta.Fields[0].AsVariant, []);
      end
     else
      begin
       FoundRec := DBDetailDst.Locate(DBFieldsArray[1], QryConsulta.Fields[1].AsVariant, []);
       DBMasterDst.Locate(DBFieldsArray[0], QryConsulta.Fields[0].AsVariant, []);
      end
    end
   else
     FoundRec := DBMasterDst.Locate(DBFieldsArray[0], QryConsulta.Fields[0].AsVariant, []);

   if FoundRec then
     Bitbtn1.Click
   else
    begin
     application.messagebox('Impossível localizar registro: Registro não encontrado...',
       'Atenção :: Erro', mb_ok + mb_iconerror);
     logtofile('Erro :: Não foi possível localizar registro selecionado na consulta', True);
     logtofile('Msg  :: Impossível localizar registro #13 Registro não encontrado.', False);
    end;
 except
   application.messagebox('Impossível localizar registro: Não há registros a serem localizados...',
     'Atenção :: Erro', mb_ok + mb_iconerror);
   logtofile('Erro :: Não há registro a localizar', True);
   logtofile('Msg  :: Não há registros a serem localizados.', False);
  end;
end;

procedure TConsultaGeralListFrm.Edit1Enter(Sender: TObject);
begin
 TEdit(Sender).Color := claqua;
end;

procedure TConsultaGeralListFrm.Edit1Exit(Sender: TObject);
begin
 TEdit(Sender).Color := clwindow;
end;

procedure TConsultaGeralListFrm.ComboBox1Enter(Sender: TObject);
begin
 TCombobox(Sender).Color := claqua;
end;

procedure TConsultaGeralListFrm.ComboBox1Exit(Sender: TObject);
begin
 TCombobox(Sender).Color := clwindow;
end;

procedure TConsultaGeralListFrm.DtsQryConsultaDataChange(Sender: TObject;
 Field: TField);
begin
 if QryConsulta.RecordCount > 0 then
   Statusbar1.Panels[0].Text := 'Dois cliques no registro desejado, para vizualiza-lo.'
 else
   Statusbar1.Panels[0].Text := 'Nenhum Registro Localizado';
end;

procedure TConsultaGeralListFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   bitbtn1.Click;
end;

procedure TConsultaGeralListFrm.ComboBox1KeyDown(Sender: TObject;
 var Key: word; Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   Perform(wm_nextdlgctl, 0,1);
end;

procedure TConsultaGeralListFrm.ComboBox2KeyDown(Sender: TObject;
 var Key: word; Shift: TShiftState);
begin
 if key = vk_return then
   bitbtn2.click;

 if key = vk_escape then
   Perform(wm_nextdlgctl, 0,1);
end;

procedure TConsultaGeralListFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   DBGrid1DblClick(self);

 if key = vk_escape then
   bitbtn1.click
end;

procedure TConsultaGeralListFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 LastDBTable := DBMaster;
end;

procedure TConsultaGeralListFrm.DBGrid1TitleClick(Column: TColumn);
var
 s: string;
 x: integer;
begin
 screen.cursor := crHourGlass;
 s := DBFieldsArray[column.Index];

 with QryConsulta do
  begin
   Close;
   UnPrepare;
   SQL.Delete(SQL.IndexOf(OrderbyStr));
   if OrderbyStr <> 'ORDER BY ' + s then
    begin
     SQL.Add('ORDER BY ' + s);
     OrderbyStr := 'ORDER BY ' + s;
    end
   else
    begin
     SQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr := 'ORDER BY ' + s + ' DESC'
    end;
   Prepare;
   Open;
  end;

 if QryConsulta.Active then
   for x := 0 to High(InvisibleFields) do
     dbgrid1.Columns.Items[InvisibleFields[x]].Visible := False;

 screen.cursor := crDefault;
end;

procedure TConsultaGeralListFrm.FormCreate(Sender: TObject);
begin
 FullOuterJoin := False;
end;

end.
