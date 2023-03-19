unit UAfeicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo,  Mask, DBCtrls, StdCtrls,
  ExtCtrls, AlignEdit, Grids, DBGrids, DB,  Buttons, ComCtrls,
  SUIDlg, RXDBCtrl,  RxToolEdit, RxCurrEdit, AdvGlowButton, AdvPanel;

type
  TFormAfericao = class(TFrmCadastroNovo)
    Label1: TLabel;
    Label10: TLabel;
    EdtCodPro: TAlignEdit;
    BtnConsPro: TSpeedButton;
    BtnAddPro: TSpeedButton;
    EdtNomePro: TEdit;
    Label11: TLabel;
    EdtQuant: TEdit;
    Label5: TLabel;
    edtVenda: TCurrencyEdit;
    Label14: TLabel;
    edtTotal: TCurrencyEdit;
    Label13: TLabel;
    qtdeFracao: TCurrencyEdit;
    Label12: TLabel;
    Label4: TLabel;
    EdtEstoque: TCurrencyEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    dt_venda: TDBDateEdit;
    EdtCodPro1: TAlignEdit;
    Edit2: TEdit;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure BtnConsProClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnAddProClick(Sender: TObject);
    procedure EdtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdtCodProChange(Sender: TObject);
    procedure EdtCodProExit(Sender: TObject);
    procedure EdtQuantExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAfericao: TFormAfericao;

implementation

uses ModuleDados1, ConsProdutos, ModulodeDados, Principal, Produtos,
  consAfericao, Z_RotinasGerais;

{$R *.dfm}

Procedure TFormAfericao.AtualizaManutencao;
begin
  BTNNOVO.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
  BTNEXCLUIR.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
  BtnLocalizar.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
  BtnSalvar.Enabled:= (DM1.Sds_Afericao.State in [dsInsert, dsEdit]);
  BTNCANCELAR.Enabled:= (DM1.Sds_Afericao.State in [dsInsert, dsEdit]);
  BtnEditar.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
end;

procedure TFormAfericao.HabilitaPanel;
begin
  Panel1.Enabled:= True;
end;

procedure TFormAfericao.DesabilitaPanel;
begin
  Panel1.Enabled:= False;
end;

procedure TFormAfericao.HabilitaNovo;
begin
  BTNNOVO.Enabled:=TRUE;
  BtnEditar.Enabled:=FALSE;
  BTNCANCELAR.Enabled:=FALSE;
  BtnSalvar.Enabled:=FALSE;
  BTNEXCLUIR.Enabled:=FALSE;
  BtnLocalizar.Enabled:= False;
end;

procedure TFormAfericao.BtnConsProClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormConsProdutos, FormConsProdutos);
  FormConsProdutos.Edit1.Text := EdtCodPro.Text;
  FormConsProdutos.showmodal;
  edtcodpro.Text:= dm.SDS_PRODUTOSCODIGO_BARRAS.AsString;
  edtnomepro.Text:= dm.SDS_PRODUTOSDESCRICAO.AsString;
  EdtEstoque.TEXt:= DM.SDS_PRODUTOSESTOQUE.Text;
  qtdeFracao.Text:= dm.SDS_PRODUTOSFRACAO.AsString;
  edtVenda.Value:= dm.SDS_PRODUTOSPRECO_VENDA.AsFloat;
  EdtQuant.TEXT:= '1';
  EdtQuant.SetFocus;
end;

procedure TFormAfericao.btnNovoClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label3.Caption ='N'then
  begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    FormPrincipal.MsgInformacao.Execute;
  end;

  if FormPrincipal.Label3.Caption ='S'then
  begin
    try
      dm1.ProxCod.Close;
      dm1.ProxCod.SQL.Clear;
      dm1.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM AFERICAO');
      DM1.ProxCod.Open;

      dm1.sds_Afericao.Open;
      dm1.sds_Afericao.Insert;
      DM1.SDS_afericaoCODIGO.ASINTEGER :=DM1.ProxCodN_CODIGO.ASINTEGER + 1;
      DM1.SDS_afericaoUSERCAD.Text:= FormPrincipal.UserLogado;
      DM1.SDS_afericaoDATACAD.Text:= datetostr(now);
      DM1.Sds_AfericaoDATA.Text:= datetostr(now);
      HabilitaPanel;
      AtualizaManutencao;
      EdtCodPro.SetFocus;
    except
      FormPrincipal.MsgInformacao.HTMLText.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      FormPrincipal.MsgInformacao.Execute;
    end;
  end;
end;

procedure TFormAfericao.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label2.Caption ='N'then
  begin
    FormPrincipal.MsgInformacao.HTMLText.Text:= 'O usuário conectado não '+
    'possui autorização para Editar Registro. Contate o Administrador do '+
    'Sistema para obter acesso!!! !!!';
    FormPrincipal.MsgInformacao.Execute;
  end;

  if FormPrincipal.Label2.Caption ='S'then
  begin
    try
      DM1.SDS_afericao.Edit;
      AtualizaManutencao;
      HabilitaPanel;
      EdtCodPro.SetFocus;
    Except
      FormPrincipal.MsgInformacao.HTMLText.Text:= 'Ocorreu um Erro. Reinicie o '+
      'Sistema e tente novamente !!!';
      FormPrincipal.MsgInformacao.Execute;
    end;
  end;
end;

procedure TFormAfericao.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  try
    DM1.SDS_afericao.Cancel;
    if DM1.SDS_afericao.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
      DesabilitaPanel;
  except
    FormPrincipal.MsgInformacao.HTMLText.Text:= 'Ocorreu um Erro. Reinicie o'+
    ' Sistema e tente novamente !!!';
    FormPrincipal.MsgInformacao.Execute;
  end;
end;

procedure TFormAfericao.BtnGravarClick(Sender: TObject);
begin
  inherited;
  try
    DM1.Sds_AfericaoCODIGO_PROD.Text        := EdtCodPro1.Text;
    DM1.Sds_AfericaoQUANTIDADE.AsFloat      := StrToFloat(EdtQuant.Text);
    DM1.Sds_AfericaoVALOR_UNITARIO.AsFloat  := edtVenda.Value;
    DM1.Sds_AfericaoVALOR_TOTAL.AsFloat     := edtTotal.value;

    DM1.SDS_afericao.Post;
    DM1.SDS_afericao.ApplyUpdates(0);
    AtualizaManutencao;
    DesabilitaPanel;
  Except
    FormPrincipal.MsgInformacao.HTMLText.Text:= 'Ocorreu um Erro. Reinicie '+
    'o Sistema e tente novamente !!!';
    FormPrincipal.MsgInformacao.Execute;
  end;
end;

procedure TFormAfericao.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label1.Caption = 'N' then
  begin
    FormPrincipal.MsgInformacao.HTMLText.Text:= 'O usuário conectado não '+
    'possui autorização para Excluir Registro. Contate o Administrador do '+
    'Sistema para obter acesso!!! !!!';
    FormPrincipal.MsgInformacao.Execute;
  end;

  if FormPrincipal.Label1.Caption ='S'then
  begin
    if Application.MESSAGEBOX('Confirma a Exclusão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      try
        DM1.SDS_afericao.Delete;
        DM1.SDS_afericao.ApplyUpdates(0);
        if DM1.SDS_afericao.RecordCount = 0 then
          HabilitaNovo
        else
          AtualizaManutencao;
      except
        FormPrincipal.MsgInformacao.HTMLText.Text:= 'Ocorreu um Erro. Reinicie '+
        'o Sistema e tente novamente !!!';
        FormPrincipal.MsgInformacao.Execute;
      end;
    end;
  end;
end;

procedure TFormAfericao.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFormAfericao.BtnAddProClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.showmodal;
end;

procedure TFormAfericao.EdtCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     BtnConsPro.Click
  else
  if key = vk_f3 then
    BtnAddPro.Click;

  if Key = VK_RETURN then
  begin
    if (edtcodpro.Text = '') then
      ShowMessage('Código do Produto deve ser Informado');
    EdtCodPro.SetFocus;
  end;
end;

procedure TFormAfericao.BtnConsultarClick(Sender: TObject);
var bAux : boolean;
begin
  inherited;

  if FormConsAfericao=nil   then
  begin
    FormConsAfericao:=TFormConsAfericao.Create(self);
    FormConsAfericao.ShowModal;
    DM1.Sds_Afericao.Open;
    DM1.Sds_Afericao.Locate('codigo',DM1.QBuscaAfericaoCODIGO.Text, [loCaseInsensitive]);

    EdtCodPro1.Text := DM1.Sds_AfericaoCODIGO_PROD.Text;

    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;

    dm.IBTransaction.StartTransaction;
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
        'PRECO_VENDA, PRECO_VENDA2 FROM PRODUTOS WHERE CODIGO = :CODPRO');
        Parambyname('codpro').AsString:= Trim(EdtCodPro1.Text);
        Open;
        if not FieldByName('CODIGO_BARRAS').IsNull then
        begin
          bAux:= true;
          EdtCodPro.Text       := fieldbyname('CODIGO_BARRAS').AsString;
          EdtNomePro.Text      := fieldbyname('DESCRICAO').AsString;
          qtdeFracao.Text      := fieldbyname('FRACAO').AsString;
          edtVenda.Value       := dm1.Sds_AfericaoVALOR_UNITARIO.AsFloat;
          edtTotal.Value       := dm1.Sds_AfericaoVALOR_TOTAL.AsFloat;
          EdtQuant.TEXT :=     dm1.Sds_AfericaoQUANTIDADE.text;
        end
        else
        begin
          bAux:= false;
          showmessage('Produto não Cadastrado');
        end;
      end;

      dm.IBTransaction.Commit;
    finally
      dm.QConsulta.Close;
    end;

    dm.SDS_PRODUTOS.Active := false;
    DM.Sds_produtos.sql.clear;
    DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' +
     #39 + '%' + edtcodpro.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
    dm.SDS_PRODUTOS.Active := True;

    if DM.Sds_produtosCODIGO_LOCAL_ESTOQUE.text = '' then
    begin
      ShowMessage('Produtos nao Lancaço neste Local de Estoque');
      Exit;
    end;

    if bAux then
    EdtEstoque.Value:= dm.SDS_PRODUTOSESTOQUE.AsFloat;
  end;
end;


procedure TFormAfericao.EdtCodProChange(Sender: TObject);
begin
  inherited;
  if (EdtCodPro.Text >= 'A') and (EdtCodPro.Text <= 'Z') then
    EDIT2.Text:='LETRAS';

  if (EdtCodPro.Text >= '0') AND (EdtCodPro.Text <= '9') THEN
    EDIT2.Text:='NUMEROS';

  if EdtCodPro.Text = '' then
    EDIT2.Text:=''
end;

procedure TFormAfericao.EdtCodProExit(Sender: TObject);
var
  bAux: boolean;
begin
  inherited;

  if (edtcodpro.Text = '') then
    exit;

  CorSaida(Sender);
  if edit2.Text = 'LETRAS' then
  begin
    BtnConsProClick(Sender);
  end
  else
  if  EDIT2.Text = 'NUMEROS' then
  begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;

    dm.IBTransaction.StartTransaction;
    try
      try
        with dm.QConsulta do
        begin
          close;
          sql.Clear;
          sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, '+
          'ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
          'PRECO_VENDA, PRECO_VENDA2 FROM PRODUTOS WHERE CODIGO_BARRAS = :CODPRO');
          Parambyname('codpro').AsString:= Trim(EdtCodPro.Text);

          Open;
          if not FieldByName('CODIGO_BARRAS').IsNull then
          begin
            bAux:= true;
            EdtCodPro1.Text      := fieldbyname('CODIGO').AsString;
            EdtCodPro.Text       := fieldbyname('CODIGO_BARRAS').AsString;
            EdtNomePro.Text      := fieldbyname('DESCRICAO').AsString;
            qtdeFracao.Text      := fieldbyname('FRACAO').AsString;
            edtVenda.Value       := fieldbyname('PRECO_VENDA').Value;
            edtTotal.Value       := fieldbyname('PRECO_VENDA').Value;
            EdtQuant.TEXT := '1';
            EdtQuant.SetFocus;
          end
          else
          begin
            bAux:= false;
            showmessage('Produto não Cadastrado');
          end;
        end;

        dm.IBTransaction.Commit;
      except
        dm.IBTransaction.Rollback;
        bAux:= false;
        showmessage('Erro ao buscar o produto');
        EdtCodPro.SetFocus;
      end;
    finally
      dm.QConsulta.Close;
    end;

    dm.SDS_PRODUTOS.Active := false;
    DM.Sds_produtos.sql.clear;
    DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' +
    #39 + '%' + edtcodpro.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
    dm.SDS_PRODUTOS.Active := True;

    if DM.Sds_produtosCODIGO_LOCAL_ESTOQUE.text='' then
    begin
      ShowMessage('Produtos nao Lancaço neste Local de Estoque');
      Exit;
      EdtCodPro.SetFocus;
    end;


    EdtQuant.TEXT := '1';
    if bAux then
    EdtEstoque.Value:= dm.SDS_PRODUTOSESTOQUE.AsFloat;
  end;
end;

procedure TFormAfericao.EdtQuantExit(Sender: TObject);
begin
  inherited;
  CorSaida(Sender);
  if EdtQuant.Text = '' then
  begin
    ShowMessage('Quantidade informada invalida');
    EdtQuant.text :='1';
    EdtQuant.SetFocus;
  end
  else
    edtTotal.Value := (StrToFloat(EdtQuant.Text) * edtVenda.Value);
end;

procedure TFormAfericao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FormAfericao := nil;
end;

procedure TFormAfericao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key =#27 then
    close;
end;

end.
