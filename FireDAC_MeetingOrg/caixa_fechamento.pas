unit caixa_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Mask, TFlatPanelUnit, Buttons, DBCtrls, Menus, aDvGlowButton,
  rxToolEdit, rxCurrEdit,  SimpleDS, DBClient, Data.DBXFirebird;

type
  Tfrmcaixa_fechamento = class(TForm)
    dscaixa_operador: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    wwDBGrid1: TwwDBGrid;
    bincluir: TAdvGlowButton;
    Bevel1: TBevel;
    ldata: TLabel;
    Label1: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RENTRADA: TRxCalcEdit;
    RSAIDA: TRxCalcEdit;
    RSUBSALDO: TRxCalcEdit;
    Button1: TButton;
    Label2: TLabel;
    Bevel5: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    rsangria: TRxCalcEdit;
    RSALDO: TRxCalcEdit;
    qrcaixa_operador: TSimpleDataSet;
    qrcaixa_operadorsit: TStringField;
    qrcaixa_operadorUSUARIO: TStringField;
    qrcaixa_operadorSITUACAO: TStringField;
    qrcaixa_operadorCODIGO: TIntegerField;
    procedure qrcaixa_operadorCalcFields(DataSet: TDataSet);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure rsangriaEnter(Sender: TObject);
    procedure rsangriaExit(Sender: TObject);
    procedure rsangriaKeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function formata_valor(valor:string):string;
  end;

var
  frmcaixa_fechamento: Tfrmcaixa_fechamento;

implementation

uses caixa, principal, lista_caixa2, ModulodeDados, lista_caixa1;

{$R *.dfm}
function Tfrmcaixa_fechamento.formata_valor(valor:string):string;
var i : integer;
begin
  i := pos('.',valor);
  while i <> 0 do
  begin
      delete(valor,i,1);
      i := pos('.',valor);
  end;
  result := valor;
end;

procedure Tfrmcaixa_fechamento.qrcaixa_operadorCalcFields(DataSet: TDataSet);
begin
  case qrcaixa_operador.FieldByName('situacao').asinteger of
  1 : qrcaixa_operador.FieldByName('sit').asstring := 'ABERTO';
  2 : qrcaixa_operador.FieldByName('sit').asstring := 'FECHADO';
  3 : qrcaixa_operador.FieldByName('sit').asstring := 'SEM CAIXA';
  END;

end;

procedure Tfrmcaixa_fechamento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa_fechamento.bgravarClick(Sender: TObject);
begin

// try
  { if qrcaixa_operador.Locate('situacao',1,[loCaseInsensitive]) then
   begin
     application.MessageBox('Existem caixas individuais abertos! Para prosseguir é necessário o fechamento dos mesmos!','Aviso',mb_ok+MB_ICONWARNING);
   end
   else }
         if DM.SDS_CONFIGURACOESCAIXA_UNICO.Text = 'S' then
         begin
         DM.SDS_Usuarios.First;
         while not DM.SDS_Usuarios.Eof DO
         BEGIN
         DM.SDS_USUARIOS.Edit;
         DM.SDS_USUARIOS.FieldByName('data').asdatetime := date;
         //if DM.SDS_USUARIOS.FieldByName('codigo').asstring = '99' then
         DM.SDS_USUARIOS.FieldByName('situacao').asinteger := 2;
         DM.SDS_USUARIOS.post;
         DM.SDS_USUARIOS.ApplyUpdates(0);
         DM.SDS_Usuarios.Next;
         end;
         end;
         


       DM.SDS_Usuarios.Locate('CODIGO',99,[loCaseInsensitive]);

       DM.SDS_USUARIOS.Edit;
       DM.SDS_USUARIOS.fieldbyname('situacao').asinteger := 2;
       DM.SDS_USUARIOS.fieldbyname('saldo').asfloat := rsaldo.value ;
       DM.SDS_USUARIOS.Post;
       DM.SDS_USUARIOS.ApplyUpdates(0);

       DM.SDS_CAIXA.Edit;
       DM.sds_caixa.FieldByName('data_ABERTURA').asdatetime := DM.sds_caixa.FieldByName('data_ABERTURA').asdatetime;
       DM.sds_caixa.FieldByName('data_FECHAMENTO').asdatetime := date;
       DM.SDS_caixa.fieldbyname('saldo').asfloat := rsaldo.value ;
       DM.sds_caixa.FieldByName('situacao').asinteger := 2;
       DM.sds_caixa.FieldByName('cod_usuario').asinteger := DM.SDS_UsuariosCODIGO.AsInteger;
       DM.sds_caixa.FieldByName('HORA_FECHA').asdatetime := Time;
       DM.sds_caixa.FieldByName('HORA_ABERT').asdatetime := DM.sds_caixa.FieldByName('HORA_ABERT').asdatetime ;
       DM.SDS_CAIXA.post;
       DM.Coneccao.Commit;


       with frmcaixa.Query1 do
       begin
          first;
         while not eof do
         begin
          
          if DM.IBTransaction.Active then
             DM.IBTransaction.Commit; 
          DM.IBTransaction.StartTransaction;
             with DM.IBSQL do
              begin
                 Close;
                 SQL.Clear;
                 SQL.Add('UPDATE movimento_diario SET STATUS = 1, COD_FECHAMENTO =:CODF WHERE movimento_diario.CODIGO =:COD ');
                 ParamByName('CODF').asInteger := DM.sds_caixa.Fieldbyname('SEQ').asInteger;
                 ParamByName('COD').asInteger := frmcaixa.Query1.Fieldbyname('codigo').asInteger;
                 ExecQuery;
             end;
             DM.IBTransaction.CommitRetaining;
          Next;
         end;
      end;
           if rsangria.Value > 0 then
     begin
       DM.SDS_Usuarios.Locate('CODIGO',99,[loCaseInsensitive]);

       //DESATIVADO RETIRADA
       
      { frmcaixa.qrcaixa_mov.OPEN;
       frmcaixa.qrcaixa_mov.insert;
       frmcaixa.qrcaixa_mov.FieldByName('codigo').AsInteger        := DM.ProxCodN_CODIGO.ASINTEGER + 1;
       frmcaixa.qrcaixa_mov.fieldbyname('cod_usuario').asstring    := '99';
       frmcaixa.qrcaixa_mov.fieldbyname('usuario').asstring         := FormPrincipal.UserLogado;
       frmcaixa.qrcaixa_mov.fieldbyname('data').AsDateTime          := DM.SDS_USUARIOS.FIELDBYNAME('DATA').AsDateTime;
       frmcaixa.qrcaixa_mov.fieldbyname('Valor_saida').asfloat     := rsangria.value;
       frmcaixa.qrcaixa_mov.fieldbyname('valor').asfloat           := (rsangria.value)*(-1);
       frmcaixa.qrcaixa_mov.fieldbyname('Valor_entrada').asfloat      := 0;
       frmcaixa.qrcaixa_mov.FieldByName('Tipo').AsString  := 'C';
       frmcaixa.qrcaixa_mov.FieldByName('ORIGEM').AsString  := 'AVU';
       DM.SDS_CONFIGURACOES.open;
       frmcaixa.qrcaixa_mov.fieldbyname('cod_plano').asstring    := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
       frmcaixa.qrcaixa_mov.fieldbyname('tipo_mov').asINTEGER  := 2;
       frmcaixa.qrcaixa_mov.fieldbyname('historico').asstring   := '**RETIRADA** - Fechamento de Caixa';
       frmcaixa.qrcaixa_mov.post;
       frmcaixa.qrcaixa_mov.ApplyUpdates(0);
     end;    }

     if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
      try
      with frmcaixa.InsItem1 do
         begin
            close;
            dm.ProxCod.Close;
            dm.ProxCod.SQL.Clear;
            dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
            DM.ProxCod.Open;

            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
            Parambyname('historico').AsString         := '**RETIRADA** - Fechamento de Caixa';
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.fieldbyname('codigo').asstring;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.fieldbyname('USUARIO').asstring;
            Parambyname('TIPO').AssTRING              := 'C';
            Parambyname('VALOR_ENTRADA').AsCurrency   := 0;
            Parambyname('VALOR_SAIDA').AsCurrency     := rsangria.Value;
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
            Parambyname('VALOR').AsCurrency           := rsangria.Value;
            Parambyname('TIPO_MOV').AsInteger         := 2;
            Parambyname('STATUS').AsInteger           := 1;
            Parambyname('COD_FECHAMENTO').AsInteger   := DM.sds_caixa.Fieldbyname('SEQ').asInteger;
            ExecSQL;
         end;
      dm.IBTransaction.CommitRetaining;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
    end;

     application.MessageBox('Caixa Fechado com Sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);

     if application.MessageBox('Deseja imprimir a folha de caixa?','Aviso',mb_yesno+MB_ICONquestion) = idyes then
     begin
      try
        FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
        FRMLISTA_CAIXA2.SHOWMODAL;
      finally
        FreeAndNil(FRMLISTA_CAIXA2);
      end;
     end;
    close;
end;

procedure Tfrmcaixa_fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_fechamento.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if qrcaixa_operador.FieldByName('situacao').asinteger = 2 then
  begin
    wwDbgrid1.canvas.Brush.Color:= clred;
    wwDbgrid1.Canvas.Pen.Color:= clblack;
  end;
  if qrcaixa_operador.FieldByName('situacao').asinteger = 3 then
  begin
    wwDbgrid1.canvas.Brush.Color:= $005ACAFA;
    wwDbgrid1.Canvas.Pen.Color:= clblack;
  end;

  wwDbgrid1.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmcaixa_fechamento.DBEdit1Change(Sender: TObject);
begin
  if qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    bincluir.visible := true else bincluir.Visible := false;
end;

procedure Tfrmcaixa_fechamento.FormShow(Sender: TObject);
begin
  DM.SDS_USUARIOS.Refresh;
  qrcaixa_operador.Close;
  qrcaixa_operador.DataSet.CommandText := 'select * from usuarios where codigo <> '''+'99'+''' order by codigo';
//  qrcaixa_operador.SQL.add('select * from usuarios where codigo <> '''+'1'+''' order by codigo');
  qrcaixa_operador.Open;
 // qrcaixa_operador.Refresh;
  DM.SDS_USUARIOS.Locate('codigo',99,[loCaseInsensitive]);

  bgravar.setfocus;


end;

procedure Tfrmcaixa_fechamento.bincluirClick(Sender: TObject);
begin
    if application.MessageBox('Confirma a fechamento deste caixa?','Caixa',mb_yesno+mb_iconquestion) = idyes then
    begin

      DM.SDS_Usuarios.Locate('codigo',qrcaixa_operadorcodigo.asinteger,[loCaseInsensitive]);

      DM.SDS_Usuarios.Edit;
      DM.SDS_Usuarios.FieldByName('situacao').asinteger := 2;
      DM.SDS_Usuarios.Post;
      DM.SDS_Usuarios.ApplyUpdates(0);
      // frmmodulo.Conexao.commit;
      qrcaixa_operador.Refresh;


      IF APPLICATION.MessageBox('Deseja imprimir a folha de caixa?','Aviso',mb_yesno+mb_iconquestion) = idyes then
      begin
        try
          FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
          FRMLISTA_CAIXA2.SHOWMODAL;
        finally
          FreeAndNil(FRMLISTA_CAIXA2);
        end;
      end;
    end;
end;

procedure Tfrmcaixa_fechamento.rsangriaEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
end;

procedure Tfrmcaixa_fechamento.rsangriaExit(Sender: TObject);
begin
 TEDIT(SENDER).COLOR := CLWINDOW;
 RSALDO.VALUE := RSUBSALDO.Value - RSANGRIA.VALUE;
end;

procedure Tfrmcaixa_fechamento.rsangriaKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SetFocus;
end;

procedure Tfrmcaixa_fechamento.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.OnClick(frmcaixa_fechamento);
end;

procedure Tfrmcaixa_fechamento.Button1Click(Sender: TObject);
var texto : pansichar;
TXT : TEXTFILE;
cnpj_cpf, ie_rg, TEXTOS : STRING;
i : integer;
begin
{  if frmprincipal.autentica('Redução Z',nivel_exclusao) then
  begin
    texto := pansichar('Este procedimento fechará o Caixa da ECF, permitindo efetuar novas vendas após as 00:00 hs!'+#13+'Confirma a emissão da REDUÇÃO Z?');
    if application.messagebox(texto,'Atenção - Redução Z',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
    begin
      ecf_reducao_z(ecf_modelo);
      frmPrincipal.GravaReducaoZ;
    END;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;   }

end;

end.
