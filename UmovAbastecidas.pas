unit UmovAbastecidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBAdvSp, RXDBCtrl,  StdCtrls,
  DBCtrls, Mask, TFlatPanelUnit,  ExtCtrls, DB, Menus, SUIDlg,
  DBClient, SimpleDS, IBCustomDataSet, IBQuery, Grids, DBGrids, IBDatabase,
  RxCurrEdit, RxToolEdit, AdvGlowButton;

type
  TFormMovComb = class(TForm)
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
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    DBComboCliente: TComboEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboEdit1: TComboEdit;
    Edit3: TEdit;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    DBEdit1: TDBEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    DBAdvSpinEdit1: TRxDBCalcEdit;
    QBuscaItens: TIBQuery;
    DSQBuscaItens: TDataSource;
    IBTRAce: TIBTransaction;
    QBuscaItensSEQ: TIntegerField;
    QBuscaItensCOD_PRO: TIntegerField;
    QBuscaItensCOD_FOR: TIntegerField;
    QBuscaItensCOD_VEI: TIntegerField;
    QBuscaItensDATA: TDateField;
    QBuscaItensQUANT: TIBBCDField;
    QBuscaItensV_TOTAL: TIBBCDField;
    QBuscaItensKM_VEIC: TIntegerField;
    QBuscaItensOBS: TIBStringField;
    QBuscaItensV_UNIT: TFMTBCDField;
    QBuscaItensKM_L: TIBBCDField;
    QBuscaItensKM_ROD: TIntegerField;
    procedure bincluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBComboClienteButtonClick(Sender: TObject);
    procedure DBComboClienteExit(Sender: TObject);
    procedure ComboEdit2Exit(Sender: TObject);
    procedure ComboEdit2ButtonClick(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure DBAdvSpinEdit1Exit(Sender: TObject);
    procedure DBAdvGlowButton1Click(Sender: TObject);
    procedure DBComboClienteEnter(Sender: TObject);
    procedure ComboEdit1Enter(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMovComb: TFormMovComb;

implementation

uses ModuleDados1, Ubibli1, Principal, ModulodeDados, 
  ConsProdutos, xloc_veiculo, Uconsabastecidas, xloc_fornecedor;

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

procedure TFormMovComb.bincluirClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(seq) as N_CODIGO FROM veiculo_abast');
   DM.ProxCod.Open;
      if dm.Coneccao.Connected then
      dm.Coneccao.Commit;
    dm.Coneccao.StartTransaction;

  dm1.sds_abastecimentos.insert;
  dm1.sds_abastecimentosSEQ.asInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
  pficha.Enabled := true;
  ComboEdit1.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
  DBDateEdit1.Date:= Date;
end;
end;

procedure TFormMovComb.bfecharClick(Sender: TObject);
begin
Close;
end;

procedure TFormMovComb.balterarClick(Sender: TObject);
begin
 IF dbedit1.Text <> '' THEN
  BEGIN
    if dm.Coneccao.Connected then
      dm.Coneccao.Commit;
    dm.Coneccao.StartTransaction;

    dm1.sds_abastecimentos.Edit;
    pficha.Enabled := true;
    ComboEdit1.setfocus;
    pgravar.Visible := true;
   // DBEdit9.Enabled := False;
   //euf.Enabled := False;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;
end;

procedure TFormMovComb.bexcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin


 IF dbedit1.Text <> '' THEN
  BEGIN
         if dm.Coneccao.Connected then
      dm.Coneccao.Commit;
    dm.Coneccao.StartTransaction;

    try

    DM1.sds_abastecimentos.Delete;
 //   dm1.sds_abastecimentos.ApplyUpdates(0);
     dm.Coneccao.Commit;
  except
         dm.Coneccao.Rollback;
     MessageDlg('Erro ao excluir o abastecimento', mtInformation,[mbOk], 0);
  end;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;
end;
end;

procedure TFormMovComb.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
km : Currency;
begin
   if ComboEdit1.text = '' then
   begin
     application.messagebox('Favor informar um codigo válido para este veículo!','Atenção',mb_ok+mb_iconerror);
     ComboEdit1.setfocus;
     exit;
   end;

 {  if ComboEdit2.text = '' then
   begin
     application.messagebox('Favor informar um Combustivel válido!','Atenção',mb_ok+mb_iconerror);
     ComboEdit2.setfocus;
     exit;
   end;   }
 try
  if ( DM1.sds_abastecimentos.State = dsinsert) or ( DM1.sds_abastecimentos.State = dsedit) then
  begin
       DM1.sds_abastecimentosCOD_FOR.TEXT := DBComboCliente.TEXT;
       DM1.sds_abastecimentosCOD_VEI.TEXT := ComboEdit1.TEXT;
       //DM1.sds_abastecimentosCOD_PRO.TEXT := Edit2.TEXT;
       km := DBAdvSpinEdit1.Value - QBuscaItensKM_VEIC.Value;
       DM1.sds_abastecimentosKM_ROD.AsCurrency:= DBAdvSpinEdit1.Value - QBuscaItensKM_VEIC.Value;
       DM1.sds_abastecimentosKM_L.AsCurrency := km /  RxDBCalcEdit1.Value;
       DM1.sds_abastecimentos.post;
    dm.coneccao.commit;
     //  DM1.sds_abastecimentos.applyUpdates(0);
     // DBEdit9.Enabled := True;
     // euf.Enabled := True;
  end;
  except
   dm.Coneccao.Rollback;
   MessageDlg('Erro ao gravar o abastecimento', mtInformation,[mbOk], 0);
  end;

  pficha.Enabled := false;
  pgravar.Visible := false;
 // PopupMenu := pop1;
 // bincluir.setfocus;
end;

procedure TFormMovComb.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

if not (ActiveControl is TDBLookupComboBox) and  // você deve usar AND
     not (ActiveControl is TRxDBComboEdit)  AND  not (ActiveControl is TDBAdvSpinEdit)  then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormMovComb.FormShow(Sender: TObject);
begin

  pgravar.visible := false;
  pgravar.Align := alClient;

  DM.SDS_VEICULOS.close;
  DM.SDS_VEICULOS.Open;

  DM1.sds_abastecimentos.close;
  DM1.sds_abastecimentos.Open;


  DM.SDS_Fornecedores.close;
  DM.SDS_Fornecedores.Open;
  //DM.Sds_cidades.Close;
  //DM.Sds_cidades.Open;
  {frmmodulo.qrveiculo.SQL.clear;
  frmmodulo.qrveiculo.SQL.add('select * from VEICULOS order by NOME');
  frmmodulo.qrveiculo.open;
  frmmodulo.qrveiculo.first;  }
  pficha.Enabled := false;
  bincluir.SetFocus;
 ComboEdit1.Text := DM1.sds_abastecimentosCOD_VEI.Text;
 if ComboEdit1.Text > '' then                            begin

  dm.SDS_veiculos.Active := false;
  dm.SDS_veiculos.SQL.Clear;
  dm.SDS_veiculos.SQL.Add('select * from Veiculo where CODIGO like ' + #39 + '%' + Comboedit1.Text + '%' + #39+'order by codigo ASC');
  dm.SDS_veiculos.Active := True;
  dm.SDS_veiculos.locate('CODIGO', RemoveChar(Comboedit1.Text),[]);
  EDIT3.Text          := dm.SDS_VEICULOSNOME.Text;
  end;

 { if ComboEdit2.Text > '' then
  begin
  ComboEdit2.Text := DM1.SDS_PRODUTOSCODIGO.Text;
  dm.SDS_PRODUTOS.Active := false;
  dm.SDS_PRODUTOS.DataSet.CommandText:='select * from produtos where CODIGO like ' + #39 + '%' + Comboedit2.Text + '%' + #39+'order by codigo ASC';
  dm.SDS_PRODUTOS.Active := True;
  dm.SDS_PRODUTOS.locate('CODIGO', RemoveChar(Comboedit2.Text),[]);
  EDIT4.Text          := dm.SDS_PRODUTOSDESCRICAO.Text;
  end;  }

  DBComboCliente.Text := DM.SDS_FornecedoresCODIGO.Text;
  if DBComboCliente.Text > '' then
  begin
  DM.SDS_Fornecedores.Active := false;
  dm.SDS_Fornecedores.SQL.Clear;
  DM.SDS_Fornecedores.SQL.Add('select * from fornecedores where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by codigo ASC');
  DM.SDS_Fornecedores.Active := True;
  DM.SDS_Fornecedores.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  EDIT1.Text          := DM.SDS_FornecedoresNOME.Text;
  end;
end;

procedure TFormMovComb.bcancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormMovComb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormMovComb := nil;
end;

procedure TFormMovComb.DBComboClienteButtonClick(Sender: TObject);
begin
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);

      DBComboCliente.text := DM.SDS_Fornecedorescodigo.Text;
      Edit1.Text    := DM.SDS_FornecedoresNOME.Text;
      DBDateEdit1.SetFocus;

end;

procedure TFormMovComb.DBComboClienteExit(Sender: TObject);
begin
 
if DBComboCliente.Text > '' then
begin
if DM.SDS_Fornecedores.Locate('CODIGO', removechar(DBComboCliente.Text),[])=True then
 begin
   Edit1.Text    := DM.SDS_FornecedoresNOME.Text;
   DBDateEdit1.SetFocus;
 end else
 if not DM.SDS_Fornecedores.Locate('CODIGO', RemoveChar(DBComboCliente.Text),[])=True then
 begin
     ShowMessage('Fornecedor não localizado');
     DBComboCliente.SetFocus;
 end;
end;
end;

procedure TFormMovComb.ComboEdit2Exit(Sender: TObject);
begin
{ if ComboEdit2.Text > '' then
  begin
  //Edit2.Text          := ComboEdit2.Text;
  dm.SDS_PRODUTOS.Active := false;
  dm.SDS_PRODUTOS.DataSet.CommandText:='select * from produtos where CODIGO_BARRAS like ' + #39 + '%' + ComboEdit2.Text + '%' + #39+'order by codigo ASC';
  dm.SDS_PRODUTOS.Active := True;

  if dm.SDS_PRODUTOS.locate('CODIGO_BARRAS', RemoveChar(ComboEdit2.Text),[]) = True then
  begin
  Edit2.Text          := DM.SDS_PRODUTOSCODIGO.Text;
  EDIT4.Text          := dm.SDS_PRODUTOSDESCRICAO.Text;
  ComboEdit2.Text     := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
  DBDateEdit1.SetFocus;
  end else
  begin
   ComboEdit2ButtonClick(Sender);
  end;
end;  }
end;

procedure TFormMovComb.ComboEdit2ButtonClick(Sender: TObject);
begin
{ FormConsProdutos:=TFormConsProdutos.Create(self);
 FormConsProdutos.Edit1.Text := ComboEdit2.Text;
 FormConsProdutos.Showmodal;
 if DM.SDS_PRODUTOS.RecordCount > 0 then
 begin
   ComboEdit2.text     := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
   EDIT4.Text          := dm.SDS_PRODUTOSDESCRICAO.Text;
   Edit2.Text          := DM.SDS_PRODUTOSCODIGO.Text;
   DBDateEdit1.SetFocus;
end;                       }
end;

procedure TFormMovComb.ComboEdit1Exit(Sender: TObject);
begin
if ComboEdit1.Text > '' then
begin
if DM.SDS_VEICULOS.Locate('CODIGO', removechar(ComboEdit1.Text),[])=True then
 begin
   Edit3.Text    := DM.SDS_VEICULOSNOME.Text;
  // ComboEdit2.Text := DM.SDS_VEICULOSCOMBUSTIVEL.Text;
   DBComboCliente.SetFocus;
 end else
 if not DM.SDS_VEICULOS.Locate('CODIGO', RemoveChar(ComboEdit1.Text),[])=True then
 begin
     ShowMessage('Veiculo não localizado');
     ComboEdit1.SetFocus;
 end;
end;
end;

procedure TFormMovComb.ComboEdit1ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmXLOC_VEICULO := tfrmXLOC_VEICULO.create(self);
  //frmXLOC_VEICULO.Tag  := 0;
  frmXLOC_VEICULO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    dm.SDS_VEICULOS.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
    Edit3.Text := RESULTADO_PESQUISA2;
    ComboEdit1.Text := RESULTADO_PESQUISA1;
  end;
 {
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC';
  dm.SDS_Clientes.Active := True;
  DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  EDIT1.Text          := DM.SDS_ClientesNOME_RS.Text;  }
end;

procedure TFormMovComb.DBAdvSpinEdit1Exit(Sender: TObject);
begin
if DBAdvSpinEdit1.value > 0 then
begin
     if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('COD_VEI').AsInteger:= strtoint(ComboEdit1.Text);
         open;
         Last;
      end;
   IBTRAce.CommitRetaining;
    if DBAdvSpinEdit1.Value <= QBuscaItensKM_VEIC.VALUE then
    begin
      ShowMessage('Kilometragem deve ser maior que a lançFDa anteriomente...');
      DBAdvSpinEdit1.SetFocus;
    end;
end;
end;

procedure TFormMovComb.DBAdvGlowButton1Click(Sender: TObject);
begin
 ComboEdit1.Text := DM1.sds_abastecimentosCOD_VEI.Text;
 DBComboCliente.Text := DM1.sds_abastecimentosCOD_FOR.Text;

 if ComboEdit1.Text > '' then                            begin
  dm.SDS_veiculos.Active := false;
  dm.SDS_veiculos.SQL.Clear;
  dm.SDS_veiculos.SQL.Add('select * from Veiculo where CODIGO like ' + #39 + '%' + Comboedit1.Text + '%' + #39+'order by codigo ASC');
  dm.SDS_veiculos.Active := True;
  dm.SDS_veiculos.locate('CODIGO', RemoveChar(Comboedit1.Text),[]);
  EDIT3.Text          := dm.SDS_VEICULOSNOME.Text;
  end;


  if DBComboCliente.Text > '' then
  begin
  DM.SDS_Fornecedores.Active := false;
  dm.SDS_Fornecedores.SQL.Clear;
  DM.SDS_Fornecedores.SQL.add('select * from fornecedores where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by codigo ASC');
  DM.SDS_Fornecedores.Active := True;
  DM.SDS_Fornecedores.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  EDIT1.Text          := DM.SDS_FornecedoresNOME.Text;
  end;

end;

procedure TFormMovComb.DBComboClienteEnter(Sender: TObject);
begin
 DM.SDS_Fornecedores.Active := False;
 dm.SDS_Fornecedores.SQL.Clear;
 DM.SDS_Fornecedores.SQL.Add('select * from fornecedores order by codigo ASC');
 DM.SDS_Fornecedores.Active := True;
end;

procedure TFormMovComb.ComboEdit1Enter(Sender: TObject);
begin
  dm.SDS_veiculos.Active := false;
  dm.SDS_veiculos.SQL.Clear;
  dm.SDS_veiculos.sql.add('select * from Veiculo order by codigo ASC');
  dm.SDS_veiculos.Active := True;
end;

procedure TFormMovComb.blocalizarClick(Sender: TObject);
begin
Application.CreateForm(tFormConsAbastecidas, FormConsAbastecidas);
FormConsAbastecidas.showmodal;
 if resultado_pesquisa1 > '' then
 BEGIN
 dm1.sds_abastecimentos.Locate('SEQ',resultado_pesquisa1,[loCaseInsensitive]);

     DBComboCliente.Text := DM1.sds_abastecimentosCOD_FOR.Text;
     ComboEdit1.Text := DM1.sds_abastecimentosCOD_VEI.Text;
     EDIT1.Text          := resultado_pesquisa2;
     EDIT3.Text          := resultado_pesquisa3;
     end;
end;

procedure TFormMovComb.DBEdit7Exit(Sender: TObject);
begin
bgravar.SetFocus;
end;

end.
