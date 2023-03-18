unit Similares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls,  StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB,  Mask,
  DBCtrls, SUITabControl, RXCtrls,  RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  DBClient, SimpleDS, AlignEdit, sBitBtn;

type
  TFormSimilares = class(TForm)
    RxLabel29: TRxLabel;
    RxLabel31: TRxLabel;
    RxLabel30: TRxLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    btnExcluir: TsBitBtn;
    btnSalvar: TsBitBtn;
    MsgInformacao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    btnCancelar: TsBitBtn;
    BtnNovo: TsBitBtn;
    DBGrid1: TDBGrid;
    MsgAtencao: TsuiMessageDialog;
    Dts_Prod_sim: TDataSource;
    EdtCodPro: TAlignEdit;
    BtnConsProd: TSpeedButton;
    BtnAddPro: TSpeedButton;
    EdtNomePro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label3: TLabel;
    Edit7: TEdit;
    SpeedButton2: TSpeedButton;
//    procedure LocalizarProdutos(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure SimilarEnter(Sender: TObject);
    procedure SimilarExit(Sender: TObject);
//    procedure SimilarButtonClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure HabilitaNovo;
    procedure BtnNovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure selectClick(Sender: TObject);
    procedure selectExit(Sender: TObject);
    procedure Select1Click(Sender: TObject);
    procedure Select1Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure BtnConsProdClick(Sender: TObject);
    procedure EdtCodProExit(Sender: TObject);
    procedure EdtCodProChange(Sender: TObject);
    procedure EdtCodProEnter(Sender: TObject);
    procedure EdtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAddProClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormSimilares: TFormSimilares;

implementation

USES MODULODEDADOS, Produtos, Z_RotinasGerais, ConsProdutos, Principal,
  ConsProdSimilar;
{$R *.dfm}

procedure TFormSimilares.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
//SIMILAR.Enabled :=false;

end;

procedure TFormSimilares.FormShow(Sender: TObject);
begin
 // dm.SDS_PRODUTOS.active := True;
          DM.SDS_Similares.Active:= False;
         DM.SDS_Similares.Params.ParamByName('COD').Value := null;
         DM.SDS_similares.Active:= True;
//  DM.SDS_Similares.active := true;
//  DM.SPC_SIMILARES.Active := True;
//  edit1.Text := FormProdutos.dbt_codigo.text;
//  Edit3.text := formProdutos.db_nome.Text;
//  edit4.text := formProdutos.DBEdit1.text;
 //  Sds_prod_sim.active := true;
 // DBLookupComboBox1.Enabled := false;
 // IF DM.SDS_Produtos.RecordCount = 0 then HabilitaNovo; //else AtualizaManutencao;
  end;


procedure TFormSimilares.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormSimilares.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_SIMILARES.State in [dsInsert, dsEdit, dsSetKey] then
  begin
     MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;
procedure TFormSimilares.SimilarEnter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormSimilares.SimilarExit(Sender: TObject);
begin
  CorSaida(Sender);
//      if Similar.Text = '' then
//begin
//Desc_similar.Clear;
//end else begin
//LocalizarProdutos(Sender);

end;
//end;

procedure TFormSimilares.btnSalvarClick(Sender: TObject);
begin

// Try
  begin
   DM.SPC_Similares.ExecProc;
   Cod := (DM.SPC_Similares.ParamByName('ATUAL').AsInteger);
   DM.SDS_Similares.Insert;

   dm.SDS_SIMILARESCODIGO_SEQ.AsInteger      := COD;
   DM.SDS_SIMILARESCODIGO_PROD.AsInteger     := StrToInt(EDIT7.TEXT);
   DM.SDS_SIMILARESCODIGO_SIMILAR.AsInteger  := StrToInt(Edit5.Text);
   DM.SDS_SIMILARESDESC_SIMILAR.TEXT         := EdtNomePro.Text;
   DM.SDS_SimilaresUSERCAD.Text              := FormPrincipal.UserLogado;
   DM.SDS_SimilaresDATACAD.Text              := datetostr(now);

   DM.SDS_Similares.Post;
   // DM.SDS_similares.ApplyUpdates(0);

         DM.SDS_Similares.Active:= False;
         DM.SDS_Similares.Params.ParamByName('COD').AsString := Edit7.Text;
         DM.SDS_similares.Active:= True;
      end;
{   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;  }

end;



procedure TFormSimilares.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormSimilares:=nil;
end;

procedure TFormSimilares.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
MsgConfirmacao.Text:= 'Confirma Exclusão?';
if MsgConfirmacao.ShowModal = mryes then
begin

Try
 Begin
    DM.SDS_Similares.Delete;
  //  DM.SDS_Similares.ApplyUpdates(0);
 end;
   if DM.SDS_Similares.RecordCount = 0 then
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;


procedure TFormSimilares.btnCancelarClick(Sender: TObject);
begin
TRY
 DM.SDS_Similares.Cancel;
 //DBLOOKUPCOMBOBOX1.Enabled := false;
 if DM.SDS_Similares.RecordCount = 0 then
  Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormSimilares.BtnNovoClick(Sender: TObject);
begin
If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin

Try
 //  DBLookupComboBox1.Enabled :=true;
   DM.SPC_Similares.ExecProc;
   Cod := (DM.SPC_Similares.ParamByName('ATUAL').AsInteger);
   DM.SDS_Similares.Insert;
//   dbEDIT1.TEXT:=IntTostr(Cod);
   dm.SDS_SIMILARESCODIGO_SEQ.TEXT := IntToStr(COD);
   DM.SDS_SIMILARESCODIGO_PROD.Text := EDIT1.TEXT;
//   DM.SDS_SIMILARESCODIGO_SIMILAR.TEXT := SIMILAR.Text;
   DM.SDS_SimilaresUSERCAD.Text := FormPrincipal.UserLogado;
   DM.SDS_SimilaresDATACAD.Text := datetostr(now);
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
END;

procedure TFormSimilares.Button1Click(Sender: TObject);
begin
Try
if FormConsProdutos1=nil   then
    begin
    FormConsProdutos1:=FormConsProdutos1.Create(self);
      FormConsProdutos1.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
//Similar.Clear;
//Desc_similar.Text := DM.SDS_ProdutosDESCRICAO.Text;
//similar.Text:= DM.SDS_ProdutosCODIGO.AsString;
btnNOVO.SetFocus;
end;


//procedure TFormSimilares.LocalizarProdutos(Sender: TObject);
//begin
//DM.SDS_Produtos.Active:= False;
//DM.SDS_Produtos.Active:= True;
//If (DM.SDS_Produtos.Locate('CODIGO',VarArrayOf([desc_similar.Text]),[])) then
//begin
//SIMILAR.Clear;
//desc_similar.Text:= DM.SDS_ProdutosDESCRICAO.Text;
//similar.Text:= DM.SDS_ProdutosCODIGO.AsString;
//end else begin
//MsgAtencao.Text:= 'Fornecedor Inexistente !!!';
//MsgAtencao.ShowModal;
//if FormConsProdSimilar=nil   then
//    begin
//    FormConsProdSimilar:=TFormConsProdSimilar.Create(self);
//      FormConsProdSimilar.ShowModal;
//      end;
//similar.Clear;
//Desc_similar.Text:= DM.SDS_ProdutosDESCRICAO.Text;
//Similar.Text:= DM.SDS_ProdutosCODIGO.AsString;
//end;
//end;

procedure TFormSimilares.selectClick(Sender: TObject);
begin
//SDS_PROD_SIM.Active := TRUE;
 Try
if FormConsProdutos1=nil   then
    begin
    FormConsProdutos1:=TFormConsProdutos1.Create(self);
      FormConsProdutos1.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
//Similar.Clear;
//Desc_similar.Text:= Sds_prod_simDESCRICAO.Text;
//Similar.Text:= Sds_prod_simCODIGO.AsString;
btnSalvar.SetFocus;
end;

procedure TFormSimilares.selectExit(Sender: TObject);
begin
 CorSaida(Sender);
//      if Similar.Text = '' then
//begin
//Desc_similar.Clear;
//end else begin
//LocalizarProdutos(Sender);
//end;
END;

procedure TFormSimilares.Select1Click(Sender: TObject);
begin
Try
  DM.SDS_PRODUTOS.Active:= FALSE;
  DM.SDS_PRODUTOS.DataSet.CommandText:= 'select * from PRODUTOS where codigo <'+'-1'+'ORDER BY CODIGO asc';
  DM.SDS_PRODUTOS.Active:= TRUE;

if FormConsProdutos=nil   then
    begin
    FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.Edit1.Text := Edit1.Text;
      FormConsProDutos.ShowModal;
      Edit3.Text:= DM.SDS_ProdutosDescricao.Text;
      edit7.Text:= DM.SDS_ProdutosCODIGO.AsString;
      edit1.Text:= DM.SDS_ProdutosCODIGO_BARRAS.AsString;
      edit4.Text:= DM.SDS_PRODUTOSREFERENCIA.AsString;
      EdtCodPro.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;

//Edit1.Clear;

end;

procedure TFormSimilares.Select1Exit(Sender: TObject);
begin
DM.SDS_Produtos.Cancel;
end;


procedure TFormSimilares.DBLookupComboBox1Exit(Sender: TObject);
begin
//dm.sds_similaresDESC_SIMILAR.TEXT := dblookupCombobox1.Text;
end;

procedure TFormSimilares.BtnConsProdClick(Sender: TObject);
begin
 Application.CreateForm(TFormConsProdutos, FormConsProdutos);
  FormConsProdutos.Edit1.Text := Edit1.Text;
   FormConsProdutos.ShowModal;
   //Edit1.Clear;
   EdtNomePro.Text:= DM.SDS_ProdutosDescricao.Text;
   Edit5.Text:= DM.SDS_ProdutosCODIGO.AsString;
   EdtCodPro.Text:= DM.SDS_ProdutosCODIGO_BARRAS.AsString;
   btnSalvar.SetFocus;
end;

procedure TFormSimilares.EdtCodProExit(Sender: TObject);
begin
   if trim(EdtCodPro.Text) = '' then
      exit;

   if DBGrid1.Focused then
      exit;

if edit2.Text='LETRAS' THEN
  BEGIN
   BtnConsProdClick(Sender);
  end ELSE

 if  EDIT2.Text='NUMEROS' THEN
 BEGIN
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.clear;
               sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, REFERENCIA, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
                         'PRECO_VENDA, PRECO_VENDA2 FROM PRODUTOS WHERE CODIGO_BARRAS = :CODPRO');
               Parambyname('codpro').AsString:= Trim(EdtCodPro.Text);
               Open;
             if not fieldbyname('codigo_BARRAS').IsNull then
                begin
                   EdtNomePro.Text := fieldbyname('descricao').AsString;
                   Edit6.Text:= fieldbyname('REFERENCIA').AsString;
                   Edit5.Text := fieldbyname('CODIGO').AsString;
                 //  EdtQuant.SetFocus;
                end
             else
                begin
                   EdtNomePro.Clear;
                   Edit6.Clear;
                 //  LabelUnd.Caption:= '';
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
end;

procedure TFormSimilares.EdtCodProChange(Sender: TObject);
begin
IF (EdtCodPro.Text>='A') AND (EdtCodPro.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EdtCodPro.Text>='0') AND (EdtCodPro.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EdtCodPro.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormSimilares.EdtCodProEnter(Sender: TObject);
begin
  CorEntrada(Sender);
  edtcodpro.SelectAll;
end;

procedure TFormSimilares.EdtCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then
     BtnConsProd.Click
  else
     if key = vk_f3 then
        BtnAddPro.Click;

  if Key = VK_RETURN THEN
  BEGIN
  if (edtcodpro.Text = '') then
  ShowMessage('Código do Produto deve ser Informado');
  EdtCodPro.SetFocus;
  end;
end;

procedure TFormSimilares.BtnAddProClick(Sender: TObject);
begin
      FormProdutos:=NIL;
      FormProdutos:=TFormProdutos.Create(self);
      FormProdutos.FormStyle := fsNormal;
      FormProdutos.Visible:= False;
      FormProdutos.btnLocalizar.Enabled :=False;
      FormProdutos.ShowModal;
end;

procedure TFormSimilares.Edit1Change(Sender: TObject);
begin
IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Edit1.Text>='0') AND (edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Edit1.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormSimilares.Edit1Enter(Sender: TObject);
begin
  CorEntrada(Sender);
  Edit1.SelectAll;
end;

procedure TFormSimilares.Edit1Exit(Sender: TObject);
begin
 if trim(Edit1.Text) = '' then
      exit;

   if DBGrid1.Focused then
      exit;

if edit2.Text='LETRAS' THEN
  BEGIN
   Select1Click(Sender);
  end ELSE

 if  EDIT2.Text='NUMEROS' THEN
 BEGIN
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.clear;
               sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, REFERENCIA, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
                         'PRECO_VENDA, PRECO_VENDA2 FROM PRODUTOS WHERE CODIGO_BARRAS = :CODPRO');
               Parambyname('codpro').AsString:= Trim(Edit1.Text);
               Open;
             if not fieldbyname('codigo_BARRAS').IsNull then
                begin
                   Edit3.Text := fieldbyname('descricao').AsString;
                   Edit4.Text:= fieldbyname('REFERENCIA').AsString;
                   Edit7.Text := fieldbyname('CODIGO').AsString;
                 //  EdtQuant.SetFocus;
                end
             else
                begin
                   Edit3.Clear;
                   Edit4.Clear;
                 //  LabelUnd.Caption:= '';
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
end;

procedure TFormSimilares.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then
     SpeedButton1.Click
  else
     if key = vk_f3 then
        SpeedButton2.Click;

  if Key = VK_RETURN THEN
  BEGIN
  if (Edit1.Text = '') then
  ShowMessage('Código do Produto deve ser Informado');
  Edit1.SetFocus;
  end;
end;

end.
