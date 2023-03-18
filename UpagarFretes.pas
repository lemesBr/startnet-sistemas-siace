unit UpagarFretes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid,
  DB,  Mask, wwdblook, XDBGrids, Wwkeycb,  RXCtrls,
  RzEdit, RzBtnEdt, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxToolEdit,
  RxCurrEdit, AdvGlowButton, AdvPanel, TFlatPanelUnit;

type
  TFormPagarFretes = class(TForm)
    Panel3: TAdvPanel;
    bpagamento: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bextornar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    qrcontaspagar: TFDQuery;
    dscontaspagar: TDataSource;
    wwDBGrid1: TXDBGrid;
    bdesliga_filtro: TBitBtn;
    Panel1: TAdvPanel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel1: TBevel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label6: TLabel;
    DBText4: TDBText;
    qrcontaspagarCOD_EMPRESA: TIntegerField;
    qrcontaspagarCOD_LACTO: TIntegerField;
    qrcontaspagarDATA_LACTO: TDateField;
    qrcontaspagarN_MINUTA: TIntegerField;
    qrcontaspagarCOD_FRETEIRO: TIntegerField;
    qrcontaspagarQTDE_ANIMAIS: TIntegerField;
    qrcontaspagarCOD_VEICULO: TIntegerField;
    qrcontaspagarORIGEM_FRETE: TStringField;
    qrcontaspagarDESTINO_FRETE: TStringField;
    qrcontaspagarGERA_IMPOSTO: TStringField;
    qrcontaspagarUSER: TStringField;
    qrcontaspagarCOD_PAGADOR: TIntegerField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarDATA_BAIXA: TDateField;
    qrcontaspagarCOD_CAIXA: TIntegerField;
    qrcontaspagarSITUACAO: TIntegerField;
    Label1: TLabel;
    DBText5: TDBText;
    Bevel5: TBevel;
    FlatPanel7: TFlatPanel;
    Bevel6: TBevel;
    pselecao: TFlatPanel;
    Label19: TLabel;
    rselecao: TRxCalcEdit;
    BTOTAL: TButton;
    Qrsoma: TFDQuery;
    Panel4: TAdvPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label8: TLabel;
    Image2: TImage;
    Bevel15: TBevel;
    Label15: TLabel;
    Image6: TImage;
    Image7: TImage;
    Bevel14: TBevel;
    Label22: TLabel;
    Bevel13: TBevel;
    Label23: TLabel;
    Image8: TImage;
    Bevel16: TBevel;
    rpagar: TRxCalcEdit;
    rpaga: TRxCalcEdit;
    Edit2: TEdit;
    QrValeComb: TFDQuery;
    qrcontaspagarDISTANCIA: TBCDField;
    qrcontaspagarVALOR_FRETE: TBCDField;
    qrcontaspagarVALOR_PAGO: TBCDField;
    qrcontaspagarIMPOSTO: TBCDField;
    qrcontaspagarCOD_CHEQUE: TIntegerField;
    qrcontaspagarLIQUIDO: TBCDField;
    Panel2: TAdvPanel;
    Label7: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    RxLabel6: TRxLabel;
    combo_situacao: TComboBox;
    combo_periodo: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    bitbtn1: TAdvGlowButton;
    Cliente: TRzButtonEdit;
    Label11: TLabel;
    veiculo: TRzButtonEdit;
    RxLabel1: TRxLabel;
    procedure bdesliga_filtroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bpagamentoClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure BTOTALClick(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1CellClick(Column: TXColumn);
    procedure bitbtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure veiculoButtonClick(Sender: TObject);
    procedure veiculoChange(Sender: TObject);
    procedure veiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bextornarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarFretes: TFormPagarFretes;
  valor, vale, combustivel, pedagio, CREDITO : Double;

implementation

uses ModulodeDados, fretes_pgto, ConsClientes, Ubibli1, Principal,
  xloc_veiculo, Uextornofretes;

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


procedure TFormPagarFretes.bdesliga_filtroClick(Sender: TObject);
begin
  rselecao.Value := 0;
 // pselecao.visible := false;

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add('select * from fretes where filtro = ''1''');
  qrcontaspagar.open;

  if qrcontaspagar.recordcount > 0 then

  begin
    qrcontaspagar.first;
    while not qrcontaspagar.Eof do
    begin

      if (qrcontaspagar.FieldByName('filtro').asstring = '1') and
        (qrcontaspagar.FieldByName('situacao').ASINTEGER <> 2) then
        rselecao.Value := rselecao.Value - qrcontaspagarLIQUIDO.asfloat;

      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '0';
      qrcontaspagar.post;

      qrcontaspagar.next;
    end;
    qrcontaspagar.first;
  end;
end;

procedure TFormPagarFretes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //dm.Conexao.Rollback;
  Action := CAFREE;
  FormPagarFretes :=nil;
end;

procedure TFormPagarFretes.FormShow(Sender: TObject);
begin

 // dm.Conexao.Rollback;

  bdesliga_filtroClick(FormPagarFretes);

  rselecao.Value := 0;
 // pselecao.visible := false;

  dateedit1.text := '01/' + copy(datetostr(incmonth(date, -1)), 4, 7);
  dateedit2.date := formprincipal.UltimoDiaMes(date);

 { frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.Add('select * from c000009 order by nome');
  frmmodulo.qrfornecedor.open;
  frmmodulo.qrfornecedor.indexfieldnames := 'nome';    }

 { frmmodulo.qrplano.close;
  frmmodulo.qrplano.sql.clear;
  frmmodulo.qrplano.sql.Add('select * from c000035 order by conta');
  frmmodulo.qrplano.open;
  frmmodulo.qrplano.indexfieldnames := 'conta';   }

  qrcontaspagar.close;
  qrcontaspagar.SQL.clear;
  qrcontaspagar.SQL.add('update fretes set FILTRO = ''' + '0' + '''');
  qrcontaspagar.execsql;

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add
    ('SELECT * FROM fretes WHERE SITUACAO = 1 ORDER BY DATA_LACTO');
  qrcontaspagar.open;

   btotalClick(FormPagarFretes);

   bitbtn1.Click;

  wwDBGrid1.SETFOCUS;
end;

procedure TFormPagarFretes.bpagamentoClick(Sender: TObject);
begin
 //if rselecao.Value = 0 then
  // wwDBGrid1CellClick(sender);

  if Cliente.Text = '' then
  begin
    showmessage('Favor selecionar um freteiro para realizar pagamentos!');
    Cliente.SetFocus;
    exit;
  end;

   if veiculo.Text = '' then
  begin
    showmessage('Favor selecionar um veiculo para realizar pagamentos!');
    Cliente.SetFocus;
    exit;
  end;

  if not qrcontaspagar.locate('filtro', 1, [loCaseInsensitive]) then
  begin
    showmessage('Favor selecionar uma conta!');
    exit;
   end;


 // if rselecao.Value = 0 then
  //  wwDBGrid1CellClick(sender);

    if dm.SDS_Usuarios.FieldByName('situacao').ASINTEGER = 1 then
    // caixa geral aberto
    begin




      if qrcontaspagar.State = dsedit then
        qrcontaspagar.post;
    //  dm.Conexao.commit;

      qrcontaspagar.Refresh;

      FormFretes_pgto := tFormFretes_pgto.create(self);
      FormFretes_pgto.qrcontaspagar.close;
      FormFretes_pgto.qrcontaspagar.sql.clear;
      FormFretes_pgto.qrcontaspagar.sql.Add
        ('select * from fretes where situacao = 1 and filtro = 1 order by data_lacto');
      FormFretes_pgto.qrcontaspagar.open;
      FormFretes_pgto.qrcontaspagar.first;
      valor := 0;
      while not FormFretes_pgto.qrcontaspagar.Eof do
      begin
        FormFretes_pgto.qrcontaspagar.edit;
       // FormFretes_pgto.qrcontaspagar.FieldByName('desconto').asfloat := 0;
      //  FormFretes_pgto.qrcontaspagar.FieldByName('acrescimo').asfloat := 0;
        FormFretes_pgto.qrcontaspagar.FieldByName('valor_pago').asfloat := FormFretes_pgto.qrcontaspagar.FieldByName('liquido').asfloat;
        FormFretes_pgto.qrcontaspagar.post;
        valor := valor + FormFretes_pgto.qrcontaspagar.FieldByName
          ('liquido').asfloat;
        FormFretes_pgto.qrcontaspagar.next;
      end;

      QrValeComb.close;
      QrValeComb.sql.clear;
      QrValeComb.sql.Add('select sum(saldo_atual) apagar ' + // sum_0 A VENCER
        ' from valetroco where tipo = ''C'' and situacao = 1 and data >= :datai and data <= :dataf  and cod_cliente = :cod_cli and cod_veiculo = :cod_veiculo');
      QrValeComb.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
      QrValeComb.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
      QrValeComb.Params.ParamByName('cod_cli').AsInteger := StrToInt(Cliente.text);
      QrValeComb.Params.ParamByName('cod_veiculo').AsInteger := StrToInt(veiculo.text);

      QrValeComb.Open;

      combustivel:= QrValeComb.FieldByName('apagar').asfloat;

      QrValeComb.close;
      QrValeComb.sql.clear;
      QrValeComb.sql.Add('select sum(saldo_atual) apagar ' + // sum_0 A VENCER
        ' from valetroco where tipo = ''V'' and situacao = 1 and data >= :datai and data <= :dataf and cod_cliente = :cod_cli and cod_veiculo = :cod_veiculo');
      QrValeComb.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
      QrValeComb.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
      QrValeComb.Params.ParamByName('cod_cli').AsInteger := StrToInt(Cliente.text);
      QrValeComb.Params.ParamByName('cod_veiculo').AsInteger := StrToInt(veiculo.text);
      QrValeComb.open;

      VALE:= QrValeComb.FieldByName('apagar').asfloat;

      QrValeComb.close;
      QrValeComb.sql.clear;
      QrValeComb.sql.Add('select sum(saldo_atual) apagar ' + // sum_0 A VENCER
        ' from valetroco where tipo = ''P'' and situacao = 1 and data >= :datai and data <= :dataf and cod_cliente = :cod_cli and cod_veiculo = :cod_veiculo');
      QrValeComb.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
      QrValeComb.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
      QrValeComb.Params.ParamByName('cod_cli').AsInteger := StrToInt(Cliente.text);
      QrValeComb.Params.ParamByName('cod_veiculo').AsInteger := StrToInt(veiculo.text);
      QrValeComb.open;

      pedagio:= QrValeComb.FieldByName('apagar').asfloat;


      QrValeComb.close;
      QrValeComb.sql.clear;
      QrValeComb.sql.Add('select sum(saldo_atual) apagar ' +
        ' from valetroco where tipo = ''A'' and situacao = 1 and data >= :datai and data <= :dataf and cod_cliente = :cod_cli and cod_veiculo = :cod_veiculo');
      QrValeComb.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
      QrValeComb.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
      QrValeComb.Params.ParamByName('cod_cli').AsInteger := StrToInt(Cliente.text);
      QrValeComb.Params.ParamByName('cod_veiculo').AsInteger := StrToInt(veiculo.text);
      QrValeComb.open;

      CREDITO:= QrValeComb.FieldByName('apagar').asfloat;


      FormFretes_pgto.RTOTAL_VALOR.Value := valor;
      FormFretes_pgto.r_vale.Value := vale;
      FormFretes_pgto.R_combustivel.Value := combustivel;
      FormFretes_pgto.R_pedagio.Value := pedagio;
      FormFretes_pgto.R_credito.Value := CREDITO;
      FormFretes_pgto.RTOTAL_PAGO.Value := valor - vale - combustivel + pedagio + credito;
      FormFretes_pgto.showmodal;
    end
    else
    begin
      application.messagebox('Caixa fechado! Favor verificar...', 'Atenção',
        mb_ok + MB_ICONWARNING);
    end;


  rselecao.Value := 0;

  if qrcontaspagar.recordcount > 0 then
  begin
    qrcontaspagar.first;
    while not qrcontaspagar.Eof do
    begin
      if qrcontaspagar.FieldByName('filtro').asstring = '1' then
        rselecao.Value := rselecao.Value + qrcontaspagarLIQUIDO.asfloat;
      qrcontaspagar.next;
    end;
    qrcontaspagar.first;
  end;

end;

procedure TFormPagarFretes.bfecharClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFormPagarFretes.BTOTALClick(Sender: TObject);
var
  situacao, fornecedor, periodo, veic: string;
begin

  wwDBGrid1.DATASOURCE := nil;

  if combo_periodo.itemindex = 0 then
    periodo := ' and data_lacto >= :datai and data_lacto <= :dataf ';
  if combo_periodo.itemindex = 1 then
    periodo := ' and data_baixa >= :datai and data_baixa <= :dataf ';

  //a pagar
  if combo_situacao.itemindex = 0 then
    situacao := ' and situacao = 1 ';

   if veiculo.Text = '' then
  veic := ''
  else
  veic := ' and COD_VEICULO = ''' + veiculo.text + '''';

  if combo_situacao.itemindex = 1 then
    situacao := ' and situacao = 2 ';
   {if combo_situacao.itemindex = 2 then
    situacao := ' and situacao = 2 '; }
  if combo_situacao.itemindex = 2 then
    situacao := '';

  if Cliente.TEXT = '' then
    fornecedor := ''
  else
    fornecedor := ' and cod_freteiro = ''' + dm.SDS_Clientes.FieldByName
      ('codigo').asstring + '''';

  Qrsoma.close;
  Qrsoma.sql.clear;
  Qrsoma.sql.Add('select sum(liquido) apagar, ' + // sum_0 A VENCER
    '(select sum(VALOR_PAGO) VALORPAGO from fretes where situacao = 2 ' +
    periodo + fornecedor + situacao +  veic + ') ' + // column_
    'from fretes where situacao = 1 ' + periodo + fornecedor + situacao+ veic);
  Qrsoma.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
  Qrsoma.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  Qrsoma.open;

  rpagar.Value := Qrsoma.FieldByName('apagar').asfloat;
  rpaga.Value := Qrsoma.FieldByName('VALORPAGO').asfloat;

  wwDBGrid1.DATASOURCE := dscontaspagar;
  rselecao.Value :=0;

end;

procedure TFormPagarFretes.ClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if Cliente.Text >'' then
     begin
      FormConsClientes.Edit1.Text := Cliente.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
      FormConsClientes.ShowModal;
      ClienteChange(Sender);
      Cliente.Text := DM.SDS_ClientesCODIGO.Text;
      RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;


      end;

end;

procedure TFormPagarFretes.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormPagarFretes.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
IF Key = #13 then
 begin
 If  Cliente.Text >'' then
  BEGIN

 if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ClienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
   RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
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

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(Cliente.Text),[]);
  Cliente.Text := RemoveChar(Cliente.Text);


IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Cliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin

  RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;

end;
end;
end;
end;
end;

procedure TFormPagarFretes.wwDBGrid1CellClick(Column: TXColumn);
begin
try
    if qrcontaspagar.FieldByName('filtro').asstring = '1' then
    begin
      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '0';
      rselecao.Value := rselecao.Value - qrcontaspagar.FieldByName
        ('LIQUIDO').asfloat;
      qrcontaspagar.post;
    end
    else
    begin
      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '1';
      rselecao.Value := rselecao.Value + qrcontaspagar.FieldByName
        ('liquido').asfloat;
      qrcontaspagar.post;
    end;
  except
    application.messagebox
      ('Esta conta está sendo utilizada em outro terminal! Aguarde...',
      'Atenção', mb_ok + mb_iconerror);

  end;  
end;

procedure TFormPagarFretes.bitbtn1Click(Sender: TObject);
var
  situacao, fornecedor, periodo, veic: string;
begin
  bdesliga_filtroClick(FormPagarFretes);

  if combo_situacao.itemindex = 0 then
    situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then
    situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 2 then
    situacao := '';

  if cliente.TEXT = '' then
    fornecedor := ''
  else
    fornecedor := ' and cod_freteiro = ''' + Cliente.text + '''';

  if veiculo.Text = '' then
  veic := ''
  else
  veic := ' and COD_VEICULO = ''' + veiculo.text + '''';

  if combo_periodo.itemindex = 0 then
    periodo := ' and data_lacto >= :datai and data_lacto <= :dataf ';
  if combo_periodo.itemindex = 1 then
    periodo := ' and data_baixa >= :datai and data_baixa <= :dataf ';

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add('select * from fretes where cod_lacto is not null' +
    situacao + fornecedor + periodo +  veic + ' order by data_lacto');
  qrcontaspagar.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
  qrcontaspagar.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  qrcontaspagar.open;

  BTOTAL.Click;


end;

procedure TFormPagarFretes.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#27 then
   begin
     Close;
   end;
end;

procedure TFormPagarFretes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key=VK_F10) then
      begin
      bpagamento.Click;
      end;
      if (Key=VK_F7) then
      begin
      brelatorio.Click;
      end;

      if (Key=VK_F9) then
      begin
      bextornar.Click;
      end;
end;

procedure TFormPagarFretes.wwDBGrid1DblClick(Sender: TObject);
begin
{try
    if qrcontaspagar.FieldByName('filtro').asstring = '1' then
    begin
      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '0';
      rselecao.Value := rselecao.Value - qrcontaspagar.FieldByName
        ('LIQUIDO').asfloat;
      qrcontaspagar.post;
    end
    else
    begin
      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '1';
      rselecao.Value := rselecao.Value + qrcontaspagar.FieldByName
        ('liquido').asfloat;
      qrcontaspagar.post;
    end;
  except
    application.messagebox
      ('Esta conta está sendo utilizada em outro terminal! Aguarde...',
      'Atenção', mb_ok + mb_iconerror);

  end;  }
end;

procedure TFormPagarFretes.veiculoButtonClick(Sender: TObject);
begin
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
      RXLabel1.Caption := RESULTADO_PESQUISA2;
      cliente.text    :=   resultado_pesquisa4;

      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
      cliente.Text := RemoveChar(cliente.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;

     { ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
      cliente.Text := RemoveChar(cliente.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Cliente.text:=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC';
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
      cliente.Text := RemoveChar(cliente.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;   }
end;
end;

procedure TFormPagarFretes.veiculoChange(Sender: TObject);
begin
IF (veiculo.Text>='A') AND (veiculo.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (veiculo.Text>='0') AND (veiculo.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF veiculo.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormPagarFretes.veiculoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF (Key = vk_return) or (Key = vk_tab) then
 begin
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
   RXLabel1.Caption:= DM.SDS_veiculosNOME.Text;
 //  ComboBox1.SetFocus;
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
  RxLabel1.Caption    := DM.SDS_VEICULOS.Fieldbyname('NOME').AsString;
     Cliente.text:=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
      cliente.Text := RemoveChar(cliente.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
end;
end;
end;
end;
end;

procedure TFormPagarFretes.bextornarClick(Sender: TObject);
begin
      FormExtornoFretes := TFormExtornoFretes.create(self);
      FormExtornoFretes.showmodal;
end;

end.

