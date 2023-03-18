unit caixa_abertura_individual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RXDBCtrl, 
  ExtCtrls, Buttons, TFlatPanelUnit, Menus, DB,  aDvGlowButton, rxToolEdit, rxCurrEdit,
  IBCustomDataSet, IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrmcaixa_abertura_individual = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa_abertura_individual: Tfrmcaixa_abertura_individual;
  saldo_anterior : real;

implementation

uses caixa, principal, ModulodeDados;

{$R *.dfm}

procedure Tfrmcaixa_abertura_individual.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_abertura_individual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_abertura_individual.bgravarClick(Sender: TObject);
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
         end ;


         DM.SDS_USUARIOS.Edit;
         DM.SDS_USUARIOS.FieldByName('data').asdatetime := Date;
         DM.SDS_USUARIOS.FieldByName('situacao').asinteger := 1;
         DM.SDS_USUARIOS.post;
         DM.SDS_USUARIOS.ApplyUpdates(0);

         if rsaldo.Value > 0 then
         begin

       {  if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         try                               }
         with frmcaixa.InsItem do
         begin
            close;
             dm.ProxCod.Close;
             dm.ProxCod.SQL.Clear;
             dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
             DM.ProxCod.Open;

            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
            Parambyname('historico').AsString         := 'Suprimento para o Caixa '+DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING;
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.FIELDBYNAME('USUARIO').ASSTRING;
            Parambyname('TIPO').AssTRING              := 'C';
            Parambyname('VALOR_ENTRADA').AsCurrency   := RSALDO.VALUE;
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
            Parambyname('DB_CR').AssTRING             := 'C';
            Parambyname('VALOR').AsCurrency           := RSALDO.VALUE;
            Parambyname('TIPO_MOV').AsInteger         := 1;
            ExecSQL;
         end;
    //  dm.IBTransaction.CommitRetaining;
  {  except
     // dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;   }

 
           {  if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
     try
      with frmcaixa.InsItem do
         begin
            close;
             dm.ProxCod.Close;
             dm.ProxCod.SQL.Clear;
             dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
             DM.ProxCod.Open;
            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
            Parambyname('historico').AsString         := 'Suprimento para o Caixa '+DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING;
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.FIELDBYNAME('USUARIO').ASSTRING;
            Parambyname('TIPO').AssTRING              := 'C';
            Parambyname('VALOR_ENTRADA').AsCurrency   := 0;
            Parambyname('VALOR_SAIDA').AsCurrency     := RSALDO.VALUE;
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
            Parambyname('VALOR').AsCurrency           := (RSALDO.VALUE) * (-1);
            Parambyname('TIPO_MOV').AsInteger         := 2;
            ExecSQL;
         end;
     // dm.IBTransaction.CommitRetaining;
    except
     // dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;   }
         end;

      //   frmmodulo.Conexao.Commit;
 {  EXCEPT
    SHOWMESSAGE('Houve um falha em abrir o caixa individual! Este processo foi cancelado!');
    //FRMMODULO.Conexao.Rollback;
   END; }

   close;
end;

procedure Tfrmcaixa_abertura_individual.edataEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcaixa_abertura_individual.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcaixa_abertura_individual.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura_individual.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmcaixa_abertura_individual.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
end;

procedure Tfrmcaixa_abertura_individual.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmcaixa_abertura_individual);
end;

procedure Tfrmcaixa_abertura_individual.rsaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
