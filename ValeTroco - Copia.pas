unit ValeTroco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, CurrEdit, Buttons, StdCtrls, AlignEdit, ToolEdit,
  RXDBCtrl, Mask, DBCtrls, FDvGlowButton, db, EDBTime, EDBCombo, ExtCtrls ,
  Grids, XDBGrids, SUIDlg, EDBNum, FDvPanel,  RXCtrls, RzEdit, RzBtnEdt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormValeTroco = class(TFrmCadastroNovo)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dt_venda: TDBDateEdit;
    Label10: TLabel;
    BtnAddPro: TSpeedButton;
    Label11: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    RxDBComboEdit1: TRxDBComboEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    EvDBComboBox1: TEvDBComboBox;
    Label7: TLabel;
    EvDBTimeEdit1: TEvDBTimeEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    suiDBEdit3: TEvDBNumEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    EvDBComboBox2: TEvDBComboBox;
    Label8: TLabel;
    FDvGlowButton1: TAdvGlowButton;
    zQuery1: TFDQuery;
    veiculo: TRzButtonEdit;
    Label9: TLabel;
    DBEdit4: TEdit;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure RxDBComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EvDBNumEdit2Exit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EvDBComboBox1Change(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure EvDBComboBox2Exit(Sender: TObject);
    procedure BtnAddProClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure veiculoButtonClick(Sender: TObject);
    procedure veiculoChange(Sender: TObject);
    procedure veiculoExit(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormValeTroco: TFormValeTroco;

implementation

uses ModuleDados1, ConsClientes, ModulodeDados, Principal, consvaletroco,
  RelValeTroco, clientes, veiculo, xloc_veiculo, Ubibli1;

var  sSql : string;
iEmp :Integer;

{$R *.dfm}

Procedure TFormValeTroco.AtualizaManutencao;
begin
//DBNavigator.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
BTNNOVO.Enabled:= (DM1.Sds_valeTroco.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM1.Sds_valeTroco.State = dsBrowse);
BtnConsultar.Enabled:= (DM1.Sds_valeTroco.State = dsBrowse);
BtnGravar.Enabled:= (DM1.Sds_valeTroco.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM1.Sds_valeTroco.State in [dsInsert, dsEdit]);
BtnAlterar.Enabled:= (DM1.Sds_valeTroco.State = dsBrowse);

end;

procedure TFormValeTroco.HabilitaPanel;
begin
Panel1.Enabled:= True;
end;

procedure TFormValeTroco.DesabilitaPanel;
begin
Panel1.Enabled:= False;
end;

procedure TFormValeTroco.HabilitaNovo;
begin
//Novo1.Enabled:=True;
//Editar1.Enabled:=False;
//Excluir1.Enabled:=False;
//Localizar1.Enabled:=False;
//Salvar1.Enabled:= False;
//Cancelar1.Enabled:=False;
BTNNOVO.Enabled:=TRUE;
BtnAlterar.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BtnGravar.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BtnConsultar.Enabled:= False;
end;

procedure TFormValeTroco.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormConsclientes, FormConsClientes);
  FormConsClientes.Edit1.Text := RxDBComboEdit1.Text;
  FormConsClientes.showmodal;
  RxDBComboEdit1.Text       := dm.SDS_clientesCODIGO.AsString;
  DBEdit2.Text              := dm.SDS_ClientesNOME_RS.AsString;
      
  RxDBComboEdit1.SetFocus;
end;

procedure TFormValeTroco.RxDBComboEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
     if key = vk_f3 then
        BtnAddPro.Click;

  if Key = VK_RETURN THEN
  BEGIN
  if (RxDBComboEdit1.Text = '') then
  ShowMessage('Código do Cliente deve ser Informado');
  RxDBComboEdit1.SetFocus;
  end;
end;

procedure TFormValeTroco.btnNovoClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
//Try
   dm1.ProxCod.Close;
   dm1.ProxCod.SQL.Clear;
   dm1.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM VALETROCO');
   DM1.ProxCod.Open;

   dm1.Sds_valeTroco.Open;
   dm1.Sds_valeTroco.Insert;
   DM1.Sds_valeTrocoCODIGO.ASINTEGER :=DM1.ProxCodN_CODIGO.ASINTEGER + 1;
   DM1.Sds_valeTrocoUSERCAD.Text:= FormPrincipal.UserLogado;
   DM1.Sds_valeTrocoDATACAD.Text:= datetostr(now);
   DM1.Sds_valeTrocoDATA.Text:= datetostr(now);
   DM1.Sds_valeTrocoHORA.Text:= TimeToStr(now);
   DM1.Sds_valeTrocoDEBITOCREDITO.Text:= 'D';
   dm1.Sds_valeTrocoCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
   HabilitaPanel;
   AtualizaManutencao;
   dt_venda.SetFocus;
  { Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end; }
end;
end;

procedure TFormValeTroco.BtnAlterarClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM1.Sds_valeTroco.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     dt_venda.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormValeTroco.BtnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DM1.Sds_valeTroco.Cancel;
 if DM1.Sds_valeTroco.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     //db_nome.Color:= $00E8E8E8;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormValeTroco.BtnExcluirClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
Try
 Begin
    DM1.Sds_valeTroco.Delete;
    DM1.Sds_valeTroco.ApplyUpdates(0);
 end;
 if DM1.Sds_valeTroco.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;

procedure TFormValeTroco.BtnGravarClick(Sender: TObject);
begin
  inherited;
Try
      begin
          DM1.Sds_valeTrocoCOD_VEICULO.AsString := veiculo.Text;
          DM1.Sds_valeTroco.Post;
          DM1.Sds_valeTroco.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

procedure TFormValeTroco.BtnConsultarClick(Sender: TObject);
begin
  dm1.Sds_valeTroco.Open;
 if FormConsValeTroco=nil   then
      begin
       FormConsValeTroco:=TFormConsValeTroco.Create(self);
       FormConsValeTroco.ShowModal;
       veiculo.Text := DM1.Sds_valeTrocoCOD_VEICULO.Text;

        dm.SDS_VEICULOS.Active := false;
        dm.SDS_veiculos.SQL.Clear;
        dm.SDS_veiculos.SQL.Add('select * from veiculo where CODIGO like ' + #39 + '%' + veiculo.Text + '%' + #39+'order by NOME ASC');
        dm.SDS_veiculos.Active := True;
       // ACHOU:= DM.SDS_VEICULOS.locate('CODIGO', RemoveChar(veiculo.Text),[]);
       // veiculo.Text := RemoveChar(veiculo.Text);
        DBEdit4.TEXT  := DM.SDS_VEICULOSNOME.Text;
       end;
end;

procedure TFormValeTroco.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key =#27 then
close;

if  not (ActiveControl is TDBLookupComboBox) and not(ActiveControl is TRxDBComboEdit)  then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormValeTroco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
      dm1.QConsValeTroco.SQL.Clear;
      dm1.QConsValeTroco.SQL.Text := sSql;
      dm1.QConsValeTroco.Close;

Action := caFree;
FormValeTroco := nil;
end;

procedure TFormValeTroco.EvDBNumEdit2Exit(Sender: TObject);
begin
DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat := DM1.Sds_valeTrocoVALOR_VALETROCO.AsFloat - DM1.Sds_valeTrocoTOTAL_PAGO.AsFloat;
end;

procedure TFormValeTroco.BtnSairClick(Sender: TObject);
begin
     if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm1.QConsValeTroco do
      begin
         close;
         sql.Clear;
         sql.Text:= sSql;
            begin
               if DBEdit1.Text > '' then
                  begin
                      begin
                           sql.Add(' WHERE V.CODIGO = :COD_VALE AND V.COD_EMPRESA = :CODEMP');
                           Parambyname('COD_VALE').AsInteger:= StrToInt(DBEdit1.Text);
                           Parambyname('codemp').AsInteger:= iEmp;
                       end;
               open;
               end;

    //IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    FormRelValeTroco:=TFormrELValetroco.Create(self);
    FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
    if dm1.Sds_valeTrocoDEBITOCREDITO.Text = 'D' THEN
    BEGIN
    FormRelValeTroco.RLLabel1.Caption := 'VALE Nº';
    FormRelValeTroco.RLLabel35.Caption := 'Reconheço(emos) a exatidão deste VALE, na importancia acima Recebida.';
    end ELSE
    begin
    FormRelValeTroco.RLLabel1.Caption := 'VALE TROCO   Nº';
    FormRelValeTroco.RLLabel35.Caption := 'Reconheço(emos) a exatidão deste VALE TROCO, na importancia acima.';
    end;
    FormRelValeTroco.RLReport1.Prepare;
    FormRelValeTroco.RLReport1.PreviewModal;
    end else
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    BEGIN
    FormRelValeTroco:=TFormrELValetroco.Create(self);
    //FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
    if dm1.Sds_valeTrocoDEBITOCREDITO.Text = 'D' THEN
    BEGIN
    FormRelValeTroco.RLLabel1.Caption := 'VALE Nº';
    FormRelValeTroco.RLLabel35.Caption := 'Reconheço(emos) a exatidão deste VALE, na importancia acima Recebida.';
    end ELSE
    begin
    FormRelValeTroco.RLLabel1.Caption := 'VALE TROCO   Nº';
    FormRelValeTroco.RLLabel35.Caption := 'Reconheço(emos) a exatidão deste VALE TROCO, na importancia acima.' ;
    end;
    FormRelValeTroco.RLReport1.Prepare;
    FormRelValeTroco.RLReport1.PreviewModal;
    end;
    end;
end;
end;

procedure TFormValeTroco.FormShow(Sender: TObject);
begin
    sSql := dm1.QConsValeTroco.SQL.Text;
    iEmp := dm.sds_empresacodigo.asinteger;
    btnNovo.SetFocus;

 ZQuery1.ExecSQL;   

end;

procedure TFormValeTroco.RxDBComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   begin
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where codigo like ' + #39 + '%' + RxDBComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;

   if RxDBComboEdit1.Text > '' then
   begin
   DM.SDS_Clientes.locate('CODIGO', RxDBComboEdit1.Text,[]);
   dm1.Sds_valeTrocoNOME_CLIENTE.Text := DM.SDS_ClientesNOME_RS.Text;
   EvDBComboBox2.SetFocus;
   end else
   if not DM.SDS_Clientes.locate('CODIGO', RxDBComboEdit1.Text,[]) = True then
   begin
   ShowMessage('Cliente não localizado');
   end;
   end;
end;

procedure TFormValeTroco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
      if (Key=VK_F2) then
      begin
      btnNovo.Click;
      end;
      if (Key=VK_F3) then
      begin
      BtnAlterar.Click;
      end;
      if (Key=VK_F4) then
      begin
      BtnCancelar.Click;
      end;
      if (Key=VK_F5) then
      begin
      BtnExcluir.Click;
      end;
      if (Key=VK_F6) then
      begin
      BtnConsultar.Click;
      end;
      if (Key=VK_F10) then
      begin
      BtnGravar.Click;
      end;
end;

procedure TFormValeTroco.EvDBComboBox1Change(Sender: TObject);
begin
  inherited;
IF EvDBComboBox1.ItemIndex = 1 then
BEGIN
DM1.Sds_valeTrocoTIPO.Value := 'A';
//EvDBComboBox2.Enabled := FALSE;
end else
BEGIN
EvDBComboBox2.Enabled := True;
end;   
end;

procedure TFormValeTroco.RxDBComboEdit1Exit(Sender: TObject);
begin
  inherited;
if EvDBComboBox2.Enabled = True then
begin
  EvDBComboBox2.SetFocus;
end else
begin
   suiDBEdit3.SetFocus;
end;
end;

procedure TFormValeTroco.EvDBComboBox2Exit(Sender: TObject);
begin
IF EvDBComboBox1.ItemIndex = 0 then
BEGIN
if (EvDBComboBox2.ItemIndex = 2) OR (EvDBComboBox2.ItemIndex = 3) THEN
begin
 ShowMessage('TIPO DEVE SER COMBUSTÍVEL OU VALE');
 EvDBComboBox2.SetFocus;
end;
end;

IF EvDBComboBox1.ItemIndex = 1 then
BEGIN
if (EvDBComboBox2.ItemIndex = 0) OR (EvDBComboBox2.ItemIndex = 1) THEN
begin
 ShowMessage('TIPO CREDITO DO FRETEIRO OU PEDÁGIO');
 EvDBComboBox2.SetFocus;
end;
end;
end;

procedure TFormValeTroco.BtnAddProClick(Sender: TObject);
begin

  FormClientes:=nil ;
  FormClientes:=TFormClientes.Create(self);
  //FormClientes.FormStyle := fsMDIChild;
  FormClientes.Visible := True;
end;

procedure TFormValeTroco.SpeedButton1Click(Sender: TObject);
begin

    FrmVEICULO:=TFrmVEICULO.Create(self);
    FrmVEICULO.FormStyle := fsNormal;
    FrmVEICULO.ShowModal;
end;

procedure TFormValeTroco.veiculoButtonClick(Sender: TObject);
begin
  inherited;
  DM.SDS_VEICULOS.Active:= False;
    dm.SDS_veiculos.SQL.Clear;
    dm.SDS_veiculos.SQL.Add('select * from veiculo order by NOME ASC');
    DM.SDS_VEICULOS.Active:= True;


if frmxloc_veiculo=nil   then
    begin
     frmxloc_veiculo:=Tfrmxloc_veiculo.Create(self);
     if veiculo.Text >'' then
     begin
    //  frmxloc_veiculo.LOC.Text := freteiro.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
      frmxloc_veiculo.ShowModal;


      veiculo.Text     := RESULTADO_PESQUISA1;
      DBEdit4.Text  := RESULTADO_PESQUISA2;
      DM1.Sds_valeTrocoCOD_CLIENTE.Text    :=   resultado_pesquisa4;

     //  veiculoChange(Sender);
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + RxDBComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(RxDBComboEdit1.Text),[]);
      RxDBComboEdit1.Text := RemoveChar(RxDBComboEdit1.Text);
      DBEdit2.TEXT    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      end;

end;

procedure TFormValeTroco.veiculoChange(Sender: TObject);
begin
  inherited;
IF (veiculo.Text>='A') AND (veiculo.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (veiculo.Text>='0') AND (veiculo.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF veiculo.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormValeTroco.veiculoExit(Sender: TObject);
begin
  inherited;
 If  veiculo.Text >'' then
  BEGIN
 if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_VEICULOS.Active := false;
   dm.SDS_veiculos.SQL.Clear;
   dm.SDS_veiculos.SQL.Add('select * from veiculo where NOME like ' + #39 + '%' + veiculo.Text + '%' + #39+'order by NOME ASC');
   dm.SDS_VEICULOS.Active := True;
   ACHOU := DM.SDS_VEICULOS.locate('nome',veiculo.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  veiculoButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
      DBEdit4.text    := DM.SDS_VEICULOS.Fieldbyname('NOME').AsString;

      DM1.Sds_valeTrocoCOD_CLIENTE.Text   :=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + RxDBComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(RxDBComboEdit1.Text),[]);
      RxDBComboEdit1.Text := RemoveChar(RxDBComboEdit1.Text);
      DBEdit2.text    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;

  RxDBComboEdit1.SetFocus;
  end;
    except
     ShowMessage('Erro ao consultar');
    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF veiculo.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 veiculo.SetFocus;
end else

  dm.SDS_VEICULOS.Active := false;
  dm.SDS_veiculos.SQL.Clear;
  dm.SDS_veiculos.SQL.Add('select * from veiculo where CODIGO like ' + #39 + '%' + veiculo.Text + '%' + #39+'order by NOME ASC');
  dm.SDS_veiculos.Active := True;
  ACHOU:= DM.SDS_VEICULOS.locate('CODIGO', RemoveChar(veiculo.Text),[]);
  veiculo.Text := RemoveChar(veiculo.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Veículo Não Localizado');
veiculo.SetFocus;
end;

IF ACHOU=TRUE THEN
begin
      DBEdit4.text    := DM.SDS_VEICULOS.Fieldbyname('NOME').AsString;

      DM1.Sds_valeTrocoCOD_CLIENTE.Text   :=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + RxDBComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(RxDBComboEdit1.Text),[]);
      RxDBComboEdit1.Text := RemoveChar(RxDBComboEdit1.Text);
      DBEdit2.text    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;

  RxDBComboEdit1.SetFocus;
end;
end;
end;
end;

end.
