unit ULaticinio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, XDBGrids, ExtCtrls, RXCtrls, SUIButton, RXDBCtrl, FMTBcd, DB, SqlExpr,
  SUIDlg, SUIDBCtrls, DBClient, SimpleDS, Data.DBXFirebird, RxCurrEdit,
  RxToolEdit;

type
  TFormLaticinio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    DBGrid: TXDBGrid;
    Panel3: TPanel;
    Shape1: TShape;
    RxLabel2: TRxLabel;
    confirmar: TsuiButton;
    RxDBComboEdit1: TRxDBComboEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Inserir: TsuiButton;
    Alterar: TsuiButton;
    cancelar: TsuiButton;
    excluir: TsuiButton;
    SPC_Codigo: TSQLStoredProc;
    MsgInformacao: TsuiMessageDialog;
    RxLabel18: TRxLabel;
    N_venda: TDBEdit;
    MSG_CD: TsuiMessageDialog;
    SPC_COD_ITENS: TSQLStoredProc;
    Edit1: TDBEdit;
    suiDBNavigator1: TsuiDBNavigator;
    Edit6: TDBEdit;
    suiMessageDialog1: TsuiMessageDialog;
    DTS_LATICINIO: TDataSource;
    SDS_LATICINIO: TSimpleDataSet;
    SDS_LATICINIOCODIGO: TIntegerField;
    SDS_LATICINIOCOD_EMPRESA: TIntegerField;
    SDS_LATICINIODATA_LANCAMENTO: TDateField;
    SDS_LATICINIOCOD_FORNECEDOR: TIntegerField;
    SDS_LATICINIONOME_FORNECEDOR: TStringField;
    SDS_LATICINIOLINHA: TIntegerField;
    SDS_LATICINIOQUANTIDADE: TFMTBCDField;
    SDS_LATICINIOVALOR_LEITE: TFMTBCDField;
    SDS_LATICINIOVALOR_TOTAL: TFMTBCDField;
    SDS_LATICINIOCODIGO_ID: TIntegerField;
    SDS_LATICINIOPRODUTO: TStringField;
    SDS_LATICINIOUNIDADE: TStringField;
    SDS_LATICINIOS: TSimpleDataSet;
    SDS_LATICINIOSCODIGO: TIntegerField;
    SDS_LATICINIOSCOD_FORNECEDOR: TIntegerField;
    SDS_LATICINIOSCOD_EMPRESA: TIntegerField;
    SDS_LATICINIOSDATAI: TDateField;
    SDS_LATICINIOSDATAF: TDateField;
    SDS_LATICINIOSVALOR_TOTAL: TFMTBCDField;
    SDS_LATICINIOSNOME_FORNECEDOR: TStringField;
    DTS_LATICINIOS: TDataSource;
    Edit62: TCurrencyEdit;
    SDS_LATICINIOSN_DOCUMENTO: TStringField;
    SDS_LATICINIOSMES: TStringField;
    SDS_LATICINIOSANO: TStringField;
    procedure InserirClick(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure DBGridEnter(Sender: TObject);
    procedure confirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure INSERIRITEM;
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure DBGridCellClick(Column: TXColumn);
    procedure DBGridColEnter(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
    procedure Edit62Change(Sender: TObject);
    procedure SDS_LATICINIOAfterPost(DataSet: TDataSet);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    A, B:Double;
  end;

var
  FormLaticinio: TFormLaticinio;

implementation

uses ModulodeDados, Principal,
  CPLaticinio, xloc_fornecedor, Ubibli1;

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

procedure TFormLaticinio.INSERIRITEM;
var
  N:Integer;
begin
             SDS_LATICINIO.Insert;
             if DBGRID.COLUMNS.Grid.Fields[0].Text = '' then
             begin
             SDS_LATICINIO.Edit;
             SPC_COD_ITENS.ExecProc;
             N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
             SDS_LATICINIOCODIGO.AsString := IntTostr(N);
             SDS_LATICINIO.Edit;
             SDS_LATICINIOCODIGO_ID.Text := N_venda.Text;
             SDS_LATICINIOCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
             SDS_LATICINIOCOD_FORNECEDOR.Text := RxDBComboEdit1.Text;
             SDS_LATICINIONOME_FORNECEDOR.Text := Edit1.Text;
             SDS_LATICINIOQUANTIDADE.Text := '0,000';
             SDS_LATICINIOVALOR_LEITE.Text := DM.SDS_FornecedoresVALOR_LEITE.TEXT;
             SDS_LATICINIOProduto.text := 'LEITE';
             SDS_LATICINIOUNIDADE.TEXT := 'LT';
             SDS_LATICINIOLINHA.Text := DM.SDS_FornecedoresCOD_LINHA.Text;
             end;
end;

procedure TFormLaticinio.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
SDS_LATICINIOs.Edit;
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
RxDBComboEdit1.Clear;
Edit1.Clear;
RxDBComboEdit1.Text:= DM.SDS_FornecedoresCODIGO.AsString;
RxDBComboEdit1.Refresh;
SDS_LATICINIOSNOME_FORNECEDOR.Text := DM.SDS_FornecedoresNOME.AsString;
RxDBComboEdit1.SetFocus;
end;


procedure TFormLaticinio.InserirClick(Sender: TObject);
var
N:INTEGER;
begin

if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Showmodal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
SDS_LATICINIOS.Insert;
SPC_Codigo.ExecProc;
N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
N_venda.Text:=IntTostr(N);

cancelar.Enabled:=True;
Alterar.Enabled:=True;
Inserir.Enabled:= False;
excluir.Enabled:= False;
confirmar.Enabled := True;
Panel1.Enabled := True;
Panel2.Enabled := True;
SDS_LATICINIOS.Edit;

DBDATEEDIT1.SetFocus;
Edit62.Visible := true;
end;
end;

procedure TFormLaticinio.DBGridEnter(Sender: TObject);
var
  N:Integer;
begin
if SDS_LATICINIOS.State in [dsInsert, dsEdit, dsSetKey] then
begin
SDS_LATICINIOS.Post;
end;
INSERIRITEM;

{SDS_LATICINIO.Edit;
DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
if DBGRID.COLUMNS.Grid.Fields[0].Text = '' then
begin
SPC_COD_ITENS.ExecProc;
N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
SDS_LATICINIOCODIGO.AsString:=IntTostr(N);

 end;}
end;

procedure TFormLaticinio.confirmarClick(Sender: TObject);
begin
if DBGRID.COLUMNS.Grid.Fields[1].Text = '' then
begin
   A := StrToFloat(Edit62.Text);
   A := A - DBGRID.COLUMNS.Grid.Fields[6].AsFloat;
   Edit62.Text:= FloatToStr(A);
   Edit62.Refresh;
   SDS_LATICINIO.Delete;
   SDS_LATICINIO.First;
end;

SDS_LATICINIOS.Edit;
SDS_LATICINIOSCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
SDS_LATICINIOSVALOR_TOTAL.Text := Edit62.Text;
SDS_LATICINIOSN_DOCUMENTO.Text := N_venda.TEXT;

SDS_LATICINIOS.Post;
SDS_LATICINIOS.ApplyUpdates(0);
SDS_LATICINIO.EDIT;
SDS_LATICINIO.Post;
SDS_LATICINIO.ApplyUpdates(0);

Panel1.Enabled := False;
Panel2.Enabled := False;
Edit62.Visible := false;
Try
if FormContasPagarLaticinio=nil   then
    begin
    FormContasPagarLaticinio:=TFormContasPagarLaticinio.Create(self);
      FormContasPagarLaticinio.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Lançamento de Parcelas!!');
end;
confirmar.Enabled := False;
Inserir.Enabled := True;
cancelar.Enabled:=False;
Alterar.Enabled:=True;
excluir.Enabled:= true;
end;


procedure TFormLaticinio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormLaticinio:=nil;
end;

procedure TFormLaticinio.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) then
begin
   If  DBGRID.COLUMNS.Grid.Fields[1].AsString >'' then
   begin
   If DBGRID.COLUMNS.Grid.Fields[1].AsDateTime < DBDateEdit1.Date Then
    begin
    ShowMessage('Data inválida, a data inicial é maior que o Intervalo de Datas!');
    DBGrid.Columns.Grid.Fields[1].FocusControl;
   end;
   If DBGRID.COLUMNS.Grid.Fields[1].AsDateTime > DBDateEdit2.Date Then
    begin
    ShowMessage('Data inválida, a data final é maior que o Intervalo de Datas!');
    DBGrid.Columns.Grid.Fields[1].FocusControl;
   end;
   end;

if DBGRID.COLUMNS.Grid.Fields[4].AsString > '' then
DBGRID.COLUMNS.Grid.Fields[6].AsString := (DBGRID.COLUMNS.Grid.Fields[4].Value * DBGRID.COLUMNS.Grid.Fields[5].Value);
end;
end;

procedure TFormLaticinio.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
   var
   N:Integer;
begin
   if (Key = VK_DELETE) then
    begin
      A := StrToFloat(Edit62.Text);
      A := A - DBGRID.COLUMNS.Grid.Fields[6].AsFloat;
      SDS_LATICINIO.Delete;
      end else
   // if DBGRID.COLUMNS.Grid.Fields[1].AsString > '' then
    {passar para proxima coluna usando ENTER no dbgrid}
    if Key = VK_RETURN then
       begin
        Case DBGrid.SelectedIndex of
           0: DBgrid.SelectedIndex := 1;
           1: DBgrid.SelectedIndex := 2;
           2: DBgrid.SelectedIndex := 3;
           3: DBgrid.SelectedIndex := 4;
           4: DBgrid.SelectedIndex := 5;
           5: DBgrid.SelectedIndex := 6;
           ELSE
            dbgrid.SelectedIndex := dbgrid.SelectedIndex + 1;
            SDS_LATICINIO.Next;
            //DBGrid.SelectedField.FocusControl;
            // DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
            DBGrid.SelectedIndex := 0;  // código da proxima linha

            {passar para proxima coluna usando ENTER no dbgrid}
            if SDS_LATICINIO.Eof then
            begin
            INSERIRITEM;
            { if DBGRID.COLUMNS.Grid.Fields[0].Text = '' then
             begin
             SPC_COD_ITENS.ExecProc;
             N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
             SDS_LATICINIOCODIGO.AsString:=IntTostr(N);
             //INSERIRITEM;
             SDS_LATICINIOCODIGO_ID.Text := N_venda.Text;
             SDS_LATICINIOCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
             SDS_LATICINIOCOD_FORNECEDOR.Text := RxDBComboEdit1.Text;
             SDS_LATICINIONOME_FORNECEDOR.Text := Edit1.Text;
             SDS_LATICINIOVALOR_LEITE.Text := DM.SDS_FornecedoresVALOR_LEITE.TEXT;
             SDS_LATICINIOProduto.text := 'LEITE';
             SDS_LATICINIOUNIDADE.TEXT := 'LT';
             SDS_LATICINIOLINHA.Text := DM.SDS_FornecedoresCOD_LINHA.Text;
             end;}
             end;
end;
end;
end;

procedure TFormLaticinio.FormShow(Sender: TObject);
begin
SDS_LATICINIOS.Active := False;
SDS_LATICINIOS.Active := true;
SDS_LATICINIO.Active := False;
SDS_LATICINIO.Active := true;
DM.SDS_Empresa.Active := False;
DM.SDS_Empresa.Active := True;
dm.SDS_Fornecedores.Active := False;
dm.SDS_Fornecedores.Active := true;
Panel1.Enabled := False;
Panel2.Enabled := False;
Edit62.Visible := false;
end;

procedure TFormLaticinio.cancelarClick(Sender: TObject);
begin
  MSG_CD.Text:= 'Confirma o Cancelamento do Lançamento?';
if Msg_cd.Showmodal = mryes then
begin
SDS_LATICINIO.Cancel;
SDS_LATICINIOS.Cancel;

cancelar.Enabled:=false;
Inserir.Enabled:= true;
Alterar.Enabled:= True;
excluir.Enabled:= True;
confirmar.Enabled := false;
Panel1.Enabled := false;
Panel2.Enabled := false;
end;
end;
procedure TFormLaticinio.RxDBComboEdit1Exit(Sender: TObject);
var
  dtaux : TDateTime;
begin
  dtAux := (StrToDate (DBDateEdit1.Text));

  DM.SDS_Fornecedores.locate('CODIGO', RxDBComboEdit1.Text,[loCaseinSensitive]);
   Edit1.Text:=DM.SDS_Fornecedores.Fieldbyname('NOME').AsString;
  if not  DM.SDS_Fornecedores.locate('CODIGO', RxDBComboEdit1.Text,[loCaseinSensitive]) then
   begin
     RxDBComboEdit1ButtonClick(sender);
   end;

   SDS_LATICINIOSmes.asString := FormatDateTime('mm',dtAux);
   SDS_LATICINIOSano.asString := FormatDateTime('yyyy',dtAux);
   
SDS_LATICINIOS.Post;
DBGrid.SetFocus;
//DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
end;

procedure TFormLaticinio.DBGridCellClick(Column: TXColumn);
begin
SDS_LATICINIO.edit;
end;

procedure TFormLaticinio.DBGridColEnter(Sender: TObject);
begin
SDS_LATICINIO.Edit;
end;

procedure TFormLaticinio.excluirClick(Sender: TObject);
begin
Msg_cd.Text:= 'Confirma Exclusão das Informações Na Tela?';
if Msg_cd.Showmodal = mryes then

SDS_LATICINIOS.Delete;
SDS_LATICINIOS.ApplyUpdates(0);
Panel1.Enabled := False;
Panel2.Enabled := False;
end;

procedure TFormLaticinio.AlterarClick(Sender: TObject);
begin

MSG_CD.Text:= 'Confirma alteração dos Dados?';
if Msg_cd.Showmodal = mryes then
begin
panel1.Enabled := TRUE;
Panel2.Enabled := TRUE;
SDS_LATICINIOS.Edit;
SDS_LATICINIO.Edit;
confirmar.Enabled := True;
cancelar.Enabled := True;
excluir.Enabled := False;
Edit62.Visible := true;
end;
end;

procedure TFormLaticinio.Edit62Change(Sender: TObject);
begin
Edit62.Text := SDS_LATICINIOSVALOR_TOTAL.Text;
end;

procedure TFormLaticinio.SDS_LATICINIOAfterPost(DataSet: TDataSet);
var
A: Double;
begin
SDS_LATICINIO.First;
A:= 0;
A:= A + SDS_LATICINIOVALOR_TOTAL.AsFloat;
SDS_LATICINIO.Next;
Edit62.Text:= FloatToStr(A);
While not SDS_LATICINIO.Eof do
begin
A:= A + SDS_LATICINIOVALOR_TOTAL.AsFloat;
SDS_LATICINIO.Next;
Edit62.Text:= FloatToStr(A);
end;
SDS_LATICINIO.last;
end;

procedure TFormLaticinio.DBDateEdit1Enter(Sender: TObject);
begin
SDS_LATICINIOs.Edit;
end;

procedure TFormLaticinio.DBDateEdit2Enter(Sender: TObject);
begin
SDS_LATICINIOS.Edit;
end;

procedure TFormLaticinio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if SDS_LATICINIOS.State in [dsInsert, dsEdit, dsSetKey] then
 begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Lançamento !!!';
  MsgInformacao.Showmodal;
  CanClose := False;
  end else
if SDS_LATICINIO.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o lançamento !!!';
  MsgInformacao.Showmodal;
  CanClose := False;
  end;
end;

procedure TFormLaticinio.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

end.
