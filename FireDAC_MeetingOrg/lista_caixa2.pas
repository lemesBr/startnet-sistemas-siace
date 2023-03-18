unit lista_caixa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, TFlatPanelUnit,
  Buttons, DB, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, aDvGlowButton, rxToolEdit,
  IBCustomDataSet, IBQuery;

type
  Tfrmlista_caixa2 = class(TForm)
    fxCaixa: TfrxReport;
    fscaixa: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    Qrsoma: TIBQuery;
    qrresumo: TIBQuery;
    qrresumoCODIGO: TIntegerField;
    qrresumoSUM: TIBBCDField;
    qrcaixa: TIBQuery;
    qrcaixaCODIGO: TIntegerField;
    qrcaixaDATA: TDateField;
    qrcaixaHISTORICO: TIBStringField;
    qrcaixaCOD_USUARIO: TIntegerField;
    qrcaixaUSUARIO: TIBStringField;
    qrcaixaTIPO: TIBStringField;
    qrcaixaTIPO_MOV: TIntegerField;
    qrcaixaVALOR_ENTRADA: TIBBCDField;
    qrcaixaVALOR_SAIDA: TIBBCDField;
    qrcaixaVALOR: TIBBCDField;
    qrcaixaCODIGO_CC: TIntegerField;
    qrcaixaNUMERO_CC: TIBStringField;
    qrcaixaCODIGO_VENDA: TIntegerField;
    qrcaixaORIGEM: TIBStringField;
    qrcaixaCOD_CREDIARIO: TIntegerField;
    qrcaixaCOD_COMPRA: TIntegerField;
    qrcaixaN_CHEQUE: TIBStringField;
    qrcaixaCOD_PLANO: TIntegerField;
    qrcaixaPRE_DATADO: TDateField;
    qrcaixaNOMINAL: TIBStringField;
    qrcaixaCOMPENSADO: TIBStringField;
    qrcaixaCOD_CHEQUE: TIntegerField;
    qrcaixaCOD_CONTAS_PAGAR: TIntegerField;
    qrcaixaDOC_LAN: TIntegerField;
    qrcaixaCONCILIADO: TIntegerField;
    qrcaixaCOD_DOC: TIntegerField;
    qrcaixaDOCUMENTO_LANC: TIBStringField;
    qrcaixaCOD_EMPRESA: TIntegerField;
    qrcaixaHORA: TTimeField;
    qrcaixaDB_CR: TIBStringField;
    qrcaixadescricao_movimento: TStringField;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel4: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lconta: TLabel;
    spbImprimir: TSpeedButton;
    combo_relatorio: TComboBox;
    combo_caixa: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    combo_conta: TComboBox;
    procedure combo_caixaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure qrcaixaCalcFields(DataSet: TDataSet);
    procedure combo_contaChange(Sender: TObject);
    procedure spbImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_caixa2: Tfrmlista_caixa2;
    juro_taxa, juro_multa, total_original, total_juros : real;
      juro_carencia : integer;
         data_caixa : tdatetime;  

implementation

uses  principal, ModulodeDados, ConsPlanoContas, ConsUsuarios, Biblioteca;

{$R *.dfm}

procedure Tfrmlista_caixa2.combo_caixaChange(Sender: TObject);
begin
  IF combo_caixa.Text = 'SELECIONAR' THEN
  BEGIN
    dm.sds_usuarios.OPEN;

      FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;

    combo_caixa.Items.Add(    dm.sds_usuarios.fieldbyname('CODIGO').asstring+' '+dm.sds_usuarios.fieldbyname('usuario').asstring);
    combo_caixa.ItemIndex := combo_caixa.Items.Count - 1;
  END;
end;

procedure Tfrmlista_caixa2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_caixa2.FormShow(Sender: TObject);
BEGIN

      dm.sds_usuarios.OPEN;
      dm.sds_usuarios.LOCATE('CODIGO','1',[LOCASEINSENSITIVE]);
      data_caixa :=     dm.sds_usuarios.fieldbyname('data').asdatetime;

      combo_relatorio.ItemIndex := 0;
      combo_CAIXA.ItemIndex := 0;
      dateedit1.Date := data_caixa;
      dateedit2.date := data_caixa;

{
RELAÇÃO AGRUPADA POR FORNECEDOR
RELAÇÃO AGRUPADA POR CONTA
RESUMO POR FORNECEDOR
BALANCETE FINANCEIRO
}

end;

procedure Tfrmlista_caixa2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_caixa2.qrcaixaCalcFields(DataSet: TDataSet);
begin
  CASE qrcaixa.FieldByName('TIPO_MOV').asinteger of
   0 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'IMPLANTAÇÃO DE SALDO';
   1 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'LANCTO. ENTRADA';
   2 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'LANCTO. SAÍDA';
   3 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA DINHEIRO';
   4 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CREDIÁRIO';
   5 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CHEQUE À VISTA';
   6 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CHEQUE À PRAZO';
   7 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CARTÃO CRÉDITO';
   8 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CARTÃO DÉBITO';
   9 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. DINHEIRO';
  10 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CHEQUE A.V.';
  11 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CHEQUE A.P.';
  12 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CARTAO';
  13 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. JUROS';
  14 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'DESCONTO NO RECEBTO';
  15 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'RECEBTO. BOLETO';
  16 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'OUTRAS ENTRADAS';
  17 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'OUTRAS SAÍDAS';
  18 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. DINHEIRO';
  19 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CREDIÁRIO';
  20 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À VISTA';
  21 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À PRAZO';
  22 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO CRÉDITO';
  23 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO DÉBITO';
  25 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'PAGTO - CAIXA';
  26 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'PAGTO - BANCO';
  27 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'PAGTO - CHEQUE TERC.';
  40 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CONVÊNIO';
  41 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA CONVÊNIO VIDALINK';
  42 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA FINANCEIRA';
  43 :qrcaixa.fieldbyname('descricao_movimento').asstring := 'VENDA EM VALE';


  end;
end;

procedure Tfrmlista_caixa2.combo_contaChange(Sender: TObject);
begin
  IF combo_conta.Text = 'SELECIONAR' THEN
  BEGIN
    DM.SDS_PlContas.OPEN;

      FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
      FormConsPlanoContas.ShowModal;


    combo_conta.Items.Add(    DM.SDS_PlContas.fieldbyname('CODIGO').asstring+' '+    DM.SDS_PlContas.fieldbyname('NOME').asstring);
    combo_conta.ItemIndex := combo_conta.Items.Count - 1;
  END;
end;

procedure Tfrmlista_caixa2.spbImprimirClick(Sender: TObject);
var CAIXA, conta: string;
begin
  DM.qrrelatorio.open;
  DM.qrrelatorio.edit;

  DM.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  DM.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  DM.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO : '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;


  if combo_CAIXA.Text = 'TODOS' then
   CAIXA := ''
  else
  begin
    CAIXA := ' and usuario = '''+ dm.sds_usuarios.fieldbyname('USUARIO').asstring+'''';
    DM.qrrelatorio.fieldbyname('LINHA3').asstring := 'CAIXA: '+COMBO_CAIXA.TEXT;
  end;

  if combo_conta.Text = 'TODAS' then
   conta := ''
  else
  begin
    conta := ' and cod_plano = '''+DM.SDS_PlContas.fieldbyname('CODIGO').asstring+'''';
    DM.qrrelatorio.fieldbyname('LINHA3').asstring := DM.qrrelatorio.fieldbyname('LINHA3').asstring+ '   Conta: '+combo_conta.text;
  end;


         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(valor_entrada) total_entrada, sum(valor_saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) valor   from v_movimento_diario where tipo_mov = 03 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum
                        '(select sum(VALOR) valor_1 from v_movimento_diario where tipo_mov = 04 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_1
                        '(select sum(VALOR) valor_2 from v_movimento_diario where tipo_mov = 05 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_2
                        '(select sum(VALOR) valor_3 from v_movimento_diario where tipo_mov = 06 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_3
                        '(select sum(VALOR) valor_4 from v_movimento_diario where tipo_mov = 07 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_4
                        '(select sum(VALOR) valor_5 from v_movimento_diario where tipo_mov = 08 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_5
                        '(select sum(VALOR) valor_6 from v_movimento_diario where tipo_mov = 09 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 6 rec dinheiro
                        '(select sum(VALOR) valor_7 from v_movimento_diario where tipo_mov = 10 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 7 rec che av
                        '(select sum(VALOR) valor_8 from v_movimento_diario where tipo_mov = 11 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 8 rec che ap
                        '(select sum(VALOR) valor_9 from v_movimento_diario where tipo_mov = 12 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 9 rec cartao
                        '(select sum(VALOR) valor_10 from v_movimento_diario where tipo_mov = 13 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 10 rec juros
                        '(select sum(VALOR) valor_11 from v_movimento_diario where tipo_mov = 14 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 11 rec desconto
                        '(select sum(VALOR) valor_12 from v_movimento_diario where tipo_mov = 15 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 12 rec boleto
                        '(select sum(VALOR) valor_13 from v_movimento_diario where tipo_mov = 25 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 13 pagar - caixa
                        '(select sum(VALOR) valor_14 from v_movimento_diario where tipo_mov = 26 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 14 pagar - banco
                        '(select sum(VALOR) valor_15 from v_movimento_diario where tipo_mov = 27 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 15 pagar - terceiro
                        '(select sum(VALOR) valor_16 from v_movimento_diario where tipo_mov = 2  and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 16 LANCTO SAIDA
                        '(select sum(VALOR) valor_17 from v_movimento_diario where tipo_mov = 17 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 17 OUTRAS SAIDAS
                        // servicos
                        '(select sum(VALOR) valor_18 from v_movimento_diario where tipo_mov = 18 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_18  - dinheiro
                        '(select sum(VALOR) valor_19 from v_movimento_diario where tipo_mov = 19 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // sum_19  - cree
                        '(select sum(VALOR) valor_20 from v_movimento_diario where tipo_mov = 20 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // column_20  - cv
                        '(select sum(VALOR) valor_21 from v_movimento_diario where tipo_mov = 21 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // column_21  - cp
                        '(select sum(VALOR) valor_22 from v_movimento_diario where tipo_mov = 22 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // column_22  - cc
                        '(select sum(VALOR) valor_23 from v_movimento_diario where tipo_mov= 23 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // column_23  - cd
                        '(select sum(VALOR) valor_24 from v_movimento_diario where tipo_mov = 40 and data >= :datai and data <= :dataf '+caixa+conta+'), '+ // 24 convenios
                        '(select sum(VALOR) valor_25 from v_movimento_diario where tipo_mov = 42 and data >= :datai and data <= :dataf '+caixa+conta+') '+ // 24 convenios
                        'from v_movimento_diario where  data >= :datai and data <= :dataf '+caixa+conta);

         qrsoma.Params.ParamByName('datai').asdatetime := dateedit1.date;
         qrsoma.Params.ParamByName('dataf').asdatetime := dateedit2.date;
         //qrsoma.Params.ParamByName('tp').AsString := 'C';
         qrsoma.open;


         DM.qrrelatorio.FieldByName('valor1').Asfloat := qrsoma.fieldbyname('total_entrada').asfloat;
         DM.qrrelatorio.FieldByName('valor2').Asfloat := qrsoma.fieldbyname('total_saida').asfloat;
         DM.qrrelatorio.FieldByName('valor3').Asfloat := qrsoma.fieldbyname('total_entrada').asfloat - qrsoma.fieldbyname('total_saida').asfloat;

         DM.qrrelatorio.FieldByName('valor4').Asfloat   := qrsoma.fieldbyname('valor').asfloat; // dinheiro
         DM.qrrelatorio.FieldByName('valor5').Asfloat   := qrsoma.fieldbyname('valor_1').asfloat; // crediario
         DM.qrrelatorio.FieldByName('valor6').Asfloat   := qrsoma.fieldbyname('valor_2').asfloat; // cheque a vista
         DM.qrrelatorio.FieldByName('valor7').Asfloat   := qrsoma.fieldbyname('valor_3').asfloat; // cheque a prazo
         DM.qrrelatorio.FieldByName('valor8').Asfloat   := qrsoma.fieldbyname('valor_4').asfloat; // cartao cred
         DM.qrrelatorio.FieldByName('valor9').Asfloat   := qrsoma.fieldbyname('valor_5').asfloat; // cartao deb

         DM.qrrelatorio.FieldByName('valor10').Asfloat := qrsoma.fieldbyname('valor').asfloat +
                                                                 qrsoma.fieldbyname('valor_1').asfloat +
                                                                 qrsoma.fieldbyname('valor_2').asfloat +
                                                                 qrsoma.fieldbyname('valor_3').asfloat +
                                                                 qrsoma.fieldbyname('valor_4').asfloat +
                                                                 qrsoma.fieldbyname('valor_5').asfloat +
                                                                 qrsoma.fieldbyname('valor_24').asfloat;





      DM.qrrelatorio.FieldByName('valor11').Asfloat   := qrsoma.fieldbyname('valor_6').asfloat; // DINHEIRO
      DM.qrrelatorio.FieldByName('valor12').Asfloat   := qrsoma.fieldbyname('valor_7').asfloat; // CHEQUE AV
      DM.qrrelatorio.FieldByName('valor13').Asfloat   := qrsoma.fieldbyname('valor_8').asfloat; // CHEQUE AP
      DM.qrrelatorio.FieldByName('valor14').Asfloat   := qrsoma.fieldbyname('valor_9').asfloat; // CARTAO

      DM.qrrelatorio.FieldByName('valor15').Asfloat   := qrsoma.fieldbyname('valor_10').asfloat; // JUROS
      DM.qrrelatorio.FieldByName('valor16').Asfloat   := qrsoma.fieldbyname('valor_11').asfloat; // DESCONTO
      DM.qrrelatorio.FieldByName('valor17').Asfloat   := qrsoma.fieldbyname('valor_12').asfloat; //BOLETO

      DM.qrrelatorio.FieldByName('valor18').Asfloat := qrsoma.fieldbyname('valor_6').asfloat + // TOTAL
                                                                 qrsoma.fieldbyname('valor_7').asfloat +
                                                                 qrsoma.fieldbyname('valor_8').asfloat +
                                                                 qrsoma.fieldbyname('valor_9').asfloat +
                                                                 qrsoma.fieldbyname('valor_12').asfloat ;

      DM.qrrelatorio.FieldByName('valor19').Asfloat   := qrsoma.fieldbyname('valor_13').asfloat;
      DM.qrrelatorio.FieldByName('valor20').Asfloat   := qrsoma.fieldbyname('valor_14').asfloat;
      DM.qrrelatorio.FieldByName('valor21').Asfloat   := qrsoma.fieldbyname('valor_15').asfloat;

      DM.qrrelatorio.FieldByName('valor22').Asfloat   := qrsoma.fieldbyname('valor_13').asfloat +
                                                                qrsoma.fieldbyname('valor_14').asfloat +
                                                                qrsoma.fieldbyname('valor_15').asfloat;

      DM.qrrelatorio.FieldByName('valor23').Asfloat   := qrsoma.fieldbyname('valor_16').asfloat;
      DM.qrrelatorio.FieldByName('valor24').Asfloat   := qrsoma.fieldbyname('valor_17').asfloat;


      DM.qrrelatorio.FieldByName('valor25').Asfloat   := qrsoma.fieldbyname('valor_16').asfloat +
                                                                qrsoma.fieldbyname('valor_17').asfloat ;


      DM.qrrelatorio.FieldByName('valor26').Asfloat   := qrsoma.fieldbyname('valor_18').asfloat; // DINHEIRO
      DM.qrrelatorio.FieldByName('valor31').Asfloat   := qrsoma.fieldbyname('valor_19').asfloat; // crediario
      DM.qrrelatorio.FieldByName('valor27').Asfloat   := qrsoma.fieldbyname('valor_20').asfloat; // cheque av
      DM.qrrelatorio.FieldByName('valor28').Asfloat   := qrsoma.fieldbyname('valor_21').asfloat; // cheque ap
      DM.qrrelatorio.FieldByName('valor29').Asfloat   := qrsoma.fieldbyname('valor_22').asfloat; // cartao cred
      DM.qrrelatorio.FieldByName('valor30').Asfloat   := qrsoma.fieldbyname('valor_23').asfloat; // cartao deb

      DM.qrrelatorio.FieldByName('valor32').Asfloat   := qrsoma.fieldbyname('valor_18').asfloat +
                                                                qrsoma.fieldbyname('valor_19').asfloat +
                                                                qrsoma.fieldbyname('valor_20').asfloat +
                                                                qrsoma.fieldbyname('valor_21').asfloat +
                                                                qrsoma.fieldbyname('valor_22').asfloat +
                                                                qrsoma.fieldbyname('valor_23').asfloat ;


      DM.qrrelatorio.FieldByName('valor35').Asfloat   := qrsoma.fieldbyname('valor_24').asfloat;
      DM.qrrelatorio.FieldByName('valor33').Asfloat   := qrsoma.fieldbyname('valor_25').asfloat;





  if combo_relatorio.Text = 'FOLHA DE CAIXA' then
  begin

      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from v_movimento_diario where data >= :datai and data <= :dataf '+caixa+conta+' order by data, codigo asc');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     // qrcaixa.Params.ParamByName('tp').AsString := 'C';
      qrcaixa.open;


    DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'FOLHA DE CAIXA';
    fxcAIXA.LoadFromFile('\siace\rel\f000071.fr3');
    fxcAIXA.ShowReport;
  end;

  if combo_relatorio.Text = 'RESUMO DA FOLHA DO CAIXA' then
  begin
    DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DA FOLHA DE CAIXA';
    fxcAIXA.LoadFromFile('\siace\rel\f000071_1.fr3');
    fxcAIXA.ShowReport;
  end;

  if combo_relatorio.text = 'RESUMO DE SAÍDAS' then
  begin
         DM.qrrelatorio.FieldByName('valor1').Asfloat :=
         DM.qrrelatorio.FieldByName('valor22').Asfloat +
         DM.qrrelatorio.FieldByName('valor25').Asfloat;

      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from v_movimento_diario where data >= :datai and data <= :dataf '+caixa+conta+' and tipo_mov in (2,17,22,26,27) order by data, codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     // qrcaixa.Params.ParamByName('tp').AsString := 'C';
      qrcaixa.open;

      DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE SAÍDAS';
      fxcAIXA.LoadFromFile('\siace\rel\f000072.fr3');
      fxcAIXA.ShowReport;
  end;

   if combo_relatorio.text = 'RESUMO DE RECEBIMENTOS' then
   begin

         DM.qrrelatorio.FieldByName('valor10').Asfloat := DM.qrrelatorio.FieldByName('valor4').Asfloat +
                                                                 DM.qrrelatorio.FieldByName('valor6').Asfloat +
                                                                 DM.qrrelatorio.FieldByName('valor9').Asfloat ;

      DM.qrrelatorio.FieldByName('valor22').Asfloat := DM.qrrelatorio.FieldByName('valor18').Asfloat+DM.qrrelatorio.FieldByName('valor10').Asfloat;
      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from v_movimento_diario where data >= :datai and data <= :dataf '+caixa+conta+' and tipo_mov in (3,5,8,9,10,11,15,16) order by data, codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     // qrcaixa.Params.ParamByName('tp').AsString := 'C';
      qrcaixa.open;

      DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE RECEBIMENTOS';
      fxcAIXA.LoadFromFile('\siace\rel\f000073.fr3');
      fxcAIXA.ShowReport;
   end;

   if combo_relatorio.text = 'RECEBIMENTOS EM DINHEIRO' then
   begin
      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from v_movimento_diario where data >= :datai and data <= :dataf '+caixa+conta+' and tipo_mov in (9) order by data, codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     // qrcaixa.Params.ParamByName('tp').AsString := 'C';
      qrcaixa.open;

      DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE RECEBIMENTOS EM DINHEIRO';
      fxcAIXA.LoadFromFile('\siace\rel\RelatorioDeResumosPorPeriodo.fr3');
      fxCaixa.Variables['LINHA101']:= QuotedStr(FloatToStrF(qrsoma.FieldByName('valor_6').Asfloat,ffCurrency,12,2));
      fxcAIXA.ShowReport;
   end;

   if combo_relatorio.text = 'RECEBIMENTOS EM CHEQUES A VISTA' then
   begin
      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from v_movimento_diario where data >= :datai and data <= :dataf '+caixa+conta+' and tipo_mov in (10) order by data, codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     // qrcaixa.Params.ParamByName('tp').AsString := 'C';
      qrcaixa.open;

      DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE RECEBIMENTOS EM CHEQUE A VISTA';
      fxcAIXA.LoadFromFile('\siace\rel\RelatorioDeResumosPorPeriodo.fr3');
      fxCaixa.Variables['LINHA101']:= QuotedStr(FloatToStrF(qrsoma.FieldByName('valor_7').Asfloat,ffCurrency,12,2));
      fxcAIXA.ShowReport;
   end;

   if combo_relatorio.text = 'RECEBIMENTOS EM CHEQUES A PRAZO' then
   begin
      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from v_movimento_diario where data >= :datai and data <= :dataf '+caixa+conta+' and tipo_mov in (11) order by data, codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     // qrcaixa.Params.ParamByName('tp').AsString := 'C';
      qrcaixa.open;

      DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE RECEBIMENTOS EM CHEQUE A PRAZO';
      fxcAIXA.LoadFromFile('\siace\rel\RelatorioDeResumosPorPeriodo.fr3');
      fxCaixa.Variables['LINHA101']:= QuotedStr(FloatToStrF(qrsoma.FieldByName('valor_8').Asfloat,ffCurrency,12,2));
      fxcAIXA.ShowReport;
   end;

   if combo_relatorio.text = 'RECEBIMENTOS EM CARTÃO' then
   begin
      qrcaixa.close;
      qrcaixa.SQL.Clear;
      qrcaixa.sql.add('select * from v_movimento_diario where data >= :datai and data <= :dataf '+caixa+conta+' and tipo_mov in (12) order by data, codigo');
      qrcaixa.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcaixa.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     // qrcaixa.Params.ParamByName('tp').AsString := 'C';
      qrcaixa.open;

      DM.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE RECEBIMENTOS NO CARTÃO';
      fxcAIXA.LoadFromFile('\siace\rel\RelatorioDeResumosPorPeriodo.fr3');
      fxCaixa.Variables['LINHA101']:= QuotedStr(FloatToStrF(qrsoma.FieldByName('valor_9').Asfloat,ffCurrency,12,2));
      fxcAIXA.ShowReport;
   end;
end;

end.
