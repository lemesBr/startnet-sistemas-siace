unit caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TFlatPanelUnit, Mask, RXDBCtrl, Grids, Wwdbigrd, Wwdbgrid, DB,
  Buttons, Menus,  ImgList, DBGrids, DBCtrls, FDvToolBar, FDvGlowButton,
  FDvShapeButton, ToolEdit, CurrEdit, NxPageControl, IBCustomDataSet,
  IBQuery, DBClient, SimpleDS, XDBGrids, IBDatabase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmcaixa = class(TForm)
    FlatPanel1: TFlatPanel;
    Label13: TLabel;
    dscaixa_mov1: TDataSource;
    POPPRINCIPAL: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Relatrios2: TMenuItem;
    Sair2: TMenuItem;
    popopcoes: TPopupMenu;
    MFECHAMENTO_CAIXA: TMenuItem;
    ReaberturadeCaixa1: TMenuItem;
    AberturadeNovoCaixa1: TMenuItem;
    ImageList1: TImageList;
    Opes1: TMenuItem;
    Bevel1: TBevel;
    LDATACAIXA: TLabel;
    Label5: TLabel;
    LCODOPERADOR: TLabel;
    LNOMEOPERADOR: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label8: TLabel;
    Bevel4: TBevel;
    LSITOPERADOR: TLabel;
    LSITCAIXA: TLabel;
    Label9: TLabel;
    Bevel5: TBevel;
    PageView1: TNxPageControl;
    PageSheet1: TNxTabSheet;
    PageSheet2: TNxTabSheet;
    Panel1: TPanel;
    Bevel7: TBevel;
    bcaixaaberto: TButton;
    bcaixafechado: TButton;
    Panel5: TPanel;
    Bevel9: TBevel;
    Bevel8: TBevel;
    Label48: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel10: TBevel;
    Label10: TLabel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label4: TLabel;
    RSAIDA: TRxCalcEdit;
    RENTRADA: TRxCalcEdit;
    RSALDO: TRxCalcEdit;
    Bevel15: TBevel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    GroupBox1: TGroupBox;
    FDvShapeButton1: TAdvShapeButton;
    Label15: TLabel;
    FDvShapeButton2: TAdvShapeButton;
    Label16: TLabel;
    FDvShapeButton3: TAdvShapeButton;
    Label18: TLabel;
    rvenda_dinheiro: TRxCalcEdit;
    rvenda_chequeav: TRxCalcEdit;
    rvenda_chequeap: TRxCalcEdit;
    FDvShapeButton4: TAdvShapeButton;
    Label7: TLabel;
    FDvShapeButton5: TAdvShapeButton;
    Label11: TLabel;
    FDvShapeButton6: TAdvShapeButton;
    Label19: TLabel;
    FDvShapeButton7: TAdvShapeButton;
    Label25: TLabel;
    rvenda_crediario: TRxCalcEdit;
    rvenda_cartaocred: TRxCalcEdit;
    rvenda_cartaodeb: TRxCalcEdit;
    rvenda_convenio: TRxCalcEdit;
    rvenda_total: TRxCalcEdit;
    Label26: TLabel;
    Bevel6: TBevel;
    GroupBox2: TGroupBox;
    FDvShapeButton8: TAdvShapeButton;
    Label27: TLabel;
    FDvShapeButton9: TAdvShapeButton;
    Label28: TLabel;
    FDvShapeButton10: TAdvShapeButton;
    Label38: TLabel;
    FDvShapeButton12: TAdvShapeButton;
    Label40: TLabel;
    FDvShapeButton14: TAdvShapeButton;
    Label42: TLabel;
    Label43: TLabel;
    Bevel16: TBevel;
    rrec_dinheiro: TRxCalcEdit;
    rrec_chequeav: TRxCalcEdit;
    rrec_chequeap: TRxCalcEdit;
    rrec_cartao: TRxCalcEdit;
    rrec_boleto: TRxCalcEdit;
    rrec_total: TRxCalcEdit;
    Bevel17: TBevel;
    Label39: TLabel;
    Label41: TLabel;
    rrec_juros: TRxCalcEdit;
    rrec_desconto: TRxCalcEdit;
    GroupBox3: TGroupBox;
    FDvShapeButton11: TAdvShapeButton;
    Label44: TLabel;
    FDvShapeButton13: TAdvShapeButton;
    Label45: TLabel;
    FDvShapeButton15: TAdvShapeButton;
    Label46: TLabel;
    Label50: TLabel;
    Bevel18: TBevel;
    RPAG_DINHEIRO: TRxCalcEdit;
    RPAG_CHEQUEAV: TRxCalcEdit;
    RPAG_CHEQUEAP: TRxCalcEdit;
    RPAG_TOTAL: TRxCalcEdit;
    GroupBox4: TGroupBox;
    Grid: TStringGrid;
    GroupBox5: TGroupBox;
    FDvShapeButton16: TAdvShapeButton;
    Label1: TLabel;
    FDvShapeButton17: TAdvShapeButton;
    Label2: TLabel;
    FDvShapeButton18: TAdvShapeButton;
    Label3: TLabel;
    FDvShapeButton19: TAdvShapeButton;
    Label6: TLabel;
    FDvShapeButton20: TAdvShapeButton;
    Label12: TLabel;
    FDvShapeButton21: TAdvShapeButton;
    Label14: TLabel;
    Label20: TLabel;
    Bevel14: TBevel;
    ros_dinheiro: TRxCalcEdit;
    ros_chequeav: TRxCalcEdit;
    ros_chequeap: TRxCalcEdit;
    ros_crediario: TRxCalcEdit;
    ros_cartaocred: TRxCalcEdit;
    ros_cartaodeb: TRxCalcEdit;
    ros_total: TRxCalcEdit;
    GroupBox6: TGroupBox;
    FDvShapeButton22: TAdvShapeButton;
    Label17: TLabel;
    FDvShapeButton23: TAdvShapeButton;
    Label21: TLabel;
    routro_entrada: TRxCalcEdit;
    routro_saida: TRxCalcEdit;
    FDvShapeButton24: TAdvShapeButton;
    Label22: TLabel;
    rvenda_financeira: TRxCalcEdit;
    GroupBox7: TGroupBox;
    Label24: TLabel;
    eentradas: TRxCalcEdit;
    Label29: TLabel;
    esaidas: TRxCalcEdit;
    eatual: TRxCalcEdit;
    Label30: TLabel;
    FDvShapeButton25: TAdvShapeButton;
    FDvShapeButton26: TAdvShapeButton;
    qrresumo: TIBQuery;
    qrmov: TIBQuery;
    Qrsoma: TIBQuery;
    qrcaixa_mov1: TIBQuery;
    qrcaixa_mov1CODIGO: TIntegerField;
    qrcaixa_mov1DATA: TDateField;
    qrcaixa_mov1HISTORICO: TIBStringField;
    qrcaixa_mov1COD_USUARIO: TIntegerField;
    qrcaixa_mov1USUARIO: TIBStringField;
    qrcaixa_mov1TIPO: TIBStringField;
    qrcaixa_mov1VALOR_ENTRADA: TIBBCDField;
    qrcaixa_mov1VALOR_SAIDA: TIBBCDField;
    qrcaixa_mov1CODIGO_CC: TIntegerField;
    qrcaixa_mov1NUMERO_CC: TIBStringField;
    qrcaixa_mov1CODIGO_VENDA: TIntegerField;
    qrcaixa_mov1ORIGEM: TIBStringField;
    qrcaixa_mov1COD_CREDIARIO: TIntegerField;
    qrcaixa_mov1COD_COMPRA: TIntegerField;
    qrcaixa_mov1N_CHEQUE: TIBStringField;
    qrcaixa_mov1COD_PLANO: TIntegerField;
    qrcaixa_mov1PRE_DATADO: TDateField;
    qrcaixa_mov1NOMINAL: TIBStringField;
    qrcaixa_mov1COMPENSADO: TIBStringField;
    qrcaixa_mov1COD_CHEQUE: TIntegerField;
    qrcaixa_mov1COD_CONTAS_PAGAR: TIntegerField;
    qrcaixa_mov1DOC_LAN: TIntegerField;
    qrcaixa_mov1CONCILIADO: TIntegerField;
    qrcaixa_mov1COD_DOC: TIntegerField;
    qrcaixa_mov1DOCUMENTO_LANC: TIBStringField;
    qrcaixa_mov1COD_EMPRESA: TIntegerField;
    qrcaixa_mov1HORA: TTimeField;
    qrcaixa_mov1DB_CR: TIBStringField;
    qrcaixa_mov1VALOR: TIBBCDField;
    qrcaixa_mov1DESCRICAO_MOVIMENTO: TStringField;
    qrcaixa_mov1TIPO_MOV: TIntegerField;
    qrcaixa_mov1NOME: TStringField;
    wwDBGrid1: TXDBGrid;
    Label23: TLabel;
    FDvShapeButton27: TAdvShapeButton;
    rvenda_vale: TRxCalcEdit;
    InsItem: TIBQuery;
    IBTRAce: TIBTransaction;
    DelItem: TIBQuery;
    Query1: TFDQuery;
    InsItem1: TIBQuery;
    procedure qrcaixa_movCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bcaixafechadoClick(Sender: TObject);
    procedure AberturadeNovoCaixa1Click(Sender: TObject);
    procedure bcaixaabertoClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure ReaberturadeCaixa1Click(Sender: TObject);
    procedure MFECHAMENTO_CAIXAClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Relatrios2Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure wwDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa: Tfrmcaixa;
implementation

uses caixa_abertura, principal, caixa_abertura_individual,
  caixa_fechamento, caixa_ficha, lista_caixa2, ModulodeDados, lista_caixa1;

{$R *.dfm}


procedure Tfrmcaixa.qrcaixa_movCalcFields(DataSet: TDataSet);
begin
  CASE qrcaixa_mov1.FieldByName('TIPO_MOV').asinteger of
   0 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'IMPLANTAÇÃO DE SALDO';
   1 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'LANCTO. ENTRADA';
   2 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'LANCTO. SAÍDA';
   3 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA DINHEIRO';
   4 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA CREDIÁRIO';
   5 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA CHEQUE À VISTA';
   6 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA CHEQUE À PRAZO';
   7 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA CARTÃO CRÉDITO';
   8 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA CARTÃO DÉBITO';
  40 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA CONVÊNIO';
  41 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA CONVÊNIO VIDALINK';
  42 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA FINANCEIRA';
  43 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'VENDA EM VALE';

   9 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'RECEBTO. DINHEIRO';
  10 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CHEQUE A.V.';
  11 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CHEQUE A.P.';
  12 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'RECEBTO. CARTAO';
  13 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'RECEBTO. JUROS';
  14 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'DESCONTO NO RECEBTO';
  15 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'RECEBTO. BOLETO';

  16 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'OUTRAS ENTRADAS';
  17 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'OUTRAS SAÍDAS';

  18 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'O.S. DINHEIRO';
  19 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'O.S. CREDIÁRIO';
  20 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À VISTA';
  21 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À PRAZO';
  22 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO CRÉDITO';
  23 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO DÉBITO';

  25 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'PAGTO - CAIXA';
  26 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'PAGTO - BANCO';
  27 :qrcaixa_mov1.fieldbyname('descricao_movimento').asstring := 'PAGTO - CHEQUE TERC.';
  end;
end;

procedure Tfrmcaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      DM.SDS_caixa.close;
      DM.SDS_caixa.OPEN;
      DM.SDS_caixa.last;

  ACTION := CAFREE;
  frmcaixa := nil;
end;

procedure Tfrmcaixa.FormShow(Sender: TObject);
begin
   PageView1.ActivePageIndex :=0;

   DM.SDS_CAIXA.Close;
   DM.SDS_CAIXA.Open;
   DM.SDS_CAIXA.Last;


   DM.SDS_Usuarios.Active := False;
   DM.SDS_Usuarios.Active := True;

   DM.SDS_Usuarios.Locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[lopartialkey]);


   if DM.SDS_UsuariosOCULTA_GRID.Text = 'S' then
   begin
     PageView1.Visible :=False;
   end;
   if dm.sds_usuarios.FIELDBYNAME('CODIGO').ASSTRING = '99' then // CAIXA GERAL
   begin
         DM.SDS_CAIXA.Close;
         DM.SDS_CAIXA.Open;
         DM.SDS_CAIXA.Last;

        if dm.sds_caixa.RecordCount = 0 then
        begin
         Query1.Close;
         Query1.SQL.Clear;
         Query1.SQL.Add('UPDATE movimento_diario SET movimento_diario.STATUS = 1 WHERE movimento_diario.DATA <:DATA');
         Query1.Params.ParamByName('data').AsDateTime := Date -1;
         Query1.ExecSQL;

         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(SEQ) as N_CODIGO FROM CAIXA');
         DM.ProxCod.Open;

         DM.SDS_CAIXA.Insert;
         DM.sds_caixa.FieldByName('SEQ').asinteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
         DM.sds_caixa.FieldByName('data_ABERTURA').asdatetime := Date;
         DM.sds_caixa.FieldByName('data_FECHAMENTO').asdatetime := Date;
         DM.sds_caixa.FieldByName('COD_USUARIO').asinteger := DM.SDS_UsuariosCODIGO.ASINTEGER;
         DM.sds_caixa.FieldByName('situacao').asinteger := 2;
         DM.sds_caixa.FieldByName('HORA_FECHA').asdatetime := DM.sds_caixa.FieldByName('HORA_FECHA').asdatetime;
         DM.sds_caixa.FieldByName('HORA_ABERT').asdatetime := Time;
         DM.sds_caixa.FieldByName('saldo').asfloat := DM.SDS_UsuariosSALDO.AsFloat;
         DM.SDS_CAIXA.post;
         DM.Coneccao.Commit;


         DM.SDS_CAIXA.Close;
         DM.SDS_CAIXA.Open;
          DM.SDS_CAIXA.Last;
         end;  

         if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;

         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(valor_entrada) total_entrada, sum(valor_saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) VALOR    from v_movimento_diario where tipo_mov = 03 and status = :status), '+ // sum
                        '(select sum(VALOR) VALOR_1  from v_movimento_diario where tipo_mov = 04 and status = :status), '+ // sum_1
                        '(select sum(VALOR) VALOR_2  from v_movimento_diario where tipo_mov = 05 and status = :status), '+ // sum_2
                        '(select sum(VALOR) VALOR_3  from v_movimento_diario where tipo_mov = 06 and status = :status), '+ // sum_3
                        '(select sum(VALOR) VALOR_4  from v_movimento_diario where tipo_mov = 07 and status = :status), '+ // sum_4
                        '(select sum(VALOR) VALOR_5  from v_movimento_diario where tipo_mov = 08 and status = :status), '+ // sum_5
                        // ordem de servico
                        '(select sum(VALOR) VALOR_6  from v_movimento_diario where tipo_mov = 18 and status = :status),  '+ // sum_6  - dinheiro
                        '(select sum(VALOR) VALOR_7  from v_movimento_diario where tipo_mov = 19 and status = :status),  '+ // sum_7  - cree
                        '(select sum(VALOR) VALOR_8  from v_movimento_diario where tipo_mov = 20 and status = :status),  '+ // sum_8  - cv
                        '(select sum(VALOR) VALOR_9  from v_movimento_diario where tipo_mov = 21 and status = :status),  '+ // sum_9  - cp
                        '(select sum(VALOR) VALOR_10 from v_movimento_diario where tipo_mov = 22 and status = :status),  '+ // sum_10  - cc
                        '(select sum(VALOR) VALOR_11 from v_movimento_diario where tipo_mov = 23 and status = :status),  '+ // sum_11  - cd
                        '(select sum(VALOR) VALOR_12 from v_movimento_diario where tipo_mov = 40 and status = :status), '+ // sum_12
                        '(select sum(VALOR) VALOR_13 from v_movimento_diario where tipo_mov = 01 and status = :status), '+ // sum_13
                        '(select sum(VALOR) VALOR_14 from v_movimento_diario where tipo_mov = 02 and status = :status), '+ // sum_14
                        '(select sum(VALOR) VALOR_15 from v_movimento_diario where tipo_mov = 42 and status = :status), '+ // sum_15
                        '(select sum(VALOR) VALOR_16 from v_movimento_diario where tipo_mov = 43 and status = :status) '+ // sum_15
                        'from v_movimento_diario where status = :status ');

         qrsoma.Params.ParamByName('status').AsInteger := 0 ;
         qrsoma.open;

         rentrada.value := qrsoma.fieldbyname('total_entrada').asfloat;
         rsaida.value := qrsoma.fieldbyname('total_saida').asfloat;
         rsaldo.Value := rentrada.value - rsaida.Value;

         rvenda_dinheiro.Value   := qrsoma.fieldbyname('VALOR').asfloat;
         rvenda_crediario.Value  := qrsoma.fieldbyname('VALOR_1').asfloat;
         rvenda_chequeav.Value   := qrsoma.fieldbyname('VALOR_2').asfloat;
         rvenda_chequeap.Value   := qrsoma.fieldbyname('VALOR_3').asfloat;
         rvenda_cartaocred.Value := qrsoma.fieldbyname('VALOR_4').asfloat;
         rvenda_cartaodeb.Value  := qrsoma.fieldbyname('VALOR_5').asfloat;
         rvenda_convenio.value   := qrsoma.fieldbyname('VALOR_12').asfloat;
         rvenda_financeira.value := qrsoma.fieldbyname('VALOR_15').asfloat;
         rvenda_vale.value       := qrsoma.fieldbyname('VALOR_16').asfloat;

         ros_dinheiro.Value      := qrsoma.fieldbyname('VALOR_6').asfloat;
         ros_crediario.Value     := qrsoma.fieldbyname('VALOR_7').asfloat;
         ros_chequeav.Value      := qrsoma.fieldbyname('VALOR_8').asfloat;
         ros_chequeap.Value      := qrsoma.fieldbyname('VALOR_9').asfloat;
         ros_cartaocred.Value    := qrsoma.fieldbyname('VALOR_10').asfloat;
         ros_cartaodeb.Value     := qrsoma.fieldbyname('VALOR_11').asfloat;

         routro_entrada.Value    := qrsoma.fieldbyname('VALOR_13').asfloat;
         routro_saida.Value      := qrsoma.fieldbyname('VALOR_14').asfloat;

         rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value + rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value + rvenda_cartaodeb.value+rvenda_convenio.value+rvenda_financeira.value+rvenda_vale.value;
         ros_total.value := ros_dinheiro.value + ros_crediario.value + ros_chequeav.value + ros_chequeap.value + ros_cartaocred.value + ros_cartaodeb.value;


         qrcaixa_mov1.close;
         qrcaixa_mov1.SQL.Clear;
         qrcaixa_mov1.sql.add('select * from v_movimento_diario where status = :status order by codigo');
         qrcaixa_mov1.Params.ParamByName('status').AsInteger := 0 ;
         qrcaixa_mov1.open;

         Query1.close;
         Query1.SQL.Clear;
         Query1.sql.add('select * from v_movimento_diario where status = :status order by codigo');
         Query1.Params.ParamByName('status').AsInteger := 0 ;
         Query1.open;



         LDATACAIXA.Caption      := dm.sds_caixa.FIELDBYNAME('DATA_ABERTURA').ASSTRING;
         LCODOPERADOR.Caption    := dm.sds_usuarios.FIELDBYNAME('CODIGO').ASSTRING;
         LNOMEOPERADOR.Caption   := dm.sds_usuarios.FIELDBYNAME('NOME').ASSTRING;



         if dm.sds_caixa.FIELDBYNAME('SITUACAO').ASinteger > 1 then
         begin
           LSITOPERADOR.Caption    := 'FECHADO';
           LSITCAIXA.Caption       := 'FECHADO';
           LSITOPERADOR.Font.Color := CLRED;
           LSITCAIXA.Font.Color    := CLRED;
           BCAIXAFECHADOCLICK(FRMCAIXA);
         END
         ELSE
         BEGIN

           LSITOPERADOR.Caption    := 'ABERTO';
           LSITCAIXA.Caption       := 'ABERTO';
           LSITOPERADOR.Font.Color := CLBLUE;
           LSITCAIXA.Font.Color    := CLBLUE;
           BCAIXAABERTOCLICK(FRMCAIXA);

         END;
         dm.IBTransaction.CommitRetaining;
   end
   else

   // caixa individual  //*********************************************************
   begin

         if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         qrsoma.Close;
         qrsoma.SQL.clear;

         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(valor_entrada) total_entrada, sum(valor_saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) VALOR   from v_movimento_diario where tipo_mov = 03 and data = :data_caixa and USUARIO = :USER), '+ // sum
                        '(select sum(VALOR) VALOR_1 from v_movimento_diario where tipo_mov = 04 and data = :data_caixa and USUARIO = :USER), '+ // sum_1
                        '(select sum(VALOR) VALOR_2 from v_movimento_diario where tipo_mov = 05 and data = :data_caixa and USUARIO = :USER), '+ // sum_2
                        '(select sum(VALOR) VALOR_3 from v_movimento_diario where tipo_mov = 06 and data = :data_caixa and USUARIO = :USER), '+ // sum_3
                        '(select sum(VALOR) VALOR_4 from v_movimento_diario where tipo_mov = 07 and data = :data_caixa and USUARIO = :USER), '+ // sum_4
                        '(select sum(VALOR) VALOR_5 from v_movimento_diario where tipo_mov = 08 and data = :data_caixa and USUARIO = :USER), '+ // sum_5
                        // ordem de servico
                        '(select sum(VALOR) VALOR_6  from v_movimento_diario where tipo_mov = 18 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_7  from v_movimento_diario where tipo_mov = 19 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_8  from v_movimento_diario where tipo_mov = 20 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_9  from v_movimento_diario where tipo_mov = 21 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_10 from v_movimento_diario where tipo_mov = 22 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_11 from v_movimento_diario where tipo_mov = 23 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_12 from v_movimento_diario where tipo_mov = 40 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_13 from v_movimento_diario where tipo_mov = 01 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_14 from v_movimento_diario where tipo_mov = 02 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_15 from v_movimento_diario where tipo_mov = 42 and data = :data_caixa and USUARIO = :USER), '+
                        '(select sum(VALOR) VALOR_16 from v_movimento_diario where tipo_mov = 43 and data = :data_caixa and USUARIO = :USER) '+


                        'from v_movimento_diario where data = :data_caixa and USUARIO = :USER' );


         qrsoma.Params.ParamByName('data_caixa').asdatetime := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
         qrsoma.Params.ParamByName('USER').AsString := FormPrincipal.UserLogado;
         //qrsoma.Params.ParamByName('tp').AsString := 'C';
         qrsoma.open;

         rentrada.value := qrsoma.fieldbyname('total_entrada').asfloat;
         rsaida.value := qrsoma.fieldbyname('total_saida').asfloat;
         rsaldo.Value := rentrada.value - rsaida.Value;

         rvenda_dinheiro.Value   := qrsoma.fieldbyname('VALOR').asfloat;
         rvenda_crediario.Value  := qrsoma.fieldbyname('VALOR_1').asfloat;
         rvenda_chequeav.Value   := qrsoma.fieldbyname('VALOR_2').asfloat;
         rvenda_chequeap.Value   := qrsoma.fieldbyname('VALOR_3').asfloat;
         rvenda_cartaocred.Value := qrsoma.fieldbyname('VALOR_4').asfloat;
         rvenda_cartaodeb.Value  := qrsoma.fieldbyname('VALOR_5').asfloat;
         rvenda_financeira.Value := qrsoma.fieldbyname('VALOR_15').asfloat;
         rvenda_vale.Value       := qrsoma.fieldbyname('VALOR_16').asfloat;

         ros_dinheiro.Value      := qrsoma.fieldbyname('VALOR_6').asfloat;
         ros_crediario.Value     := qrsoma.fieldbyname('VALOR_7').asfloat;
         ros_chequeav.Value      := qrsoma.fieldbyname('VALOR_8').asfloat;
         ros_chequeap.Value      := qrsoma.fieldbyname('VALOR_9').asfloat;
         ros_cartaocred.Value    := qrsoma.fieldbyname('VALOR_10').asfloat;
         ros_cartaodeb.Value     := qrsoma.fieldbyname('VALOR_11').asfloat;
         rvenda_convenio.value   := qrsoma.fieldbyname('VALOR_12').asfloat;

         routro_entrada.Value    := qrsoma.fieldbyname('VALOR_13').asfloat;
         routro_saida.Value      := qrsoma.fieldbyname('VALOR_14').asfloat;

         rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value + rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value + rvenda_cartaodeb.value+rvenda_convenio.value+rvenda_financeira.value+rvenda_vale.value;
         ros_total.value    := ros_dinheiro.Value;


         qrcaixa_mov1.close;
         qrcaixa_mov1.SQL.Clear;
         qrcaixa_mov1.sql.add('select * from v_movimento_diario where data = :data_caixa and USUARIO = :USER order by codigo');
         // qrcaixa_mov.DataSet.CommandText:= ('select * from v_movimento_diario where data = '''+DM.SDS_USUARIOS.fieldbyname('data').Text +''' order by codigo');
         qrcaixa_mov1.Params.ParamByName('data_caixa').asdatetime := dm.sds_usuarios.fieldbyname('data').asdatetime;
         qrcaixa_mov1.Params.ParamByName('USER').AsString := FormPrincipal.UserLogado;
        // qrcaixa_mov1.Params.ParamByName('tp').AsString := 'C';
         qrcaixa_mov1.open;

         LDATACAIXA.Caption      := DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASSTRING;
         LCODOPERADOR.Caption    := DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING;
         LNOMEOPERADOR.Caption   := DM.SDS_USUARIOS.FIELDBYNAME('NOME').ASSTRING;


         if DM.SDS_USUARIOS.FIELDBYNAME('SITUACAO').ASSTRING = '1' then
         begin
           LSITOPERADOR.Caption    := 'ABERTO';
           LSITCAIXA.Caption       := 'ABERTO';
           LSITOPERADOR.Font.Color := CLBLUE;
           LSITCAIXA.Font.Color    := CLBLUE;
           BCAIXAABERTOCLICK(FRMCAIXA);
         END
         ELSE
         BEGIN

           LSITCAIXA.Caption       := 'ABERTO';
           LSITCAIXA.Font.Color    := CLBLUE;
           LSITOPERADOR.Caption    := 'FECHADO';
           LSITOPERADOR.Font.Color := CLRED;
           BCAIXAFECHADOCLICK(FRMCAIXA);
         END;

         dm.IBTransaction.CommitRetaining;
    end;
end;

procedure Tfrmcaixa.PageView1Change(Sender: TObject);
var texto, texto1, texto2 : string;
i : integer;
SOMA : REAL;
begin

  if pageview1.ActivePageIndex = 1 then
    begin

       DM.SDS_Usuarios.Locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[lopartialkey]);


       if DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING = '99' then // CAIXA GERAL
        begin

        if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(valor_entrada) total_entrada, sum(valor_saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) valor   from v_movimento_diario where tipo_mov = 03 and status = :status), '+ // sum
                        '(select sum(VALOR) valor_1 from v_movimento_diario where tipo_mov = 04 and status = :status), '+ // sum_1
                        '(select sum(VALOR) valor_2 from v_movimento_diario where tipo_mov = 05 and status = :status), '+ // sum_2
                        '(select sum(VALOR) valor_3 from v_movimento_diario where tipo_mov = 06 and status = :status), '+ // sum_3
                        '(select sum(VALOR) valor_4 from v_movimento_diario where tipo_mov = 07 and status = :status), '+ // sum_4
                        '(select sum(VALOR) valor_5 from v_movimento_diario where tipo_mov = 08 and status = :status), '+ // sum_5
                        // ordem de servico
                        '(select sum(VALOR) valor_6 from v_movimento_diario where tipo_mov = 18 and status = :status),  '+ // sum_6  - dinheiro
                        '(select sum(VALOR) valor_7 from v_movimento_diario where tipo_mov = 19 and status = :status),  '+ // sum_7  - cree
                        '(select sum(VALOR) valor_8 from v_movimento_diario where tipo_mov = 20 and status = :status),  '+ // sum_8  - cv
                        '(select sum(VALOR) valor_9 from v_movimento_diario where tipo_mov = 21 and status = :status),  '+ // sum_9  - cp
                        '(select sum(VALOR) valor_10 from v_movimento_diario where tipo_mov = 22 and status = :status),  '+ // sum_10  - cc
                        '(select sum(VALOR) valor_11 from v_movimento_diario where tipo_mov = 23 and status = :status),  '+ // sum_11  - cd
                        '(select sum(VALOR) valor_12 from v_movimento_diario where tipo_mov = 40 and status = :status), '+ // sum_12
                        '(select sum(VALOR) valor_13 from v_movimento_diario where tipo_mov = 01 and status = :status), '+ // sum_13
                        '(select sum(VALOR) valor_14 from v_movimento_diario where tipo_mov = 02 and status = :status), '+ // sum_14
                        '(select sum(VALOR) valor_15 from v_movimento_diario where tipo_mov = 42 and status = :status), '+ // sum_15
                        '(select sum(VALOR) valor_16 from v_movimento_diario where tipo_mov = 43 and status = :status) '+ // sum_15

                        'from v_movimento_diario where status = :status');

         qrsoma.Params.ParamByName('STATUS').asinteger := 0;
         qrsoma.open;

         rentrada.value := qrsoma.fieldbyname('total_entrada').asfloat;
         rsaida.value := qrsoma.fieldbyname('total_saida').asfloat;
         rsaldo.Value := rentrada.value - rsaida.Value;

         rvenda_dinheiro.Value   := qrsoma.fieldbyname('valor').asfloat;
         rvenda_crediario.Value  := qrsoma.fieldbyname('valor_1').asfloat;
         rvenda_chequeav.Value   := qrsoma.fieldbyname('valor_2').asfloat;
         rvenda_chequeap.Value   := qrsoma.fieldbyname('valor_3').asfloat;
         rvenda_cartaocred.Value := qrsoma.fieldbyname('valor_4').asfloat;
         rvenda_cartaodeb.Value  := qrsoma.fieldbyname('valor_5').asfloat;
         rvenda_convenio.value   := qrsoma.fieldbyname('valor_12').asfloat;
         rvenda_financeira.value := qrsoma.fieldbyname('valor_15').asfloat;
         rvenda_vale.value       := qrsoma.fieldbyname('valor_16').asfloat;

         ros_dinheiro.Value      := qrsoma.fieldbyname('valor_6').asfloat;
         ros_crediario.Value      := qrsoma.fieldbyname('valor_7').asfloat;
         ros_chequeav.Value      := qrsoma.fieldbyname('valor_8').asfloat;
         ros_chequeap.Value      := qrsoma.fieldbyname('valor_9').asfloat;
         ros_cartaocred.Value      := qrsoma.fieldbyname('valor_10').asfloat;
         ros_cartaodeb.Value      := qrsoma.fieldbyname('valor_11').asfloat;

         routro_entrada.Value      := qrsoma.fieldbyname('valor_13').asfloat;
         routro_saida.Value       := qrsoma.fieldbyname('valor_14').asfloat;

         rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value + rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value + rvenda_cartaodeb.value+rvenda_convenio.value+rvenda_financeira.value+rvenda_vale.value;
         ros_total.value := ros_dinheiro.value + ros_crediario.value + ros_chequeav.value + ros_chequeap.value + ros_cartaocred.value + ros_cartaodeb.value;

         qrcaixa_mov1.close;
         qrcaixa_mov1.SQL.Clear;
         qrcaixa_mov1.sql.add('select * from v_movimento_diario where status = :status order by codigo');
         qrcaixa_mov1.Params.ParamByName('STATUS').asinteger := 0;
         qrcaixa_mov1.open;



         LDATACAIXA.Caption      := DM.SDS_CAIXA.FIELDBYNAME('DATA_ABERTURA').ASSTRING;
         LCODOPERADOR.Caption    := DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING;
         LNOMEOPERADOR.Caption   := DM.SDS_USUARIOS.FIELDBYNAME('NOME').ASSTRING;


         if DM.SDS_CAIXA.FIELDBYNAME('SITUACAO').ASinteger > 1 then
         begin
           LSITOPERADOR.Caption    := 'FECHADO';
           LSITCAIXA.Caption       := 'FECHADO';
           LSITOPERADOR.Font.Color := CLRED;
           LSITCAIXA.Font.Color    := CLRED;
           BCAIXAFECHADOCLICK(FRMCAIXA);



         END
         ELSE
         BEGIN

           LSITOPERADOR.Caption    := 'ABERTO';
           LSITCAIXA.Caption       := 'ABERTO';
           LSITOPERADOR.Font.Color := CLBLUE;
           LSITCAIXA.Font.Color    := CLBLUE;
           BCAIXAABERTOCLICK(FRMCAIXA);

         END;

      end
   else
   // caixa individual  //*********************************************************
      begin
        if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;

         qrsoma.Close;
         qrsoma.SQL.clear;

         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(valor_entrada) total_entrada, sum(valor_saida) total_saida, '+ // total_entrada e total_saida
                        '(select sum(VALOR) valor   from v_movimento_diario where tipo_mov = 03 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum
                        '(select sum(VALOR) valor_1 from v_movimento_diario where tipo_mov = 04 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_1
                        '(select sum(VALOR) valor_2 from v_movimento_diario where tipo_mov = 05 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_2
                        '(select sum(VALOR) valor_3 from v_movimento_diario where tipo_mov = 06 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_3
                        '(select sum(VALOR) valor_4 from v_movimento_diario where tipo_mov = 07 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_4
                        '(select sum(VALOR) valor_5 from v_movimento_diario where tipo_mov = 08 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_5
                        // ordem de servico
                        '(select sum(VALOR) valor_6 from v_movimento_diario where tipo_mov = 18 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_7 from v_movimento_diario where tipo_mov = 19 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_8 from v_movimento_diario where tipo_mov = 20 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_9 from v_movimento_diario where tipo_mov = 21 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_10 from v_movimento_diario where tipo_mov = 22 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_11 from v_movimento_diario where tipo_mov = 23 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_12 from v_movimento_diario where tipo_mov = 40 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_13 from v_movimento_diario where tipo_mov = 01 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_14 from v_movimento_diario where tipo_mov = 02 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_15 from v_movimento_diario where tipo_mov = 42 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+
                        '(select sum(VALOR) valor_16 from v_movimento_diario where tipo_mov = 43 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+''') '+

                        'from v_movimento_diario where data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''');


         qrsoma.Params.ParamByName('data_caixa').asdatetime := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
         qrsoma.open;
         rentrada.value := qrsoma.fieldbyname('total_entrada').asfloat;
         rsaida.value := qrsoma.fieldbyname('total_saida').asfloat;
         rsaldo.Value := rentrada.value - rsaida.Value;

         rvenda_dinheiro.Value   := qrsoma.fieldbyname('valor').asfloat;
         rvenda_crediario.Value  := qrsoma.fieldbyname('valor_1').asfloat;
         rvenda_chequeav.Value   := qrsoma.fieldbyname('valor_2').asfloat;
         rvenda_chequeap.Value   := qrsoma.fieldbyname('valor_3').asfloat;
         rvenda_cartaocred.Value := qrsoma.fieldbyname('valor_4').asfloat;
         rvenda_cartaodeb.Value  := qrsoma.fieldbyname('valor_5').asfloat;
         rvenda_convenio.value   := qrsoma.fieldbyname('valor_12').asfloat;
         rvenda_financeira.value := qrsoma.fieldbyname('valor_15').asfloat;
         rvenda_vale.value       := qrsoma.fieldbyname('valor_16').asfloat;

         ros_dinheiro.Value      := qrsoma.fieldbyname('valor_6').asfloat;
         ros_crediario.Value      := qrsoma.fieldbyname('valor_7').asfloat;
         ros_chequeav.Value      := qrsoma.fieldbyname('valor_8').asfloat;
         ros_chequeap.Value      := qrsoma.fieldbyname('valor_9').asfloat;
         ros_cartaocred.Value      := qrsoma.fieldbyname('valor_10').asfloat;
         ros_cartaodeb.Value      := qrsoma.fieldbyname('valor_11').asfloat;

         routro_entrada.Value      := qrsoma.fieldbyname('valor_13').asfloat;
         routro_saida.Value       := qrsoma.fieldbyname('valor_14').asfloat;


         rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value + rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value + rvenda_cartaodeb.value+rvenda_convenio.value+rvenda_financeira.value+rvenda_vale.value;
         ros_total.value := ros_dinheiro.Value;

         qrcaixa_mov1.close;
         qrcaixa_mov1.SQL.Clear;
         qrcaixa_mov1.sql.add('select * from v_movimento_diario where data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+''' order by codigo');
       //  qrcaixa_mov.DataSet.CommandText:= ('select * from v_movimento_diario where data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+''' order by codigo');
         qrcaixa_mov1.Params.ParamByName('data_caixa').asdatetime := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
         qrcaixa_mov1.open;


         LDATACAIXA.Caption      := DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASSTRING;
         LCODOPERADOR.Caption    := DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING;
         LNOMEOPERADOR.Caption   := DM.SDS_USUARIOS.FIELDBYNAME('NOME').ASSTRING;


         if DM.SDS_USUARIOS.FIELDBYNAME('SITUACAO').ASSTRING = '1' then
         begin
           LSITOPERADOR.Caption    := 'ABERTO';
           LSITCAIXA.Caption       := 'ABERTO';
           LSITOPERADOR.Font.Color := CLBLUE;
           LSITCAIXA.Font.Color    := CLBLUE;
           BCAIXAABERTOCLICK(FRMCAIXA);
         END
         ELSE
         BEGIN

           LSITCAIXA.Caption       := 'ABERTO';
           LSITCAIXA.Font.Color    := CLBLUE;
           LSITOPERADOR.Caption    := 'FECHADO';
           LSITOPERADOR.Font.Color := CLRED;
           BCAIXAFECHADOCLICK(FRMCAIXA);
         END;



          ///////////////
      end; 

        if DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING = '99' then // CAIXA GERAL
        begin
          qrsoma.Close;
          qrsoma.SQL.clear;
          qrsoma.sql.add('select sum(VALOR) valor_0, '+ // 9 sum_0 dinheiro
                         '(select sum(VALOR) valor   from v_movimento_diario where tipo_mov = 10 and status = :status), '+ // sum 10 cheque a vista
                         '(select sum(VALOR) valor_1 from v_movimento_diario where tipo_mov = 11 and status = :status), '+ // sum_1 11 cheque a prazo
                         '(select sum(VALOR) valor_2 from v_movimento_diario where tipo_mov = 12 and status = :status), '+ // sum_2 12 cartao
                         '(select sum(VALOR) valor_3 from v_movimento_diario where tipo_mov = 13 and status = :status), '+ // sum_3 13 juros
                         '(select sum(VALOR) valor_4 from v_movimento_diario where tipo_mov = 14 and status = :status), '+ // sum_4 14 desconto
                         '(select sum(VALOR) valor_5 from v_movimento_diario where tipo_mov = 15 and status = :status) '+ // sum_5 15 boleto
                         'from v_movimento_diario where status = :status and tipo_mov = 09');

          qrsoma.Params.ParamByName('status').AsInteger := 0;
          qrsoma.open;

          rrec_dinheiro.Value   := qrsoma.fieldbyname('valor_0').asfloat;
          rrec_chequeav.Value   := qrsoma.fieldbyname('valor').asfloat;
          rrec_chequeap.Value   := qrsoma.fieldbyname('valor_1').asfloat;
          rrec_CARTAO.Value     := qrsoma.fieldbyname('valor_2').asfloat;

          rrec_juros.Value      := qrsoma.fieldbyname('valor_3').asfloat;
          rrec_desconto.Value   := qrsoma.fieldbyname('valor_4').asfloat;
          rrec_boleto.Value     := qrsoma.fieldbyname('valor_5').asfloat;


         rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value + rrec_chequeap.value +
                             rrec_cartao.value   + rrec_boleto.value;
//                          rrec_JUROS.value    - rrec_desconto.value;

         qrsoma.Close;
         qrsoma.SQL.clear;
         qrsoma.sql.add('select sum(VALOR) valor_0, '+ // sum_0
                        '(select sum(VALOR) valor   from v_movimento_diario where tipo_mov = 26 and status = :status), '+ // sum
                        '(select sum(VALOR) valor_1 from v_movimento_diario where tipo_mov = 27 and status = :status) '+ // sum_1
                        'from v_movimento_diario where status = :status and tipo_mov = 25');

         qrsoma.Params.ParamByName('status').AsInteger := 0;
         qrsoma.open;
         rPAG_dinheiro.Value   := qrsoma.fieldbyname('valor_0').asfloat;
         rPAG_chequeav.Value   := qrsoma.fieldbyname('valor').asfloat;
         rPAG_chequeap.Value   := qrsoma.fieldbyname('valor_1').asfloat;
         rPAG_total.value := rPAG_dinheiro.value + rPAG_chequeav.value + rPAG_chequeap.value;



        // resumo diario
        //eanterior.Value := 0; //RENTRADA.Value - rvenda_dinheiro.Value;
        //eentradas.Value := rvenda_total.Value+ros_total.Value+(rrec_total.Value+rrec_juros.Value-rrec_desconto.Value)+routro_entrada.Value;
        eentradas.Value := rvenda_total.Value+ros_total.Value+routro_entrada.Value;
        esaidas.Value := RPAG_TOTAL.Value+routro_saida.Value;
        //eatual.Value := eanterior.Value+eentradas.Value-esaidas.Value;
        eatual.Value := eentradas.Value-(esaidas.Value*(-1));


         qrresumo.close;
         qrresumo.sql.clear;
         qrresumo.sql.add('select plano.nome, plano.codigo, sum(caixa.valor) total from planocontas plano '+
                          'JOIN v_movimento_diario caixa on plano.codigo = caixa.cod_plano '+
                          ' and caixa.status = :status and plano.cod_natureza = 03 group by plano.nome, plano.codigo');
         qrresumo.Params.ParamByName('status').AsInteger:= 0;
         qrresumo.Open;


         Grid.RowCount := 200;



        with Grid do
          for I := 0 to RowCount -1 do
             Rows[I].Clear;





      GRID.Rows[0].Add('                         R E C E I T A S                           ');
      GRID.Rows[1].Add('*******************************************************************');
      GRID.Rows[2].Add('CODIGO    NOME DA CONTA                                  VALOR - R$');
      GRID.Rows[3].Add('-------------------------------------------------------------------');
      QRRESUMO.FIRST;
      i := 4;
      SOMA := 0;
      WHILE NOT QRRESUMO.EOF DO
      BEGIN
        texto := qrresumo.fieldbyname('codigo').asstring;
        texto1:= qrresumo.fieldbyname('nome').asstring;
        texto2:= formatfloat('###,###,##0.00',qrresumo.fieldbyname('total').asfloat);
        while length(texto1) < 45 do texto1 := texto1+' ';
        while length(texto1) > 45 do delete(texto1,46,1);
        while length(texto2) < 11 do texto2 := ' '+texto2;
        GRID.Rows[i].Add(texto+'    '+texto1+' '+texto2);
        SOMA := SOMA + QRRESUMO.FIELDBYNAME('TOTAL').ASFLOAT;
        qrresumo.next;
        i := i+1;
      END;
      TEXTO2 := FORMATFLOAT('###,###,##0.00',SOMA);
      while length(texto2) < 11 do texto2 := ' '+texto2;
      GRID.Rows[I].Add('-------------------------------------------------------------------');
      I := I + 1;
      GRID.Rows[i].Add('TOTAL DAS RECEITAS....................................: '+TEXTO2);
      I := I + 1;

      qrresumo.close;
      qrresumo.sql.clear;
      qrresumo.sql.add('select plano.nome, plano.codigo, sum(caixa.valor) total from planocontas plano '+
                       'JOIN v_movimento_diario caixa on plano.codigo = caixa.cod_plano '+
                       ' and caixa.status = :datax and plano.cod_natureza = 02 group by plano.nome, plano.codigo');
      qrresumo.Params.ParamByName('datax').AsInteger := 0;
      qrresumo.Open;
      dm.IBTransaction.CommitRetaining;

      GRID.Rows[I].Add('*******************************************************************');I := I + 1;
      GRID.Rows[I].Add('                         D E S P E S A S                           ');I := I + 1;
      GRID.Rows[I].Add('*******************************************************************');I := I + 1;
      GRID.Rows[I].Add('CODIGO    NOME DA CONTA                                  VALOR - R$');I := I + 1;
      GRID.Rows[I].Add('-------------------------------------------------------------------');I := I + 1;

      QRRESUMO.FIRST;
      SOMA := 0;
      WHILE NOT QRRESUMO.EOF DO
      BEGIN
        texto := qrresumo.fieldbyname('codigo').asstring;
        texto1:= qrresumo.fieldbyname('nome').asstring;
        texto2:= formatfloat('###,###,##0.00',qrresumo.fieldbyname('total').asfloat);
        while length(texto1) < 45 do texto1 := texto1+' ';
        while length(texto1) > 45 do delete(texto1,46,1);
        while length(texto2) < 11 do texto2 := ' '+texto2;
        GRID.Rows[i].Add(texto+'    '+texto1+' '+texto2);
        SOMA := SOMA + QRRESUMO.FIELDBYNAME('TOTAL').ASFLOAT;
        qrresumo.next;
        i := i+1;
      END;
      TEXTO2 := FORMATFLOAT('###,###,##0.00',SOMA);
      while length(texto2) < 11 do texto2 := ' '+texto2;
      GRID.Rows[I].Add('-------------------------------------------------------------------');
      I := I + 1;
      GRID.Rows[i].Add('TOTAL DAS DESPESAS....................................: '+TEXTO2);
      I := I + 1;

  end
  else
  begin // C A I X A    I N D I V I D U A L

      if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      qrsoma.Close;
      qrsoma.SQL.clear;
      qrsoma.sql.add('select sum(VALOR) valor_0, '+ // sum_0
                     '(select sum(VALOR) valor   from v_movimento_diario where tipo_mov = 10 and data = :data_caixa and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum
                     '(select sum(VALOR) valor_1 from v_movimento_diario where tipo_mov = 11 and data = :data_caixa and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_1
                     '(select sum(VALOR) valor_2 from v_movimento_diario where tipo_mov = 12 and data = :data_caixa and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_2
                     '(select sum(VALOR) valor_3 from v_movimento_diario where tipo_mov = 13 and data = :data_caixa and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_3
                     '(select sum(VALOR) valor_4 from v_movimento_diario where tipo_mov = 14 and data = :data_caixa and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum_4
                     '(select sum(VALOR) valor_5 from v_movimento_diario where tipo_mov = 15 and data = :data_caixa and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+''') '+ // sum_5
                     'from v_movimento_diario where data = :data_caixa and tipo_mov = 09 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''');

      qrsoma.Params.ParamByName('data_caixa').asdatetime := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
      qrsoma.open;
      rrec_dinheiro.Value   := qrsoma.fieldbyname('valor_0').asfloat;
      rrec_chequeav.Value   := qrsoma.fieldbyname('valor').asfloat;
      rrec_chequeap.Value   := qrsoma.fieldbyname('valor_1').asfloat;
      rrec_cartao.Value     := qrsoma.fieldbyname('valor_2').asfloat;
      rrec_juros.Value      := qrsoma.fieldbyname('valor_3').asfloat;
      rrec_desconto.Value   := qrsoma.fieldbyname('valor_4').asfloat;
      rrec_boleto.Value     := qrsoma.fieldbyname('valor_5').asfloat;


      //rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value + rrec_chequeap.value + rrec_cartao.value + rrec_JUROS.value - rrec_desconto.value + rrec_boleto.value;
      rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value + rrec_chequeap.value + rrec_cartao.value + rrec_boleto.value;

      qrsoma.Close;
      qrsoma.SQL.clear;
      qrsoma.sql.add('select sum(VALOR) valor_0, '+ // sum_0
                     '(select sum(VALOR) valor   from v_movimento_diario where tipo_mov = 26 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''), '+ // sum
                     '(select sum(VALOR) valor_1 from v_movimento_diario where tipo_mov = 27 and data = :data_caixa and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+''') '+ // sum_1
                     'from v_movimento_diario where data = :data_caixa and tipo_mov = 25 and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+'''');

      qrsoma.Params.ParamByName('data_caixa').asdatetime := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
      qrsoma.open;
      rPAG_dinheiro.Value   := qrsoma.fieldbyname('valor_0').asfloat;
      rPAG_chequeav.Value   := qrsoma.fieldbyname('valor').asfloat;
      rPAG_chequeap.Value   := qrsoma.fieldbyname('valor_1').asfloat;
      rPAG_total.value := rPAG_dinheiro.value + rPAG_chequeav.value + rPAG_chequeap.value;

      qrresumo.close;
      qrresumo.sql.clear;
      qrresumo.sql.add('select plano.nome, plano.codigo, sum(caixa.valor) total from planocontas plano '+
                       'JOIN v_movimento_diario caixa on plano.codigo = caixa.cod_plano '+
                       ' and caixa.COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+''' and caixa.data = :datax and plano.cod_natureza = 03 group by plano.nome, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
      qrresumo.Open;

      Grid.RowCount := 300;
      GRID.Rows[0].Add('                         R E C E I T A S                           ');
      GRID.Rows[1].Add('*******************************************************************');
      GRID.Rows[2].Add('CODIGO    NOME DA CONTA                                  VALOR - R$');
      GRID.Rows[3].Add('-------------------------------------------------------------------');
      QRRESUMO.FIRST;
      i := 4;
      SOMA := 0;
      WHILE NOT QRRESUMO.EOF DO
      BEGIN
        texto := qrresumo.fieldbyname('codigo').asstring;
        texto1:= qrresumo.fieldbyname('nome').asstring;
        texto2:= formatfloat('###,###,##0.00',qrresumo.fieldbyname('total').asfloat);
        while length(texto1) < 45 do texto1 := texto1+' ';
        while length(texto1) > 45 do delete(texto1,46,1);
        while length(texto2) < 11 do texto2 := ' '+texto2;
        GRID.Rows[i].Add(texto+'    '+texto1+' '+texto2);
        SOMA := SOMA + QRRESUMO.FIELDBYNAME('TOTAL').ASFLOAT;
        qrresumo.next;
        i := i+1;
      END;
      TEXTO2 := FORMATFLOAT('###,###,##0.00',SOMA);
      while length(texto2) < 11 do texto2 := ' '+texto2;
      GRID.Rows[I].Add('-------------------------------------------------------------------');
      I := I + 1;
      GRID.Rows[i].Add('TOTAL DAS RECEITAS....................................: '+TEXTO2);
      I := I + 1;

      grid.RowCount := i + 1;

      qrresumo.close;
      qrresumo.sql.clear;
      qrresumo.sql.add('select plano.nome, plano.codigo, sum(caixa.valor) total from planoContas plano '+
                       'JOIN v_movimento_diario caixa on plano.codigo = caixa.cod_plano '+
                       ' and caixa.data = :datax and plano.cod_natureza = 04 group by plano.nome, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
      qrresumo.Open;
      dm.IBTransaction.CommitRetaining;
      GRID.Rows[I].Add('*******************************************************************');I := I + 1;
      GRID.Rows[I].Add('                         D E S P E S A S                           ');I := I + 1;
      GRID.Rows[I].Add('*******************************************************************');I := I + 1;
      GRID.Rows[I].Add('CODIGO    NOME DA CONTA                                  VALOR - R$');I := I + 1;
      GRID.Rows[I].Add('-------------------------------------------------------------------');I := I + 1;

      QRRESUMO.FIRST;
      SOMA := 0;
      WHILE NOT QRRESUMO.EOF DO
      BEGIN
        texto := qrresumo.fieldbyname('codigo').asstring;
        texto1:= qrresumo.fieldbyname('nome').asstring;
        texto2:= formatfloat('###,###,##0.00',qrresumo.fieldbyname('total').asfloat);
        while length(texto1) < 45 do texto1 := texto1+' ';
        while length(texto1) > 45 do delete(texto1,46,1);
        while length(texto2) < 11 do texto2 := ' '+texto2;
        GRID.Rows[i].Add(texto+'    '+texto1+' '+texto2);
        SOMA := SOMA + QRRESUMO.FIELDBYNAME('TOTAL').ASFLOAT;
        qrresumo.next;
        i := i+1;
      END;
      TEXTO2 := FORMATFLOAT('###,###,##0.00',SOMA);
      while length(texto2) < 11 do texto2 := ' '+texto2;
      GRID.Rows[I].Add('-------------------------------------------------------------------');
      I := I + 1;
      GRID.Rows[i].Add('TOTAL DAS DESPESAS....................................: '+TEXTO2);
      I := I + 1;

      grid.RowCount := i + 1;
    end;
    end ELSE
    begin
      frmcaixa.OnShow(FRMCAIXA);
    end;

end;



procedure Tfrmcaixa.BitBtn4Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcaixa.BitBtn3Click(Sender: TObject);
begin
  // VERIFICAR
end;

procedure Tfrmcaixa.BitBtn2Click(Sender: TObject);
begin
  //
end;

procedure Tfrmcaixa.bcaixafechadoClick(Sender: TObject);
begin


  bincluir.Enabled := false;
  balterar.Enabled := false;
  bexcluir.Enabled := false;
  bfechar.Enabled := true;
  IF frmcaixa.Tag = 1 then
  BEGIN
  brelatorio.Enabled := false;
  end else
  begin
  brelatorio.Enabled := true;
  end;
  MFECHAMENTO_CAIXA.Enabled := false;

  if DM.sds_caixa.fieldbyname('situacao').asinteger = 3 then
  begin
     AberturadeNovoCaixa1.Enabled := true;
     ReaberturadeCaixa1.Enabled := false;
  end
  else
  begin
    //if DM.SDS_USUARIOS.FieldByName('codigo').asstring  = '99' then
    
   if dm.sds_caixa.FIELDBYNAME('SITUACAO').ASinteger > 1 then
    begin
      AberturadeNovoCaixa1.Enabled := true;
      ReaberturadeCaixa1.Enabled := FALSE;
    end
    else
    begin
      AberturadeNovoCaixa1.Enabled := True;
       IF frmcaixa.Tag = 1 then
      BEGIN
      ReaberturadeCaixa1.Enabled := false;
      end else
      begin
       ReaberturadeCaixa1.Enabled := true;
      end;
    end;
  end;
end;


procedure Tfrmcaixa.AberturadeNovoCaixa1Click(Sender: TObject);
begin
 DM.SDS_Usuarios.Locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[lopartialkey]);


  if DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING = '99' then
  begin
    frmcaixa_abertura := tfrmcaixa_abertura.create(self);
    frmcaixa_abertura.edata.Date := date;
    frmcaixa_abertura.rsaldo.value := DM.SDS_USUARIOS.FIELDBYNAME('saldo').ASFLOAT;
    frmcaixa_abertura.ShowModal;
     DM.SDS_Usuarios.Refresh;

         DM.SDS_USUARIOS.Locate('codigo',99,[loCaseInsensitive]);
         if dm.IBTransaction.Active then
           dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         frmcaixa.qrcaixa_mov1.close;
         frmcaixa.qrcaixa_mov1.SQL.Clear;
         frmcaixa.qrcaixa_mov1.sql.add('select * from v_movimento_diario where status = :status order by codigo');
         frmcaixa.qrcaixa_mov1.Params.ParamByName('status').asinteger := 0;
         frmcaixa.qrcaixa_mov1.open;
         dm.IBTransaction.Commit;
  end
  else
  begin
    frmcaixa_abertura_individual := tfrmcaixa_abertura_individual.create(self);
    frmcaixa_abertura_individual.edata.Date := date;
    frmcaixa_abertura_individual.rsaldo.value := 0;
    frmcaixa_abertura_individual.ShowModal;

           DM.SDS_Usuarios.Active :=false;
           DM.SDS_Usuarios.Active :=True;
           DM.SDS_USUARIOS.Locate('usuario',formprincipal.UserLogado,[loCaseInsensitive]);
           if dm.IBTransaction.Active then
          dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         frmcaixa.qrcaixa_mov1.close;
         frmcaixa.qrcaixa_mov1.SQL.Clear;
         frmcaixa.qrcaixa_mov1.sql.add('select * from v_movimento_diario where status = :status and COD_USUARIO = :USER order by codigo');
         // qrcaixa_mov.DataSet.CommandText := ('select * from v_movimento_diario where data ='''+DM.SDS_USUARIOS.fieldbyname('data').Text +''' and COD_USUARIO = '''+DM.SDS_USUARIOS.fieldbyname('codigo').AsString+''' order by codigo');
         frmcaixa.qrcaixa_mov1.Params.ParamByName('status').asinteger := 0;
         frmcaixa.qrcaixa_mov1.Params.ParamByName('USER').AsString := DM.SDS_USUARIOS.fieldbyname('CODIGO').AsString;
         frmcaixa.qrcaixa_mov1.open;
         dm.IBTransaction.Commit;
  end;

  frmcaixa.OnShow(FRMCAIXA);

  FormPrincipal.Action2.Execute;
end;

procedure Tfrmcaixa.bcaixaabertoClick(Sender: TObject);
begin
  bincluir.Enabled := TRUE;
  bfechar.Enabled := TRUE;

  IF frmcaixa.Tag = 1 then
  BEGIN
  brelatorio.Enabled := False;
  balterar.Enabled := False;
  bexcluir.Enabled := FALSE;
  end else
  begin
  brelatorio.Enabled := true;
 // balterar.Enabled := TRUE;
    bexcluir.Enabled := TRUE;
  end;

  ReaberturadeCaixa1.Enabled := FALSE;
  MFECHAMENTO_CAIXA.Enabled := TRUE;

  AberturadeNovoCaixa1.Enabled := FALSE;
end;

procedure Tfrmcaixa.bfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcaixa.ReaberturadeCaixa1Click(Sender: TObject);
begin

  DM.SDS_Usuarios.Locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[lopartialkey]);

  if DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING = '99' then
  begin
     if DM.SDS_caixa.fieldbyname('situacao').asinteger = 2 then
     begin
       qrmov.close;
       qrmov.SQL.Clear;
       qrmov.sql.add('delete from v_movimento_diario where status = :datax and historico like ''**RETIRADA**%'' and COD_USUARIO = ''1''');
       qrmov.Params.ParamByName('datax').asinteger := 0;
       qrmov.execsql;

       DM.SDS_USUARIOS.Edit;
       DM.SDS_USUARIOS.fieldbyname('situacao').asinteger := 1;
       DM.SDS_USUARIOS.fieldbyname('saldo').asfloat := 0;
       DM.SDS_USUARIOS.Post;
       DM.SDS_USUARIOS.ApplyUpdates(0);

       DM.SDS_CAIXA.Edit;
       DM.sds_caixa.FieldByName('data_ABERTURA').asdatetime := Date;
       DM.sds_caixa.FieldByName('data_FECHAMENTO').asdatetime := Date;
       DM.SDS_caixa.fieldbyname('saldo').asfloat := 0;
       DM.sds_caixa.FieldByName('situacao').asinteger := 1;
       DM.SDS_CAIXA.post;
       DM.Coneccao.Commit ;

       frmcaixa.OnShow(frmcaixa);
       application.MessageBox('Caixa REABERTO com Sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
     end
     else
     begin
       application.messagebox('Caixa não está fechado!','Atenção',mb_ok+mb_iconerror);
       exit;
     end;
  end
  else
  begin
    if application.MessageBox('Confirma a reabertura deste caixa?','Caixa',mb_yesno+mb_iconquestion) = idyes then
    begin
      DM.SDS_USUARIOS.Edit;
      DM.SDS_USUARIOS.FieldByName('situacao').asinteger := 1;
      DM.SDS_USUARIOS.Post;
      DM.SDS_USUARIOS.ApplyUpdates(0);

     {  DM.SDS_CAIXA.Edit;
       DM.sds_caixa.FieldByName('data_ABERTURA').asdatetime := Date;
       DM.sds_caixa.FieldByName('data_FECHAMENTO').asdatetime := Null;
       //DM.SDS_caixa.fieldbyname('saldo').asfloat := 0;
       DM.sds_caixa.FieldByName('situacao').asinteger := 1;
       DM.SDS_CAIXA.post;
       DM.Coneccao.Commit ;}

      LSITOPERADOR.Caption := 'ABERTO';
      LSITOPERADOR.Font.COLOR := CLBLUE;
      bcaixaabertoCLICK(FRMCAIXA);
    end;
  end; 
end;

procedure Tfrmcaixa.MFECHAMENTO_CAIXAClick(Sender: TObject);
begin
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


  DM.SDS_Usuarios.Locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[lopartialkey]);

  if DM.SDS_USUARIOS.FIELDBYNAME('CODIGO').ASSTRING = '99' then
  begin
    frmcaixa_fechamento := tfrmcaixa_fechamento.create(self);
    FRMCAIXA_FECHAMENTO.RENTRADA.VALUE := RENTRADA.VALUE;
    FRMCAIXA_FECHAMENTO.RSAIDA.VALUE := RSAIDA.VALUE;
    FRMCAIXA_FECHAMENTO.RSALDO.VALUE := RSALDO.VALUE;
    FRMCAIXA_FECHAMENTO.RSUBSALDO.VALUE := RSALDO.VALUE;
    frmcaixa_fechamento.ldata.caption := ldatacaixa.caption;
    FRMCAIXA_FECHAMENTO.RSALDO.VALUE := rsaldo.value;
    frmcaixa_fechamento.showmodal;

    frmcaixa.OnShow(frmcaixa);

  end
  else
  begin
    if application.MessageBox('Confirma a fechamento deste caixa?','Caixa',mb_yesno+mb_iconquestion) = idyes then
    begin
      DM.SDS_USUARIOS.Edit;
      DM.SDS_USUARIOS.FieldByName('situacao').asinteger := 2;
      DM.SDS_USUARIOS.Post;
      DM.SDS_USUARIOS.ApplyUpdates(0);

    {   DM.SDS_CAIXA.Edit;
      // DM.sds_caixa.FieldByName('data_ABERTURA').asdatetime := null;
      // DM.sds_caixa.FieldByName('data_FECHAMENTO').asdatetime := date;
      // DM.SDS_caixa.fieldbyname('saldo').asfloat := 0;
       DM.sds_caixa.FieldByName('situacao').asinteger := 2;
       DM.SDS_CAIXA.post;
       DM.Coneccao.Commit ; }

      LSITOPERADOR.Caption := 'FECHADO';
      LSITOPERADOR.Font.COLOR := CLRED;
      bcaixaFECHADOCLICK(FRMCAIXA);
      IF APPLICATION.MessageBox('Deseja imprimir a folha de caixa?','Aviso',mb_yesno+mb_iconquestion) = idyes then
      begin
        FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
        FRMLISTA_CAIXA2.SHOWMODAL;
      end;
    end;
  end;
end;

procedure Tfrmcaixa.bincluirClick(Sender: TObject);
begin


  frmcaixa_ficha := tfrmcaixa_ficha.create(self);
  frmcaixa_ficha.showmodal;

  QRCAIXA_MOV1.Last;

  frmcaixa.OnShow(FRMCAIXA);
end;

procedure Tfrmcaixa.balterarClick(Sender: TObject);
var cod : string;
begin
{  IF (QRCAIXA_MOV.FIELDBYNAME('TIPO_MOV').ASINTEGER = 1) OR (QRCAIXA_MOV.FIELDBYNAME('TIPO_MOV').ASINTEGER = 2) THEN
  BEGIN
    qrcaixa_mov.Open;
    cod := qrcaixa_mov1.fieldbyname('codigo').asstring;
    qrcaixa_mov.Locate('codigo',cod,[loCaseInsensitive]);
    qrcaixa_mov.edit;
    if qrcaixa_mov.FieldByName('TIPO_MOV').asinteger = 2 then
    begin
      qrcaixa_mov.FieldByName('valor').Asfloat := qrcaixa_mov.FieldByName('valor').Asfloat * (-1);
    end;
    frmcaixa_ficha := tfrmcaixa_ficha.create(self);
    frmcaixa_ficha.showmodal;

    qrcaixa_mov1.Locate('codigo',cod,[loCaseInsensitive]);
  END
  ELSE
  BEGIN
    APPLICATION.MEssagebox('Este lançamento não pode ser alterado!','Aviso',mb_ok+MB_ICONWARNING);
  END;
   frmcaixa.OnShow(FRMCAIXA);    }
end;

procedure Tfrmcaixa.brelatorioClick(Sender: TObject);
begin
  DM.SDS_Usuarios.Locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[lopartialkey]);

  IF DM.SDS_UsuariosCODIGO.AsString = '99' then
  BEGIN
  FRMLISTA_CAIXA1 := TFRMLISTA_CAIXA1.CREATE(SELF);
  FRMLISTA_CAIXA1.SHOWMODAL;
  end else
  begin
  FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
  FRMLISTA_CAIXA2.SHOWMODAL;
  end;
end;

procedure Tfrmcaixa.bexcluirClick(Sender: TObject);
var
  cod : string;
begin
  IF (QRCAIXA_MOV1.FIELDBYNAME('tipo_mov').ASINTEGER = 1) OR (QRCAIXA_MOV1.FIELDBYNAME('tipo_mov').ASINTEGER = 2) THEN
  BEGIN
   if FormPrincipal.Label1.Caption ='S'then
    begin
      RENTRADA.Value := RENTRADA.Value - frmcaixa.qrcaixa_mov1.fieldbyname('valor_entrada').asfloat;
      Rsaida.Value :=   Rsaida.Value - frmcaixa.qrcaixa_mov1.fieldbyname('valor_saida').asfloat;
      frmcaixa.RSALDO.value := rentrada.value - rsaida.value;

    //  qrcaixa_mov.Open;
      cod := qrcaixa_mov1.fieldbyname('codigo').asstring;
      //qrcaixa_mov.Locate('codigo',cod,[loCaseInsensitive]);
     if Application.MessageBox('Confirma a Exclusão do Lançamento do Caixa?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
     begin
        try
          try
            with DelItem do
               begin
                  close;
                  Parambyname('codace').AsInteger := strtoint(cod);
                  ExecSQL;
               end;
            IBTRAce.Commit;
          except
            IBTRAce.Rollback;
            showmessage('Erro ao Excluir o Lançamento');
          end;
        finally
          DelItem.Close;
        end;
     end;
      formprincipal.log(codigo_usuario,'CAIXA',qrCAIXA_MOV1.fieldbyname('codigo').asstring,'EXCLUIU',qrCAIXA_MOV1.fieldbyname('historico').asstring);
      //qrcaixa_mov.delete;
      //qrcaixa_mov.ApplyUpdates(0);
    end
   ELse
    begin
      Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    end;
  end
  else
  begin
    APPLICATION.MEssagebox('Este lançamento não pode ser excluído!','Aviso',mb_ok+MB_ICONWARNING);
  end;
   frmcaixa.OnShow(FRMCAIXA);
end;

procedure Tfrmcaixa.Incluir1Click(Sender: TObject);
begin
  if bincluir.Enabled then bincluirClick(frmcaixa);
end;

procedure Tfrmcaixa.Alterar1Click(Sender: TObject);
begin
 if balterar.Enabled then balterarClick(frmcaixa);
end;

procedure Tfrmcaixa.Excluir1Click(Sender: TObject);
begin
 if bexcluir.Enabled then bexcluirClick(frmcaixa);
end;

procedure Tfrmcaixa.Relatrios2Click(Sender: TObject);
begin
 if brelatorio.Enabled then brelatorioClick(frmcaixa);
end;

procedure Tfrmcaixa.Sair2Click(Sender: TObject);
begin
   if bfechar.Enabled then bfecharClick(frmcaixa);
end;

{
// - 12345678901234567890

00 - IMPLANTAÇÃO DE SALDO
01 - LANCTO. ENTRADA
02 - LANCTO. SAIDA
03 - VENDA DINHEIRO
04 - VENDA CREDIARIO
05 - VENDA CHEQUE A VISTA
06 - VENDA CHEQUE A PRAZO
07 - VENDA CARTAO CREDITO
08 - VENDA CARTAO DEBITO
09 - RECEBTO. DINHEIRO
10 - RECEBTO. CHEQUE A.V.
11 - RECEBTO. CHEQUE A.P.
13 - RECEBTO. DE JUROS
14 - DESCONTO NO RECEBTO.
15 - RECEBTO. CARTAO
16 - RECEBTO. BOLETO
17 - OUTRAS ENTRADAS
18 - OUTRAS SAIDAS
19 - O.S. DINHEIRO
20 - O.S. CREDIARIO
21 - O.S. CHEQUE A VISTA
22 - O.S. CHEQUE A PRAZO
23 - O.S. CARTAO CREDITO
24 - O.S. CARTAO DEBITO
25 - PAGTO - DINHEIRO
26 - PAGTO - CHEQUE
27 - PAGTO - CHEQUE TERC.
28 - PAGTO - OUTROS
29 - PAGTO - CARTÃO DÉB.
30 - PAGTO - JUROS
31 - PAGTO - DEBITO CONTA

40 - VENDA CONVENIO
41 - VENDA CONVENIO VIDALINK
42 - VENDA FINANCEIRA
43 - VENDA VALE



}

procedure Tfrmcaixa.wwDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
  var
    saida : Real;
begin
saida:= qrcaixa_mov1.FieldByName('VALOR_SAIDA').ASFLOAT ;
If saida > 0 then
wwDBGrid1.Canvas.Font.Color:= clRed;
If saida = 0 then
wwDBGrid1.Canvas.Font.Color:= clBlack;
wwDBGrid1.DefaultDrawDataCell(Rect, wwDBGrid1.columns[datacol].field, State);


  if not odd(qrcaixa_mov1.RecNo) then
  if not (gdselected in State) then
    begin
     wwDBGrid1.Canvas.Brush.Color := $00FDE2BD; //$00FFEFDF;
    wwDBGrid1.Canvas.FillRect(Rect);
    wwDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
   end; 
end;

end.
