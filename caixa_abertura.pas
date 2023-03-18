unit caixa_abertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RXDBCtrl, 
  ExtCtrls, Buttons, TFlatPanelUnit, Menus, DB, aDvGlowButton, rxToolEdit, rxCurrEdit,
  IBCustomDataSet, IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrmcaixa_abertura = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    rsaldo: TRxCalcEdit;
    edata: TDateEdit;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    qrdata: TFDQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edataExit(Sender: TObject);
    procedure rsaldoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure rsaldoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa_abertura: Tfrmcaixa_abertura;
  saldo_anterior : real;

implementation

uses caixa, principal, ModulodeDados;

{$R *.dfm}

procedure Tfrmcaixa_abertura.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_abertura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_abertura.bgravarClick(Sender: TObject);
begin
//  try
         if DM.SDS_CONFIGURACOESCAIXA_UNICO.Text = 'S' then
         begin
         DM.SDS_Usuarios.First;
         while not DM.SDS_Usuarios.Eof DO
         BEGIN
         DM.SDS_USUARIOS.Edit;
         DM.SDS_USUARIOS.FieldByName('data').asdatetime := edata.date;
         //if DM.SDS_USUARIOS.FieldByName('codigo').asstring = '99' then
         DM.SDS_USUARIOS.FieldByName('situacao').asinteger := 1;
         DM.SDS_USUARIOS.post;
         DM.SDS_USUARIOS.ApplyUpdates(0);
         DM.SDS_Usuarios.Next;
         end;
         end;



       DM.SDS_USUARIOS.Locate('codigo',99,[loCaseInsensitive]);

     {  while not DM.SDS_USUARIOS.Eof do
       begin   }
         DM.SDS_USUARIOS.Edit;
         DM.SDS_USUARIOS.FieldByName('data').asdatetime := edata.date;
         if DM.SDS_USUARIOS.FieldByName('codigo').asstring = '99' then
           DM.SDS_USUARIOS.FieldByName('situacao').asinteger := 1
         else
         DM.SDS_USUARIOS.FieldByName('situacao').asinteger := 3;
         DM.SDS_USUARIOS.post;
         DM.SDS_USUARIOS.ApplyUpdates(0);

         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(SEQ) as N_CODIGO FROM CAIXA');
         DM.ProxCod.Open;

         DM.SDS_CAIXA.Insert;
         DM.sds_caixa.FieldByName('SEQ').asinteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
         DM.sds_caixa.FieldByName('data_ABERTURA').asdatetime := Date;
         DM.sds_caixa.FieldByName('data_FECHAMENTO').asdatetime := DM.sds_caixa.FieldByName('data_FECHAMENTO').asdatetime;
         DM.sds_caixa.FieldByName('COD_USUARIO').asinteger := DM.SDS_UsuariosCODIGO.ASINTEGER;
         DM.sds_caixa.FieldByName('situacao').asinteger := 1;
         DM.sds_caixa.FieldByName('HORA_FECHA').asdatetime := DM.sds_caixa.FieldByName('HORA_FECHA').asdatetime;
         DM.sds_caixa.FieldByName('HORA_ABERT').asdatetime := Time;
         DM.SDS_CAIXA.post;
         DM.Coneccao.Commit;


         DM.SDS_CAIXA.Close;
         DM.SDS_CAIXA.Open;
         DM.SDS_CAIXA.Last;


      {   if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;  }
  //  try
      with frmcaixa.InsItem do
         begin
            close;
            dm.ProxCod.Close;
            dm.ProxCod.SQL.Clear;
            dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
            DM.ProxCod.Open;

            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
            Parambyname('historico').AsString         := 'S A L D O   A N T E R I O R';
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.fieldbyname('codigo').asstring;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.fieldbyname('USUARIO').asstring;
            Parambyname('TIPO').AssTRING              := 'C';
            Parambyname('VALOR_ENTRADA').AsCurrency   := saldo_anterior;
            Parambyname('VALOR_SAIDA').AsCurrency     := 0;
            Parambyname('CODIGO_CC').VALUE            := null;
            parambyname('NUMERO_CC').VALUE            := NULL;
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
            Parambyname('VALOR').AsCurrency           := saldo_anterior;
            Parambyname('TIPO_MOV').AsInteger         := 0;
            ExecSQL;
         end;
   //   dm.IBTransaction.CommitRetaining;
 {   except
    ///  dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;   }


       if rsaldo.value <> saldo_anterior then
       begin

        {  if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;  }
  //   try
      with frmcaixa.InsItem do
         begin
            close;
             dm.ProxCod.Close;
             dm.ProxCod.SQL.Clear;
             dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
             DM.ProxCod.Open;
            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
            Parambyname('historico').AsString         := 'Acerto do Saldo Anterior';
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.FIELDBYNAME('USUARIO').ASSTRING;
            Parambyname('TIPO').AssTRING              := 'C';
            if rsaldo.value < saldo_anterior then
            begin
            Parambyname('VALOR_ENTRADA').AsCurrency   := 0;
            Parambyname('VALOR_SAIDA').AsCurrency     := saldo_anterior - rsaldo.value;
            Parambyname('CODIGO_CC').VALUE            := null;
            parambyname('NUMERO_CC').VALUE            := NULL;
            parambyname('CODIGO_VENDA').vALUE         := null;
            Parambyname('ORIGEM').AssTRING            := 'AVU';
            parambyname('COD_CREDIARIO').Value        := null;
            Parambyname('COD_COMPRA').Value           := null;
            Parambyname('N_CHEQUE').Value             := null;
            DM.SDS_CONFIGURACOES.open;
            Parambyname('COD_PLANO').AsString         := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
            Parambyname('PRE_DATADO').Value           := null;
            Parambyname('NOMINAL').Value              := null;
            parambyname('COMPENSADO').VALUE           := NULL;
            parambyname('COD_CHEQUE').Value           := null;
            Parambyname('COD_CONTAS_PAGAR').Value     := null;
            parambyname('DOC_LAN').Value              := null;
            Parambyname('CONCILIADO').Value           := null;
            Parambyname('COD_DOC').Value              := null;
            Parambyname('DOCUMENTO_LANC').Value       := null;
            Parambyname('COD_EMPRESA').AsInteger      := iEmp;
            Parambyname('HORA').AsDATETIME            := TIME;
            Parambyname('DB_CR').AssTRING             := 'D';
            Parambyname('VALOR').AsCurrency           := saldo_anterior - rsaldo.value;
            Parambyname('TIPO_MOV').AsInteger         := 2;
            END
            else
            BEGIN
            Parambyname('VALOR_ENTRADA').AsCurrency   := rsaldo.value-saldo_anterior;
            Parambyname('VALOR_SAIDA').AsCurrency     := 0;
            Parambyname('CODIGO_CC').VALUE            := null;
            parambyname('NUMERO_CC').VALUE            := NULL;
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
            Parambyname('COD_EMPRESA').AsInteger      := iEmp;
            Parambyname('HORA').AsDATETIME            := TIME;
            Parambyname('DB_CR').AssTRING             := 'D';
            Parambyname('VALOR').AsCurrency           := rsaldo.value-saldo_anterior;
            Parambyname('TIPO_MOV').AsInteger         := 1;
            end;

            ExecSQL;
         end;
    //  dm.IBTransaction.CommitRetaining;
 {   except
     // dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end; }
    end;

       application.messagebox('Caixa aberto com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);

       close;
 {  except
    // dm.ibTransacion1.Rollback;
      showmessage('Esta função não pode ser processada corretamente, a execução da mesma foi cancelada!');
   end;  }

end;

procedure Tfrmcaixa_abertura.edataEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcaixa_abertura.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcaixa_abertura.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
  DM.SDS_USUARIOS.Locate('codigo',99,[loCaseInsensitive]);
  if DM.sds_caixaDATA_FECHAMENTO.AsDateTime < Date then
  edata.Date := DM.sds_caixaDATA_FECHAMENTO.AsDateTime + 1
  else
  edata.Date := Date;
end;

procedure Tfrmcaixa_abertura.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.onclick(frmcaixa_abertura);
end;

procedure Tfrmcaixa_abertura.rsaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then  bgravar.setfocus;
end;

procedure Tfrmcaixa_abertura.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin   
iF Key = VK_F11 then
begin
  edata.Enabled := TRUE;
end;

iF (ssalt in shift) and (Key = 65) then
begin
  edata.Enabled := TRUE;
end;

end;

end.
