unit ConferenciaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, AlignEdit, SUIButton, ExtCtrls, FMTBcd, DB,
  SqlExpr;

type
  TFormConfEstoque = class(TForm)
    Image1: TImage;
    Bevel1: TBevel;
    suiButton1: TsuiButton;
    Label21: TLabel;
    EdtCodMot: TAlignEdit;
    BtnConsMot: TSpeedButton;
    EdtNomeMot: TEdit;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    AlignEdit1: TAlignEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    AlignEdit2: TAlignEdit;
    AlignEdit3: TAlignEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    suiButton2: TsuiButton;
    Qry_ConfEstoque: TSQLQuery;
    Dts_confEstoque: TDataSource;
    Qry_ConfEstoqueCODIGO: TIntegerField;
    Qry_ConfEstoqueCODIGO_BARRAS: TStringField;
    Qry_ConfEstoqueDESCRICAO: TStringField;
    Qry_ConfEstoquePRECO_CUSTO: TFMTBCDField;
    Qry_ConfEstoquePRECO_VENDA: TFMTBCDField;
    Qry_ConfEstoqueESTOQUE_ATUAL: TFMTBCDField;
    Qry_ConfEstoqueVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    Qry_ConfEstoqueVALOR_ESTOQUE: TFMTBCDField;
    Qry_ConfEstoqueATIVO: TStringField;
    Qry_ConfEstoqueDESC_UNIDADE: TStringField;
    Qry_ConfEstoqueCODIGO_GRUPO: TIntegerField;
    Qry_ConfEstoqueCODIGO_SUBGRUPO: TIntegerField;
    Qry_ConfEstoqueCODIGO_MARCA: TIntegerField;
    Qry_ConfEstoqueSECCAO: TIntegerField;
    Qry_ConfEstoqueCATEGORIA: TIntegerField;
    suiButton3: TsuiButton;
    CheckBox1: TCheckBox;
    Qry_ConfEstoqueREFERENCIA: TStringField;
    Qry_ConfEstoqueESTOQUE: TFMTBCDField;
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BtnConsMotClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    procedure AlignEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure AlignEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure AlignEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodMotKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodMotEnter(Sender: TObject);
    procedure AlignEdit1Enter(Sender: TObject);
    procedure AlignEdit2Enter(Sender: TObject);
    procedure AlignEdit3Enter(Sender: TObject);
    procedure CheckBox1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfEstoque: TFormConfEstoque;

implementation

uses ConsGrupos, ModulodeDados, ConsMarcas, ConsSeccao, ConsCategoria,
  ModulodeDadosConsultas, UConferenciaEstoque;

{$R *.dfm}

procedure TFormConfEstoque.suiButton2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFormConfEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormConfEstoque := nil;
end;

procedure TFormConfEstoque.SpeedButton1Click(Sender: TObject);
begin
Try
DM.SDS_Grupos.Open;

if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
AlignEdit1.Clear;
Edit1.Clear;
Edit1.Text:= DM.SDS_GruposDESCRICAO.Text;
AlignEdit1.Text:= DM.SDS_GruposCodigo.AsString;
end;

procedure TFormConfEstoque.SpeedButton3Click(Sender: TObject);
begin
Try
  DM.SDS_Marcas.Open;
if FormConsMarcas=nil   then
    begin
    FormConsMarcas:=TFormConsMarcas.Create(self);
      FormConsMarcas.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Edit3.Clear;
AlignEdit3.Clear;
Edit3.Text:= DM.SDS_MarcasDESCRICAO.Text;
AlignEdit3.Text:= DM.SDS_MarcasCODIGO.AsString;
end;

procedure TFormConfEstoque.BtnConsMotClick(Sender: TObject);
begin
try
DM.SDS_SECCAO.Open;

if FormConsseccao=nil   then
    begin
    FormConsseccao:=TFormConsseccao.Create(self);
      FormConsseccao.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
EdtCodMot.Clear;
EdtNomeMot.Clear;
EdtNomeMot.Text:= DM.SDS_SECCAODESCRICAO.Text;
EdtCodMot.Text:= DM.SDS_SECCAOCODIGO.AsString; 
end;

procedure TFormConfEstoque.SpeedButton2Click(Sender: TObject);
begin
Try
DM.SDS_CATEGORIA.Open;
if FormConscategoria=nil   then
    begin
    FormConscategoria:=TFormConscategoria.Create(self);
      FormConscategoria.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Edit2.Clear;
AlignEdit2.Clear;
Edit2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
AlignEdit2.Text:= DM.SDS_CATEGORIACODIGO.AsString;
end;

procedure TFormConfEstoque.suiButton1Click(Sender: TObject);
var
  categoria, seccao, grupo, marca: string;
begin
marca := AlignEdit3.Text;
if marca > '' then
begin
TRY
Qry_ConfEstoque.Close;
Qry_ConfEstoque.SQL.Clear;
Qry_ConfEstoque.SQL.Add('select * from V_CONFERENCIA_ESTOQUE where CODIGO_MARCA='+ marca +' ORDER BY DESCRICAO ASC');
Qry_ConfEstoque.Open;
if  Qry_ConfEstoque.Eof then
  Begin
       ShowMessage('Não Há Itens a Serem Impressos');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Relatorio de Conferência de Estoque?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.DefaultFilter.Destroy;
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end else
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end;
  end;
        Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;
end else

grupo := AlignEdit1.Text;
if grupo > '' then
begin
TRY
Qry_ConfEstoque.Close;
Qry_ConfEstoque.SQL.Clear;
Qry_ConfEstoque.SQL.Add('select * from V_CONFERENCIA_ESTOQUE where CODIGO_GRUPO='+grupo +' ORDER BY DESCRICAO ASC');
Qry_ConfEstoque.Open;
if  Qry_ConfEstoque.Eof then
  Begin
       ShowMessage('Não Há Itens a Serem Impressos');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Relatorio de Conferência de Estoque?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.DefaultFilter.Destroy;
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end else
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end;
  end;
        Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;
end else
seccao := EdtCodMot.Text;
if seccao > '' then
begin
TRY
Qry_ConfEstoque.Close;
Qry_ConfEstoque.SQL.Clear;
Qry_ConfEstoque.SQL.Add('select * from V_CONFERENCIA_ESTOQUE where seccao='+ seccao +' ORDER BY DESCRICAO ASC');
Qry_ConfEstoque.Open;
if  Qry_ConfEstoque.Eof then
  Begin
       ShowMessage('Não Há Itens a Serem Impressos');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Relatorio de Conferência de Estoque?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.DefaultFilter.Destroy;
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end else
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end;
  end;
        Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;
end else
categoria := AlignEdit2.Text;
if categoria > '' then
begin
TRY
Qry_ConfEstoque.Close;
Qry_ConfEstoque.SQL.Clear;
Qry_ConfEstoque.SQL.Add('select * from V_CONFERENCIA_ESTOQUE where Categoria='+categoria +' ORDER BY DESCRICAO ASC');
Qry_ConfEstoque.Open;
if  Qry_ConfEstoque.Eof then
  Begin
       ShowMessage('Não Há Itens a Serem Impressos');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Relatorio de Conferência de Estoque?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.DefaultFilter.Destroy;
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end else
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end;
  end;
        Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;
end else

if CheckBox1.Checked = True then
begin
TRY
Qry_ConfEstoque.Close;
Qry_ConfEstoque.SQL.Clear;
Qry_ConfEstoque.SQL.Add('select * from V_CONFERENCIA_ESTOQUE ORDER BY DESCRICAO ASC');
Qry_ConfEstoque.Open;
if  Qry_ConfEstoque.Eof then
  Begin
       ShowMessage('Não Há Itens a Serem Impressos');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Relatorio de Conferência de Estoque?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.DefaultFilter.Destroy;
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end else
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormRelConfEstoque := TFormRelConfEstoque.create(Self);
     FormRelConfEstoque.RLReport1.Prepare;
     FormRelConfEstoque.RLReport1.PreviewModal;
     end;
  end;
        Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;

end;
end;

procedure TFormConfEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  {  If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;}
end;

procedure TFormConfEstoque.suiButton3Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
AlignEdit1.Clear;
AlignEdit2.Clear;
AlignEdit3.Clear;
EdtCodMot.Clear;
EdtNomeMot.Clear;
end;

procedure TFormConfEstoque.AlignEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
begin
if AlignEdit2.Text >'' then
DM.SDS_CATEGORIA.Open;
DM.SDS_CATEGORIA.Refresh;
if (DM.SDS_CATEGORIA.Locate('CODIGO',VarArrayOf([AlignEdit2.Text]),[])) then
begin
Edit2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
end else
if not (DM.SDS_CATEGORIA.Locate('CODIGO',VarArrayOf([AlignEdit2.Text]),[])) then
begin
  ShowMessage('Categoria Não Localizada');
end;
end;
end;

procedure TFormConfEstoque.AlignEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
if AlignEdit3.Text >'' then
DM.SDS_Marcas.Open;
DM.SDS_Marcas.Refresh;
if (DM.SDS_Marcas.Locate('CODIGO',VarArrayOf([AlignEdit3.Text]),[])) then
begin
edit3.Text:= DM.SDS_MarcasDESCRICAO.Text;
end else
if not (DM.SDS_Marcas.Locate('CODIGO',VarArrayOf([AlignEdit3.Text]),[])) then
begin
  ShowMessage('Marca não localizada');
end;
end;
end;

procedure TFormConfEstoque.AlignEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin

if Key =#13 then
begin
if AlignEdit1.Text >'' then
DM.SDS_Grupos.Open;
DM.SDS_Grupos.Refresh;
if (DM.SDS_Grupos.Locate('CODIGO',VarArrayOf([AlignEdit1.Text]),[])) then
begin
Edit1.Text:= DM.SDS_GruposDESCRICAO.Text;
//Grupo.Text:= DM.SDS_GruposCodigo.AsString;
end else
if not (DM.SDS_Grupos.Locate('CODIGO',VarArrayOf([AlignEdit1.Text]),[])) then
begin
  ShowMessage('Grupo não Localizado');
end;
end;
end;

procedure TFormConfEstoque.EdtCodMotKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
if EdtCodMot.Text >'' then
DM.SDS_Seccao.Open;
DM.SDS_Seccao.Refresh;
if (DM.SDS_Seccao.Locate('CODIGO',VarArrayOf([EdtCodMot.Text]),[])) then
begin
EdtNomeMot.Text:= DM.SDS_SeccaoDESCRICAO.Text;
end else
if not (DM.SDS_Seccao.Locate('CODIGO',VarArrayOf([EdtCodMot.Text]),[])) then
begin
ShowMessage('Secção nao localizada');
end;
end;
end;

procedure TFormConfEstoque.EdtCodMotEnter(Sender: TObject);
begin
suiButton3Click(sender);
end;

procedure TFormConfEstoque.AlignEdit1Enter(Sender: TObject);
begin
suiButton3Click(sender);
end;


procedure TFormConfEstoque.AlignEdit2Enter(Sender: TObject);
begin
suiButton3Click(sender);
end;

procedure TFormConfEstoque.AlignEdit3Enter(Sender: TObject);
begin
suiButton3Click(sender);
end;

procedure TFormConfEstoque.CheckBox1Enter(Sender: TObject);
begin
suiButton3Click(sender);
end;

end.
