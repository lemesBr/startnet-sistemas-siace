unit Contratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, ExtCtrls,  DB, StdCtrls, DBCtrls,
  RXDBCtrl, Mask, SUIDBCtrls, SUIButton, SUIImagePanel,
  SUIGroupBox, SUIRadioGroup, wwdblook, Wwdbdlg, Vcl.Menus,
  AdvGlowButton, AdvToolBar, RxToolEdit, ComObj;

type
  TFormContratos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    XDBGrid1: TXDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Comboedit2: TRxDBComboEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBNavigator: TsuiDBNavigator;
    Label4: TLabel;
    EvDBDateEdit1: TDBDateEdit;
    Label5: TLabel;
    EvDBDateEdit2: TDBDateEdit;
    suiDBRadioGroup1: TsuiDBRadioGroup;
    pnfundo: TPanel;
    Label6: TLabel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    Edit2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    LMDButton1: TAdvGlowMenuButton;
    popopcoes: TPopupMenu;
    MFECHAMENTO_CAIXA: TMenuItem;
    AberturadeNovoCaixa1: TMenuItem;
    ReaberturadeCaixa1: TMenuItem;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    procedure btnNovoClick(Sender: TObject);
    procedure Comboedit2ButtonClick(Sender: TObject);
    procedure Comboedit2Exit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Comboedit2KeyPress(Sender: TObject; var Key: Char);
    procedure Comboedit2Change(Sender: TObject);
    procedure AberturadeNovoCaixa1Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContratos: TFormContratos;

implementation

uses Principal, ConsClientes, ModulodeDados, ModuleDados1, Math, Estenso;

const
  wdDoNotSaveChanges = 0;
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


procedure TFormContratos.btnNovoClick(Sender: TObject);
var
  COD : Integer;
begin
 btnEditar.Enabled := False;
 btnNovo.Enabled := False;
 btnExcluir.Enabled := False;
 btnSalvar.Enabled := true;
 btnCancelar.Enabled := true;

   Panel1.Enabled := True;
   Panel2.Enabled := True;
   DM.SPC_CONTRATOS.ExecProc;
   Cod:= (DM.SPC_CONTRATOS.ParamByName('ID_CONTRATO').AsInteger);
   dm.SDS_Contratos.Insert;
   DM.SDS_CONTRATOSID_CONTRATO.Text:=IntTostr(Cod);

Comboedit2.SetFocus;
dm.SDS_Contratos.Edit;
dm.SDS_CONTRATOSCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
end;

procedure TFormContratos.Comboedit2ButtonClick(Sender: TObject);
begin
  DM.SDS_Clientes.Open;
  
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     formconsclientes.edit1.text := Comboedit2.Text;
      FormConsClientes.ShowModal;

      Comboedit2.Text := dm.sds_clientesCodigo.text;
      DBEdit1.Text := dm.sds_clientesNome_rs.text;
end;
end;

procedure TFormContratos.Comboedit2Exit(Sender: TObject);
begin
   { If DM.SDS_Clientes.locate('CODIGO', RxDBComboEdit1.Text,[])=True then
      begin
      DM.sds_contratos.Edit;
      RxDBComboEdit1.Text := dm.sds_clientesCodigo.text;
      DBEdit1.Text := dm.sds_clientesNome_rs.text;
      end;  }
IF Comboedit2.Text > '' then
BEGIN
if edit2.Text='LETRAS' THEN
  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.add('select * from clientes where NOME_RS like ' + #39 + '%' + ComboEdit2.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',ComboEdit2.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ComboEdit2ButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  DBEdit1.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  ComboEdit2.Text     := DM.SDS_ClientesCODIGO.Text;
  EvDBDateEdit1.SetFocus;
   end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF Comboedit2.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 ComboEdit2.Text := '';
end else

  //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + ComboEdit2.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(Comboedit2.Text),[]);
  Comboedit2.Text := RemoveChar(Comboedit2.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Comboedit2.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  DBEdit1.Text   := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  ComboEdit2.Text     := DM.SDS_ClientesCODIGO.Text;
  EvDBDateEdit1.SetFocus;
 end;
 end;

 end;
 
end;

procedure TFormContratos.btnEditarClick(Sender: TObject);
begin
 btnEditar.Enabled := False;
 btnNovo.Enabled := False;
 btnExcluir.Enabled := False;
 btnSalvar.Enabled := true;
 btnCancelar.Enabled := true;
  Panel1.Enabled := True;
   Panel2.Enabled := True;
 DM.sds_contratos.Edit;
end;

procedure TFormContratos.btnExcluirClick(Sender: TObject);
begin
  if Application.MESSAGEBOX('Deseja realmente Excluir o contrato selecionado?', 'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then;
  begin
  dm.SDS_Contratos.Delete;
  DM.SDS_Contratos.ApplyUpdates(0);
  Panel1.Enabled := false;
  Panel2.Enabled := False;
  end;
end;

procedure TFormContratos.btnCancelarClick(Sender: TObject);
begin
 btnEditar.Enabled := true;
 btnNovo.Enabled := true;
 btnExcluir.Enabled := true;
 btnSalvar.Enabled := false;
 btnCancelar.Enabled := false;
  dm.SDS_Contratos.cancel;
  Panel1.Enabled := false;
  Panel2.Enabled := False;
end;

procedure TFormContratos.btnSalvarClick(Sender: TObject);
begin

 btnEditar.Enabled := true;
 btnNovo.Enabled := true;
 btnExcluir.Enabled := true;
 btnSalvar.Enabled := false;
 btnCancelar.Enabled := false;
  dm.SDS_Contratos.post;
  dm.sds_contratos.ApplyUpdates(0);
  Panel1.Enabled := false;
  Panel2.Enabled := TRUE;
end;

procedure TFormContratos.FormShow(Sender: TObject);
begin
dm.SDS_Contratos.Active := false;
dm.SDS_Contratos.Active := true;
dm.SDS_Empresa.Active := False;
dm.SDS_Empresa.Active := true;
dm1.SDS_Contratos_Caract.Active :=False;
dm1.SDS_Contratos_Caract.Active :=true;
DM1.sds_contrato_tipo.Active := False;
DM1.sds_contrato_tipo.Active := true;
DM1.SDS_CONTRATO_PLANO.Active := False;
DM1.SDS_CONTRATO_PLANO.Active := true;

dm.SDS_Contratos.Filtered := false;
end;

procedure TFormContratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := cafree;
FormContratos := nil;
end;

procedure TFormContratos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_CONTRATOS.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  ShowMessage('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!');
    CanClose := False;
  end;
end;

procedure TFormContratos.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
  var
  ativo: string;
begin
Ativo:= DM.SDS_Contratosativo.Asstring;
If ativo = 'I' then
xDbgrid1.Canvas.Font.Color:= clRed;
If ativo = 'A' then
xDbgrid1.Canvas.Font.Color:= clBlack;
XDbgrid1.DefaultDrawDataCell(Rect, xdbgrid1.columns[datacol].field, State);
end;

procedure TFormContratos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#27 then close;

if not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TComboEdit){ and NOT (ActiveControl is TRxDBComboEdit)} then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormContratos.Comboedit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;



end;

procedure TFormContratos.Comboedit2Change(Sender: TObject);
begin
IF (ComboEdit2.Text>='A') AND (ComboEdit2.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (ComboEdit2.Text>='0') AND (ComboEdit2.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF ComboEdit2.Text='' THEN
EDIT2.Text:='';
end;

procedure TFormContratos.AberturadeNovoCaixa1Click(Sender: TObject);
var
  MSWord: Variant;
  texto : string;
  dtaux : TDateTime;
 // szPintura : string;
begin
 TRY
  dtAux := (StrToDate (EvDBDateEdit2.Text));
  MSWord := CreateOleObject('Word.Application');
  MSWord.Documents.Open(ExtractFIlePath(Application.ExeName) + '\contratos\Contrato provedor.doc');
//  ShowMessage(MSWord.ActiveDocument.Content.Text);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%Empresa%>', ReplaceWith := DM.SDS_EmpresaRAZAO_SOCIAL.TEXT,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%EmpresaCNPJ%>', ReplaceWith := DM.SDS_EmpresaCNPJ.Text,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%EmpresaIE%>', ReplaceWith := DM.SDS_EmpresaIE.TEXT,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%EmpresaEndereco%>', ReplaceWith := DM.SDS_EmpresaENDERECO.text + ' bairro ' +dm.SDS_EmpresaBAIRRO.Text + 'na cidade de ' + dm.SDS_EmpresaCIDADE.text +'-'+ DM.SDS_EmpresaUF.text,
    Replace := 2);

    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + Comboedit2.Text + '%' + #39+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;
    
    dm.SDS_CLIENTES.Locate('CODIGO',comboedit2.text,[]);

  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%ClienteNome%>', ReplaceWith := DM.SDS_clientesnome_rs.TEXT,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%ClienteCNPJ%>', ReplaceWith := DM.SDS_clientescpf_cnpj.TEXT,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%ClienteIE%>', ReplaceWith := DM.SDS_ClientesRG_IE.TEXT,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%ClienteEndereco%>', ReplaceWith := DM.SDS_ClientesENDERECO.text + ' nº '+DM.SDS_ClientesNUMERO.text +' bairro ' +dm.SDS_ClientesBAIRRO.Text + ' na cidade de ' + dm.SDS_clientesCIDADE.text +'-'+ DM.SDS_ClientesUF.text,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%ClienteFone%>', ReplaceWith := DM.SDS_ClientesTELEFONE.TEXT,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%PlanoCaract%>', ReplaceWith := DBLookupComboBox2.text,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%Plano%>', ReplaceWith := DBLookupComboBox1.text,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%Valor%>', ReplaceWith := DBEdit2.text,
    Replace := 2);
  Texto := dm.SDS_CONTRATOSVALOR.text;
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%ValorExtenso%>', ReplaceWith := NumeroParaExtenso(StrToFloat(texto)),
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%Vencimento%>', ReplaceWith := FormatDateTime('dd',dtAux),
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%EmpresaCidade%>', ReplaceWith := dm.SDS_EmpresaCIDADE.text,
    Replace := 2);
  MSWord.ActiveDocument.Content.Find.Execute(FindText := '<%DataAtual%>',ReplaceWith :=  EvDBDateEdit1.text,
    Replace := 2);
  MSWord.ActiveDocument.PrintOut(Copies := 1);

 // MSWord.quit;
  MSWord.ActiveDocument.Close(wdDoNotSaveChanges);
  finally
    MSWord.Quit;
    MSWord := Unassigned;
  end;
end;

end.
