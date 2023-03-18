unit fornecedor_codigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RzPanel, DB,
  Grids, Wwdbigrd, Wwdbgrid, Menus, RzDBEdit,
  Mask, RzEdit, PageView, RzDBBnEd,FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzBtnEdt, AlignEdit, DBGrids, AdvGlowButton;

type
  Tfrmfornecedor_codigo = class(TForm)
    RzPanel1: TRzPanel;
    dsfornecedor_codigo: TDataSource;
    pop1: TPopupMenu;
    ppagina: TPageView;
    PageSheet5: TPageSheet;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    PageSheet6: TPageSheet;
    pcadastro: TRzPanel;
    ereferencia: TRzDBEdit;
    epreco: TRzDBNumericEdit;
    RzDBEdit3: TRzDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Retornar1: TMenuItem;
    ECODFORNECEDOR: TRzDBButtonEdit;
    qrfornecedor: TFDQuery;
    Gravar1: TMenuItem;
    qrfornecedor_codigo: TFDQuery;
    qrfornecedor_codigofornecedor: TStringField;
    query: TFDQuery;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bretornar: TAdvGlowButton;
    Label4: TLabel;
    qrfornecedorCODIGO: TIntegerField;
    qrfornecedorNOME: TStringField;
    qrfornecedorFANTASIA: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorESTADO: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorTELEFONE: TStringField;
    qrfornecedorFAX: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorHOMEPAGE: TStringField;
    qrfornecedorTIPO: TStringField;
    qrfornecedorCNPJ: TStringField;
    qrfornecedorIE: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorREPRESCELULAR: TStringField;
    qrfornecedorUSERCAD: TStringField;
    qrfornecedorDATACADASTRO: TDateField;
    qrfornecedorOBSERVACOES: TBlobField;
    qrfornecedorREPRESNOME: TStringField;
    qrfornecedorREPRESFONEFAX: TStringField;
    qrfornecedorREPRESEMAIL: TStringField;
    qrfornecedorREPRESOBSERVACOES: TBlobField;
    qrfornecedorPRODUTOR_RURAL: TStringField;
    qrfornecedorINSC_PRODUTOR: TStringField;
    qrfornecedorCOD_LINHA: TIntegerField;
    qrfornecedorLINHA: TStringField;
    qrfornecedorCOD_EMPRESA: TIntegerField;
    qrfornecedorcodigo_ibge: TStringField;
    qrfornecedorNUMERO: TIntegerField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorTP: TStringField;
    qrfornecedor_codigoCODFORNECEDOR: TIntegerField;
    qrfornecedor_codigoCODPRODUTO: TIntegerField;
    EdtNomePro: TEdit;
    edtcodpro: TRzButtonEdit;
    Edit2: TEdit;
    EdtCodPro1: TAlignEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    qrfornecedor_codigoCODIGO: TStringField;
    Panel1: TPanel;
    edtPesquisaCodProduto: TEdit;
    Label8: TLabel;
    Grid: TDBGrid;
    qrProduto: TFDQuery;
    qrProdutoCODIGO: TIntegerField;
    qrProdutoDESCRICAO: TStringField;
    qrfornecedor_codigoPRODUTO: TStringField;
    SpeedButton1: TSpeedButton;
    qrfornecedorVALOR_LEITE: TFMTBCDField;
    qrfornecedor_codigoPRECO: TFMTBCDField;
    procedure bretornarClick(Sender: TObject);
    procedure uali(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Retornar1Click(Sender: TObject);
    procedure ECODFORNECEDORButtonClick(Sender: TObject);
    procedure ECODFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure ereferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure balterarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure dsfornecedor_codigoDataChange(Sender: TObject;
      Field: TField);
    procedure ppaginaChange(Sender: TObject);
    procedure eprecoExit(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure edtcodproButtonClick(Sender: TObject);
    procedure OD(Sender: TObject);
    procedure edtcodproEnter(Sender: TObject);
    procedure edtcodproChange(Sender: TObject);
    procedure edtcodproKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaCodProdutoKeyPress(Sender: TObject;
      var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfornecedor_codigo: Tfrmfornecedor_codigo;
  vOPcao, reg_atual: integer;
implementation

uses  xloc_fornecedor, principal, ModulodeDados, ConsProdutos;

{$R *.dfm}

procedure Tfrmfornecedor_codigo.bretornarClick(Sender: TObject);
begin
  if (qrfornecedor_codigo.State = dsInsert) or (qrfornecedor_codigo.State = dsedit) then
     qrfornecedor_codigo.Cancel;
     qrfornecedor_codigo.Close;
    //dm.Coneccao.rollback;
  close;
end;

procedure Tfrmfornecedor_codigo.uali(Sender: TObject);
begin
  if Tag = 0 then
  begin
  qrfornecedor_codigo.Close;
  qrfornecedor_codigo.SQL.Clear;
  qrfornecedor_codigo.SQL.Add('select * from fornecedor_codigo where codproduto =''-1''');
  //qrfornecedor_codigo.SQL.Add('where codproduto = '''+frmproduto.qrprodutoCODIGO.AsString+'''');
 // qrfornecedor_codigo.SQL.Add('where codproduto = ''' + edtcodpro.text + '''');
  qrfornecedor_codigo.Open;
  end;
end;

procedure Tfrmfornecedor_codigo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  atualiza := False;
  frmfornecedor_codigo := nil;
  action := cafree;
end;

procedure Tfrmfornecedor_codigo.Retornar1Click(Sender: TObject);
begin
 // IF Tag = 0 THEN
 // Close;
 bretornarClick(Sender);
end;

procedure Tfrmfornecedor_codigo.ECODFORNECEDORButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    qrfornecedor.close;
    qrfornecedor.sql.clear;
    qrfornecedor.sql.add('select * from fornecedores where codigo = ''' + resultado_pesquisa1 + '''');
    qrfornecedor.open;
    qrfornecedor_codigo.fieldbyname('codfornecedor').asstring := resultado_pesquisa1;
    ereferencia.setfocus;
  end;
end;

procedure Tfrmfornecedor_codigo.ECODFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    //if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    //qrfornecedor_codigo.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(tedit(sender).Text, 6);
    if tedit(sender).Text <> '' then
    begin
      qrfornecedor.close;
      qrfornecedor.sql.clear;
      qrfornecedor.sql.add('select * from fornecedores where codigo = ''' + ecodfornecedor.text + '''');
      qrfornecedor.open;
      if qrfornecedor.recordcount = 0 then
      begin
        application.messagebox('Fornecedor não cadastrado!', 'Aviso', mb_ok + mb_iconwarning);
        ecodfornecedor.Text := '';
        ecodfornecedor.setfocus;
        exit;
      end;
      Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ecodfornecedorButtonClick(frmfornecedor_codigo);
    end;
  end;

end;

procedure Tfrmfornecedor_codigo.ereferenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmfornecedor_codigo.balterarClick(Sender: TObject);
begin
  vOpcao := 2;
  reg_atual := qrfornecedor_codigo.RecNo;
  if qrfornecedor_codigoCODPRODUTO.AsString <> '' then
  begin
    ppagina.ActivePageIndex := 1;
    qrfornecedor_codigo.Edit;
    pcadastro.Enabled := true;
    ECODFORNECEDOR.SetFocus;
  end
  else
    bincluirClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.bgravarClick(Sender: TObject);
begin

  if (qrfornecedor_codigo.State = dsInsert) or (qrfornecedor_codigo.State = dsedit) then
  begin
    if (qrfornecedor_codigo.State = dsInsert) then
    begin
      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select * from fornecedor_codigo');
      query.SQL.Add('where codfornecedor = :vfor and codproduto = :vpro and codigo = :vcod');
      query.Params.ParamByName('vfor').AsString := ECODFORNECEDOR.Text;
          //query.Params.ParamByName('vpro').AsString := frmproduto.qrprodutoCODIGO.AsString;
      query.Params.ParamByName('vpro').AsString := edtcodpro1.text;
      query.Params.ParamByName('vcod').AsString := ereferencia.Text;
      query.Open;
      if query.RecordCount > 0 then
      begin
        application.messagebox('Referência já cadastrada para este fornecedor!', 'Atenção', mb_ok + MB_ICONEXCLAMATION);
        ereferencia.SetFocus;
        exit;
      end;
          //qrfornecedor_codigo.FieldByName('codproduto').AsString := frmproduto.qrprodutoCODIGO.AsString;
      qrfornecedor_codigo.FieldByName('codproduto').AsString := edtcodpro1.Text;

    end;
    qrfornecedor_codigo.Post;
    dm.Coneccao.Commit;
   end;



   if Tag = 1 then
   begin                                  
   RESULTADO_PESQUISA1 := EdtCodPro1.Text;
   atualiza := True;
   close;
   end else
   begin
    bincluir.SetFocus;
     pcadastro.Enabled := false;
  ppagina.ActivePageIndex := 0;
  grid.SetFocus;
  if (qrfornecedor_codigo.State = dsInsert) then
    qrfornecedor_codigo.RecNo := reg_atual + 1
  else
    qrfornecedor_codigo.RecNo := reg_atual;
   end;
end;

procedure Tfrmfornecedor_codigo.bincluirClick(Sender: TObject);
begin
  vOpcao := 1;
  reg_atual := qrfornecedor_codigo.RecNo;
  ppagina.ActivePageIndex := 1;
  pcadastro.Enabled := true;
  if Tag = 0 then
  begin
  qrfornecedor_codigo.Insert;
  //qrfornecedor_codigoCODPRODUTO.AsString := frmproduto.qrprodutoCODIGO.AsString;
  // qrfornecedor_codigoCODPRODUTO.AsString := edtcodpro.text;
  // qrfornecedor_codigoPRECO.AsFloat := 0;
  edtcodpro.SetFocus;
  end;
end;

procedure Tfrmfornecedor_codigo.dsfornecedor_codigoDataChange(
  Sender: TObject; Field: TField);
begin
  if qrfornecedor_codigo.State = dsBrowse then
  begin
    bincluir.Enabled := true;
    balterar.Enabled := true;
    bexcluir.Enabled := true;
    bgravar.Enabled := false;
  end
  else
  begin
    bincluir.Enabled := false;
    balterar.Enabled := false;
    bexcluir.Enabled := false;
    bgravar.Enabled := true;
  end;
end;

procedure Tfrmfornecedor_codigo.ppaginaChange(Sender: TObject);
begin
  if ppagina.ActivePageIndex = 0 then
  begin
    if (qrfornecedor_codigo.State = dsInsert) or (qrfornecedor_codigo.State = dsEdit) then
      qrfornecedor_codigo.Cancel
  end;
end;

procedure Tfrmfornecedor_codigo.eprecoExit(Sender: TObject);
begin
  bgravar.SetFocus;
end;

procedure Tfrmfornecedor_codigo.Incluir1Click(Sender: TObject);
begin
  bincluirClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.Alterar1Click(Sender: TObject);
begin
  balterarClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.bexcluirClick(Sender: TObject);
begin

    qrfornecedor_codigo.Delete;
    dm.Coneccao.commit;
{  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end; }
end;

procedure Tfrmfornecedor_codigo.Excluir1Click(Sender: TObject);
begin
  bexcluirClick(frmfornecedor_codigo);
end;

procedure Tfrmfornecedor_codigo.edtcodproButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFormConsProdutos, FormConsProdutos);
  FormConsProdutos.Edit1.Text := EdtCodPro.Text;
  FormConsProdutos.showmodal;
  edtcodpro.Text       := dm.SDS_PRODUTOSCODIGO_BARRAS.AsString;
  edtcodpro1.Text      := dm.SDS_PRODUTOSCODIGO.AsString;
  edtnomepro.Text      := dm.SDS_PRODUTOSDESCRICAO.AsString;
  epreco.Value         := dm.SDS_PRODUTOSPRECO_VENDA.AsFloat;
 // EdtQuant.TEXT := '1';
  bgravar.SetFocus;
end;

procedure Tfrmfornecedor_codigo.OD(Sender: TObject);
begin
 if (edtcodpro.Text = '') then
     exit;

  IF (edtcodpro.Text > '') then
  BEGIN
  if edit2.Text='LETRAS' THEN
  BEGIN
   edtcodproButtonClick(Sender);
  end ELSE

 if  EDIT2.Text='NUMEROS' THEN
 BEGIN
  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
   // try
      with dm.QConsulta do
        begin
           close;
           sql.Clear;
               begin
                 sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
                         'PRECO_VENDA, PRECO_VENDA2 FROM PRODUTOS WHERE CODIGO_BARRAS = :CODPRO');
                 Parambyname('codpro').AsString:= Trim(EdtCodPro.Text);
                end;
           Open;
           if not FieldByName('CODIGO_BARRAS').IsNull then
              begin
                 EdtCodPro.Text       := fieldbyname('CODIGO_BARRAS').AsString;
                 EdtCodPro1.Text       := fieldbyname('CODIGO').AsString;
                 EdtNomePro.Text      := fieldbyname('descricao').AsString;
                 epreco.Value         := fieldbyname('PRECO_VENDA').Value;

               EdtCodPro.SetFocus;
              end
           else
              begin
                 showmessage('Produto não Cadastrado');
                 EdtCodPro.SetFocus;
              end;
        end;
      dm.IBTransaction.Commit;
  finally
    dm.QConsulta.Close;
  end;

end;
end;
end;

procedure Tfrmfornecedor_codigo.edtcodproEnter(Sender: TObject);
begin
  edtcodpro.SelectAll;
end;

procedure Tfrmfornecedor_codigo.edtcodproChange(Sender: TObject);
begin
IF (EdtCodPro.Text>='A') AND (EdtCodPro.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EdtCodPro.Text>='0') AND (EdtCodPro.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EdtCodPro.Text='' THEN
EDIT2.Text:=''
end;

procedure Tfrmfornecedor_codigo.edtcodproKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;    
end;

procedure Tfrmfornecedor_codigo.edtcodproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN THEN
  BEGIN
  if (edtcodpro.Text = '') then
  ShowMessage('Código do Produto deve ser Informado');
  EdtCodPro.SetFocus;
  end;
end;

procedure Tfrmfornecedor_codigo.edtPesquisaCodProdutoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if edtPesquisaCodProduto.Text <> '' then
    begin
      dsfornecedor_codigo.DataSet.Filter:= 'CODIGO LIKE ' + QuotedStr(edtPesquisaCodProduto.Text + '%');
      dsfornecedor_codigo.DataSet.Filtered:= True;
      if dsfornecedor_codigo.DataSet.IsEmpty then
        dsfornecedor_codigo.DataSet.Filtered:= False;
    end
    else
      dsfornecedor_codigo.DataSet.Filtered:= False;
  end;
end;

procedure Tfrmfornecedor_codigo.SpeedButton1Click(Sender: TObject);
begin
  try
    FormConsProdutos:= TFormConsProdutos.Create(Nil);
    FormConsProdutos.ShowModal;
  finally
    if not dm.SDS_PRODUTOS.IsEmpty then
    begin
      dsfornecedor_codigo.DataSet.Filter:= 'CODPRODUTO = ' + dm.SDS_PRODUTOSCODIGO.AsString;
      dsfornecedor_codigo.DataSet.Filtered:= True;
      if dsfornecedor_codigo.DataSet.IsEmpty then
        dsfornecedor_codigo.DataSet.Filtered:= False;
    end;
    FreeAndNil(FormConsProdutos);
  end;
end;

end.
