unit contaspagar_fichaalteracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, TFlatPanelUnit,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, DB,  Menus, wwdbedit, Wwdotdot, Wwdbcomb,
  FDvGlowButton, CurrEdit, ToolEdit, FDvPanel;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_fichaAlteracao: Tfrmcontaspagar_fichaAlteracao;

implementation

uses principal, contaspagar,  ModulodeDados,
  ConsPlanoContas, Ubibli1, xloc_fornecedor;

{$R *.dfm}

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
    else edit5.setfocus ;
   end else
    blocconta.SetFocus;
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
  frmcontaspagar.qrcontaspagar.post;
 // dm.Conexao.Commit;

 { formprincipal.log('Aletrou Conta a Pagar Conta Nr: ' +
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('documento').asstring +
      ' Fornecedor: ' + enomefornecedor.Text, 3);  }

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

end.
