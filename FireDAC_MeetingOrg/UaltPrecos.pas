unit UaltPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, aDvGlowButton, acPNG, StdCtrls, DBCtrls, Mask,
  RXDBCtrl, RXCtrls, RzButton, RzRadChk, rxCurrEdit,
  AlignEdit, Grids, XDBGrids, Mylabel, RxToolEdit;

type
  TFormAltPreco = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnConsultar: TAdvGlowButton;
    BtnSair: TAdvGlowButton;
    RxLabel22: TRxLabel;
    RxLabel23: TRxLabel;
    RxLabel24: TRxLabel;
    RxLabel25: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel21: TRxLabel;
    RxLabel42: TRxLabel;
    Categoria2: TEdit;
    seccao2: TEdit;
    Lestoque2: TEdit;
    Image1: TImage;
    CurrencyEdit1: TCurrencyEdit;
    Edit1: TAlignEdit;
    Label1: TLabel;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    grupo: TComboEdit;
    Grupo2: TEdit;
    subgrupo2: TEdit;
    SubGrupo: TComboEdit;
    marca: TComboEdit;
    Fornecedor: TComboEdit;
    Categoria: TComboEdit;
    Seccao: TComboEdit;
    Lestoque: TComboEdit;
    Marca2: TEdit;
    Fornecedor2: TEdit;
    Edit2: TEdit;
    RxLabel2: TRxLabel;
    XDBGrid1: TXDBGrid;
    FDvGlowButton1: TAdvGlowButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    FDvGlowButton2: TAdvGlowButton;
    procedure GrupoExt(Sender: TObject);
    procedure GrupoButtonClick(Sender: TObject);
    procedure SubGrupoButtonClick(Sender: TObject);
    procedure SubGrupoExit(Sender: TObject);
    procedure MarcaButtonClick(Sender: TObject);
    procedure MarcaExit(Sender: TObject);
    procedure FORNECEDORButtonClick(Sender: TObject);
    procedure FORNECEDORExit(Sender: TObject);
    procedure CategoriaButtonClick(Sender: TObject);
    procedure CategoriaExit(Sender: TObject);
    procedure SeccaoButtonClick(Sender: TObject);
    procedure SeccaoExit(Sender: TObject);
    procedure lEstoqueButtonClick(Sender: TObject);
    procedure lEstoqueExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure limpa;
    procedure SubGrupoEnter(Sender: TObject);
    procedure MarcaEnter(Sender: TObject);
    procedure FORNECEDOREnter(Sender: TObject);
    procedure CategoriaEnter(Sender: TObject);
    procedure SeccaoEnter(Sender: TObject);
    procedure lEstoqueEnter(Sender: TObject);
    procedure GrupoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FDvGlowButton1Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Enter(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox2Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FDvGlowButton2Click(Sender: TObject);
    procedure XDBGrid1CellClick(Column: TXColumn);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAltPreco: TFormAltPreco;

implementation

uses ModulodeDados, Ubibli1, ConsGrupos, ConsSubGrupos, ConsMarcas,
     Z_RotinasGerais, ConsCategoria, ConsSeccao, UConsLocaisEstoque,
  xloc_fornecedor;

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

procedure TFormAltPreco.limpa;
begin
SubGrupo.Clear;
SubGrupo2.Clear;
Marca.Clear;
marca2.Clear;
FORNECEDOR.Clear;
fornecedor2.Clear;
Categoria.Clear;
Categoria2.Clear;
Seccao.Clear;
seccao2.Clear;
lEstoque.Clear;
Lestoque2.Clear;
Grupo.Clear;
grupo2.Clear;
end;

procedure TFormAltPreco.GrupoExt(Sender: TObject);
begin
if grupo.Text > '' then
begin
DM.SDS_Grupos.Open;
DM.SDS_Grupos.Refresh;
if (DM.SDS_Grupos.Locate('CODIGO',VarArrayOf([Grupo.Text]),[])) then
begin
Grupo.Clear;
Grupo2.Text:= DM.SDS_GruposDESCRICAO.Text;
Grupo.Text:= DM.SDS_GruposCodigo.AsString;
//DM.SDS_ProdutosNOME_SUBGRUPO.Clear;
//DM.SDS_ProdutosCODIGO_SUBGRUPO.Clear;
 BtnConsultar.SetFocus;
end else
begin
ShowMessage('Grupo Inexistente !!!');
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.Showmodal;
      end;
Grupo.Clear;
Grupo2.Text:= DM.SDS_GruposDESCRICAO.Text;
Grupo.Text:= DM.SDS_GruposCodigo.AsString;
BtnConsultar.SetFocus;
end;
end;
end;

procedure TFormAltPreco.GrupoButtonClick(Sender: TObject);
begin
DM.SDS_Grupos.Open;
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.Showmodal;
      end;
Grupo.Clear;
Grupo2.Text:= DM.SDS_GruposDESCRICAO.Text;
Grupo.Text:= DM.SDS_GruposCodigo.AsString;
DM.SDS_ProdutosNOME_SUBGRUPO.Clear;
DM.SDS_ProdutosCODIGO_SUBGRUPO.Clear;
 BtnConsultar.SetFocus;
end;

procedure TFormAltPreco.SubGrupoButtonClick(Sender: TObject);
begin
Try
DM.SDS_SubGrupos.Open;
if FormConsSubGrupos=nil   then
    begin
    FormConsSubGrupos:=TFormConsSubGrupos.Create(self);
      FormConsSubGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
SubGrupo.Clear;
SubGrupo2.Text:= DM.SDS_SubGruposNome.Text;
SubGrupo.Text:= DM.SDS_SubGruposCodigo.AsString;
 BtnConsultar.SetFocus;
end;

procedure TFormAltPreco.SubGrupoExit(Sender: TObject);
begin
if SubGrupo.Text > '' then
begin
DM.SDS_SubGrupos.Open;
DM.SDS_SubGrupos.Refresh;
if (DM.SDS_SubGrupos.Locate('CODIGO',VarArrayOf([SubGrupo.Text]),[])) then
begin
SubGrupo.Clear;
SubGrupo2.Text:= DM.SDS_SubGruposNome.Text;
SubGrupo.Text:= DM.SDS_SubGruposCodigo.AsString;
 BtnConsultar.SetFocus;
end else
begin
ShowMessage('Sub-Grupo Inexistente !!!');
if FormConsSubGrupos=nil   then
    begin
    FormConsSubGrupos:=TFormConsSubGrupos.Create(self);
      FormConsSubGrupos.ShowModal;
      end;
SubGrupo.Clear;
SubGrupo2.Text:= DM.SDS_SubGruposNome.Text;
SubGrupo.Text:= DM.SDS_SubGruposCodigo.AsString;
BtnConsultar.SetFocus;
end;
end;
end;

procedure TFormAltPreco.MarcaButtonClick(Sender: TObject);
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
Marca.Clear;
 Marca2.Text:= DM.SDS_MarcasDESCRICAO.Text;
 Marca.Text:= DM.SDS_MarcasCODIGO.AsString;
 BtnConsultar.SetFocus;
end;

procedure TFormAltPreco.MarcaExit(Sender: TObject);
begin
if marca.Text > '' then
begin
DM.SDS_Marcas.Open;
DM.SDS_Marcas.Refresh;
if (DM.SDS_Marcas.Locate('CODIGO',VarArrayOf([Marca.Text]),[])) then
begin
Marca.Clear;
Marca2.Text:= DM.SDS_MarcasDESCRICAO.Text;
Marca.Text:= DM.SDS_MarcasCODIGO.AsString;
 BtnConsultar.SetFocus;
end else begin
ShowMessage('Marca Inexistente !!!');
if FormConsMarcas=nil   then
    begin
    FormConsMarcas:=TFormConsMarcas.Create(self);
      FormConsMarcas.ShowModal;
      end;
Marca.Clear;
Marca2.Text:= DM.SDS_MarcasDESCRICAO.Text;
Marca.Text:= DM.SDS_MarcasCODIGO.AsString;
 BtnConsultar.SetFocus;
end;
end;
end;

procedure TFormAltPreco.FORNECEDORButtonClick(Sender: TObject);
begin

DM.SDS_Fornecedores.Active:= False;
DM.SDS_Fornecedores.Active:= True;
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
FORNECEDOR.Clear;
FORNECEDOR2.Text:= DM.SDS_FornecedoresNOME.Text;
FORNECEDOR.Text:= DM.SDS_FornecedoresCODIGO.AsString;
 BtnConsultar.SetFocus;
end;

procedure TFormAltPreco.FORNECEDORExit(Sender: TObject);
begin
if Fornecedor.Text > '' then
begin
DM.SDS_Fornecedores.Active:= False;
DM.SDS_Fornecedores.Active:= True;
If (DM.SDS_Fornecedores.Locate('CODIGO',VarArrayOf([Fornecedor.Text]),[])) then
begin
Fornecedor.Clear;
Fornecedor2.Text:= DM.SDS_FornecedoresNome.Text;
Fornecedor.Text:= DM.SDS_FornecedoresCODIGO.AsString;
 BtnConsultar.SetFocus;
end else begin
ShowMessage('Fornecedor Inexistente !!!');
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);Fornecedor.Clear;
Fornecedor2.Text:= DM.SDS_FornecedoresNome.Text;
Fornecedor.Text:= DM.SDS_FornecedoresCODIGO.AsString;
 BtnConsultar.SetFocus;
end;
end;
end;

procedure TFormAltPreco.CategoriaButtonClick(Sender: TObject);
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
Categoria.Clear;
categoria2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
Categoria.Text:= DM.SDS_CATEGORIACODIGO.AsString;
 BtnConsultar.SetFocus;
end;

procedure TFormAltPreco.CategoriaExit(Sender: TObject);
begin
if Categoria.Text > '' then
begin
DM.SDS_CATEGORIA.Open;
DM.SDS_CATEGORIA.Refresh;
if (DM.SDS_CATEGORIA.Locate('CODIGO',VarArrayOf([Categoria.Text]),[])) then
begin
Categoria.Clear;
Categoria2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
Categoria.Text:= DM.SDS_CATEGORIACODIGO.AsString;
 BtnConsultar.SetFocus;
end else
begin
ShowMessage('Categoria Inexistente !!!');
if FormConsCategoria=nil   then
    begin
    FormConsCategoria:=TFormConsCategoria.Create(self);
      FormConsCategoria.Showmodal;
      end;
categoria.Clear;
Categoria2.Text:= DM.SDS_CATEGORIADESCRICAO.Text;
Categoria.Text:= DM.SDS_CATEGORIACODIGO.AsString;
 BtnConsultar.SetFocus;
end;
end;
end;


procedure TFormAltPreco.SeccaoButtonClick(Sender: TObject);
begin
try
  DM.SDS_Seccao.Open;
if FormConsseccao=nil   then
    begin
    FormConsseccao:=TFormConsseccao.Create(self);
      FormConsseccao.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Seccao.Clear;
seccao2.Text:= DM.SDS_SECCAODESCRICAO.Text;
Seccao.Text:= DM.SDS_SECCAOCODIGO.AsString;
 BtnConsultar.SetFocus;
end;

procedure TFormAltPreco.SeccaoExit(Sender: TObject);
begin
CorSaida(Sender);
if Seccao.Text > '' then
begin
IF Seccao.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  Seccao.Text := '';
  Seccao.SetFocus;
end ELSE

if Seccao.Text = '' then
begin
Seccao.Clear;
end else
begin
DM.SDS_Seccao.Open;
DM.SDS_Seccao.Refresh;
if (DM.SDS_Seccao.Locate('CODIGO',VarArrayOf([Seccao.Text]),[])) then
begin
Seccao.Clear;
Seccao2.Text:= DM.SDS_SeccaoDESCRICAO.Text;
Seccao.Text:= DM.SDS_SeccaoCODIGO.AsString;
 BtnConsultar.SetFocus;
end else
begin
ShowMessage('Categoria Inexistente !!!');
if FormConsSeccao=nil   then
    begin
    FormConsSeccao:=TFormConsSeccao.Create(self);
      FormConsSeccao.Showmodal;
      end;
Seccao.Clear;
Seccao2.Text:= DM.SDS_SeccaoDESCRICAO.Text;
Seccao.Text:= DM.SDS_SeccaoCODIGO.AsString;
 BtnConsultar.SetFocus;
end;
end;
end;
end;

procedure TFormAltPreco.lEstoqueButtonClick(Sender: TObject);
begin
try
if FrmConsLocaisEstoque=nil   then
    begin
    FrmConsLocaisEstoque:=TFrmConsLocaisEstoque.Create(self);
     FrmConsLocaisEstoque.tag :=1;
      FrmConsLocaisEstoque.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
 BtnConsultar.SetFocus;
end;

procedure TFormAltPreco.lEstoqueExit(Sender: TObject);
begin
 if lEstoque.Text >'' then
  BEGIN
  lEstoque2.Text:= consulta('locais_estoque', Edit1, 'codigo', 'descricao', dm.IBTransaction, dm.qConsulta);
  if lEstoque2.Text = '' then
     begin
        showmessage('Motivo de Acerto não Cadastrado');
        BtnConsultar.SetFocus;
     end;
end;
end;

procedure TFormAltPreco.BtnSairClick(Sender: TObject);
begin
close;
end;

procedure TFormAltPreco.BtnConsultarClick(Sender: TObject);
begin
  if Application.MESSAGEBOX('Confirma a Alteração dos Preços dos produtos selecionados?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
 try
  IF edit2.Text >'' then
  begin

  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         if CheckBox1.Checked = True then
         begin
         SQL.Clear;
         sql.Add( 'update produtos set produtos.preco_venda = produtos.preco_venda * '+ CurrencyEdit1.Text +'/100 + produtos.preco_venda ');
                    if CurrencyEdit2.Value > 0 then
                    begin
         sql.Add( ', produtos.preco_venda2 = produtos.preco_venda2 * '+ CurrencyEdit2.Text +'/100 + produtos.preco_venda2 ');
                    end;
         sql.Add( 'where DESCRICAO like ' + #39 + '%' + Edit2.Text + '%' + #39+'' +' and CHEK_BOX = ''T'' ORDER BY DESCRICAO');
         end else
         if CheckBox2.Checked = True then
         begin
         sql.Clear;
         sql.Add('update produtos set produtos.preco_venda = (produtos.preco_venda) - ((produtos.preco_venda * '+ CurrencyEdit1.Text +')/100) ');
                     if CurrencyEdit2.Value > 0 then
                     begin
         sql.Add(', produtos.preco_venda2 =  produtos.preco_venda2 - ((produtos.preco_venda2 * '+ CurrencyEdit2.Text +')/100) ' );
                     end;
         sql.Add('where DESCRICAO like ' + #39 + '%' + Edit2.Text + '%' + #39+'' +' and CHEK_BOX = ''T'' ORDER BY DESCRICAO');
         end;
        // Parambyname('cod_GRUPO').AsInteger  := strtoint(Grupo.Text);
         ExecSQL;
      end;

   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit2.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;

  end else

  IF Grupo.Text >'' then
  begin

  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
        if CheckBox1.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = produtos.preco_venda * '+ CurrencyEdit1.Text +'/100 + produtos.preco_venda, produtos.preco_venda2 = produtos.preco_venda2 * '+ CurrencyEdit2.Text +'/100 + produtos.preco_venda2 ' +
                    'WHERE CODIGO_GRUPO = :COD_GRUPO';
        end else
        if CheckBox2.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = (produtos.preco_venda) - ((produtos.preco_venda * '+ CurrencyEdit1.Text +')/100) , produtos.preco_venda2 =  produtos.preco_venda2 - ((produtos.preco_venda2 * '+ CurrencyEdit2.Text +')/100) ' +
                    'WHERE CODIGO_GRUPO = :COD_GRUPO';
         end;
         Parambyname('cod_GRUPO').AsInteger  := strtoint(Grupo.Text);
         ExecSQL;
      end;

   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
   
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE CODIGO_GRUPO = ' + QuotedStr(Grupo.Text)+ ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
 end else

  IF SubGrupo.Text >'' then
  begin
  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         if CheckBox1.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = produtos.preco_venda * '+ CurrencyEdit1.Text +'/100 + produtos.preco_venda, produtos.preco_venda2 = produtos.preco_venda2 * '+ CurrencyEdit2.Text +'/100 + produtos.preco_venda2 ' +
                    'WHERE codigo_subgrupo = :COD_SUBGRUPO';
         end else
         if CheckBox2.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = (produtos.preco_venda) - ((produtos.preco_venda * '+ CurrencyEdit1.Text +')/100) , produtos.preco_venda2 =  produtos.preco_venda2 - ((produtos.preco_venda2 * '+ CurrencyEdit2.Text +')/100) ' +
                    'WHERE codigo_subgrupo = :COD_SUBGRUPO';
          end;
         Parambyname('cod_SUBGRUPO').AsInteger  := strtoint(SubGrupo.Text);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE codigo_subgrupo = ' + QuotedStr(SubGrupo.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
  end else

  IF Marca.Text >'' then
  begin
  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         if CheckBox1.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = produtos.preco_venda * '+ CurrencyEdit1.Text +'/100 + produtos.preco_venda, produtos.preco_venda2 = produtos.preco_venda2 * '+ CurrencyEdit2.Text +'/100 + produtos.preco_venda2 ' +
                    'WHERE codigo_MARCA = :COD_MARCA';
         end else
         if CheckBox2.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = (produtos.preco_venda) - ((produtos.preco_venda * '+ CurrencyEdit1.Text +')/100) , produtos.preco_venda2 =  produtos.preco_venda2 - ((produtos.preco_venda2 * '+ CurrencyEdit2.Text +')/100) ' +
                    'WHERE codigo_MARCA = :COD_MARCA';
         end;
         Parambyname('cod_MARCA').AsInteger  := strtoint(Marca.Text);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE codigo_MARCA = ' + QuotedStr(marca.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
  end else

  IF FORNECEDOR.Text >'' then
  begin
  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         if CheckBox1.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = produtos.preco_venda * '+ CurrencyEdit1.Text +'/100 + produtos.preco_venda, produtos.preco_venda2 = produtos.preco_venda2 * '+ CurrencyEdit2.Text +'/100 + produtos.preco_venda2 ' +
                    'WHERE codigo_fornecedores = :COD_FOR';
         end else
         if CheckBox2.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = (produtos.preco_venda) - ((produtos.preco_venda * '+ CurrencyEdit1.Text +')/100) , produtos.preco_venda2 =  produtos.preco_venda2 - ((produtos.preco_venda2 * '+ CurrencyEdit2.Text +')/100) ' +
                    'WHERE codigo_fornecedores = :COD_FOR';
         end;
         Parambyname('cod_for').AsInteger  := strtoint(FORNECEDOR.Text);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE codigo_fornecedores = ' + QuotedStr(Fornecedor.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;

   end else

  IF Categoria.Text >'' then
  begin
  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         if CheckBox1.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = produtos.preco_venda * '+ CurrencyEdit1.Text +'/100 + produtos.preco_venda, produtos.preco_venda2 = produtos.preco_venda2 * '+ CurrencyEdit2.Text +'/100 + produtos.preco_venda2 ' +
                    'WHERE categoria = :Cod_cat';
        end else
        if CheckBox2.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = (produtos.preco_venda) - ((produtos.preco_venda * '+ CurrencyEdit1.Text +')/100) , produtos.preco_venda2 =  produtos.preco_venda2 - ((produtos.preco_venda2 * '+ CurrencyEdit2.Text +')/100) ' +
                    'WHERE categoria = :Cod_cat';
        end;
         Parambyname('cod_cat').AsInteger  := strtoint(Categoria.Text);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE categoria = ' + QuotedStr(Categoria.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;

  end else
  IF Seccao.Text >'' then
  begin
  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         if CheckBox1.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = produtos.preco_venda * '+ CurrencyEdit1.Text +'/100 + produtos.preco_venda, produtos.preco_venda2 = produtos.preco_venda2 * '+ CurrencyEdit2.Text +'/100 + produtos.preco_venda2 ' +
                    'WHERE seccao = :Cod_sec';
         end else
         if CheckBox2.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = (produtos.preco_venda) - ((produtos.preco_venda * '+ CurrencyEdit1.Text +')/100) , produtos.preco_venda2 =  produtos.preco_venda2 - ((produtos.preco_venda2 * '+ CurrencyEdit2.Text +')/100) ' +
                    'WHERE seccao = :Cod_sec';
         end;
         Parambyname('cod_sec').AsInteger  := strtoint(Seccao.Text);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE seccao = ' + QuotedStr(Seccao.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;

  end else
  IF lEstoque.Text >'' then
  begin
  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         if CheckBox1.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = produtos.preco_venda * '+ CurrencyEdit1.Text +'/100 + produtos.preco_venda, produtos.preco_venda2 = produtos.preco_venda2 * '+ CurrencyEdit2.Text +'/100 + produtos.preco_venda2 ' +
                    'WHERE codigo_local_estoque = :Cod_est';
         end else
         if CheckBox2.Checked = True then
         begin
         sql.Text:= 'update produtos set produtos.preco_venda = (produtos.preco_venda) - ((produtos.preco_venda * '+ CurrencyEdit1.Text +')/100) , produtos.preco_venda2 =  produtos.preco_venda2 - ((produtos.preco_venda2 * '+ CurrencyEdit2.Text +')/100) ' +
                    'WHERE codigo_local_estoque = :Cod_est';
         end;
         Parambyname('cod_est').AsInteger  := strtoint(lEstoque.Text);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE codigo_local_estoque = ' + QuotedStr(Lestoque.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;

   end;
except
ShowMessage('erro ao tentar Atualizar os Preços');
end;
begin
Application.MESSAGEBOX('Alteração Efetuada com Sucesso...', 'Atenção', MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1)
end;
end;
end;

procedure TFormAltPreco.SubGrupoEnter(Sender: TObject);
begin
limpa;
end;

procedure TFormAltPreco.MarcaEnter(Sender: TObject);
begin
limpa;
end;

procedure TFormAltPreco.FORNECEDOREnter(Sender: TObject);
begin
limpa;
end;

procedure TFormAltPreco.CategoriaEnter(Sender: TObject);
begin
limpa;
end;

procedure TFormAltPreco.SeccaoEnter(Sender: TObject);
begin
limpa;
end;

procedure TFormAltPreco.lEstoqueEnter(Sender: TObject);
begin
limpa;
end;

procedure TFormAltPreco.GrupoEnter(Sender: TObject);
begin
limpa;
end;

procedure TFormAltPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormAltPreco := nil;
end;

procedure TFormAltPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormAltPreco.FormCreate(Sender: TObject);
begin
  DM.SDS_PRODUTOS.Active:= FALSE;
  DM.SDS_PRODUTOS.DataSet.CommandText:= 'select * from PRODUTOS where codigo <'+'1'+'ORDER BY CODIGO asc';
  DM.SDS_PRODUTOS.Active:= TRUE;
end;

procedure TFormAltPreco.FDvGlowButton1Click(Sender: TObject);
begin
  IF edit2.Text >'' then
  begin
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit2.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
   end;

  IF Grupo.Text >'' then
  begin 
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE CODIGO_GRUPO = ' + QuotedStr(Grupo.Text)+ ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
   end;
  IF lEstoque.Text >'' then
   begin
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE codigo_local_estoque = ' + QuotedStr(Lestoque.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;

   end;
  IF Seccao.Text >'' then
  begin
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE seccao = ' + QuotedStr(Seccao.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;

  end;

  IF SubGrupo.Text >'' then
  begin
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE codigo_subgrupo = ' + QuotedStr(SubGrupo.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
  end;

  IF Marca.Text >'' then
  begin
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE codigo_MARCA = ' + QuotedStr(marca.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
  end;

  IF FORNECEDOR.Text >'' then
  begin
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE codigo_fornecedores = ' + QuotedStr(Fornecedor.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;

   end;

  IF Categoria.Text >'' then
  begin
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS WHERE categoria = ' + QuotedStr(Categoria.Text) + ' ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
  end;
end;

procedure TFormAltPreco.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  begin
   IF edit2.Text >'' then
  begin
   dm.SDS_PRODUTOS.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit2.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
   dm.SDS_PRODUTOS.Active := True;
   end;
end;
end;

procedure TFormAltPreco.CheckBox1Enter(Sender: TObject);
begin
if CheckBox1.Checked = True then
CheckBox2.Checked := false
end;

procedure TFormAltPreco.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = True then
CheckBox2.Checked := false
end;

procedure TFormAltPreco.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = True then
CheckBox1.Checked := false
end;

procedure TFormAltPreco.CheckBox2Enter(Sender: TObject);
begin
if CheckBox2.Checked = True then
CheckBox1.Checked := false
end;

procedure TFormAltPreco.FormShow(Sender: TObject);
begin
edit2.SetFocus;
end;

procedure TFormAltPreco.FDvGlowButton2Click(Sender: TObject);
begin
Edit2.Clear;
grupo.Clear;
Grupo2.Clear;
SubGrupo.Clear;
subgrupo2.Clear;
marca.Clear;
Marca2.Clear;
Fornecedor.Clear;
Fornecedor2.Clear;
Categoria.Clear;
Categoria2.Clear;
Lestoque.Clear;
Lestoque2.Clear;
Seccao.Clear;
Seccao2.Clear;
CurrencyEdit1.Clear;
CurrencyEdit2.Clear;
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update produtos set CHEK_BOX = ''F''';
           // Parambyname('VENDA').AsInteger    := DM.SDS_PRODUTOSCODIGO.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
   DM.SDS_PRODUTOS.Refresh
end;

procedure TFormAltPreco.XDBGrid1CellClick(Column: TXColumn);
begin
if DM.SDS_PRODUTOSCHEK_BOX.AsString = 'T' then
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update produtos set CHEK_BOX = ''F'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DM.SDS_PRODUTOSCODIGO.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
end else
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update produtos set CHEK_BOX = ''T'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DM.SDS_PRODUTOSCODIGO.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
 end;
   DM.SDS_PRODUTOS.Refresh;
end;

procedure TFormAltPreco.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
   Var
  Check: Integer;
    R: TRect;
begin
   //Desenha um checkbox no dbgrid
   if column.FieldName = 'CHEK_BOX' then
    begin
    xDBGrid1.Canvas.FillRect(Rect);
    Check := 0;
    if DM.SDS_PRODUTOSCHEK_BOX.AsString = 'T' then
    Check := DFCS_CHECKED
    else Check := 0;
    R:=Rect;
    InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
    DrawFrameControl(xDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;

end;

end.
