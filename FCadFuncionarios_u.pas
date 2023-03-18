unit FCadFuncionarios_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FDvSmoothEdit, FDvSmoothEditButton, FDvSmoothDatePicker,
  DBAdvSmoothDatePicker, wwdbdatetimepicker, wwdbedit, Wwdotdot, Wwdbcomb,
  Buttons, wwdblook, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, DB, dbclient, sBitBtn;

type
  TFCadFuncionario = class(TForm)
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBComboBox2: TwwDBComboBox;
    Label21: TLabel;
    Label9: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label8: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    edtTipoPessoa: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    Label26: TLabel;
    Label20: TLabel;
    dp_cadastro: TDBText;
    GroupBox1: TGroupBox;
    edtPesquisar: TEdit;
    rgPesquisa: TRadioGroup;
    rgSexo: TRadioGroup;
    btnOrdenar: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    ds_funcionario: TDataSource;
    Label28: TLabel;
    Label22: TLabel;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    btnNovo: TsBitBtn;
    btnExcluir: TsBitBtn;
    btnAlterar: TsBitBtn;
    btnSalvar: TsBitBtn;
    btnCancelar: TsBitBtn;
    btnAtualizar: TsBitBtn;
    btnPesquisar: TsBitBtn;
    Label1: TLabel;
    dtDemissao: TwwDBDateTimePicker;
    Label14: TLabel;
    comboSituacao: TwwDBComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dtNascimento: TwwDBDateTimePicker;
    dtAdmissao: TwwDBDateTimePicker;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    rgSituacao: TRadioGroup;
    BitBtn4: TBitBtn;
    wwDBLookupCombo3: TwwDBLookupCombo;
    comboSituacaoGrid: TwwDBComboBox;
    comboEstadoCivil: TwwDBComboBox;
    wwDBLookupCombo4: TwwDBLookupCombo;
    SpeedButton3: TSpeedButton;
    Timer1: TTimer;
    BitBtn5: TBitBtn;
    bitbtn: TsBitBtn;
    btnPrimeiro: TsBitBtn;
    btnAnterior: TsBitBtn;
    btnProximo: TsBitBtn;
    btnUltimo: TsBitBtn;
    btnSair: TsBitBtn;
    procedure btnListarTodosClick(Sender: TObject);
    procedure btnOrdenarClick(Sender: TObject);
    procedure dp_dataultimaalteracaoClick(Sender: TObject);
    procedure dtAdmissaoClick(Sender: TObject);
    procedure edtPesquisarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure edtTipoPessoaEnter(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure ds_funcionarioDataChange(Sender: TObject; Field: TField);
    procedure ds_funcionarioStateChange(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure comboSituacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure bitbtnClick(Sender: TObject);
    procedure edtTipoPessoaExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    recebecpf : String;
  end;

var
  FCadFuncionario: TFCadFuncionario;

  var codigofuncionario : Integer;

implementation

uses dmConexao_u, udmPrincipal_u, FCadBairros_u, FCadCidades_u,
  FCadFotoFuncionario_u, FCadCargo_u, FGridValesFuncionario_u,
  FRelFichaFuncionario_u, uTraducao;

{$R *.dfm}

procedure TFCadFuncionario.BitBtn2Click(Sender: TObject);
var TelaCadFotoFuncionario : TFCadFotoFuncionario;
begin
    TelaCadFotoFuncionario := TfCadFotoFuncionario.Create(Self);
    TelaCadFotoFuncionario.Show;
end;

procedure TFCadFuncionario.BitBtn3Click(Sender: TObject);
begin
    with TClientDataSet(ds_funcionario.DataSet) do
    begin
        close;
        CommandText:= ('select * from funcionario order by nome_funcionario');
        open;
    end;
end;

procedure TFCadFuncionario.BitBtn4Click(Sender: TObject);
begin
    with TClientDataSet(ds_funcionario.DataSet) do
    begin
        close;
        if rgSituacao.ItemIndex=0 then
        CommandText:= ('select * from funcionario where status_funcionario= '+quotedstr('A')+ 'order by nome_funcionario')
        else if rgSituacao.ItemIndex=1 then
        CommandText:= ('select * from funcionario where status_funcionario='+quotedstr('I')+'order by nome_funcionario');
        open;
    end;
end;

procedure TFCadFuncionario.BitBtn5Click(Sender: TObject);
var TelaGridValesFuncionario : TFGridValesFuncionario;
begin
    TelaGridValesFuncionario := TfGridValesFuncionario.Create(Self);
    TelaGridValesFuncionario.Show;
end;

procedure TFCadFuncionario.bitbtnClick(Sender: TObject);
begin
 FRelFichaFuncionario := TFRelFichaFuncionario.Create(self);
  try
   FRelFichaFuncionario.QRPQuickrep1.Preview;
  finally
      begin
        FRelFichaFuncionario.Release;
        FRelFichaFuncionario := nil;
      end;
  end;
end;

procedure TFCadFuncionario.btnAlterarClick(Sender: TObject);
begin
   udmprincipal.cds_funcionario.Edit;
end;

procedure TFCadFuncionario.btnAnteriorClick(Sender: TObject);
begin
  if ((udmprincipal.cds_funcionario.State in [dsinsert]) or (udmprincipal.cds_funcionario.State in [dsedit])) then
    begin
         udmprincipal.cds_funcionario.Cancel;
    end;
     udmprincipal.cds_funcionario.prior;
end;

procedure TFCadFuncionario.btnAtualizarClick(Sender: TObject);
begin
   udmprincipal.cds_funcionario.Refresh;
end;

procedure TFCadFuncionario.btnCancelarClick(Sender: TObject);
begin
   udmprincipal.cds_funcionario.Cancel;
end;

procedure TFCadFuncionario.btnExcluirClick(Sender: TObject);
begin
if MessageDlg('Tem certeza que deseja Excluir?', mtInformation,[mbYes,MbNo],0)=mrYes  then
 begin
    udmprincipal.cds_funcionario.Delete;
    udmprincipal.cds_funcionario.ApplyUpdates(0);
 end;
end;

procedure TFCadFuncionario.btnListarTodosClick(Sender: TObject);
begin
    with TClientDataSet(ds_funcionario.DataSet) do
    begin
        close;
        CommandText:= ('select * from funcionario order by nome_funcionario');
        open;
    end;
end;

procedure TFCadFuncionario.btnNovoClick(Sender: TObject);
begin
   if udmprincipal.cds_funcionario.state in [dsinsert] then
   begin
   udmprincipal.cds_funcionario.Edit;
   end;
   udmprincipal.cds_funcionario.Append;

      dtNascimento.Date := date;
      dtAdmissao.Date := date;
     comboSituacao.SetFocus;
     comboSituacao.ItemIndex := 0;
    // udmprincipal.cds_funcionarioSTATUS_FUNCIONARIO.AsString := 'A';
end;

procedure TFCadFuncionario.btnOrdenarClick(Sender: TObject);
begin
//  UDMprincipal.cds_funcionario.Active := True;
    with TClientDataSet(ds_funcionario.DataSet) do
    begin
        close;
        if rgSexo.ItemIndex=0 then
        CommandText:= ('select * from funcionario where sexo_funcionario= '+quotedstr('M')+ 'order by nome_funcionario')
        else if rgSexo.ItemIndex=1 then
        CommandText:= ('select * from funcionario where sexo_funcionario='+quotedstr('F')+'order by nome_funcionario');
        open;
    end;
end;


procedure TFCadFuncionario.btnPesquisarClick(Sender: TObject);
begin
    pagecontrol1.ActivePage := TabSheet2;
    panel3.Visible:=false;
end;

procedure TFCadFuncionario.btnPrimeiroClick(Sender: TObject);
begin
  if ((udmprincipal.cds_funcionario.State in [dsinsert]) or (udmprincipal.cds_funcionario.State in [dsedit])) then
    begin
         udmprincipal.cds_funcionario.Cancel;
    end;
     udmprincipal.cds_funcionario.first;
end;

procedure TFCadFuncionario.btnProximoClick(Sender: TObject);
begin
  if ((udmprincipal.cds_funcionario.State in [dsinsert]) or (udmprincipal.cds_funcionario.State in [dsedit])) then
    begin
         udmprincipal.cds_funcionario.Cancel;
    end;
     udmprincipal.cds_funcionario.next;
end;

procedure TFCadFuncionario.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFCadFuncionario.btnSalvarClick(Sender: TObject);
begin
   udmprincipal.cds_funcionario.Post;
   //atualiza o cds de pesquisa de cpf
   udmprincipal.cds_pesquisacpffuncionario.Refresh;
end;

procedure TFCadFuncionario.btnUltimoClick(Sender: TObject);
begin
  if ((udmprincipal.cds_funcionario.State in [dsinsert]) or (udmprincipal.cds_funcionario.State in [dsedit])) then
    begin
         udmprincipal.cds_funcionario.Cancel;
    end;
     udmprincipal.cds_funcionario.last;
end;

procedure TFCadFuncionario.comboSituacaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFCadFuncionario.dtAdmissaoClick(Sender: TObject);
begin
//
end;

procedure TFCadFuncionario.edtTipoPessoaEnter(Sender: TObject);
begin
 if udmprincipal.cds_funcionario.State in [dsinsert] then
      begin
        edtTipoPessoa.Text := '';
      end;
end;

procedure TFCadFuncionario.edtTipoPessoaExit(Sender: TObject);
begin
    //declarei uma varável string q recebe apenas os números do CPF e CNPJ atual
   recebecpf := udmprincipal.cds_funcionarioCPF_FUNCIONARIO.AsString;

     //vai verificar se o CPJ existe.
 if udmprincipal.cds_funcionario.State In [DsInsert] then
 begin
        if udmprincipal.cds_pesquisacpffuncionario.Locate('CPF_FUNCIONARIO', recebecpf, [lopartialkey,locaseinsensitive]) then
            begin
              ShowMessage('CPF já está Cadastrado no Sistema!');
              edtTipoPessoa.SetFocus;
            end
               else
               begin
               //se não existir faz nada
               end;
 end;
 //tive q criar um outro ClientDataSet para Pesquisa, poisse for o mesmo ele dá um Post, salva, aí dá erro.
end;

procedure TFCadFuncionario.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFCadFuncionario.dp_dataultimaalteracaoClick(Sender: TObject);
begin
//
end;

procedure TFCadFuncionario.ds_funcionarioDataChange(Sender: TObject;
  Field: TField);
begin
 btnPrimeiro.Enabled := (btnAlterar.Enabled) and not ((Sender as TDataSource).DataSet.Bof);
 btnAnterior.Enabled := btnPrimeiro.Enabled;
 btnProximo.Enabled := (btnAlterar.Enabled) and not ((Sender as TDataSource).DataSet.Eof);
 btnUltimo.Enabled := btnProximo.Enabled;
end;


procedure TFCadFuncionario.ds_funcionarioStateChange(Sender: TObject);
begin
   btnNovo.Enabled := (Sender as TDataSource).State in [dsBrowse];
   btnSalvar.Enabled := (Sender as TDataSource).State in [dsEdit, dsInsert];
   btnCancelar.Enabled := btnSalvar.Enabled;
   btnAlterar.Enabled := (btnNovo.Enabled) and not ((Sender as TDataSource).DataSet.IsEmpty);
   btnExcluir.Enabled := btnAlterar.Enabled;
   btnAtualizar.Enabled := (Sender as TDataSource).State in [dsBrowse];
end;

procedure TFCadFuncionario.edtPesquisarChange(Sender: TObject);
begin
    with TClientDataSet(ds_funcionario.DataSet) do
    begin
        close;
          if edtPesquisar.Text<>''then
          begin
        if rgpesquisa.ItemIndex=0 then
        CommandText:= ('select * from funcionario where upper(nome_funcionario) like ' + QuotedStr('%' +UpperCase(edtPesquisar.Text) + '%')+'order by nome_funcionario')
        else if rgpesquisa.ItemIndex=1 then
        CommandText:= ('select * from funcionario where cod_funcionario like ' + QuotedStr('%' +UpperCase(edtPesquisar.Text) + '%')+'order by nome_funcionario')
        else if rgpesquisa.ItemIndex=2 then
        CommandText:= ('select e.*, b.nome_bairro from funcionario e, bairro b where bairro_funcionario=cod_bairro and upper(b.nome_bairro) like ' + QuotedStr('%' +UpperCase(edtPesquisar.Text) + '%')+'order by nome_funcionario')
        else if rgpesquisa.ItemIndex=3 then
        CommandText:= ('select e.*, c.nome_cidade from funcionario e, cidade c where e.cidade_funcionario=c.cod_cidade and upper(c.nome_cidade) like ' + QuotedStr('%' +UpperCase(edtPesquisar.Text) + '%')+'order by nome_funcionario');
          end;
        open;
    end;
end;

procedure TFCadFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   with TClientDataSet(ds_funcionario.DataSet) do
    begin
        close;
        CommandText:= ('select * from funcionario');
        open;
    end;
    udmprincipal.cds_salario.Refresh;
   Action := cafree;
end;

procedure TFCadFuncionario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    udmprincipal.cds_funcionario.Cancel;
  end;
    if (Shift = [ssCtrl]) and (key = vk_return) then  //CTRL + ENTER
  begin
    udmprincipal.cds_funcionario.Post;
  end;
end;

procedure TFCadFuncionario.FormShow(Sender: TObject);
begin
 // udmprincipal.cds_funcionario.active:=true;
  pagecontrol1.ActivePage := TabSheet1;
       comboSituacao.SetFocus;
end;

procedure TFCadFuncionario.PageControl1Change(Sender: TObject);
begin
if pagecontrol1.ActivePage =tabsheet2 then
  panel3.Visible:=false
  else  panel3.Visible:=true;
end;

procedure TFCadFuncionario.SpeedButton1Click(Sender: TObject);
var TelaBairro : TFCadBairro;
begin
TelaBairro := TfCadBairro.Create(Self);
TelaBairro.Show;
udmprincipal.cds_Bairro.Append;
end;

procedure TFCadFuncionario.SpeedButton2Click(Sender: TObject);
var TelaCidade : TFCadCidade;
begin
TelaCidade := TFCadCidade.Create(Self);
TelaCidade.show;
udmprincipal.cds_cidade.Append;
end;

procedure TFCadFuncionario.SpeedButton3Click(Sender: TObject);
var TelaCargo : TFCadCargo;
begin
    TelaCargo := TfCadCargo.Create(Self);
    TelaCargo.Show;
    udmprincipal.cds_Cargo.Append;
end;

procedure TFCadFuncionario.Timer1Timer(Sender: TObject);
begin
   if DBText1.Caption <> '' then
   begin
   codigofuncionario := strtoInt(DBText1.Caption);
   end
   else
   begin
     //
   end;
end;

procedure TFCadFuncionario.wwDBGrid1DblClick(Sender: TObject);
begin
    pagecontrol1.ActivePage := tabsheet2;
    panel3.Visible:=true;
end;

end.
