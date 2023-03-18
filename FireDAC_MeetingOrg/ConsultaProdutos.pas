unit ConsultaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIButton, SUIDBCtrls, Grids, DBGrids,
  StdCtrls, SUIEdit, RXCtrls, DBCtrls, Mask, Mylabel, DB,
  DBClient, SimpleDS;

type
  TFormConsultaProdutos = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    suiDBNavigator1: TsuiDBNavigator;
    Bevel1: TBevel;
    DBImage1: TsuiDBImage;
    RxLabel3: TRxLabel;
    RxLabel22: TRxLabel;
    Grupo2: TsuiDBEdit;
    RxLabel23: TRxLabel;
    SubGrupo2: TsuiDBEdit;
    RxLabel24: TRxLabel;
    Marca2: TsuiDBEdit;
    RxLabel25: TRxLabel;
    FORNECEDOR2: TsuiDBEdit;
    RxLabel19: TRxLabel;
    suiDBEdit15: TsuiDBEdit;
    RxLabel11: TRxLabel;
    suiDBEdit6: TsuiDBEdit;
    myLabel3d1: TmyLabel3d;
    DBText1: TDBText;
    RxLabel4: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    Edit1: TEdit;
    cbxpesquisa: TComboBox;
    RxLabel2: TRxLabel;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxpesquisaChange(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaProdutos: TFormConsultaProdutos;

implementation

uses Z_RotinasGerais, Principal, ModulodeDados;

{$R *.dfm}

procedure TFormConsultaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaProdutos:=nil;
end;

procedure TFormConsultaProdutos.FormShow(Sender: TObject);
Begin

cbxpesquisa.ItemIndex := DM.SDS_CONFIGURACOESPESQ_PADRAO.AsInteger;
end;

procedure TFormConsultaProdutos.Edit1Change(Sender: TObject);
begin
IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:=''
end;


procedure TFormConsultaProdutos.Edit1Enter(Sender: TObject);
begin
Edit1.Clear;
CorEntrada(Sender);
end;

procedure TFormConsultaProdutos.Edit2Enter(Sender: TObject);
begin
Edit1.Clear;
CorEntrada(Sender);
end;

procedure TFormConsultaProdutos.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
DBGrid1.SetFocus;
end;

procedure TFormConsultaProdutos.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaProdutos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
      if (Key=VK_F2) then
      begin
      EDIT1.SetFocus;
      end;

      if (Key=VK_F3) then
      begin
      cbxpesquisa.SetFocus;
      cbxpesquisa.DroppedDown;
      end;

end;

procedure TFormConsultaProdutos.cbxpesquisaChange(Sender: TObject);
begin

if cbxpesquisa.ItemIndex = 0 THEN
begin
 DM.SDS_PRODUTOS.Filtered := False;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
  DM.SDS_PRODUTOS.Filtered := False;
  end else
if cbxpesquisa.ItemIndex = 3 then
begin
  DM.SDS_PRODUTOS.Filtered := False;
end;
end;

procedure TFormConsultaProdutos.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsultaProdutos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
    Var
    Check: Integer;
    R: TRect;
begin
if not Odd(DM.SDS_PRODUTOS.RecNo) then
   if not(gdselected in State) then
   begin
    DBGrid1.Canvas.Brush.Color := $00ffefdf;
    DBGrid1.Canvas.FillRect(rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
  //Desenha um checkbox no dbgrid
if column.FieldName = 'ATIVO' then begin
DBGrid1.Canvas.FillRect(Rect);
Check := 0;
if DM.SDS_PRODUTOSATIVO.AsString = 'A' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;
end;

procedure TFormConsultaProdutos.Edit1KeyPress(Sender: TObject;
  var Key: Char);
VAR
 ACHOU:BOOLEAN;
begin
if key=#13 then
begin
if cbxpesquisa.ItemIndex = 1 then
begin
{ dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:='DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True; }
 dm.SDS_PRODUTOS.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS.Active := True;
end else
if cbxpesquisa.ItemIndex = 3 then
begin
   dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('REFERENCIA',Edit1.Text,[lopartialkey, loCaseinSensitive]);
end else

if edit2.Text='LETRAS' THEN
ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
DBGrid1.SetFocus;


IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

IF ACHOU=FALSE THEN
ACHOU:=dm.Sds_produtos.Locate('CODIGO',EDIT1.Text,[]);

IF ACHOU=TRUE THEN
DBGrid1.SetFocus;


IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
DBGrid1.SetFocus;

end else
if cbxpesquisa.ItemIndex = 4 then
begin
 dm.Sds_produtos.Locate('Codigo',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
end else
if cbxpesquisa.ItemIndex = 0 then
begin
 dm.Sds_produtos.Locate('descricao',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
end else


end;

end;

end.
