unit cfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, TFlatPanelUnit,
  Menus, DB, Grids, DBGrids,
  Mask, maskutils, RXDBCtrl, aDvGlowButton, rxToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Collection,
  RxCurrEdit;

type
  Tformcfop = class(TForm)
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    plocalizar2: THeaderView;
    DBGrid1: TDBGrid;
    dscfop2: TDataSource;
    qrcfop: TFDQuery;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ERENDA: TRxDBCalcEdit;
    dscfop: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Label10: TLabel;
    Label11: TLabel;
    RxDBCalcEdit2: TRxDBCalcEdit;
    Label12: TLabel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    qrcfopCFOP: TStringField;
    qrcfopNATUREZA: TStringField;
    qrcfopTIPO: TIntegerField;
    qrcfopOBS1: TStringField;
    qrcfopOBS2: TStringField;
    qrcfopOBS3: TStringField;
    qrcfopOBS4: TStringField;
    qrcfopFILTRO: TIntegerField;
    qrcfopST: TStringField;
    qrcfopCLASSIFICACAO_FISCAL: TStringField;
    qrcfopSIMPLIFICADO: TStringField;
    qrcfopCAIXA: TIntegerField;
    qrcfopFATURAMENTO: TIntegerField;
    qrcfopICMS: TFMTBCDField;
    qrcfopISS: TFMTBCDField;
    qrcfopVALOR1: TFMTBCDField;
    qrcfopVALOR2: TFMTBCDField;
    qrcfopVALOR3: TFMTBCDField;
    qrcfopVALOR4: TFMTBCDField;
    qrcfopVALOR5: TFMTBCDField;
    qrcfopVALOR6: TFMTBCDField;
    qrcfopVALOR7: TFMTBCDField;
    qrcfopVALOR8: TFMTBCDField;
    qrcfopVALOR9: TFMTBCDField;
    qrcfopVALOR10: TFMTBCDField;
    qrcfopREDUCAO_ICMS: TFMTBCDField;
    qrcfopMARGEM_AGREGADA: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ERENDAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formcfop: Tformcfop;
  comando: string;

implementation

uses principal, xloc_cfop, ModulodeDados;

{$R *.dfm}

procedure Tformcfop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tformcfop.FormShow(Sender: TObject);
begin
  pgravar.visible := false;
  pgravar.Align := alClient;
  DM.qrcfop.close;
  DM.qrcfop.SQL.clear;
  DM.qrcfop.SQL.add('select * from TABELA_CFOP order by CFOP');
  DM.qrcfop.open;
  DM.qrcfop.first;
  pficha.Enabled := false;

end;

procedure Tformcfop.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tformcfop.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tformcfop.bincluirClick(Sender: TObject);
begin
  DM.qrcfop.insert;
  pficha.Enabled := true;
  DBEdit1.setfocus;
  pgravar.visible := true;
  PopupMenu := Pop2;
end;

procedure Tformcfop.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin

    DM.qrcfop.Edit;
    pficha.Enabled := true;
    DBEdit1.setfocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tformcfop.bexcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin

 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Excluir/Alterao o Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
   // frmprincipal.logUC('Excluiu CFOP - ' + DBEdit2.Text, 3);
    formprincipal.log(codigo_usuario,'CFOP',DBEdit1.Text,'EXCLUIU','EXCLUSÃO DO CFOP Nº '+DBEdit1.Text +' Nome: '+ DBEdit2.Text);
    DM.qrcfop.Delete;
    DM.Coneccao.commit;
 { end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;}
end;
end;

procedure Tformcfop.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
  end;
end;

procedure Tformcfop.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tformcfop.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if DBEdit1.Text = '' then
  begin
    Application.messagebox('Favor informar o CFOP!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit1.setfocus;
    exit;
  end;

  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar a Natureza da Operação!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;

  if DBEdit3.Text = '' then
  begin
    Application.messagebox('Favor informar o Tipo de Operação!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit3.setfocus;
    exit;
  end;

  if (DM.qrcfop.State = dsinsert) then
  begin
   // frmprincipal.logUC('Incluiu CFOP - ' + DBEdit2.Text, 1);
    formprincipal.log(codigo_usuario,'CFOP',DBEdit1.Text,'INCLUIU','INCLUSÃO DO CFOP Nº '+DBEdit1.Text +' Nome: '+ DBEdit2.Text);

    DM.qrcfop.post;
  end;

  if (DM.qrcfop.State = dsedit) then
  begin
   // frmprincipal.logUC('Alterou CFOP - ' + DBEdit2.Text, 2);
     formprincipal.log(codigo_usuario,'CFOP',DBEdit1.Text,'ALTEROU','ALTERAÇÃO DO CFOP Nº '+DBEdit1.Text +' Nome: '+ DBEdit2.Text);

    DM.qrcfop.post;
  end;

  DM.Coneccao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
end;

procedure Tformcfop.bcancelarClick(Sender: TObject);
begin
  if (DM.qrcfop.State = dsinsert) or (DM.qrcfop.State = dsedit)
  then
    DM.qrcfop.cancel;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';
end;

procedure Tformcfop.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tformcfop.BitBtn1Click(Sender: TObject);
begin
  DM.qrcfop.first;
end;

procedure Tformcfop.BitBtn2Click(Sender: TObject);
begin
  DM.qrcfop.last;
end;

procedure Tformcfop.BitBtn3Click(Sender: TObject);
begin
  DM.qrcfop.prior;
end;

procedure Tformcfop.BitBtn4Click(Sender: TObject);
begin
  DM.qrcfop.next;
end;

procedure Tformcfop.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tformcfop.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if DM.qrcfop.State = dsinsert then
end;

procedure Tformcfop.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tformcfop.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tformcfop.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (DM.qrcfop.State = dsinsert) and (DBEdit1.Text <> '') then
  begin
    qrcfop.close;
    qrcfop.SQL.clear;
    qrcfop.SQL.add('select * from TABELA_CFOP where cfop = ''' +
      DBEdit1.Text + '''');
    qrcfop.open;
    if qrcfop.RecordCount > 0 then
    begin
      Application.messagebox('CFOP já Cadastrada! Verifique...', 'Atenção!',
        mb_ok + MB_ICONEXCLAMATION);
      DBEdit1.setfocus;
      exit;
    end;
  end;

end;

procedure Tformcfop.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tformcfop.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tformcfop.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tformcfop.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tformcfop.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tformcfop.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tformcfop.DBEdit3Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (DM.qrcfop.State = dsinsert) or (DM.qrcfop.State = dsedit)
  then
  begin

    if DBEdit3.Text <> '1' then
    begin
      if DBEdit3.Text <> '2' then
      begin
        if DBEdit3.Text <> '3' then
        begin
          if DBEdit3.Text <> '4' then
          begin
            Showmessage('Favor digitar 1,2,3 ou 4!');
            DBEdit3.setfocus;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tformcfop.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

end.
