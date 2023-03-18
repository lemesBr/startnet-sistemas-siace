unit contaspagar_fichaalteracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, TFlatPanelUnit,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, DB,  Menus, wwdbedit, Wwdotdot, Wwdbcomb,
  aDvGlowButton, RzEdit, RzBtnEdt, RxCurrEdit, RxToolEdit, AdvPanel;

type
  Tfrmcontaspagar_fichaAlteracao = class(TForm)
    Panel1: TAdvPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    efornecedor: TEdit;
    blocfornecedor: TBitBtn;
    enomefornecedor: TEdit;
    Label3: TLabel;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    RVALOR: TRxCalcEdit;
    Label6: TLabel;
    pgravar: TAdvPanel;
    Label7: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    Label11: TLabel;
    Edit3: TEdit;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Label8: TLabel;
    DateEdit2: TDateEdit;
    comboespecie: TwwDBComboBox;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Label56: TLabel;
    Label57: TLabel;
    EImovel: TRzButtonEdit;
    eCentro: TRzButtonEdit;
    EnomeCentro: TEdit;
    EnomeImovel: TEdit;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorExit(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure comboespecieKeyPress(Sender: TObject; var Key: Char);
    procedure comboespecieExit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure eCentroButtonClick(Sender: TObject);
    procedure eCentroKeyPress(Sender: TObject; var Key: Char);
    procedure EImovelButtonClick(Sender: TObject);
    procedure EImovelKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_fichaAlteracao: Tfrmcontaspagar_fichaAlteracao;
  custo_ant : Real;
  alterando : Boolean;

implementation

uses principal, contaspagar,  ModulodeDados,
  ConsPlanoContas, Ubibli1, xloc_fornecedor, Centro_Custo, ModuleDados1,
  ConsProdutos, importa_nfe, uDMMovimentacao, PesquisaImoveis,
  loc_centrocusto;

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

procedure Tfrmcontaspagar_fichaAlteracao.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmcontaspagar_fichaAlteracao.DateEdit1Exit(Sender: TObject);
begin
  TEdit(sender).Color := clwindow;
end;

procedure Tfrmcontaspagar_fichaAlteracao.blocfornecedorClick(Sender: TObject);
begin
{  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  efornecedor.text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  enomefornecedor.text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;

  econta.setfocus;   }
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);

  efornecedor.Text := DM.SDS_FORNECEDOREScodigo.asstring;
  enomefornecedor.Text := DM.SDS_FORNECEDORESnome.asstring;

  econta.setfocus;
end;

procedure Tfrmcontaspagar_fichaAlteracao.bloccontaClick(Sender: TObject);
begin
 { frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  econta.text := frmmodulo.qrplano.fieldbyname('codigo').asstring;
  enomeconta.text := frmmodulo.qrplano.fieldbyname('conta').asstring;

  edit5.setfocus; }
   FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;

  econta.Text := DM.SDS_PLCONTASCODIGO.TEXT;
  enomeconta.Text := DM.SDS_PlCONTASnome.TEXT;

  Edit5.setfocus;

end;

procedure Tfrmcontaspagar_fichaAlteracao.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontaspagar_fichaAlteracao.efornecedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
 // efornecedor.text := frmprincipal.zerarcodigo(efornecedor.text, 6);
  if efornecedor.text > '' then
  begin
    if not FormPrincipal.Locregistro(dm.sds_fornecedores, efornecedor.text, 'codigo') then
    blocfornecedorclick(frmcontaspagar_FICHAALTERACAO)
     else econta.setfocus ;
    end else
    blocfornecedor.SetFocus;

end;

procedure Tfrmcontaspagar_fichaAlteracao.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
 // econta.text := frmprincipal.zerarcodigo(econta.text, 6);
   if econta.text > '' then
   begin
    if not formprincipal.Locregistro(dm.sds_plcontas, econta.text, 'codigo') then
    bloccontaclick(frmcontaspagar_FICHAALTERACAO)
    else eCentro.SetFocus ;
   end else
    eCentro.SetFocus;
end;

procedure Tfrmcontaspagar_fichaAlteracao.Edit5Exit(Sender: TObject);
begin
  tedit(sender).color := clWINDOW;
 // edit5.text := frmprincipal.zerarcodigo(edit5.text, 6);
end;

procedure Tfrmcontaspagar_fichaAlteracao.Edit5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_fichaAlteracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmcontaspagar_fichaAlteracao.bgravarClick(Sender: TObject);
var
 estoque, custo, MARGEM, VENDA, NOVO_CUSTO: REAL;
begin
  FRMCONTASPAGAR.qrcontaspagar.EDIT;
  frmcontaspagar.qrcontaspagar.fieldbyname('data_emissao').asdatetime := dateedit1.date;
  frmcontaspagar.qrcontaspagar.fieldbyname('codfornecedor').asstring := efornecedor.text;
  frmcontaspagar.qrcontaspagar.fieldbyname('codconta').asstring := econta.text;
  frmcontaspagar.qrcontaspagar.fieldbyname('notafiscal').asstring := edit5.text;
  frmcontaspagar.qrcontaspagar.Fieldbyname('valor').asfloat := RVALOR.VALUE;
  frmcontaspagar.qrcontaspagar.Fieldbyname('liquido').asfloat := RVALOR.Value;
  frmcontaspagar.qrcontaspagar.Fieldbyname('documento').asstring := EDIT1.TEXT;
  frmcontaspagar.qrcontaspagar.Fieldbyname('historico').asstring := EDIT6.TEXT;
  frmcontaspagar.qrcontaspagar.Fieldbyname('especie').asstring := COMBOESPECIE.Text;
  frmcontaspagar.qrcontaspagar.Fieldbyname('C').asstring := EDIT2.TEXT;
  frmcontaspagar.qrcontaspagar.Fieldbyname('E').asstring := EDIT3.TEXT;
  frmcontaspagar.qrcontaspagar.Fieldbyname('data_vencimento').asdatetime := DATEEDIT2.Date;
  FRMCONTASPAGAR.qrcontaspagar.fieldbyname('cod_CENTRO_CUSTO').asstring  := eCentro.Text;
  FRMCONTASPAGAR.qrcontaspagar.fieldbyname('cod_IMOVEL').asstring        := EImovel.Text;
  frmcontaspagar.qrcontaspagar.post;
 // dm.Conexao.Commit;

 { formprincipal.log('Aletrou Conta a Pagar Conta Nr: ' +
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('documento').asstring +
      ' Fornecedor: ' + enomefornecedor.Text, 3);  }

       if EImovel.Text > '' then
       begin
        // BUSCA ESTOQUE
           if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;

            try
              with dm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODPRO');
                    Parambyname('CODPRO').AsInteger:= StrToInt(EImovel.Text);
                    ExecQuery;
                    estoque:= fieldbyname('ESTOQUE').AsCurrency;
                    Custo :=  fieldbyname('PRECO_CUSTO').AsCurrency;
                    MARGEM :=  fieldbyname('MARGEM_LUCRO').AsCurrency;
                    VENDA :=  fieldbyname('PRECO_VENDA').AsCurrency;
                 end;
              dm.IBTransaction.Commit;
            except
              dm.IBTransaction.rollback;
              showmessage('Erro ao buscar o custo do produto');
            end;

           // Atualiza preços do custo e venda do imovel
           try
            if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
             dm.IBTransaction.StartTransaction;
            with dm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('UPDATE PRODUTOS SET PRECO_VENDA =:VDA, PRECO_CUSTO =:CUSTO WHERE CODIGO = :CODPRO;');
                    NOVO_CUSTO := (custo_ant + RVALOR.VALUE);
                    Parambyname('VDA').AsCurrency:= NOVO_CUSTO + (NOVO_CUSTO * MARGEM /100);
                    Parambyname('CUSTO').AsCurrency:= NOVO_CUSTO;
                    Parambyname('CODPRO').AsInteger:= StrToInt(EImovel.Text);
                    ExecQuery;
                 end;
              dm.IBTransaction.Commit;
             except
             dm.IBTransaction.rollback;
             showmessage('Erro ao atualizar o custo do produto/ imovel');
             end;
        end;

 formprincipal.log(codigo_usuario,'C.PAGAR',FRMCONTASPAGAR.qrcontaspagar.fieldbyname('documento').asstring,'INCLUIU',' Fornecedor: ' + enomefornecedor.Text);

  CLOSE;
end;

procedure Tfrmcontaspagar_fichaAlteracao.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcontaspagar_fichaAlteracao.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.onclick(frmcontaspagar_FICHAALTERACAO);
end;

procedure Tfrmcontaspagar_fichaAlteracao.comboespecieKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontaspagar_fichaAlteracao.comboespecieExit(Sender: TObject);
begin
  tedit(sender).color := clWINDOW;
end;

procedure Tfrmcontaspagar_fichaAlteracao.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontaspagar_fichaAlteracao.eCentroButtonClick(
  Sender: TObject);
begin
  frmloc_centro := tfrmloc_centro.create(self);
  frmloc_centro.showmodal;

  eCentro.Text := DM1.Sds_CentroCustoCOD_CENTRO.TEXT;
  EnomeCentro.Text := DM1.Sds_CentroCustoDESCRICAO.TEXT;
  econta.Text := DM1.Sds_CentroCustoCOD_PLANO.Text;
  EImovel.SetFocus;
end;

procedure Tfrmcontaspagar_fichaAlteracao.eCentroKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
   if eCentro.Text > '' then
   begin
    if not formprincipal.Locregistro(DM1.Sds_CentroCusto, eCentro.Text, 'COD_CENTRO')
    then
      eCentroButtonClick(frmimporta_nfe)
    else
    begin
      EnomeCentro.Text := DM1.Sds_CentroCusto.fieldbyname('DESCRICAO').asstring;
      EImovel.SetFocus;
    end;
   end  else
     EImovel.SetFocus;
  end;
end;

procedure Tfrmcontaspagar_fichaAlteracao.EImovelButtonClick(
  Sender: TObject);
begin
 FPesquisaImovel:=TFPesquisaImovel.Create(self);
 FPesquisaImovel.Showmodal;

 if NOT DMMovimentacao.dsImovel.DataSet.IsEmpty then
 begin
 EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
 EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
  Edit5.SetFocus;
 end;
end;

procedure Tfrmcontaspagar_fichaAlteracao.EImovelKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   begin

      DMMovimentacao.qrImovel.open;
      IF EImovel.Text > '' then
      BEGIN
      If DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
       EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
       EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
       Edit5.SetFocus;
      end;
      if not DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
      EImovelButtonClick(frmimporta_nfe);
      end;
      end else
      BEGIN
      Edit5.SetFocus;
      end;
end;
end;

procedure Tfrmcontaspagar_fichaAlteracao.FormShow(Sender: TObject);
begin     
          if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;
            try
              with dm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODPRO');
                    Parambyname('CODPRO').AsInteger:= StrToInt( FRMCONTASPAGAR.qrcontaspagar.fieldbyname('cod_IMOVEL').asstring);
                    ExecQuery;
                    Custo_ant :=  fieldbyname('PRECO_CUSTO').AsCurrency - RVALOR.value;

                 end;
              dm.IBTransaction.Commit;
            except
              dm.IBTransaction.rollback;
              showmessage('Erro ao buscar o custo do produto');
            end;
end;

end.
