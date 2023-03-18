unit Uextornofretes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, aDvGlowButton, RzEdit, RzBtnEdt, StdCtrls,
  Mask, RXCtrls, ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RxCurrEdit, RxToolEdit, AdvPanel;

type
  TFormExtornoFretes = class(TForm)
    Panel2: TAdvPanel;
    Label18: TLabel;
    Label20: TLabel;
    RxLabel6: TRxLabel;
    Label11: TLabel;
    RxLabel1: TRxLabel;
    DateEdit1: TDateEdit;
    Cliente: TRzButtonEdit;
    veiculo: TRzButtonEdit;
    Panel3: TAdvPanel;
    bextornar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    FDvGlowButton1: TAdvGlowButton;
    wwDBGrid1: TXDBGrid;
    qrcontaspagar: TFDQuery;
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
    qrcontaspagarDISTANCIA: TBCDField;
    qrcontaspagarVALOR_FRETE: TBCDField;
    qrcontaspagarVALOR_PAGO: TBCDField;
    qrcontaspagarIMPOSTO: TBCDField;
    qrcontaspagarCOD_CHEQUE: TIntegerField;
    qrcontaspagarLIQUIDO: TBCDField;
    dscontaspagar: TDataSource;
    Qrsoma: TFDQuery;
    qrMovDiario: TFDQuery;
    Label17: TLabel;
    rpaga: TRxCalcEdit;
    Edit2: TEdit;
    Qbaixa: TFDQuery;
    procedure FDvGlowButton1Click(Sender: TObject);
    procedure veiculoButtonClick(Sender: TObject);
    procedure veiculoChange(Sender: TObject);
    procedure veiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure bextornarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExtornoFretes: TFormExtornoFretes;

implementation

uses ModulodeDados, Ubibli1, xloc_veiculo, ConsClientes;

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


procedure TFormExtornoFretes.FDvGlowButton1Click(Sender: TObject);
var
  situacao, fornecedor, periodo, veic: string;
begin
//  bdesliga_filtroClick(FormPagarFretes);

 // situacao := '2';

  if cliente.TEXT = '' then
    fornecedor := ''
  else
    fornecedor := ' and cod_freteiro = ''' + Cliente.text + '''';

  if veiculo.Text = '' then
  veic := ''
  else
  veic := ' and COD_VEICULO = ''' + veiculo.text + '''';


  periodo := ' and data_baixa = :data ';

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add('select * from fretes where situacao = 2' +
     fornecedor + periodo +  veic + ' order by data_lacto');
  qrcontaspagar.Params.ParamByName('data').asdatetime := DateEdit1.DATE;
  qrcontaspagar.open;


   Qrsoma.close;
  Qrsoma.sql.clear;
  Qrsoma.sql.Add('select sum(VALOR_PAGO) VALORPAGO from fretes where situacao = 2 ' +
    periodo + fornecedor  +  veic );
  Qrsoma.Params.ParamByName('data').asdatetime := DateEdit1.DATE;
  Qrsoma.open;

 // rpagar.Value := Qrsoma.FieldByName('apagar').asfloat;
  rpaga.Value := Qrsoma.FieldByName('VALORPAGO').asfloat;



end;

procedure TFormExtornoFretes.veiculoButtonClick(Sender: TObject);
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
      //cliente.text    :=   resultado_pesquisa4;
      Cliente.text:=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
      cliente.Text := RemoveChar(cliente.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
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

procedure TFormExtornoFretes.veiculoChange(Sender: TObject);
begin
IF (veiculo.Text>='A') AND (veiculo.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (veiculo.Text>='0') AND (veiculo.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF veiculo.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormExtornoFretes.veiculoKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormExtornoFretes.ClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
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

procedure TFormExtornoFretes.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormExtornoFretes.ClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF (Key = vk_return) or (Key = vk_tab) then
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

procedure TFormExtornoFretes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormExtornoFretes := nil;
end;

procedure TFormExtornoFretes.bfecharClick(Sender: TObject);
begin
Close;
end;

procedure TFormExtornoFretes.bextornarClick(Sender: TObject);
var
  situacao, fornecedor, periodo, veic: string;
begin


       if cliente.TEXT = '' then
        fornecedor := ''
      else
        fornecedor := ' and cod_freteiro = ''' + Cliente.text + '''';

      if veiculo.Text = '' then
      veic := ''
      else
      veic := ' and COD_VEICULO = ''' + veiculo.text + '''';


      periodo := ' and data_baixa = :data ';

      qrcontaspagar.close;
      qrcontaspagar.sql.clear;
      qrcontaspagar.sql.Add('update fretes set fretes.situacao = 1, data_baixa = null where situacao = 2' +
         fornecedor + periodo +  veic);
      qrcontaspagar.Params.ParamByName('data').asdatetime := DateEdit1.DATE;
      qrcontaspagar.ExecSQL;


      Qbaixa.close;
      Qbaixa.sql.clear;
      Qbaixa.sql.Add('UPDATE valetroco SET valetroco.situacao = 1, valetroco.data_pagto = null ' +
        ' where tipo = ''A'' and data_pagto = :data  and situacao = 2 and cod_veiculo = :cod_veic and cod_cliente = :cod_cli');
      Qbaixa.Params.ParamByName('data').asdatetime := DateEdit1.DATE;
      Qbaixa.Params.ParamByName('cod_veic').AsInteger := StrToInt(veiculo.text);
      Qbaixa.Params.ParamByName('cod_cli').AsInteger := StrToInt(Cliente.text);
      Qbaixa.ExecSQL;

      Qbaixa.close;
      Qbaixa.sql.clear;
      Qbaixa.sql.Add('UPDATE valetroco SET valetroco.situacao = 1, valetroco.data_pagto = null ' +
        ' where tipo = ''C'' and data_pagto = :data and situacao = 2 and cod_veiculo = :cod_veic and cod_cliente = :cod_cli');
      Qbaixa.Params.ParamByName('data').asdatetime := DateEdit1.DATE;
      Qbaixa.Params.ParamByName('cod_veic').AsInteger := StrToInt(veiculo.text);
      Qbaixa.Params.ParamByName('cod_cli').AsInteger := StrToInt(Cliente.text);
      Qbaixa.ExecSQL;

      Qbaixa.close;
      Qbaixa.sql.clear;
      Qbaixa.sql.Add('UPDATE valetroco SET valetroco.situacao = 1, valetroco.data_pagto = null ' +
        ' where tipo = ''V'' and data_pagto = :data and situacao = 2 and cod_veiculo = :cod_veic and cod_cliente = :cod_cli');
      Qbaixa.Params.ParamByName('DATA').asdatetime := DateEdit1.DATE;
      Qbaixa.Params.ParamByName('cod_veic').AsInteger := StrToInt(veiculo.text);
      Qbaixa.Params.ParamByName('cod_cli').AsInteger := StrToInt(Cliente.text);
      Qbaixa.ExecSQL;

      Qbaixa.close;
      Qbaixa.sql.clear;
      Qbaixa.sql.Add('UPDATE valetroco SET valetroco.situacao = 1, valetroco.data_pagto = null ' +
        ' where tipo = ''P'' and data_pagto = :data and situacao = 2 and cod_veiculo = :cod_veic and cod_cliente = :cod_cli');
      Qbaixa.Params.ParamByName('DATA').asdatetime := DateEdit1.DATE;
      Qbaixa.Params.ParamByName('cod_veic').AsInteger := StrToInt(veiculo.text);
      Qbaixa.Params.ParamByName('cod_cli').AsInteger := StrToInt(Cliente.text);
      Qbaixa.ExecSQL;

      qrmovdiario.close;
      qrmovdiario.sql.clear;
      qrmovdiario.sql.Add('delete from movimento_diario where data = :data and cod_freteiro =:freteiro and cod_veiculo = :cod_veic ');
      qrmovdiario.Params.ParamByName('data').asdatetime := DateEdit1.DATE;
      qrmovdiario.Params.ParamByName('freteiro').AsInteger := StrToInt(Cliente.text);
      qrmovdiario.Params.ParamByName('cod_veic').AsInteger := StrToInt(veiculo.text);
      qrmovdiario.ExecSQL;
 
end;

end.

