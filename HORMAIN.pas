unit HORMAIN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, DBClient, Grids, XDBGrids, Buttons, SUIEdit,
  Mask, RxToolEdit, sLabel;


type
  TFormEtqProdutos = class(TForm)
    btnPreview: TButton;
    btnPrint: TButton;
    SizeCbo: TComboBox;
    Label1: TLabel;
    Label6: TLabel;
    SkipEdt: TEdit;
    GroupBox1: TGroupBox;
    myLabel3d1: TsLabelFX;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboEdit1: TComboEdit;
    E_Nome: TsuiEdit;
    etq: TEdit;
    BitBtn4: TBitBtn;
    XDBGrid1: TXDBGrid;
    BitBtn5: TBitBtn;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2codigo: TIntegerField;
    ClientDataSet2Codigo_barras: TStringField;
    ClientDataSet2Descricao: TStringField;
    ClientDataSet2Valor: TFMTBCDField;
    ClientDataSet2Empresa: TStringField;
    DataSource2: TDataSource;
    Button1: TButton;
    Edit2: TEdit;
    Label5: TLabel;
    procedure btnPreviewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SkipEdtExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1Change(Sender: TObject);
    procedure ComboEdit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEtqProdutos: TFormEtqProdutos;

implementation

uses  etiquetasfr, ModulodeDados, ConsProdutos, etiquetas_barras,
  etiquetas_6col;

{$R *.DFM}
function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


end;

procedure TFormEtqProdutos.btnPreviewClick(Sender: TObject);
begin
{  with TFormEtqProdRel.Create(Application) do
  begin
    case SizeCbo.ItemIndex of
      0: LabelSize := h5160;
      1: LabelSize := h5161;
      2: LabelSize := h5162;
    end;

    SkipRow := StrToInt(SkipEdt.Text);

    if sender = btnPreview then
      QuickRep1.Preview
    else
      QuickRep1.Print;

    Free;
  end;  }
end;

procedure TFormEtqProdutos.FormCreate(Sender: TObject);
begin
  SizeCbo.ItemIndex := 2;

  with clientDataset2 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'ETIQUETA.xlm';
  if not FileExists(filename) then
  createdataset;
  open;
  end;

  while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;
end;

procedure TFormEtqProdutos.SkipEdtExit(Sender: TObject);
  function IsInteger(const s: string): boolean;
  var
    E: Integer;
    NotUsed: integer;
  begin
    Val(S, NotUsed, E);
    result := E = 0;
  end;
begin
  if not IsInteger(SkipEdt.Text) then
    SkipEdt.Text := '0';
end;

procedure TFormEtqProdutos.BitBtn4Click(Sender: TObject);
var
i : Integer;
contador: Integer;
begin
       i:=0;
       contador:=0;

       Contador :=StrToInt(etq.Text);
       For I:=1 to Contador do
       begin
       ClientDataSet2.Insert;
       ClientDataSet2codigo.Text        :=  DM.SDS_PRODUTOSCODIGO.Text;
       ClientDataSet2Descricao.Value     := Formatar(E_Nome.Text,23,true,' ');
       ClientDataSet2Codigo_barras.Text :=  ComboEdit1.Text;
       ClientDataSet2Valor.Text         :=  DM.SDS_PRODUTOSPRECO_VENDA.Text;
       ClientDataSet2Empresa.Text       :=  DM.SDS_EmpresaNOME_FANTASIA.TEXT;
       ClientDataSet2.Post;
       Label5.Caption := 'Nº de Etiquetas a serem Impressas: '+ IntToStr(ClientDataSet2.recordcount);
       end;

end;

procedure TFormEtqProdutos.ComboEdit1ButtonClick(Sender: TObject);
begin
Try
if FormConsProdutos=nil   then
    begin
    FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.Showmodal;
      ComboEdit1.Text := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
      E_Nome.Text := dm.SDS_PRODUTOSDESCRICAO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de pesquisa de produtos!!');
end;
end;

procedure TFormEtqProdutos.ComboEdit1Exit(Sender: TObject);
begin
{
if dm.SDS_produtos.Locate('codigo_barras',ComboEdit1.Text, []) = True then
 BEGIN
   E_Nome.Text := DM.SDS_PRODUTOSDESCRICAO.Text;
 end else
     if not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
        ShowMessage('Produto nao localizado, ou não Cadastrado');
        ComboEdit1.SetFocus;
      end;
 //BitBtn4.SetFocus;
                         }
                         
end;

procedure TFormEtqProdutos.ComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
  var
    ativo: string;
begin
if (Key=#13) then
begin
ativo :='A';

if edit2.Text='LETRAS' THEN
BEGIN

 if ComboEdit1.Text > '' then
 begin
 FormConsProdutos:=NIL;
 FormConsProdutos:=TFormConsProdutos.Create(self);
 FormConsProdutos.Edit1.Text := ComboEdit1.Text;
 FormConsProdutos.Showmodal;

 if DM.SDS_PRODUTOS.RecordCount > 0 then
 begin
 ComboEdit1.Text := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
 e_nome.Text := DM.SDS_PRODUTOSDESCRICAO.Text;
 etq.SetFocus;
 end;
end;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
if ComboEdit1.Text > '' then
 begin
 dm.SDS_PRODUTOS.Active := false;
 DM.Sds_produtos.sql.clear;
 DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc');
 dm.SDS_PRODUTOS.Active := True;
 ATIVO := 'A';
 DM.SDS_PRODUTOS.Filtered := False;
 DM.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;

      If DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
       ComboEdit1.TEXT := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
       E_nome.Text := DM.SDS_PRODUTOSDESCRICAO.Text;
       etq.SetFocus;
      end else
      If not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
       FormConsProdutos:=NIL;
       FormConsProdutos:=TFormConsProdutos.Create(self);
       FormConsProdutos.Edit1.Text := ComboEdit1.Text;
       FormConsProdutos.Showmodal;
       ComboEdit1.TEXT := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
       e_nome.Text := DM.SDS_PRODUTOSDESCRICAO.Text;
        etq.SetFocus;
      end;
      end;

end;
end;
{begin
if Key = #13 then
 begin
      if DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
          // ComboEdit1.Text := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
           E_Nome.Text := dm.SDS_PRODUTOSDESCRICAO.Text;
          end;
      if not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
        ShowMessage('Produto nao localizado, ou não Cadastrado');
        ComboEdit1.SetFocus;
      end;
end;}
end;

procedure TFormEtqProdutos.BitBtn5Click(Sender: TObject);
begin

  with clientDataset2 do
  Begin
  EmptyDataSet;
  Close;
  end;
   with clientDataset2 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'ETIQUETA.xlm';
  if not FileExists(filename) then
  createdataset;
  open;
  end;
  
        while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
        end;
end;

procedure TFormEtqProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
FormEtqProdutos :=nil;
end;

procedure TFormEtqProdutos.Button1Click(Sender: TObject);
begin
   if SizeCbo.ItemIndex = 0 then
   begin
   with TFormEtiqueta.Create(Application) do
    begin
       case SizeCbo.ItemIndex of
      0: LabelSize := h5160;
      end;
    SkipRow := StrToInt(SkipEdt.Text);

    if sender = Button1 then
      RLReport1.Preview
    else
      RLReport1.Print;

    Free;
    end;
  end else
  if SizeCbo.ItemIndex = 1 then
   begin
   with TFormEtiqueta.Create(Application) do
    begin
       case SizeCbo.ItemIndex of
      1: LabelSize := h5161;
      end;
    SkipRow := StrToInt(SkipEdt.Text);

    if sender = Button1 then
      RLReport1.Preview
    else
      RLReport1.Print;

    Free;
    end;
  end else
   if SizeCbo.ItemIndex = 2 then
   begin
   with TFormEtiqueta.Create(Application) do
    begin
       case SizeCbo.ItemIndex of
      2: LabelSize := h5162;
      end;
    SkipRow := StrToInt(SkipEdt.Text);

    if sender = Button1 then
      RLReport1.Preview
    else
      RLReport1.Print;

    Free;
    end;
  end else
   if SizeCbo.ItemIndex = 3 then
    begin
    with TFormEtiqBarras.Create(Application) do
    begin
      case SizeCbo.ItemIndex of
      3: LabelSize := h5165;
      end;
    SkipRow := StrToInt(SkipEdt.Text);

    if sender = Button1 then
      RLReport2.Preview
    else
      RLReport2.Print;

    Free;
    end;
    end else
    if SizeCbo.ItemIndex = 4 then
    begin
    with TFormEtiquetas6.Create(Application) do
    begin
    case SizeCbo.ItemIndex of
      4: LabelSize := h5166;
    end;

    SkipRow := StrToInt(SkipEdt.Text);

    if sender = Button1 then
      RLReport2.Preview
    else
      RLReport2.Print;

    Free;
    end;
    end;

end;

procedure TFormEtqProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then close;

if not (ActiveControl is TComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormEtqProdutos.ComboEdit1Change(Sender: TObject);
begin
IF (ComboEdit1.Text>='A') AND (ComboEdit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (ComboEdit1.Text>='0') AND (ComboEdit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF ComboEdit1.Text='' THEN
EDIT2.Text:='';
end;

procedure TFormEtqProdutos.ComboEdit1Enter(Sender: TObject);
begin
ComboEdit1.SelectAll;
end;

end.
