unit ConsProdutosOrca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, SUIForm, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables, XDBGrids, DBCtrls,
  Mask, Buttons;

type
  TFormConsProdutosOrca = class(TForm)
    suiForm1: TsuiForm;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    cbxpesquisa: TComboBox;
    RxLabel2: TRxLabel;
    XDBGrid1: TXDBGrid;
    Panel3: TPanel;
    RxLabel27: TRxLabel;
    RxLabel26: TRxLabel;
    RxLabel38: TRxLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    RxLabel3: TRxLabel;
    RxLabel28: TRxLabel;
    RxLabel5: TRxLabel;
    suiDBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    RxLabel36: TRxLabel;
    RxLabel37: TRxLabel;
    DBEdit1: TDBEdit;
    DBNavigator: TsuiDBNavigator;
    DBMemo3: TDBMemo;
    RxLabel4: TRxLabel;
    DBMemo4: TDBMemo;
    RxLabel6: TRxLabel;
    DBEdit2: TDBEdit;
    DBText1: TDBText;
    Edit2: TEdit;
    RxLabel9: TRxLabel;
    DBEdit6: TDBEdit;
    RxLabel7: TRxLabel;
    suiButton1: TsuiButton;
    suiButton3: TsuiButton;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure XDBGrid1OrderChanged(Sender: TObject);
    procedure cbxpesquisaChange(Sender: TObject);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormConsProdutosOrca: TFormConsProdutosOrca;
   ativo: string;
implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Vendas, ConsProdutos,
  UCustos, ProdutosFalta;

{$R *.dfm}

procedure TFormConsProdutosOrca.FormShow(Sender: TObject);
begin
cbxpesquisa.ItemIndex := DM.SDS_CONFIGURACOESPESQ_PADRAO.AsInteger;

 ATIVO := 'A';
 DM.SDS_PRODUTOS.Filtered := False;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
 
DM.SDS_SIMILARES.Active:= true;
Edit1.Clear;
Edit1.SetFocus;

Edit1.Text := formVendas.ComboEdit2.Text;

BitBtn1Click(Sender);
end;

procedure TFormConsProdutosOrca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsProdutos:=nil;
end;

procedure TFormConsProdutosOrca.Edit1Change(Sender: TObject);
begin
IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormConsProdutosOrca.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsProdutosOrca.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsProdutosOrca.Edit1KeyPress(Sender: TObject; var Key: Char);
VAR
ACHOU: Boolean;
begin
if key=#13 then begin

if cbxpesquisa.ItemIndex = 1 then
begin
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
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
xDBGrid1.SetFocus;


IF EDIT2.Text='NUMEROS' THEN
BEGIN
Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

IF ACHOU=FALSE THEN
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;


IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;

end;
end;
end;

procedure TFormConsProdutosOrca.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormConsProdutosOrca.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     XDBGrid1.SetFocus;
end;

procedure TFormConsProdutosOrca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;


procedure TFormConsProdutosOrca.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsProdutosOrca.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
END;
end;

procedure TFormConsProdutosOrca.Edit2Enter(Sender: TObject);
begin
    CorEntrada(Sender);
end;

procedure TFormConsProdutosOrca.Edit2Exit(Sender: TObject);
begin
CORSAIDA(SENDER);
end;

procedure TFormConsProdutosOrca.XDBGrid1OrderChanged(Sender: TObject);
var
CurrentID, AOrderFields: string;
begin
 { AOrderFields := StringReplace(TXDBGrid(Sender).OrderFields, 'DESCRICAO', []);
  AOrderFields := StringReplace(AOrderFields, 'CODIGO_BARRAS', []);
//  AOrderFields := StringReplace(AOrderFields, 'CODIGO_BARRAS', 'CODIGO_BARRAS', []);
  AOrderFields := StringReplace(AOrderFields, 'REFERENCIA', []);
  AOrderFields := StringReplace(AOrderFields, 'DESC_UNIDADE', []);
  TXDBGrid(Sender).ChangeDataSetOrder(AOrderFields); }
end;

procedure TFormConsProdutosOrca.cbxpesquisaChange(Sender: TObject);
begin
ATIVO:='A';
if cbxpesquisa.ItemIndex = 0 THEN
begin
 dm.SDS_PRODUTOS.Filtered := false;
  dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
end else
if cbxpesquisa.ItemIndex = 1 THEN
begin
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
end else
if cbxpesquisa.ItemIndex = 2 then
begin
  DM.SDS_PRODUTOS.Filtered := False;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
  end else
if cbxpesquisa.ItemIndex = 3 then
begin
  DM.SDS_PRODUTOS.Filtered := False;
  dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
  dm.SDS_PRODUTOS.Filtered := True;
  Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
end;
end;

procedure TFormConsProdutosOrca.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
   Var
    Check: Integer;
    R: TRect;
begin
if not Odd(DM.SDS_PRODUTOS.RecNo) then
   if not(gdselected in State) then
   begin
    XDBGrid1.Canvas.Brush.Color := $00ffefdf;
    XDBGrid1.Canvas.FillRect(rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
  //Desenha um checkbox no dbgrid
if column.FieldName = 'ATIVO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if DM.SDS_PRODUTOSATIVO.AsString = 'A' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(XDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;

IF Column.Field = dm.SDS_PRODUTOSESTOQUE THEN
begin
estoque:= Dm.SDS_ProdutosEstoque.AsFloat;
If estoque < 1 then
xDbgrid1.Canvas.Font.Color := clRed;
xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
If estoque >= 1 then
xDbgrid1.Canvas.Font.Color := clBlack;
xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
xDbgrid1.DefaultDrawDataCell(Rect, Column.field, State);
end;

end;

procedure TFormConsProdutosOrca.suiButton3Click(Sender: TObject);
begin
try
  if Formcustos=nil   then
    BEGIN
     Formcustos := TFormcustos.Create(self);
     Formcustos.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Custos!!');
end;
end;

procedure TFormConsProdutosOrca.suiButton1Click(Sender: TObject);
begin
try
  if FormPRODUTOSfALTA=nil   then
    BEGIN
     FormPRODUTOSfALTA := TFormPRODUTOSfALTA.Create(self);
     FormPRODUTOSfALTA.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Produtos em Falta!!');
end;
end;

procedure TFormConsProdutosOrca.BitBtn1Click(Sender: TObject);
VAR
ACHOU: Boolean;
begin
if cbxpesquisa.ItemIndex = 1 then
begin
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
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
xDBGrid1.SetFocus;


IF EDIT2.Text='NUMEROS' THEN
BEGIN
Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

IF ACHOU=FALSE THEN
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;


IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;

end;
end;
end.
