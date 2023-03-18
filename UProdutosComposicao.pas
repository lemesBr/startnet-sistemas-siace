unit UProdutosComposicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, Mask,
   Buttons, AlignEdit, DB, IBCustomDataSet, IBQuery, IBDatabase,
   RxToolEdit, RxCurrEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFrmProdutosComposicao = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    EdtCodPro: TAlignEdit;
    BtnConsProd: TSpeedButton;
    EdtNomePro: TEdit;
    Label2: TLabel;
    EdtQuant: TCurrencyEdit;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    BtnGrava: TButton;
    BtnExclui: TButton;
    QProd: TFDQuery;
    DSProd: TDataSource;
    IBTRProd: TFDTransaction;
    BtnAddPro: TSpeedButton;
    LabelUnd: TLabel;
    Button1: TButton;
    QProdCODIGO: TIntegerField;
    QProdCOD_PRINCIPAL: TIntegerField;
    QProdPRODUTO: TStringField;
    QProdQUANTIDADE: TFMTBCDField;
    QProdDESCRICAO: TStringField;
    QProdABREVIATURA: TStringField;
    procedure EdtCodProEnter(Sender: TObject);
    procedure EdtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodProKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodProExit(Sender: TObject);
    procedure BtnConsProdClick(Sender: TObject);
    procedure BtnGravaClick(Sender: TObject);
    procedure BuscaProduto;
    procedure BtnExcluiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddProClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutosComposicao: TFrmProdutosComposicao;

implementation

uses ModulodeDados, Ubibli1, UAlteraPreco, ConsProdutos, Produtos;

{$R *.dfm}

procedure TFrmProdutosComposicao.BuscaProduto;
begin
   if IBTRProd.Active then
      IBTRProd.Commit;
   IBTRProd.StartTransaction;
   with QProd do
      begin
         close;
         Parambyname('codigo').AsInteger:= FrmAlteraPreco.QConsProdCODIGO.AsInteger;
         open;
         last;
      end;
end;


procedure TFrmProdutosComposicao.EdtCodProEnter(Sender: TObject);
begin
   EdtCodPro.SelectAll;
end;

procedure TFrmProdutosComposicao.EdtCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsProd.Click
   else
      if key = vk_f3 then
         BtnAddPro.Click;
end;

procedure TFrmProdutosComposicao.EdtCodProKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8]) then
      key:= #0;
end;

procedure TFrmProdutosComposicao.EdtCodProExit(Sender: TObject);
begin
   if trim(EdtCodPro.Text) = '' then
      exit;

   if DBGrid1.Focused then
      exit;

   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.clear;
             sql.Add('SELECT I.*, P.DESCRICAO, U.ABREVIATURA ' +
                     'FROM PRODUTO_COMPOSTO I ' +
                     'INNER JOIN PRODUTOS P ON (I.CODIGO = P.CODIGO) ' +
                     'INNER JOIN UNIDADES U ON (P.UNIDADE = U.CODIGO) ' +
                     'WHERE I.CODIGO = :CODPRO ORDER BY P.DESCRICAO');
             Parambyname('codpro').AsInteger:= strtoint(EdtCodPro.Text);
             Open;
             if not fieldbyname('codigo').IsNull then
                begin
                   EdtNomePro.Text := fieldbyname('descricao').AsString;
                   LabelUnd.Caption:= fieldbyname('abreviatura').AsString;
                   EdtQuant.SetFocus;
                end
             else
                begin
                   EdtNomePro.Clear;
                   LabelUnd.Caption:= '';
                   showmessage('Produto não Cadastrado');
                   EdtCodPro.SetFocus;
                end;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar o produto');
     end;
   finally
     dm.QConsulta.Close;
   end;
end;

procedure TFrmProdutosComposicao.BtnConsProdClick(Sender: TObject);
begin
   Application.CreateForm(TFormConsProdutos, FormConsProdutos);
   // FormConsProdutos.Tag:= 27;
   FormConsProdutos.ShowModal;
end;

procedure TFrmProdutosComposicao.BtnGravaClick(Sender: TObject);
begin
   if EdtCodPro.Text = '' then
      begin
         showmessage('Digite o código do Produto');
         EdtCodPro.SetFocus;
         exit;
      end;

   if not (strtocurr(EdtQuant.Text) > 0) then
      begin
         showmessage('Verifique a quantidade');
         EdtQuant.SetFocus;
         exit;
      end;

   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.qConsulta do
          begin
             close;
             sql.Clear;
             sql.add('INSERT INTO PRODUTO_COMPOSICAO (CODIGO, COD_PRO_COMPOSICAO, QUANT) ' +
                     'VALUES (:1, :2, :3)');
             Parambyname('1').AsInteger := FrmAlteraPreco.QConsProdCODIGO.AsInteger;
             Parambyname('2').AsInteger := strtoint(EdtCodPro.Text);
             Parambyname('3').AsCurrency:= strtocurr(EdtQuant.Text);
             ExecSQL;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao gravar o Produto ' + #13 +
                   'Verifique se está gravado');
       EdtCodPro.Clear;
       EdtNomePro.clear;
       EdtQuant.Clear;
       LabelUnd.Caption:= '';
       EdtCodPro.SetFocus;
     end;
   finally
     dm.Consulta.close;
     BuscaProduto;
     EdtCodPro.Clear;
     EdtNomePro.clear;
     EdtQuant.Clear;
     LabelUnd.Caption:= '';
     EdtCodPro.SetFocus;
   end;
end;

procedure TFrmProdutosComposicao.BtnExcluiClick(Sender: TObject);
begin
   if not QProdCOD_PRINCIPAL.IsNull then
      begin
         if Application.MessageBox('Confirma a Exclusão do Produto?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
           begin
              if dm.IBTransaction.Active then
                 dm.IBTransaction.Commit;
              dm.IBTransaction.StartTransaction;
              try
                try
                  with dm.qConsulta do
                      begin
                         close;
                         sql.Clear;
                         sql.add('DELETE FROM PRODUTO_COMPOSICAO ' +
                                 'WHERE CODIGO = :1 AND COD_PRINCIPAL = :2');
                         Parambyname('1').AsInteger := FrmAlteraPreco.QConsProdCODIGO.AsInteger;
                         Parambyname('2').AsInteger := QProdCOD_PRINCIPAL.AsInteger;
                         ExecSQL;
                      end;
                  dm.IBTransaction.Commit;
                except
                  dm.IBTransaction.Rollback;
                  showmessage('Erro ao excluir o Produto');
                end;
              finally
                dm.Consulta.close;
                BuscaProduto;
                EdtCodPro.Clear;
                EdtNomePro.clear;
                EdtCodPro.SetFocus;
              end;
           end;
      end;
end;

procedure TFrmProdutosComposicao.FormShow(Sender: TObject);
begin
   BuscaProduto;
end;

procedure TFrmProdutosComposicao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

procedure TFrmProdutosComposicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   if IBTRProd.Active then
      IBTRProd.Commit;
   QProd.Close;
   Action:= caFree;
end;

procedure TFrmProdutosComposicao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         key:= #0;
         SelectNext(ActiveControl, true, true);
      end;
end;

procedure TFrmProdutosComposicao.BtnAddProClick(Sender: TObject);
begin
   Application.CreateForm(TFormProdutos, FormProdutos);
   FormProdutos.tag:= 0;
   FormProdutos.showmodal;
end;

procedure TFrmProdutosComposicao.FormCreate(Sender: TObject);
begin
   LabelUnd.Caption:= '';
end;

procedure TFrmProdutosComposicao.Button1Click(Sender: TObject);
begin
  { Application.CreateForm(TFrmQRelProdComposicao, FrmQRelProdComposicao);
   FrmQRelProdComposicao.QRLNomeEmpresa.Caption:= frmmenu.SB.Panels[3].Text;
   FrmQRelProdComposicao.QRLTitulo.Caption:= FrmAlteraPreco.QConsProdCODPRO.AsString + ' - ' + FrmAlteraPreco.QConsProdNOMEPRO.AsString;
   FrmQRelProdComposicao.QRProd.PreviewInitialState:= wsMaximized;
   FrmQRelProdComposicao.QRProd.Preview;
   FrmQRelProdComposicao.QRProd.QRPrinter:= nil;  }
end;

end.
