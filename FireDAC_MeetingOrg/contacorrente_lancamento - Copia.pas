unit contacorrente_lancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Wwdatsrc, RXDBCtrl, Menus, FDvGlowButton,
  ToolEdit, CurrEdit, IBCustomDataSet, IBQuery;

type
  Tfrmcontacorrente_lancamento = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    BLOCCONTA: TBitBtn;
    enomeconta: TEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Bevel1: TBevel;
    Bevel10: TBevel;
    DateEdit1: TDateEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    econta: TEdit;
    DBEdit1: TEdit;
    ed_valor: TCurrencyEdit;
    InsItem: TIBQuery;
    FlatPanel1: TFlatPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    conta: TComboEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ECONTAKeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure ECONTAExit(Sender: TObject);
    procedure edata_cadastroKeyPress(Sender: TObject; var Key: Char);
    procedure contaButtonClick(Sender: TObject);
    procedure econtaEnter(Sender: TObject);
    procedure _mShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure contaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BLOCCONTAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontacorrente_lancamento: Tfrmcontacorrente_lancamento;

implementation

uses  principal, ModulodeDados, ConsContaBancariapas, ConsPlanoContas,
  Ubibli1;

{$R *.dfm}

procedure Tfrmcontacorrente_lancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
  frmcontacorrente_lancamento := nil;
end;

procedure Tfrmcontacorrente_lancamento.ECONTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontacorrente_lancamento.bgravarClick(Sender: TObject);
var
  VALOR : Double;
begin

 VALOR := ed_valor.value;

  IF ed_valor.value = 0 THEN
  BEGIN
    APPLICATION.MESSAGEBOX('Valor informar um valor válido!','Atenção',mb_ok+mb_iconerror);
    ed_valor.setfocus;
    exit;
  END;



  IF RADIOBUTTON1.Checked THEN
  BEGIN
        if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
    try
      with InsItem do
         begin
            close;
            dm.ProxCod.Close;
            dm.ProxCod.SQL.Clear;
            dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
            DM.ProxCod.Open;

            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DateEdit1.Date;
            Parambyname('historico').AsString         := DBedit1.text;
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.fieldbyname('codigo').asstring;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.fieldbyname('USUARIO').asstring;
            Parambyname('TIPO').AssTRING              := 'B';
            Parambyname('VALOR_ENTRADA').AsCurrency   := ed_valor.value;
            Parambyname('VALOR_SAIDA').AsCurrency     := 0;
            Parambyname('CODIGO_CC').VALUE            := DM.SDS_Conta_BancariaCODIGO.AsInteger;
            parambyname('NUMERO_CC').VALUE            := DM.SDS_Conta_BancariaCONTA.AsString;
            parambyname('CODIGO_VENDA').vALUE         := null;
            Parambyname('ORIGEM').AssTRING            := 'AVU';
            parambyname('COD_CREDIARIO').Value        := null;
            Parambyname('COD_COMPRA').Value           := null;
            Parambyname('N_CHEQUE').Value             := null;
            DM.SDS_CONFIGURACOES.open;
            Parambyname('COD_PLANO').AsString         := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
            Parambyname('PRE_DATADO').Value           := null;
            Parambyname('NOMINAL').Value              := null;
            parambyname('COMPENSADO').VALUE           := NULL;
            parambyname('COD_CHEQUE').Value           := null;
            Parambyname('COD_CONTAS_PAGAR').Value     := null;
            parambyname('DOC_LAN').Value              := null;
            Parambyname('CONCILIADO').Value           := null;
            Parambyname('COD_DOC').Value              := null;
            Parambyname('DOCUMENTO_LANC').Value       := null;
            Parambyname('COD_EMPRESA').AsInteger      := DM.SDS_EmpresaCODIGO.AsInteger;
            Parambyname('HORA').Value                 := null;
            Parambyname('DB_CR').AssTRING             := 'C';
            Parambyname('VALOR').AsCurrency           := ed_valor.value;
            Parambyname('TIPO_MOV').AsInteger         := 1;
            ExecSQL;
         end;
      dm.IBTransaction.CommitRetaining;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Bancario, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
     formprincipal.log(codigo_usuario,'CAIXA',IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1),'INCLUIU',DBEdit1.Text);
  end;
  IF RADIOBUTTON2.Checked THEN
  BEGIN
        if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
    try
      with InsItem do
         begin
            close;
            dm.ProxCod.Close;
            dm.ProxCod.SQL.Clear;
            dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
            DM.ProxCod.Open;

            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DateEdit1.Date;
            Parambyname('historico').AsString         := DBedit1.text;
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.fieldbyname('codigo').asstring;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.fieldbyname('USUARIO').asstring;
            Parambyname('TIPO').AssTRING              := 'B';
            Parambyname('VALOR_ENTRADA').AsCurrency   := 0;
            Parambyname('VALOR_SAIDA').AsCurrency     := ed_valor.value;
            Parambyname('CODIGO_CC').VALUE            := DM.SDS_Conta_BancariaCODIGO.AsInteger;
            parambyname('NUMERO_CC').VALUE            := DM.SDS_Conta_BancariaCONTA.AsString;
            parambyname('CODIGO_VENDA').vALUE         := null;
            Parambyname('ORIGEM').AssTRING            := 'AVU';
            parambyname('COD_CREDIARIO').Value        := null;
            Parambyname('COD_COMPRA').Value           := null;
            Parambyname('N_CHEQUE').Value             := null;
            DM.SDS_CONFIGURACOES.open;
            Parambyname('COD_PLANO').AsString         := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
            Parambyname('PRE_DATADO').Value           := null;
            Parambyname('NOMINAL').Value              := null;
            parambyname('COMPENSADO').VALUE           := NULL;
            parambyname('COD_CHEQUE').Value           := null;
            Parambyname('COD_CONTAS_PAGAR').Value     := null;
            parambyname('DOC_LAN').Value              := null;
            Parambyname('CONCILIADO').Value           := null;
            Parambyname('COD_DOC').Value              := null;
            Parambyname('DOCUMENTO_LANC').Value       := null;
            Parambyname('COD_EMPRESA').AsInteger      := DM.SDS_EmpresaCODIGO.AsInteger;
            Parambyname('HORA').Value                 := null;
            Parambyname('DB_CR').AssTRING             := 'D';
            Parambyname('VALOR').AsCurrency           := ed_valor.value;
            Parambyname('TIPO_MOV').AsInteger         := 1;
            ExecSQL;
         end;
      dm.IBTransaction.CommitRetaining;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Bancario, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
     formprincipal.log(codigo_usuario,'CAIXA',IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1),'INCLUIU',DBEdit1.Text);
    end;

    Limpaedit(frmcontacorrente_lancamento);
    conta.SetFocus;

end;

procedure Tfrmcontacorrente_lancamento.bcancelarClick(Sender: TObject);
begin
 // frmcontacorrente.qrlancamento_conta.Cancel;
  close;
end;

procedure Tfrmcontacorrente_lancamento.DBEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente_lancamento.DBEdit1Exit(Sender: TObject);
begin
TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmcontacorrente_lancamento.edata_cadastroEnter(
  Sender: TObject);
begin
 TEDIT(SENDER).COLOR := $00A0FAF8;
 IF DateEdit1.TEXT = '  /  /    ' THEN DateEdit1.DATE := DATE;

end;

procedure Tfrmcontacorrente_lancamento.ECONTAExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  {IF (frmcaixa.qrcaixa_mov.state = dsinsert) or (frmcaixa.qrcaixa_mov.State = dsedit) then
  begin
  {  frmcaixa.qrcaixa_mov.fieldbyname('cod_plano').asstring := frmprincipal.zerarcodigo(econta.text,6);
    if econta.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrplano,econta.text,'codigo') then bloccontaclick(frmcaixa_ficha) else dbedit1.setfocus
    else  }
    //      blocconta.SetFocus;
 // end; }
IF econta.Text > '' THEN
begin
If (DM.SDS_PlContas.Locate('CODIGO',VarArrayOf([econta.Text]),[])) then
begin
enomeconta.Text:= DM.SDS_PlContasNome.Text;
bgravar.SetFocus;
end;
end;
end;

procedure Tfrmcontacorrente_lancamento.edata_cadastroKeyPress(
  Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcontacorrente_lancamento.contaButtonClick(Sender: TObject);
begin
 FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
     // FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsContaBancaria.ShowModal;
      if not DM.SDS_conta_bancaria.Eof then
      begin
       conta.Text := dm.SDS_Conta_BancariaCODIGO.Text;
       Edit1.Text := DM.SDS_Conta_BancariaCONTA.Text +'-'+ DM.strngfldSDS_Conta_BancariaDIGITO.Text;
       Edit2.Text := dm.SDS_Conta_BancariaAGENCIA.text;
       Edit3.Text := dm.SDS_Conta_BancariaTITULAR.text;
       RadioButton1.SetFocus;
      end;
end;

procedure Tfrmcontacorrente_lancamento.econtaEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcontacorrente_lancamento._mShow(Sender: TObject);
begin
dm.SDS_Conta_Bancaria.Active := False;
dm.SDS_Conta_Bancaria.Active := true;
DateEdit1.Date := Date;
CONTA.SetFocus;
end;

procedure Tfrmcontacorrente_lancamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
iF Key = VK_F11 then
begin
  DateEdit1.Enabled := TRUE;
end;
end;

procedure Tfrmcontacorrente_lancamento.contaExit(Sender: TObject);
begin
if DM.SDS_Conta_Bancaria.locate('CODIGO', (conta.Text),[])= True then
begin
Edit1.Text := DM.SDS_Conta_BancariaCONTA.Text +'-'+ DM.strngfldSDS_Conta_BancariaDIGITO.Text;
Edit2.Text := dm.SDS_Conta_BancariaAGENCIA.text;
Edit3.Text := dm.SDS_Conta_BancariaTITULAR.text;
RadioButton1.SetFocus;
end else
if not DM.SDS_Conta_Bancaria.locate('CODIGO', (conta.Text),[])= True then
begin
  ShowMessage('Conta não Localizada');
end;
end;

procedure Tfrmcontacorrente_lancamento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure Tfrmcontacorrente_lancamento.BLOCCONTAClick(Sender: TObject);
VAR
  ANAL : string;
begin
  ANAL:= 'A';
   dm.SDS_PlContas.Filtered := False;
   dm.SDS_PlContas.Filter := 'INDICADOR ='+QuotedStr(ANAL);
   dm.SDS_PlContas.Filtered := True;

  FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
   FormConsPlanoContas.ShowModal;

 // frmcaixa.qrcaixa_mov.Edit;
  econta.Text := dm.SDS_PlContas.fieldbyname('codigo').asstring;
  
  dbedit1.setfocus;
  dm.SDS_PlContas.Filtered := False;

end;

end.
