unit contaspagar_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, TFlatPanelUnit,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, DB, Menus, wwdbedit, Wwdotdot, Wwdbcomb,
   DBCtrls, XDBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzEdit, RzBtnEdt, AdvGlowButton, RxCurrEdit, RxToolEdit,
  AdvPanel;

type
  Tfrmcontaspagar_ficha = class(TForm)
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
    Label7: TLabel;
    Edit7: TEdit;
    BitBtn2: TBitBtn;
    wwDBGrid1: TXDBGrid;
    dsgrade: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FlatPanel2: TAdvPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Label8: TLabel;
    RTOTAL: TRxCalcEdit;
    Bevel3: TBevel;
    query: TFDQuery;
    comboespecie: TComboBox;
    qrgrade: TFDQuery;
    qrgradeVENCIMENTO: TDateField;
    qrgradeDOCUMENTO: TStringField;
    qrgradeHISTORICO: TStringField;
    qrgradeC: TStringField;
    qrgradeE: TStringField;
    qrgradeESPECIE: TStringField;
    qrgradeCOD_CONTA: TIntegerField;
    Label56: TLabel;
    EnomeCentro: TEdit;
    eCentro: TRzButtonEdit;
    Label57: TLabel;
    EImovel: TRzButtonEdit;
    EnomeImovel: TEdit;
    qrgradeVALOR: TFMTBCDField;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorExit(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure qrgradeAfterInsert(DataSet: TDataSet);
    procedure qrgradeAfterEdit(DataSet: TDataSet);
    procedure qrgradeAfterPost(DataSet: TDataSet);
    procedure econtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eCentroButtonClick(Sender: TObject);
    procedure eCentroKeyPress(Sender: TObject; var Key: Char);
    procedure EImovelButtonClick(Sender: TObject);
    procedure EImovelKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_ficha: Tfrmcontaspagar_ficha;
  VALOR_A: REAL;

implementation

uses principal, contaspagar, ModulodeDados,
  ConsPlanoContas, Ubibli1, xloc_fornecedor, Centro_Custo, ModuleDados1,
  ConsProdutos, importa_nfe, uDMMovimentacao, PesquisaImoveis,
  loc_centrocusto;

{$R *.dfm}

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

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

procedure Tfrmcontaspagar_ficha.DateEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  if DateEdit1.Text = '  /  /    ' then
    DateEdit1.Date := Date
end;

procedure Tfrmcontaspagar_ficha.DateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  
end;

procedure Tfrmcontaspagar_ficha.blocfornecedorClick(Sender: TObject);
begin
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);

  efornecedor.Text := DM.SDS_FORNECEDOREScodigo.asstring;
  enomefornecedor.Text := DM.SDS_FORNECEDORESnome.asstring;

  econta.setfocus;
end;

procedure Tfrmcontaspagar_ficha.bloccontaClick(Sender: TObject);
begin
  FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;

  econta.Text := DM.SDS_PLCONTASCODIGO.TEXT;
  enomeconta.Text := DM.SDS_PlCONTASnome.TEXT;

  Edit5.setfocus;

end;

procedure Tfrmcontaspagar_ficha.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontaspagar_ficha.efornecedorExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  //efornecedor.Text := frmprincipal.zerarcodigo(efornecedor.Text, 6);
  if efornecedor.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_FORNECEDORES, efornecedor.Text, 'codigo') then
      blocfornecedorClick(frmcontaspagar_ficha)
    else
    begin
      efornecedor.Text := DM.sds_fornecedores.fieldbyname('codigo').asstring;
      enomefornecedor.Text := DM.sds_fornecedores.fieldbyname('nome').asstring;
      econta.setfocus;

    end;
  end else
   blocfornecedor.setfocus;
end;

procedure Tfrmcontaspagar_ficha.econtaExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
 // econta.Text := frmprincipal.zerarcodigo(econta.Text, 6);
  if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
      bloccontaClick(frmcontaspagar_ficha)
    else
    begin
      eCentro.setfocus;
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end  else
    eCentro.setfocus;

end;

procedure Tfrmcontaspagar_ficha.Edit5Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  //Edit5.Text := frmprincipal.zerarcodigo(Edit5.Text, 6);
end;

procedure Tfrmcontaspagar_ficha.Edit5Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_ficha.BitBtn2Click(Sender: TObject);
var
  qtde, i: integer;
  diferenca, novo, soma: REAL;
begin
  i := 1;
  try
    qrgrade.close;
    qrgrade.sql.clear;
    qrgrade.sql.add('delete from c000047');
    qrgrade.execsql;
    qrgrade.sql.clear;
    qrgrade.sql.add('select * from c000047');
    qrgrade.open;
    qtde := strtoint(Edit7.Text);
    while qtde <> 0 do
    begin
      qrgrade.Insert;
      qrgrade.fieldbyname('vencimento').asdatetime := incmonth(DateEdit1.Date, i);
      qrgrade.fieldbyname('historico').asstring := Edit6.Text;
      qrgrade.fieldbyname('documento').asstring := Edit5.Text + '/' + inttostr(i);
      if RVALOR.value <> 0 then
        qrgrade.fieldbyname('valor').asfloat := RVALOR.value / strtoint(Edit7.Text);
      qrgrade.fieldbyname('valor').asfloat :=  ExatoCurrency(qrgrade.fieldbyname('valor').asfloat, 2);
      qrgrade.fieldbyname('ESPECIE').asstring := comboespecie.TEXT;
      qrgrade.fieldbyname('COD_CONTA').asstring := econta.TEXT;
      qrgrade.post;
      i := i + 1;
      qtde := qtde - 1;
    end;
    qrgrade.Refresh;
    RTOTAL.value := RVALOR.value;

    // acerto arredondamento

    soma := 0;
    qrgrade.First;
    while not qrgrade.Eof do
    begin
      soma := soma + qrgrade.fieldbyname('valor').asfloat;
      qrgrade.Next
    end;

    diferenca := RVALOR.value - soma;
    novo := diferenca;
    if diferenca > 0 then
    begin
      qrgrade.Last;
      qrgrade.Edit;
      qrgrade.fieldbyname('valor').asfloat := qrgrade.fieldbyname('valor')
        .asfloat + diferenca;
      qrgrade.post;
    end;
    qrgrade.Refresh;
    RTOTAL.value := RVALOR.value;
    qrgrade.First;
    wwDBGrid1.setfocus;   
  except
    showmessage
      ('Houve erro ao tentar gerar as prestações! Verifique a quantidade informada ou o valor da nota fiscal!');
  end;
end;

procedure Tfrmcontaspagar_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CAFREE;
//  frmcontaspagar_ficha := nil;
end;

procedure Tfrmcontaspagar_ficha.FormShow(Sender: TObject);
begin
  qrgrade.close;
  qrgrade.sql.clear;
  qrgrade.sql.add('delete from c000047');
  qrgrade.execsql;
  qrgrade.sql.clear;
  qrgrade.sql.add('select * from c000047');
  qrgrade.open;
  econta.Text := dm.SDS_CONFIGURACOESPLANO_DUPLICATA_NFE.Text;

    DM.SDS_PlContas.Active := FALSE;
  DM.SDS_PlContas.DataSet.CommandText := ('SELECT * FROM PLANOCONTAS WHERE INDICADOR = ''A''');
  DM.SDS_PlContas.Active := TRUE;

                     if econta.Text > '' then
                    begin
                      if  formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
                      then
                      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
                      end;
end;

procedure Tfrmcontaspagar_ficha.bgravarClick(Sender: TObject);
var
  valor_c, estoque, custo, MARGEM, VENDA, NOVO_CUSTO: REAL;

begin

  (* ********************* verificar se existe a mesma nota para o mesmo forncedor ********************** *)
  query.close;
  query.sql.clear;
  query.sql.add('select * from CONTAS_APAGAR where notafiscal = ''' + Edit5.Text +
    ''' and codfornecedor = ''' + efornecedor.Text +
    ''' and data_vencimento = :vdat');
  query.Params.ParamByName('vdat').asdatetime := qrgradeVENCIMENTO.asdatetime;
  query.open;
  if query.recordcount > 0 then
  begin
    if application.messagebox
      (pchar('Já existe uma NOTA FISCAL Cadastrada com este Número' + #13 +
      'para este FORNECEDOR e com esse VENCIMENTO!' + #13 +
      'Deseja Continuar Com a Operação?'), 'Aviso', mb_yesno + MB_ICONWARNING) = idno
    then
      exit;
  end;

  if (qrgrade.State = dsedit) then
    qrgrade.post
  else
  begin
    if qrgrade.State = dsinsert then
    begin
      if qrgrade.fieldbyname('valor').asfloat <> 0 then
        qrgrade.post;
    end;
  end;

  if RVALOR.value <> 0 then
    valor_c := RVALOR.value
  else
    valor_c := RTOTAL.value;

  valor_c := RTOTAL.value - valor_c;

  if (valor_c > 0.05) or (valor_c < -0.05) then
  begin
    application.messagebox
      ('O valor total das prestação não confere com o valor da Nota Fiscal! Favor verificar!',
      'Atenção', mb_ok + MB_ICONWARNING);
    wwDBGrid1.setfocus;
  end
  else
  begin
    qrgrade.Refresh;
    qrgrade.First;
    while not qrgrade.Eof do
    begin
     dm.ProxCod.Close;
     dm.ProxCod.SQL.Clear;
     dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONTAS_APAGAR');
     DM.ProxCod.Open;


      FRMCONTASPAGAR.qrcontaspagar.Insert;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codigo').asINTEGER           :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('data_emissao').asdatetime    :=   DateEdit1.Date;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('data_vencimento').asdatetime := qrgrade.fieldbyname('vencimento').asdatetime;
     // FRMCONTASPAGAR.qrcontaspagar.fieldbyname('data_PAGAMENTO').text      := '01/01/1900';
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codconta').asstring          :=   qrgrade.fieldbyname('COD_CONTA').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codfornecedor').asstring     :=   efornecedor.Text;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('valor').asfloat              := qrgrade.fieldbyname('valor').asfloat;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('valorpago').asfloat          := 0;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('liquido').asfloat            := qrgrade.fieldbyname('valor').asfloat;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('desconto').asfloat           := 0;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('acrescimo').asfloat          := 0;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('documento').asstring         := qrgrade.fieldbyname('documento').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('notafiscal').asstring        :=   edit5.text;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('historico').asstring         := qrgrade.fieldbyname('historico').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('C').asstring                 :=   qrgrade.fieldbyname('C').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('E').asstring                 :=  qrgrade.fieldbyname('E').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('filtro').aSINTEGER           := 0;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('especie').asstring           := qrgrade.fieldbyname('especie').asstring;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('situacao').aSINTEGER         := 1;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codnota').value              := null;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('MOVIMENTO').value            := null;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('CODCAIXA').value             := null;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('cod_CENTRO_CUSTO').asstring  := eCentro.Text;
      FRMCONTASPAGAR.qrcontaspagar.fieldbyname('cod_IMOVEL').asstring        := EImovel.Text;
      // lancamento pelo grade
      //
      FRMCONTASPAGAR.qrcontaspagar.post;
      qrgrade.Next;

     formprincipal.log(codigo_usuario,'C.PAGAR',qrgrade.fieldbyname('documento').asstring,'INCLUIU',' Fornecedor: ' + efornecedor.Text);
    end;

    if EImovel.Text > '' then
    begin
        // BUSCA ESTOQUE
           if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;

          try
              with dm.qConsulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODPRO');
                    Parambyname('CODPRO').AsInteger:= StrToInt(EImovel.Text);
                    ExecSQL;
                    estoque:= fieldbyname('ESTOQUE').AsCurrency;
                    Custo :=  fieldbyname('PRECO_CUSTO').AsCurrency;
                    MARGEM :=  fieldbyname('MARGEM_LUCRO').AsCurrency;
                    VENDA :=  fieldbyname('PRECO_VENDA').AsCurrency;
                 end;
              dm.IBTransaction.Commit;
            except
              dm.IBTransaction.rollback;
              showmessage('Erro ao buscar o custo do produto');
            end;
           // Atualiza preços do custo e venda do imovel

           try

            if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
            dm.IBTransaction.StartTransaction;
            with dm.qConsulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('UPDATE PRODUTOS SET PRECO_VENDA =:VDA, PRECO_CUSTO =:CUSTO WHERE CODIGO = :CODPRO;');
                    NOVO_CUSTO := CUSTO + RVALOR.VALUE;
                    Parambyname('VDA').AsCurrency:= NOVO_CUSTO + (NOVO_CUSTO * MARGEM /100);
                    Parambyname('CUSTO').AsCurrency:= NOVO_CUSTO;
                    Parambyname('CODPRO').AsInteger:= StrToInt(EImovel.Text);
                    ExecSQL;
                 end;
              dm.IBTransaction.Commit;
             except
             dm.IBTransaction.rollback;
             showmessage('Erro ao atualizar o custo do produto/ imovel');
             end;
           end;

      close;
  end;
end;

procedure Tfrmcontaspagar_ficha.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_ficha.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.onclick(frmcontaspagar_ficha);
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterInsert(DataSet: TDataSet);
begin
// VALOR_A := 0;
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterEdit(DataSet: TDataSet);
begin
 VALOR_A := qrgrade.fieldbyname('VALOR').asfloat;
end;

procedure Tfrmcontaspagar_ficha.qrgradeAfterPost(DataSet: TDataSet);
var
  soma: REAL;
  registro: integer;
begin
{ RTOTAL.VALUE :=
    RTOTAL.VALUE +
    QRGRADE.FIELDBYNAME('VALOR').ASFLOAT -
    VALOR_A;

  // acerto arredondamento
 { registro := qrgrade.RecNo;
  soma := 0;
  qrgrade.First;
  while not qrgrade.Eof do
  begin
    soma := soma + qrgrade.fieldbyname('valor').asfloat;
    qrgrade.Next
  end;
  qrgrade.Refresh;
  RTOTAL.value := soma;
  qrgrade.RecNo := registro;
  // RTOTAL.value := frmprincipal.Arredondar
  // (RTOTAL.value + qrgrade.fieldbyname('VALOR').asfloat - VALOR_A, 2);
  }
end;

procedure Tfrmcontaspagar_ficha.econtaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{IF (Key = VK_RETURN) or (Key = VK_TAB)  then
 begin
 If  Cliente.Text >'' then
  BEGIN

 if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Fornecedores.Active := false;
   dm.SDS_Fornecedores.SQL.Clear;
   dm.SDS_Fornecedores.sql.add('select * from fornecedores where NOME like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME ASC');
   dm.SDS_Fornecedores.Active := True;
   ACHOU := dm.SDS_Fornecedores.locate('nome',Cliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ClienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
   RXLabel6.Text:= dm.SDS_FornecedoresNOME.Text;
   end;
    except
     ShowMessage('erro ao consultar');
    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF Cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 Cliente.SetFocus;
end else

  dm.SDS_Fornecedores.Active := false;
  dm.SDS_Fornecedores.SQL.Clear;
  dm.SDS_Fornecedores.sql.add('select * from fornecedores where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME ASC');
  dm.SDS_Fornecedores.Active := True;
  ACHOU:= dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(Cliente.Text),[]);
  Cliente.Text := RemoveChar(Cliente.Text);


IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Cliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin

  RxLabel6.Text    := dm.SDS_Fornecedores.Fieldbyname('NOME').AsString;

end;
end;
end else
begin
   dm.SDS_Fornecedores.Active := false;
   dm.SDS_Fornecedores.SQL.Clear;
   dm.SDS_Fornecedores.sql.add('select * from fornecedores order by NOME ASC');
   dm.SDS_Fornecedores.Active := True;

end;
end;   }
end;

procedure Tfrmcontaspagar_ficha.eCentroButtonClick(Sender: TObject);
begin
  frmloc_centro := tfrmloc_centro.create(self);
  frmloc_centro.showmodal;

  eCentro.Text := DM1.Sds_CentroCustoCOD_CENTRO.TEXT;
  EnomeCentro.Text := DM1.Sds_CentroCustoDESCRICAO.TEXT;
  econta.Text := DM1.Sds_CentroCustoCOD_PLANO.Text;
  EImovel.SetFocus;

end;

procedure Tfrmcontaspagar_ficha.eCentroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
   if eCentro.Text > '' then
   begin
    if not formprincipal.Locregistro(DM1.Sds_CentroCusto, eCentro.Text, 'COD_CENTRO')
    then
      eCentroButtonClick(frmimporta_nfe)
    else
    begin
      EnomeCentro.Text := DM1.Sds_CentroCusto.fieldbyname('DESCRICAO').asstring;
      EImovel.SetFocus;
    end;
   end  else
     EImovel.SetFocus;
  end;
end;

procedure Tfrmcontaspagar_ficha.EImovelButtonClick(Sender: TObject);
begin

 FPesquisaImovel:=TFPesquisaImovel.Create(self);
 FPesquisaImovel.Showmodal;

 if NOT DMMovimentacao.dsImovel.DataSet.IsEmpty then
 begin
 EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
 EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
 Edit5.SetFocus;
 end;
end;

procedure Tfrmcontaspagar_ficha.EImovelKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
   begin
      DMMovimentacao.qrImovel.open;
      IF EImovel.Text > '' then
      BEGIN
      If DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
       EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
       EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
       Edit5.SetFocus;
      end;
      if not DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
      EImovelButtonClick(frmimporta_nfe);
      end;
      end else
      BEGIN
      Edit5.SetFocus;
      end;
      end;
end;

end.
