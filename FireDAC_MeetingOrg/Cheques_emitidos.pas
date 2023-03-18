unit Cheques_emitidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, Mylabel,
 Mask, StdCtrls, RXCtrls, ExtCtrls,
  Grids, DBGrids, SUIDBCtrls, Buttons, AlignEdit, XDBGrids, AdvPanel,
  AdvGlowButton, RxCurrEdit, RxToolEdit;

type
  TForm_Cheques = class(TForm)
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Label1: TLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    Label4: TLabel;
    edTVALOR: TEdit;
    conta: TComboEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    CurrencyEdit3: TCurrencyEdit;
    Panel7: TPanel;
    btnNovo: TAdvGlowButton;
    BtnGravar: TAdvGlowButton;
    BtnExcluir: TAdvGlowButton;
    BtnSair: TAdvGlowButton;
    Panel1: TPanel;
    myLabel3d2: TmyLabel3d;
    IBTRAce: TIBTransaction;
    QInsCheque: TIBQuery;
    QBuscaItens: TIBQuery;
    QBuscaItensCOD_CHEQUE: TIntegerField;
    QBuscaItensVALOR: TIBBCDField;
    QBuscaItensDATA_EMISSAO: TDateField;
    QBuscaItensDATA_VENCIMENTO: TDateField;
    QBuscaItensPAGO: TIBStringField;
    QBuscaItensORIGEM: TIBStringField;
    QBuscaItensDOCUMENTO_ORIGEM: TIntegerField;
    QBuscaItensCOD_CONTA: TIntegerField;
    QBuscaItensCOMP_NA_INCLUSAO: TIBStringField;
    QBuscaItensDATA_COMPENSACAO: TDateField;
    QBuscaItensHISTORICO: TIBStringField;
    QBuscaItensNUMERO_CHEQUE: TIntegerField;
    QBuscaItensCOD_USUARIO: TIntegerField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensTROCO: TIBStringField;
    QBuscaItensFAVORECIDO: TIBStringField;
    QBuscaItensCOD_VENDA: TIntegerField;
    QBuscaItensCOD_COMPRA: TIntegerField;
    DSQBuscaItens: TDataSource;
    DelItem: TIBQuery;
    Panel2: TPanel;
    suiDBGrid1: TXDBGrid;
    Panel4: TPanel;
    RxLabel1: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    BtnAlterar: TAdvGlowButton;
    BtnConsultar: TAdvGlowButton;
    BtnCancelar: TAdvGlowButton;
    QupdCheques: TIBQuery;
    EdtCodForn: TAlignEdit;
    Label22: TLabel;
    BtnConsEmitente: TSpeedButton;
    EdtNomeForn: TEdit;
    Label23: TLabel;
    EdtNomeCli: TEdit;
    Label5: TLabel;
    BtnConsCli: TSpeedButton;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    qrcaixa_mov: TIBQuery;
    brelatorio: TAdvGlowButton;
    Panel8: TAdvPanel;
    EdtCodCliente: TAlignEdit;
    Edit3: TEdit;
    DEL_CHEQUE: TIBQuery;
    Label7: TLabel;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Label8: TLabel;
    econta: TAlignEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure contaExit(Sender: TObject);
    procedure contaButtonClick(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure LimpaItens;
    procedure BuscaItens;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Botoes(acao : string);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure EdtCodClienteChange(Sender: TObject);
    procedure BtnConsCliClick(Sender: TObject);
    procedure BtnConsEmitenteClick(Sender: TObject);
    procedure EdtCodFornChange(Sender: TObject);
    procedure EdtCodClienteExit(Sender: TObject);
    procedure EdtCodFornExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    
  private
    { Private declarations }
  public
    { Public declarations }
    A: Real;
  end;

var
  Form_Cheques: TForm_Cheques;
  texto : string;
  bGrava, ACHOU : boolean;


  
implementation

uses
  Estenso, Ubibli1, ModulodeDados, ConsContaBancariapas, UConsCheque,
  Principal, Uchequeavu, ConsClientes, ConsPlanoContas, xloc_fornecedor;

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

procedure TForm_Cheques.Botoes(acao : string);
begin
   {  (N)OVO
      (G)RAVAR
      (C)ANCELAR
      (A)LTERAR
      (E)EXCLUIR
      (P)ESQUISAR/CONSULTAR  }

   if (acao = 'N') or (acao = 'A') then
      begin
          EDedit(Form_Cheques, true);
          btnNovo.Enabled      := false;
          BtnGravar.Enabled    := true;
          btnCancelar.Enabled  := true;
          BtnAlterar.Enabled   := false;
          if acao = 'N' then
             begin
                 LimpaItens;
                btnExcluir.Enabled   := false
             end
          else
              btnExcluir.Enabled := true;
          BtnConsultar.Enabled   := false;
      end
   else
      begin
         if not (acao = 'G') then
         LimpaItens;
         EDedit(Form_Cheques, false);
         btnNovo.Enabled      := true;
         BtnGravar.Enabled    := false;
         btnCancelar.Enabled  := false;
         if (acao = 'C') or (acao = 'E') then
            btnalterar.Enabled:= false
         else
            btnalterar.Enabled:= true;
         if acao = 'G' then
            btnExcluir.Enabled:= true
         else
            BtnExcluir.Enabled:= false;
         BtnConsultar.Enabled := true;
      end;
end;
procedure TForm_Cheques.LimpaItens;
begin
   EdIT2.Clear;
   CONTA.Clear;
   Edit1.Clear;
   Edit4.Clear;
   Edit5.Clear;
   Edit6.Clear;
   EdtCodForn.Clear;
   EdtCodCliente.Clear;
   EdtNomeForn.Clear;
   EdtNomeCli.Clear;
   CurrencyEdit3.Clear;
   edTVALOR.Clear;
   DateEdit1.Clear;
   DateEdit2.Clear;
end;

procedure TForm_Cheques.BuscaItens;
begin
   if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('cod_cheque').AsInteger:= strtoint(Edit6.Text);
         open;
        // Last;
      end;
   IBTRAce.CommitRetaining;
 //  dmb.SDS_BaixarCheque.Refresh;

QBuscaItens.First;
A:= 0;
if QBuscaItensVALOR.VALUE > 0 then
A:= A + QBuscaItensVALOR.AsFloat;
QBuscaItens.Next;
CurrencyEdit1.Text:= FloatToStr(A);
While not QBuscaItens.Eof do
begin
if QBuscaItensVALOR.VALUE > 0 then
A:= A + QBuscaItensVALOR.AsFloat;
QBuscaItens.next;
CurrencyEdit1.Text:= FloatToStr(A);
end;
QBuscaItens.first;
//QBuscaItens.Refresh;
end;

procedure TForm_Cheques.btnNovoClick(Sender: TObject);
begin
DM.SDS_conta_bancaria.Close;
DM.SDS_conta_bancaria.Open;

  panel6.Enabled     := True;
  
  if IBTRAce.Active then
     IBTRAce.Commit;
  QBuscaItens.Close;


//  CurrencyEdit3.Value :=


  bGrava:= true;

  Botoes('N');



  DateEdit1.Date       := date;
  DateEdit2.Date       := date;
  btngravar.Enabled   := True;
  btnexcluir.Enabled  := false;


 // LimpaItens;
  conta.SetFocus;
  
  Edit6.Text:= inttostr(prxcod('CHEQUES_EMITIDOS', 'cod_cheque', dm.IBTransaction, dm.ibsqlcod));
end;

procedure TForm_Cheques.BtnExcluirClick(Sender: TObject);
var iOrdem : integer;
begin
  inherited;
  iOrdem:= QBuscaItensCOD_CHEQUE.AsInteger;
  if Application.MessageBox('Confirma a Exclusão do Cheque?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
     begin
        try
          try
            with DelItem do
               begin
                  close;
                  Parambyname('cod_cheque').AsInteger  := StrToInt(Edit6.Text);
                  ExecSQL;
               end;
            IBTRAce.Commit;
          except
            IBTRAce.Rollback;
            showmessage('Erro ao Excluir o cheque');
          end;
        finally
          DelItem.Close;
          LimpaItens;
          BuscaItens;
        end;
     end;

end;

procedure TForm_Cheques.BtnGravarClick(Sender: TObject);
begin
  if IBTRAce.Active then
     IBTRAce.Commit;
  IBTRAce.StartTransaction;
   if BGrava = true then
     begin
        try
         try
            with QInsCheque do
               begin
                  close;
                  Parambyname('cod_cheque').AsInteger     := strtoint(Edit6.Text);
                  Parambyname('valor').Value              := CurrencyEdit3.Value;
                  Parambyname('data_emissao').AsDate      := DateEdit1.Date;
                  Parambyname('data_Vencimento').AsDate   := DateEdit2.Date;
                  if CheckBox1.Checked = True then
                  Parambyname('pago').AsString            := 'T'
                  ELSE
                  Parambyname('pago').AsString            := 'F';
                  Parambyname('origem').AsString            := 'AV';
                  Parambyname('documento_origem').Value     := Null;
                  Parambyname('Cod_conta').AsInteger         := StrToInt(conta.Text);
                  if CheckBox1.Checked = True then
                  Parambyname('comp_na_inclusao').Asstring     := 'T'
                  else
                  Parambyname('comp_na_inclusao').Asstring     := 'F';
                  Parambyname('data_compensacao').AsDate      := DATE;
                  Parambyname('historico').Asstring           := 'Lançamento de Cheque Emitido';
                  Parambyname('numero_cheque').AsInteger      := StrToInt(Edit2.Text);
                  Parambyname('cod_usuario').AsInteger        := DM.sds_usuariosCodigo.asinteger;
                  Parambyname('cod_empresa').AsInteger        := DM.sds_empresaCodigo.asInteger;
                  Parambyname('Troco').AsString               := 'F';
                  Parambyname('Favorecido').Asstring          := Edit4.Text;
                  Parambyname('cod_venda').Value              := Null;
                  Parambyname('cod_compra').VALUE             := null;
                  Parambyname('observacao').AsString          := trim(Edit5.Text);
                  Parambyname('COD_CLI').AsString             := trim(EdtCodCliente.Text);
                  Parambyname('COD_FORN').AsString            := trim(EdtCodForn.Text);
                  Parambyname('PL_conta').AsInteger           := StrToInt(Econta.Text);
                  ExecSQL;
                 // panel5.Enabled:= false;
             //     panel6.Enabled:= false;
               end;
            IBTRAce.Commit;
           // Botoes('G');
          except
            IBTRAce.Rollback;
            showmessage('Erro ao Gravar o Cheque');
           // panel5.Enabled:= false;
            panel6.Enabled:= true;
          end;

        finally
          QInsCheque.Close;
          btngravar.Enabled   := False;
          btnexcluir.Enabled  := False;
        end;
        bGrava := False;
     end
    else
     begin
     //   try
          try
            with QupdCheques do
               begin
                  close;
                  Parambyname('valor').Value              := CurrencyEdit3.Value;
                  Parambyname('data_emissao').AsDate      := DateEdit1.Date;
                  Parambyname('data_Vencimento').AsDate   := DateEdit2.Date;
                  if CheckBox1.Checked = True then
                  Parambyname('pago').AsString            := 'T'
                  ELSE
                  Parambyname('pago').AsString            := 'F';
                  Parambyname('origem').AsString            := 'AV';
                  Parambyname('documento_origem').Value     := Null;
                  Parambyname('Cod_conta').AsInteger         := StrToInt(conta.Text);
                  if CheckBox1.Checked = True then
                  Parambyname('comp_na_inclusao').Asstring     := 'T'
                  ELSE
                  Parambyname('comp_na_inclusao').Asstring     := 'F';
                  Parambyname('data_compensacao').AsDate      := DATE;
                  Parambyname('historico').Asstring           := 'Lançamento de Cheque Emitido';
                  Parambyname('numero_cheque').AsInteger      := StrToInt(Edit2.Text);
                  Parambyname('cod_usuario').AsInteger        := DM.sds_usuariosCodigo.asinteger;
                  Parambyname('cod_empresa').AsInteger        := DM.sds_empresaCodigo.asInteger;
                  Parambyname('Troco').AsString               := 'F';
                  Parambyname('Favorecido').Asstring          := Edit4.Text;
                  Parambyname('cod_venda').Value              := Null;
                  Parambyname('cod_compra').VALUE             := null;
                  Parambyname('observacao').AsString          := trim(Edit5.Text);
                  Parambyname('COD_CLI').AsString             := trim(EdtCodCliente.Text);
                  Parambyname('COD_FORN').AsString            := trim(EdtCodForn.Text);
                  Parambyname('cod_cheque').AsInteger         := strtoint(Edit6.Text);
                  Parambyname('PL_conta').AsInteger           := StrToInt(Econta.Text);
                  ExecSQL;
               end;
            IBTRAce.Commit;
           // panel6.Enabled:= true;
           // Botoes('G');
       {   except
            IBTRAce.Rollback;
            showmessage('Erro ao Gravar o cheque');
          end;   }


        finally
          QupdCheques.Close;
          bGrava := true;
          btnexcluir.Enabled:= true;
        end;

     end;
          if CheckBox1.Checked = True then
        BEGIN
                    {dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open; }

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC, N_CHEQUE)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC, :N_CHEQUE )');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      := DateEdit2.Date;   // DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := CurrencyEDIT3.VALUE;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat :=CurrencyEDIT3.VALUE;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 99; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto do Cheque Nº - '+ EDIT2.TEXT + ' Da conta nº '+ EDIT1.TEXT;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CMP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.parambyname('N_CHEQUE').AsString  := Edit2.TEXT;

                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
             end;

  Botoes('G');
  BuscaItens;
  LimpaItens;
  panel6.Enabled:= false;
end;

procedure TForm_Cheques.BtnSairClick(Sender: TObject);
begin
close;
end;

procedure TForm_Cheques.contaExit(Sender: TObject);
begin
IF CONTA.TEXT > '' then
begin
if DM.SDS_Conta_Bancaria.locate('CODIGO', (conta.Text),[])= True then
begin
Edit1.Text := DM.SDS_Conta_BancariaCONTA.Text +'-'+ DM.strngfldSDS_Conta_BancariaDIGITO.Text;
end else
if not DM.SDS_Conta_Bancaria.locate('CODIGO', (conta.Text),[])= True then
begin
  ShowMessage('Conta não Localizada');
end;
end;
end;


procedure TForm_Cheques.contaButtonClick(Sender: TObject);
begin
   FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
     // FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsContaBancaria.ShowModal;
      if not DM.SDS_conta_bancaria.Eof then
      begin
       conta.Text := dm.SDS_Conta_BancariaCODIGO.Text;
       Edit1.Text := DM.SDS_Conta_BancariaCONTA.Text +'-'+ DM.strngfldSDS_Conta_BancariaDIGITO.Text;
      end;
end;

procedure TForm_Cheques.CurrencyEdit3Exit(Sender: TObject);
begin
Texto := FloatToStr(CurrencyEdit3.Value);
edTVALOR.Text := NumeroParaExtenso(StrToFloat(texto));
end;

procedure TForm_Cheques.FormKeyPress(Sender: TObject; var Key: Char);
begin
if  not (ActiveControl is TCustomGrid) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TForm_Cheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
Form_Cheques := nil;
end;

procedure TForm_Cheques.BtnAlterarClick(Sender: TObject);
begin
 if Application.MessageBox('Confirma a alteração do Cheque?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
  begin
       try
          try
            with DEL_CHEQUE do
               begin
                  close;
                  Parambyname('n_cheque').AsString  := (Edit2.Text);
                  Parambyname('CONTA').AsInteger    := StrToInt(CONTA.Text);
                  ExecSQL;
               end;
            IBTRAce.Commit;
          except
            IBTRAce.Rollback;
            showmessage('Erro ao movimento do cheque');
          end; 
        finally
          DEL_CHEQUE.Close;
        end;

  bGrava:= false;
  Botoes('A');
  Panel6.Enabled:= true;
  conta.SetFocus;
  end;
end;

procedure TForm_Cheques.BtnCancelarClick(Sender: TObject);
begin
  Panel7.SetFocus;
  Botoes('C');
end;

procedure TForm_Cheques.BtnConsultarClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsCheque, FrmConsCheque);
  FrmConsCheque.Tag:= 0;
  FrmConsCheque.ShowModal;
  bGrava := False;
end;

procedure TForm_Cheques.FormShow(Sender: TObject);
begin
DM.SDS_Conta_Bancaria.Active := false;
DM.SDS_Conta_Bancaria.Active := True;

  DM.SDS_PlContas.Active := FALSE;
  DM.SDS_PlContas.DataSet.CommandText :=('SELECT * FROM PLANOCONTAS WHERE INDICADOR = ''A''');
  DM.SDS_PlContas.Active := TRUE;

end;

procedure TForm_Cheques.brelatorioClick(Sender: TObject);
begin
 Application.CreateForm(TFormChequeAvu, FormChequeAvu);
  FormChequeAvu.RLReport1.Prepare;
  FormChequeAvu.RLReport1.PreviewModal;
end;

procedure TForm_Cheques.EdtCodClienteChange(Sender: TObject);
begin
IF (EdtCodCliente.Text>='A') AND (EdtCodCliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (EdtCodCliente.Text>='0') AND (EdtCodCliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF EdtCodCliente.Text='' THEN
EDIT3.Text:=''
end;

procedure TForm_Cheques.BtnConsCliClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if EdtCodCliente.Text >'' then
     begin
      FormConsClientes.Edit1.Text := EdtCodCliente.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
      FormConsClientes.ShowModal;
      EdtCodClienteChange(Sender);
      EdtCodCliente.Text := DM.SDS_ClientesCODIGO.Text;
      EdtNomeCli.Text:= DM.SDS_ClientesNOME_RS.Text;
    end;
end;

procedure TForm_Cheques.BtnConsEmitenteClick(Sender: TObject);
begin
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
      
      EdtNomeForn.Text    := DM.SDS_FornecedoresNOME.Text;
      EdtCodForn.Text := DM.SDS_FornecedoresCODIGO.Text;
end;

procedure TForm_Cheques.EdtCodFornChange(Sender: TObject);
begin
IF (EdtCodForn.Text>='A') AND (EdtCodForn.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (EdtCodForn.Text>='0') AND (EdtCodForn.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF EdtCodForn.Text='' THEN
EDIT3.Text:=''
end;

procedure TForm_Cheques.EdtCodClienteExit(Sender: TObject);
begin
 If  EdtCodCliente.Text >'' then
  BEGIN

 if edit3.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.add('select * from clientes where NOME_RS like ' + #39 + '%' + EdtCodCliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',EdtCodCliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  BtnConsCliClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
   EdtNomeCli.Text:= DM.SDS_ClientesNOME_RS.Text;
   end;
    except
     ShowMessage('erro ao consultar');
    end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
 IF EdtCodCliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 EdtCodCliente.SetFocus;
end else

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + EdtCodCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(EdtCodCliente.Text),[]);
  EdtCodCliente.Text := RemoveChar(EdtCodCliente.Text);


IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
EdtCodCliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin

  EdtNomeCli.TEXT   := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;

end;
end;
end;
end;

procedure TForm_Cheques.EdtCodFornExit(Sender: TObject);
begin
 If  EdtCodForn.Text >'' then
  BEGIN

 if edit3.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Fornecedores.Active := false;
   dm.SDS_Fornecedores.SQL.Clear;
   dm.SDS_Fornecedores.SQL.Add('select * from fornecedores where NOME like ' + #39 + '%' + EdtCodForn.Text + '%' + #39+'order by NOME ASC');
   dm.SDS_Fornecedores.Active := True;
   ACHOU := dm.SDS_Fornecedores.locate('nome',EdtCodForn.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  BtnConsEmitenteClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
   EdtNomeForn.Text:= dm.SDS_FornecedoresNOME.Text;
   end;
    except
     ShowMessage('erro ao consultar');
    end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
 IF EdtCodForn.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 EdtCodForn.SetFocus;
end else

  dm.SDS_Fornecedores.Active := false;
  dm.SDS_Fornecedores.SQL.Clear;
  dm.SDS_Fornecedores.SQL.Add('select * from fornecedores where CODIGO like ' + #39 + '%' + EdtCodForn.Text + '%' + #39+'order by NOME ASC');
  dm.SDS_Fornecedores.Active := True;
  ACHOU:= dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(EdtCodForn.Text),[]);
  EdtCodForn.Text := RemoveChar(EdtCodForn.Text);


IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
EdtCodForn.SetFocus;
end;


IF ACHOU=TRUE THEN
begin

  EdtNomeForn.Text    := dm.SDS_Fornecedores.Fieldbyname('NOME').AsString;

end;
end;
end else
begin
   dm.SDS_Fornecedores.Active := false;
   dm.SDS_Fornecedores.SQL.Clear;
   dm.SDS_Fornecedores.SQL.Add('select * from fornecedores order by NOME ASC');
   dm.SDS_Fornecedores.Active := True;

end;
end;

procedure TForm_Cheques.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=vk_f8 then
begin
   brelatorioClick(Sender);
end;
end;

procedure TForm_Cheques.bloccontaClick(Sender: TObject);
begin
 FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;

  econta.Text := DM.SDS_PLCONTASCODIGO.TEXT;
  enomeconta.Text := DM.SDS_PlCONTASnome.TEXT;

end;

procedure TForm_Cheques.econtaExit(Sender: TObject);
begin
TEdit(Sender).Color := clwindow;
 // econta.Text := frmprincipal.zerarcodigo(econta.Text, 6);
  if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
      bloccontaClick(Form_Cheques)
    else
    begin
      Edit5.setfocus;
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end  else
    blocconta.setfocus;
end;

procedure TForm_Cheques.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

end.
