unit FrmProdutosReferenciaFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ComCtrls;

type
  TFProdutosReferenciaFornecedores = class(TForm)
    qrFornecedor: TFDQuery;
    qrFornecedorCODIGO: TIntegerField;
    qrFornecedorNOME: TStringField;
    qrFornecedorFANTASIA: TStringField;
    qrFornecedorENDERECO: TStringField;
    qrFornecedorCIDADE: TStringField;
    qrFornecedorESTADO: TStringField;
    qrFornecedorCEP: TStringField;
    qrFornecedorTELEFONE: TStringField;
    qrFornecedorFAX: TStringField;
    qrFornecedorEMAIL: TStringField;
    qrFornecedorHOMEPAGE: TStringField;
    qrFornecedorTIPO: TStringField;
    qrFornecedorCNPJ: TStringField;
    qrFornecedorIE: TStringField;
    qrFornecedorBAIRRO: TStringField;
    qrFornecedorREPRESCELULAR: TStringField;
    qrFornecedorUSERCAD: TStringField;
    qrFornecedorDATACADASTRO: TDateField;
    qrFornecedorOBSERVACOES: TBlobField;
    qrFornecedorREPRESNOME: TStringField;
    qrFornecedorREPRESFONEFAX: TStringField;
    qrFornecedorREPRESEMAIL: TStringField;
    qrFornecedorREPRESOBSERVACOES: TBlobField;
    qrFornecedorPRODUTOR_RURAL: TStringField;
    qrFornecedorINSC_PRODUTOR: TStringField;
    qrFornecedorCOD_LINHA: TIntegerField;
    qrFornecedorLINHA: TStringField;
    qrFornecedorCOD_EMPRESA: TIntegerField;
    qrFornecedorVALOR_LEITE: TBCDField;
    qrFornecedorcodigo_ibge: TStringField;
    qrFornecedorNUMERO: TIntegerField;
    qrFornecedorCOMPLEMENTO: TStringField;
    qrFornecedorTP: TStringField;
    dsFornecedor: TDataSource;
    dsFornecedor_Codigo: TDataSource;
    qrFornecedor_Codigo: TFDQuery;
    qrFornecedor_CodigoCODIGO: TIntegerField;
    qrFornecedor_CodigoCODIGO_BARRAS: TStringField;
    qrFornecedor_CodigoDESCRICAO: TStringField;
    qrFornecedor_CodigoPRECO_VENDA: TBCDField;
    qrFornecedor_CodigoCODFORNECEDOR: TIntegerField;
    pnlDescricao: TPanel;
    pgc: TPageControl;
    tbGrid: TTabSheet;
    tbEdit: TTabSheet;
    Grid: TDBGrid;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbExcluir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    edtProduto: TEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    pnlFornecedor: TPanel;
    spbCancelar: TSpeedButton;
    spbConfirmar: TSpeedButton;
    qrSQL: TFDQuery;
    qrFornecedor_CodigoPRECO_CUSTO: TBCDField;
    qrFornecedor_CodigoESTOQUE: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spbIncluirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure spbConfirmarClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodigoFornecedor: Integer;
    CodigoLancamento: String;
    NomeFornecedor: string;
    PrecoProduto: Currency;
  end;

var
  FProdutosReferenciaFornecedores: TFProdutosReferenciaFornecedores;

implementation

uses ModulodeDados, ConsProdutos;

{$R *.dfm}

procedure TFProdutosReferenciaFornecedores.FormShow(Sender: TObject);
begin
  qrFornecedor.Close;
  qrFornecedor.ParamByName('CODIGO').AsInteger:= CodigoFornecedor;
  qrFornecedor.Open;
  qrFornecedor_Codigo.Open;
  pgc.ActivePage:= tbGrid;
end;

procedure TFProdutosReferenciaFornecedores.SpeedButton1Click(
  Sender: TObject);
begin
  try
    FormConsProdutos:= TFormConsProdutos.Create(Nil);
    FormConsProdutos.ShowModal;
  finally
    if not dm.SDS_PRODUTOS.IsEmpty then
    begin
      dsfornecedor_codigo.DataSet.Filter:= 'CODIGO = ' + dm.SDS_PRODUTOSCODIGO.AsString;
      dsfornecedor_codigo.DataSet.Filtered:= True;
      if dsfornecedor_codigo.DataSet.IsEmpty then
        dsfornecedor_codigo.DataSet.Filtered:= False;
    end;
    FreeAndNil(FormConsProdutos);
  end;
end;

procedure TFProdutosReferenciaFornecedores.spbIncluirClick(
  Sender: TObject);
begin
  qrSQL.Close;
  qrSQL.SQL.clear;
  qrSQL.SQL.Add('SELECT NOME FROM FORNECEDORES WHERE CODIGO = ' + NomeFornecedor);
  qrSQL.Open;

  pnlFornecedor.Caption:= 'PRODUTO SERÁ REFERÊNCIADO AO FORNECEDOR: '+ qrSQL.fieldbyname('NOME').AsString;
  qrSQL.Close;
  edtProduto.Text:= 'Selecione o Produto para Referênci-lo com o Fornecedor ->';
  edtProduto.Hint:= '';
  pgc.ActivePage:= tbEdit;
end;

procedure TFProdutosReferenciaFornecedores.SpeedButton2Click(
  Sender: TObject);
begin
  try
    FormConsProdutos:= TFormConsProdutos.Create(Nil);
    FormConsProdutos.ShowModal;
  finally
    edtProduto.Hint:= dm.SDS_PRODUTOSCODIGO.AsString;
    edtProduto.Text:= DM.SDS_PRODUTOSDESCRICAO.AsString;
    PrecoProduto:= DM.SDS_PRODUTOSPRECO_CUSTO.AsCurrency;
  end;
end;

procedure TFProdutosReferenciaFornecedores.spbConfirmarClick(
  Sender: TObject);
var
  Erro: string;
begin
  Erro:= '';
  if edtProduto.Hint <> '' then
  begin
    qrSQL.Close;
    qrSQL.SQL.Clear;
    qrSQL.SQL.Add('SELECT * FROM FORNECEDOR_CODIGO WHERE CODFORNECEDOR = ' + IntToStr(CodigoFornecedor) +
    ' AND CODPRODUTO = ' + edtProduto.Hint);
    qrSQL.Open;

    if not qrSQL.IsEmpty then
      Erro:= 'Este produto Selecionado já está cadastrado para este fornecedor!';
  end
  else
    Erro:= 'É necessário selecionar um Produto!';

  if Erro = '' then
  begin
    qrSQL.Close;
    qrSQL.SQL.Clear;
    qrSQL.SQL.Add('SELECT * FROM FORNECEDOR_CODIGO');
    qrSQL.Open;

    qrSQL.Insert;
    qrSQL.FieldByName('CODFORNECEDOR').AsInteger:= CodigoFornecedor;
    qrSQL.FieldByName('CODPRODUTO').AsInteger:= StrToInt(edtProduto.hint);
    qrSQL.FieldByName('CODIGO').asString:= CodigoLancamento;
    qrSQL.FieldByName('PRECO').AsCurrency:= PrecoProduto;
    qrSQL.Post;

    qrSQL.Close;
    qrFornecedor_Codigo.Refresh;
    pgc.ActivePage:= tbGrid;
  end
  else
  //  Application.MessageBox(PAnsiChar(Erro),'Atenção',MB_ICONWARNING);
    MessageDlg((erro), mtInformation,[mbOk], 0);
end;

procedure TFProdutosReferenciaFornecedores.spbCancelarClick(
  Sender: TObject);
begin
  pgc.ActivePage:= tbGrid;
end;

procedure TFProdutosReferenciaFornecedores.spbExcluirClick(
  Sender: TObject);
begin
  if not qrFornecedor_Codigo.IsEmpty then
  begin
    if Application.MESSAGEBOX('Deseja Excluir Está Referência de Produto?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      qrSQL.Close;
      qrSQL.SQL.Clear;
      qrSQL.SQL.Add('SELECT * FROM FORNECEDOR_CODIGO WHERE CODFORNECEDOR = ' + IntToStr(CodigoFornecedor) +
      ' AND CODPRODUTO = ' + qrFornecedor_CodigoCODIGO.AsString);
      qrSQL.Open;

      qrSQL.Delete;
      qrSQL.Close;
      qrFornecedor_Codigo.Refresh;
    end;
  end;
end;

procedure TFProdutosReferenciaFornecedores.GridDblClick(Sender: TObject);
var
  MSG: string;
begin
  MSG:= 'DESEJA ALTERAR A ' + Copy(pnlDescricao.Caption,9,Length(pnlDescricao.Caption));
  if not qrFornecedor_Codigo.IsEmpty then
  begin
    {if Application.MESSAGEBOX(PAnsiChar(MSG),
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then   }
     if MessageDlg((MSG), mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      Self.Tag:= 1;
      Close;
    end;
  end;
end;

procedure TFProdutosReferenciaFornecedores.FormDestroy(Sender: TObject);
begin
  qrFornecedor.Close;
  qrFornecedor_Codigo.Close;
end;

end.
