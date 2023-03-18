unit contaspagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Collection, ExtCtrls, StdCtrls, TFlatPanelUnit, Mask,
  Buttons,   Menus, DBCtrls,  ImgList, aDvGlowButton,  rxToolEdit, rxCurrEdit,
  XDBGrids, RzEdit, RzBtnEdt, Ubibli1,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Wwkeycb, System.ImageList, AdvPanel;

type
  Tfrmcontaspagar = class(TForm)
    qrcontaspagar: TFDQuery;
    dscontaspagar: TDataSource;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Pagamento1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Extornar1: TMenuItem;
    Fechar1: TMenuItem;
    otalizar1: TMenuItem;
    Filtro1: TMenuItem;
    DBEdit1: TDBEdit;
    ImageList1: TImageList;
    Qrsoma: TFDQuery;
    FlatPanel7: TAdvPanel;
    pselecao: TAdvPanel;
    Label19: TLabel;
    rselecao: TRxCalcEdit;
    Panel1: TAdvPanel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label6: TLabel;
    DBText4: TDBText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText8: TDBText;
    Bevel6: TBevel;
    Bevel7: TBevel;
    bnf: TAdvGlowButton;
    Bevel8: TBevel;
    Panel2: TAdvPanel;
    Label7: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    combo_situacao: TComboBox;
    combo_periodo: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    bitbtn1: TAdvGlowButton;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    DBText6: TDBText;
    DBText7: TDBText;
    combo_loc: TComboBox;
    LOC: TwwIncrementalSearch;
    Label1: TLabel;
    Panel3: TAdvPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bpagamento: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bextornar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bdesliga_filtro: TBitBtn;
    Panel4: TAdvPanel;
    Bevel12: TBevel;
    Label16: TLabel;
    Label17: TLabel;
    rpagar: TRxCalcEdit;
    rpaga: TRxCalcEdit;
    btotal: TButton;
    Label2: TLabel;
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
    qrcaixa_mov: TFDQuery;
    Cliente: TRzButtonEdit;
    RXLabel6: TEdit;
    Edit2: TEdit;
    wwDBGrid1: TXDBGrid;
    qrcontaspagarsituacao2: TIntegerField;
    qrcontaspagarCODIGO: TIntegerField;
    qrcontaspagarDATA_EMISSAO: TDateField;
    qrcontaspagarDATA_VENCIMENTO: TDateField;
    qrcontaspagarDATA_PAGAMENTO: TDateField;
    qrcontaspagarCODCONTA: TIntegerField;
    qrcontaspagarCODFORNECEDOR: TIntegerField;
    qrcontaspagarDOCUMENTO: TStringField;
    qrcontaspagarNOTAFISCAL: TStringField;
    qrcontaspagarHISTORICO: TStringField;
    qrcontaspagarC: TStringField;
    qrcontaspagarE: TStringField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarESPECIE: TStringField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarCODNOTA: TIntegerField;
    qrcontaspagarMOVIMENTO: TIntegerField;
    qrcontaspagarCODCAIXA: TIntegerField;
    qrcontaspagarfornecedor: TStringField;
    qrcontaspagarconta: TStringField;
    BIMportar: TAdvGlowButton;
    qrgrade: TFDQuery;
    qrgradeCODIGO_GERA: TIntegerField;
    qrgradeCODIGO: TIntegerField;
    qrgradeDATA_CADASTRO: TDateField;
    qrgradeDATA_EMISSAO: TDateField;
    qrgradeDATA_VENCIMENTO: TDateField;
    qrgradeDATA_BAIXA: TDateField;
    qrgradeUSUARIO_CADASTRO: TStringField;
    qrgradeUSUARIO_AUTORIZACAO: TStringField;
    qrgradeUSUARIO_BAIXA: TStringField;
    qrgradeTIPO_DOCUMENTO: TStringField;
    qrgradeFORNECEDOR: TStringField;
    qrgradeN_DOCUMENTO: TStringField;
    qrgradePARCELA: TStringField;
    qrgradeSERIE: TStringField;
    qrgradeAUTORIZACAO: TStringField;
    qrgradeOBSERVACOES: TBlobField;
    qrgradeTIPO: TStringField;
    qrgradeCODIGO_FORNECEDOR: TIntegerField;
    qrgradeCODIGO_FORNECEDOR_1: TIntegerField;
    i1: TMenuItem;
    qrcontaspagarVALOR: TBCDField;
    qrcontaspagarVALORPAGO: TBCDField;
    qrcontaspagarLIQUIDO: TBCDField;
    qrcontaspagarDESCONTO: TBCDField;
    qrcontaspagarACRESCIMO: TBCDField;
    qrgradeDESCONTO: TBCDField;
    qrgradeMULTA: TBCDField;
    qrgradeJUROS: TBCDField;
    qrgradeVALOR_DOCUMENTO: TBCDField;
    qrgradeVALOR_PARCELA: TBCDField;
    qrgradeVALOR_BAIXA: TBCDField;
    qrgradeVALOR_ADIANTAMENTO: TBCDField;
    qrgradeVALOR_AUTORIZADO: TBCDField;
    qrgradeVALOR_PAGAR: TBCDField;
    Label8: TLabel;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    qrcontaspagarCOD_CENTRO_CUSTO: TIntegerField;
    qrcontaspagarCOD_IMOVEL: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure COMBOFORNECEDOREnter(Sender: TObject);
    procedure COMBOFORNECEDORExit(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure rpagarKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure qrcontaspagarAfterInsert(DataSet: TDataSet);
    procedure qrcontaspagarCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure bnfClick(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure bextornarClick(Sender: TObject);
    procedure bpagamentoClick(Sender: TObject);
    procedure Pagamento1Click(Sender: TObject);
    procedure Extornar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure LOCEnter(Sender: TObject);
    procedure LOCExit(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure rselecaoChange(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Filtro1Click(Sender: TObject);
    procedure combo_periodoKeyPress(Sender: TObject; var Key: Char);
    procedure combo_locKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bdesliga_filtroClick(Sender: TObject);
    procedure btotalClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure wwDBGrid1CellClick(Column: TXColumn);
    procedure BIMportarClick(Sender: TObject);
    procedure i1Click(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure ClienteEnter(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar: Tfrmcontaspagar;
  NAO_INCLUIR, ACHOU: BOOLEAN;
  CONTA, situacao, fornecedor, periodo: string;
  texto: PAnsiChar;
  cod_caixa : Integer;
  text : string;
  
implementation

uses contaspagar_ficha, contaspagar_fichaalteracao,
  contaspagar_pgto, principal, lista_pagar2, contaspagar_data,
  contaspagar_nf, ModulodeDados, ConsPlanoContas,
  Uincplcontas, contaspagar_Ext, xloc_fornecedor, ModuleDados1, DateUtils;

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
  end;

procedure Tfrmcontaspagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //dm.Conexao.Rollback;

  Action := CAFREE;
end;

procedure Tfrmcontaspagar.FormShow(Sender: TObject);
begin
  DateEdit1.Date:= Now;
  DateEdit2.Date:= IncDay(Now, 30);

  bdesliga_filtroClick(frmcontaspagar);

  rselecao.Value := 0;
  pselecao.visible := false;

  DM.SDS_Fornecedores.Active := false;
  dm.SDS_Fornecedores.SQL.Clear;
  DM.SDS_Fornecedores.SQL.Add('select * from fornecedores order by codigo ASC');
  DM.SDS_Fornecedores.Active := True;

  DM1.Sds_CentroCusto.Active := FALSE;
  DM1.Sds_CentroCusto.Active := True;

  DM.SDS_PlContas.Active := FALSE;

 DM.SDS_PlContas.DataSet.CommandText :=('SELECT * FROM PLANOCONTAS WHERE INDICADOR = ''A''');
  DM.SDS_PlContas.Active := TRUE;


  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add
    ('SELECT * FROM CONTAS_APAGAR WHERE SITUACAO = 1 ORDER BY DATA_VENCIMENTO');
  qrcontaspagar.open;

  btotalClick(frmcontaspagar);

  wwDBGrid1.SETFOCUS;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDOREnter(Sender: TObject);
begin
  cliente.Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDORExit(Sender: TObject);
begin
  cliente.Color := clwindow;
end;

procedure Tfrmcontaspagar.DateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcontaspagar.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontaspagar.rpagarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cliente.SETFOCUS;
end;

procedure Tfrmcontaspagar.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar.DBEdit1Change(Sender: TObject);
begin
  try
    if qrcontaspagar.FieldByName('SITUACAO').ASINTEGER = 2 then
    begin

      balterar.enabled := false;
      bpagamento.enabled := false;
      //bextornar.enabled := true;

    end
    else
    begin
      balterar.enabled := true;
      bpagamento.enabled := true;
      //bextornar.enabled := false;
    end;

    if qrcontaspagar.FieldByName('codnota').asstring <> '' then
      bnf.visible := true
    else
      bnf.visible := false;
  except
  end;
end;

procedure Tfrmcontaspagar.bincluirClick(Sender: TObject);
begin
  NAO_INCLUIR := false;
  frmcontaspagar_ficha := tfrmcontaspagar_ficha.create(self);
  frmcontaspagar_ficha.showmodal;

  wwDBGrid1.SETFOCUS;
end;

procedure Tfrmcontaspagar.balterarClick(Sender: TObject);
begin
  if qrcontaspagar.FieldByName('situacao').ASINTEGER = 1 then
  begin
    frmcontaspagar_FICHAALTERACAO :=  tfrmcontaspagar_FICHAALTERACAO.create(self);
    with frmcontaspagar_FICHAALTERACAO do
    begin
      DateEdit1.DATE := qrcontaspagar.FieldByName('data_emissao').asdatetime;
      EFORNECEDOR.TEXT := qrcontaspagar.FieldByName('codfornecedor').asstring;
      enomefornecedor.TEXT := qrcontaspagar.FieldByName('FORNECEDOR').asstring;
      enomeconta.TEXT := qrcontaspagar.FieldByName('conta').asstring;
      ECONTa.TEXT := qrcontaspagar.FieldByName('codconta').asstring;
      EDIT5.TEXT := qrcontaspagar.FieldByName('notafiscal').asstring;
      RVALOR.Value := qrcontaspagar.FieldByName('valor').asfloat;
      EDIT1.TEXT := qrcontaspagar.FieldByName('documento').asstring;
      EDIT6.TEXT := qrcontaspagar.FieldByName('historico').asstring;
      COMBOESPECIE.TEXT := qrcontaspagar.FieldByName('especie').asstring;
      EDIT2.TEXT := qrcontaspagar.FieldByName('C').asstring;
      EDIT3.TEXT := qrcontaspagar.FieldByName('E').asstring;
      DateEdit2.DATE := qrcontaspagar.FieldByName('data_vencimento').asdatetime;
      EImovel.text  := qrcontaspagar.FieldByName('COD_IMOVEL').asstring;
      eCentro.text  := qrcontaspagar.FieldByName('COD_CENTRO_CUSTO').asstring;
    end;
    frmcontaspagar_FICHAALTERACAO.showmodal;
  end
  else
  begin
    application.messagebox
      ('Esta conta já foi paga! Impossível fazer alteração!', 'Atenção',
      mb_ok + MB_ICONWARNING);
  end;

  wwDBGrid1.SETFOCUS;
end;

procedure Tfrmcontaspagar.wwDBGrid1Enter(Sender: TObject);
begin
  NAO_INCLUIR := true;
end;

procedure Tfrmcontaspagar.wwDBGrid1Exit(Sender: TObject);
begin
  NAO_INCLUIR := false;
end;

procedure Tfrmcontaspagar.qrcontaspagarAfterInsert(DataSet: TDataSet);
begin
  if NAO_INCLUIR then
    qrcontaspagar.Cancel;

end;

procedure Tfrmcontaspagar.qrcontaspagarCalcFields(DataSet: TDataSet);
begin
  if qrcontaspagar.FieldByName('SITUACAO').ASINTEGER = 2 then
    qrcontaspagar.FieldByName('SITUACAO2').ASINTEGER := 2;
  if qrcontaspagar.FieldByName('SITUACAO').ASINTEGER = 1 then
  begin
    if qrcontaspagar.FieldByName('DATA_VENCIMENTO').asdatetime = DATE then
      qrcontaspagar.FieldByName('SITUACAO2').ASINTEGER := 4;
    if qrcontaspagar.FieldByName('DATA_VENCIMENTO').asdatetime < DATE then
      qrcontaspagar.FieldByName('SITUACAO2').ASINTEGER := 3;
    if qrcontaspagar.FieldByName('DATA_VENCIMENTO').asdatetime > DATE then
      qrcontaspagar.FieldByName('SITUACAO2').ASINTEGER := 1;
  end;  
end;

procedure Tfrmcontaspagar.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
var
  situacao, fornecedor, periodo: string;
begin
 { if AFieldName = 'situacao2' then
  begin
    // plegenda.Visible := true;
    // BitBtn28.SetFocus;
  end;

  if (ansiuppercase(AFieldName) = ansiuppercase('data_vencimento')) or
    (ansiuppercase(AFieldName) = ansiuppercase('historico')) or
    (ansiuppercase(AFieldName) = ansiuppercase('notafiscal')) or
    (ansiuppercase(AFieldName) = ansiuppercase('documento')) or
    (ansiuppercase(AFieldName) = ansiuppercase('especie')) or
    (ansiuppercase(AFieldName) = ansiuppercase('valor')) then
  begin
    if combo_situacao.itemindex = 0 then
      situacao := ' and situacao = 1 ';
    if combo_situacao.itemindex = 1 then
      situacao := ' and situacao = 1 and data_vencimento >= :datax ';
    if combo_situacao.itemindex = 2 then
      situacao := ' and situacao = 2 ';
    if combo_situacao.itemindex = 3 then
      situacao := '';

    if cliente.TEXT = '' then
      fornecedor := ''
    else
      fornecedor := ' and codfornecedor = ''' +
        dm.SDS_Fornecedores.FieldByName('codigo').asstring + '''';

    if combo_periodo.itemindex = 0 then
      periodo :=
        ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
    if combo_periodo.itemindex = 1 then
      periodo :=
        ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
    if combo_periodo.itemindex = 2 then
      periodo :=
        ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';

    qrcontaspagar.close;
    qrcontaspagar.sql.clear;
    qrcontaspagar.sql.Add('select * from CONTAS_APAGAR where codigo is not null' +
      situacao + fornecedor + periodo + ' order by ' + AFieldName);
    if combo_situacao.itemindex = 1 then
      qrcontaspagar.Params.ParamByName('datax').asdatetime := DATE;
    qrcontaspagar.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
    qrcontaspagar.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
    qrcontaspagar.open;
  end;

  if ansiuppercase(AFieldName) = 'FORNECEDOR' then
  begin
    if combo_situacao.itemindex = 0 then
      situacao := ' and situacao = 1 ';
    if combo_situacao.itemindex = 1 then
      situacao := ' and situacao = 1 and data_vencimento >= :datax ';
    if combo_situacao.itemindex = 2 then
      situacao := ' and situacao = 2 ';
    if combo_situacao.itemindex = 3 then
      situacao := '';

    if Cliente.TEXT = '' then
      fornecedor := ''
    else
      fornecedor := ' and codfornecedor = ''' +
        dm.SDS_Fornecedores.FieldByName('codigo').asstring + '''';

    if combo_periodo.itemindex = 0 then
      periodo :=
        ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
    if combo_periodo.itemindex = 1 then
      periodo :=
        ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
    if combo_periodo.itemindex = 2 then
      periodo :=
        ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';

    qrcontaspagar.close;
    qrcontaspagar.sql.clear;
    qrcontaspagar.sql.Add('select * from CONTAS_APAGAR where codigo is not null' +
      situacao + fornecedor + periodo + ' order by codfornecedor');
    if combo_situacao.itemindex = 1 then
      qrcontaspagar.Params.ParamByName('datax').asdatetime := DATE;
    qrcontaspagar.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
    qrcontaspagar.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
    qrcontaspagar.open;
  end;
      }
end;

procedure Tfrmcontaspagar.BitBtn1Click(Sender: TObject);
begin
  bdesliga_filtroClick(frmcontaspagar);

  if combo_situacao.itemindex = 0 then
    situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then
    situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 2 then
    situacao := '';

  if Cliente.TEXT = '' then
    fornecedor := ''
  else
    fornecedor := ' and codfornecedor = ''' + Cliente.Text + '''';

    if econta.Text = '' then
    CONTA := ''
    else
    conta := ' and codconta = ''' + econta.text + '''';


  if combo_periodo.itemindex = 0 then
    periodo := ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
  if combo_periodo.itemindex = 1 then
    periodo := ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
  if combo_periodo.itemindex = 2 then
    periodo := ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add('select * from CONTAS_APAGAR where codigo is not null' +
    situacao + fornecedor + periodo + conta + '');
  if combo_situacao.itemindex = 1 then
  qrcontaspagar.sql.Add( ' order by data_pagamento')
  else
  qrcontaspagar.sql.Add( ' order by data_vencimento');
  qrcontaspagar.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
  qrcontaspagar.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  qrcontaspagar.open;
  btotalClick(frmcontaspagar);

end;

procedure Tfrmcontaspagar.bnfClick(Sender: TObject);
begin
  frmcontaspagar_nf := tfrmcontaspagar_nf.create(self);
  with frmcontaspagar_nf do
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.sql.Add('select * from notasfiscais where CODIGO_NOTA = ''' +
      qrcontaspagar.FieldByName('codnota').asstring + '''');
    qrnota.open;
    if qrnota.recordcount > 0 then
    begin
      qritem.close;
      qritem.sql.clear;
      qritem.sql.Add('select * from notasfiscais_itens where CODIGO_NOTA = ''' +
        qrnota.FieldByName('CODIGO_NOTA').asstring + '''');
      qritem.sql.Add('ordeR by CODIGO_ITEM');
      qritem.open;
      frmcontaspagar_nf.showmodal;
    end
    else
    begin
      application.messagebox('Nota Fiscal não encontrada! Favor verificar!',
        'Atenção', mb_ok + mb_iconerror);
      frmcontaspagar_nf.destroy;
    end;

  end;

end;

procedure Tfrmcontaspagar.Alterar1Click(Sender: TObject);
begin
  if balterar.enabled then
    balterar.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.bextornarClick(Sender: TObject);

begin
  //  if frmprincipal.autentica('Extornar Conta', 4) then
  if FormPrincipal.Label3.Caption ='S'then
  begin
  FormContasPagar_ext := tFormContasPagar_ext.create(Self);
  FormContasPagar_ext.showmodal;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

  { if qrcontaspagar.FieldByName('situacao').ASINTEGER = 1 then
    begin
      application.messagebox('Esta conta não foi paga!', 'Aviso',
        mb_ok + MB_ICONWARNING);
    end
    else
    begin
    //  DM.SDS_USUARIOS.open;
    
      DM.SDS_USUARIOS.locate('codigo', '99',
        [loCaseInsensitive]);
      if qrcontaspagar.FieldByName('data_pagamento')
        .asdatetime = DM.SDS_Usuarios.FieldByName('data').asdatetime
      then
      begin
        if qrcontaspagar.FieldByName('movimento').ASINTEGER = 99 then
        begin
          application.messagebox
            ('Esta conta foi paga com várias formas de pagamento ou em conjunto com outras contas. Isto impede que seja feito um lançamento automático do estorno no caixa. Favor entrar no caixa, e providenciar o acerto manualmente.',
            'Aviso', mb_ok + MB_ICONINFORMATION);
          qrcontaspagar.edit;
          qrcontaspagar.FieldByName('situacao').ASINTEGER := 1;
          qrcontaspagar.FieldByName('filtro').ASINTEGER := 0;
          qrcontaspagar.FieldByName('valorpago').asfloat := 0;
          qrcontaspagar.FieldByName('data_pagamento').asstring := '';
          qrcontaspagar.post;

          qrcontaspagar.Refresh;
        end
        else
        begin
            if (DM.SDS_USUARIOS.FieldByName('codigo')
              .asstring = qrcontaspagar.FieldByName('codcaixa').asstring) then
            begin
              if DM.SDS_USUARIOS.FieldByName('situacao').ASINTEGER = 1
              then // caixa aberto
              begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := qrcontaspagar.FieldByName('valorpago').asfloat;
                    qrcaixa_mov.parambyname('valor').asfloat := qrcontaspagar.FieldByName('valorpago').asfloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
                    qrcaixa_mov.parambyname('historico').asstring := 'Estorno de Pagto. Docto. ' + qrcontaspagar.FieldByName('documento').asstring;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                   // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

                    qrcontaspagar.edit;
                    qrcontaspagar.FieldByName('situacao').ASINTEGER := 1;
                    qrcontaspagar.FieldByName('filtro').ASINTEGER := 0;
                    qrcontaspagar.FieldByName('valorpago').asfloat := 0;
                    qrcontaspagar.FieldByName('data_pagamento').asstring := '';
                    qrcontaspagar.post;

                   // dm.IBTransaction.CommitRetaining;

                qrcontaspagar.Refresh;
              end
              else
              begin
                application.messagebox
                  ('Não há caixa aberto para este operador! Impossível prosseguir com o estorno!',
                  'Aviso', mb_ok + MB_ICONWARNING);
              end;
            end
            else
            begin
              texto := PAnsiChar('Esta conta foi baixada pelo caixa ' +
                qrcontaspagar.FieldByName('codcaixa').asstring +
                '. Apenas ele tem autorização para extorná-la!');
              application.messagebox(texto, 'Atenção', mb_ok + MB_ICONWARNING);
            end;
        end;
      end
      else
      begin
        texto := PAnsiChar('O pagamento desta conta foi lançFDo no caixa do dia: ' +
          qrcontaspagar.FieldByName('data_pagamento').asstring +
          '. Não será possível fazer um lançamento de estorno no caixa atual! Deseja prosseguir com o estorno?');
        if application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING) = idyes
        then
        begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := qrcontaspagar.FieldByName('valorpago').asfloat;
                    qrcaixa_mov.parambyname('valor').asfloat := qrcontaspagar.FieldByName('valorpago').asfloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
                    qrcaixa_mov.parambyname('historico').asstring := 'Estorno de Pagto. Docto. ' + qrcontaspagar.FieldByName('documento').asstring;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                   // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          qrcontaspagar.edit;
          qrcontaspagar.FieldByName('situacao').ASINTEGER := 1;
          qrcontaspagar.FieldByName('filtro').ASINTEGER := 0;
          qrcontaspagar.FieldByName('valorpago').asfloat := 0;
          qrcontaspagar.FieldByName('data_pagamento').asstring := '';
          qrcontaspagar.post;
          qrcontaspagar.Refresh;
        end;
      end;



     formprincipal.log(codigo_usuario,'C.PAGAR',FRMCONTASPAGAR.qrcontaspagar.fieldbyname('documento').asstring,'EXTORNOU',' Estornou Conta a Pagar Conta Nr: ' +
      qrcontaspagar.fieldbyname('documento').asstring +
      ' Fornecedor: ' +  qrcontaspagar.fieldbyname('fornecedor').asstring,);

    end;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end; }



end;

procedure Tfrmcontaspagar.bpagamentoClick(Sender: TObject);
var
  valor, pago: real;
begin
  if rselecao.Value = 0 then
  //  wwDBGrid1.OnDblClick(frmcontaspagar);
  if not qrcontaspagar.locate('filtro', 1, [loCaseInsensitive]) then
  begin
    showmessage('Favor selecionar uma conta!');
    exit;

  end;

 // if rselecao.Value = 0 then
   // wwDBGrid1.OnDblClick(frmcontaspagar);

 // if frmprincipal.autentica_caixa('Acesso ao Caixa', 0) then

    if dm.SDS_Usuarios.FieldByName('situacao').ASINTEGER = 1 then
    // caixa geral aberto
    begin
      if qrcontaspagar.State = dsedit then
        qrcontaspagar.post;


      qrcontaspagar.Refresh;

      frmcontaspagar_pgto := tfrmcontaspagar_pgto.create(self);
      frmcontaspagar_pgto.qrcontaspagar.close;
      frmcontaspagar_pgto.qrcontaspagar.sql.clear;
      frmcontaspagar_pgto.qrcontaspagar.sql.Add
      ('select * from CONTAS_APAGAR where situacao = 1 and filtro = 1 order by data_vencimento');
      frmcontaspagar_pgto.qrcontaspagar.open;
      frmcontaspagar_pgto.qrcontaspagar.first;
      valor := 0;
      pago  := 0;
      while not frmcontaspagar_pgto.qrcontaspagar.Eof do
      begin
        frmcontaspagar_pgto.qrcontaspagar.edit;
        frmcontaspagar_pgto.qrcontaspagar.FieldByName('desconto').asfloat := 0;
        frmcontaspagar_pgto.qrcontaspagar.FieldByName('acrescimo').asfloat := 0;
      //  frmcontaspagar_pgto.qrcontaspagar.FieldByName('valorpago').asfloat :=
      //    frmcontaspagar_pgto.qrcontaspagar.FieldByName('valorpago').asfloat;
        frmcontaspagar_pgto.qrcontaspagar.post;

        valor := valor + frmcontaspagar_pgto.qrcontaspagar.FieldByName('valor').asfloat;
        pago := pago + frmcontaspagar_pgto.qrcontaspagar.FieldByName('liquido').asfloat;
        frmcontaspagar_pgto.qrcontaspagar.next;
      end;
      frmcontaspagar_pgto.RTOTAL_VALOR.Value := valor;
      frmcontaspagar_pgto.RTOTAL_desconto.Value := 0;
      frmcontaspagar_pgto.RTOTAL_acrescimo.Value := 0;
      frmcontaspagar_pgto.RTOTAL_PAGO.Value :=  pago;
      frmcontaspagar_pgto.showmodal;
    end
    else
    begin
      application.messagebox('Caixa fechado! Favor verificar...', 'Atenção',
        mb_ok + MB_ICONWARNING);
    end;

  {else
  begin
    application.messagebox('Acesso não autorizado!', 'Atenção',
      mb_ok + MB_ICONWARNING);
  end; }

  rselecao.Value := 0;

  if qrcontaspagar.recordcount > 0 then
  begin
    qrcontaspagar.first;
    while not qrcontaspagar.Eof do
    begin
      if qrcontaspagar.FieldByName('filtro').asstring = '1' then
        rselecao.Value := rselecao.Value + qrcontaspagarVALOR.asfloat;
      qrcontaspagar.next;
    end;
    qrcontaspagar.first;
  end;

end;

procedure Tfrmcontaspagar.Pagamento1Click(Sender: TObject);
begin
  if bpagamento.enabled then
    bpagamento.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.Extornar1Click(Sender: TObject);
begin
  if bextornar.enabled then
    bextornar.OnClick(frmcontaspagar);
end;

procedure Tfrmcontaspagar.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar.bexcluirClick(Sender: TObject);
var
  texto: PAnsiChar;
begin
  if FormPrincipal.Label3.Caption ='N'then
   begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
   end else
    if qrcontaspagar.FieldByName('situacao').ASINTEGER = 1 then
    begin
      text := ('Confirma a Exclusão da Conta: ' + #13 + 'Fornecedor: '
        + qrcontaspagar.FieldByName('fornecedor').Text + '           ' + #13
        + 'Vencimento: ' + qrcontaspagar.FieldByName('data_vencimento').Text
        + #13 + 'Documento: ' + qrcontaspagar.FieldByName('documento').text
        + #13 + 'Valor - R$: ' + qrcontaspagar.FieldByName('valor').text);

      // application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING) = idyes

      if MessageDlg(texto,  mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
      begin
        formprincipal.log(codigo_usuario, 'C.PAGAR',
          qrcontaspagar.FieldByName('codigo').asstring, 'EXCLUIU',
          qrcontaspagar.FieldByName('FORNECEDOR').asstring);

       { frmprincipal.logUC('Excluiu Conta a Pagar Conta Nr: ' +
          frmcontaspagar.qrcontaspagar.FieldByName('documento').asstring +
          ' Fornecedor: ' + frmcontaspagar.qrcontaspagar.FieldByName('fornecedor').asstring, 3); }

        qrcontaspagar.Delete;
        
      end;
    end
    else
    begin
      application.messagebox('Esta conta já foi paga! Impossível excluir!',
        'Atenção!!', mb_ok + mb_iconerror);
    end;


end;

procedure Tfrmcontaspagar.BitBtn4Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure Tfrmcontaspagar.LOCEnter(Sender: TObject);
begin
  LOC.Color := $00A0FAF8;
  if combo_loc.itemindex = 1 then
  begin
    qrcontaspagar.indexfieldnames := 'NOTAFISCAL';
    LOC.SearchField := 'NOTAFISCAL';
  end;
  if combo_loc.itemindex = 0 then
  begin
    qrcontaspagar.indexfieldnames := 'DOCUMENTO';
    LOC.SearchField := 'DOCUMENTO';
  end;

end;

procedure Tfrmcontaspagar.LOCExit(Sender: TObject);
begin
  LOC.Color := clwindow;
end;

procedure Tfrmcontaspagar.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_PAGAR2 := TFRMLISTA_PAGAR2.create(self);
  FRMLISTA_PAGAR2.showmodal;
end;

procedure Tfrmcontaspagar.DBText1Click(Sender: TObject);
begin
  if FormPrincipal.Label2.Caption ='S'then
  begin
    frmcontaspagar_data := tfrmcontaspagar_data.create(self);
    frmcontaspagar_data.showmodal;
  end else
  begin
   FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Alterar Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
end;
end;

procedure Tfrmcontaspagar.rselecaoChange(Sender: TObject);
begin
  if rselecao.Value <> 0 then
    pselecao.visible := true
  else
    pselecao.visible := false;

end;

procedure Tfrmcontaspagar.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #32 then
  begin
  //  wwDBGrid1DblClick(frmcontaspagar);
  end;
  if Key = #13 then
    bpagamentoClick(frmcontaspagar);

end;

procedure Tfrmcontaspagar.Filtro1Click(Sender: TObject);
begin
  combo_situacao.SETFOCUS;
end;

procedure Tfrmcontaspagar.combo_periodoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DateEdit1.SETFOCUS;
end;

procedure Tfrmcontaspagar.combo_locKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    LOC.SETFOCUS;
end;

procedure Tfrmcontaspagar.COMBOFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    combo_periodo.SETFOCUS;
end;

procedure Tfrmcontaspagar.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Cliente.SETFOCUS;
end;

procedure Tfrmcontaspagar.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bitbtn1.SETFOCUS;
end;

procedure Tfrmcontaspagar.bdesliga_filtroClick(Sender: TObject);
begin
  rselecao.Value := 0;
  pselecao.visible := false;

  qrcontaspagar.close;
  qrcontaspagar.sql.clear;
  qrcontaspagar.sql.Add('select * from CONTAS_APAGAR where filtro = ''1''');
  qrcontaspagar.open;

  if qrcontaspagar.recordcount > 0 then

  begin
    qrcontaspagar.first;
    while not qrcontaspagar.Eof do
    begin

      if (qrcontaspagar.FieldByName('filtro').asstring = '1') and
        (qrcontaspagar.FieldByName('situacao2').ASINTEGER <> 2) then
        rselecao.Value := rselecao.Value + qrcontaspagarVALOR.asfloat;

      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '0';
      qrcontaspagar.post;

      qrcontaspagar.next;
    end;
    qrcontaspagar.first;
  end;
end;

procedure Tfrmcontaspagar.btotalClick(Sender: TObject);
var
  situacao, fornecedor, periodo: string;
begin

  wwDBGrid1.DATASOURCE := nil;

  if combo_periodo.itemindex = 0 then
    periodo := ' and data_vencimento >= :datai and data_vencimento <= :dataf ';
  if combo_periodo.itemindex = 1 then
    periodo := ' and data_emissao    >= :datai and data_emissao    <= :dataf ';
  if combo_periodo.itemindex = 2 then
    periodo := ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ';

  if combo_situacao.itemindex = 0 then
    situacao := ' and situacao = 1 ';
  if combo_situacao.itemindex = 1 then
    situacao := ' and situacao = 1 and data_vencimento >= :datax ';
  if combo_situacao.itemindex = 2 then
    situacao := ' and situacao = 2 ';
  if combo_situacao.itemindex = 3 then
    situacao := '';

  if Cliente.TEXT = '' then
    fornecedor := ''
  else
    fornecedor := ' and codfornecedor = ''' + dm.SDS_Fornecedores.FieldByName
      ('codigo').asstring + '''';

  Qrsoma.close;
  Qrsoma.sql.clear;
  Qrsoma.sql.Add('select sum(VALOR) apagar, ' + // sum_0 A VENCER
    '(select sum(VALORPAGO) VALORPAGO from CONTAS_APAGAR where SITUACAO = 2 ' +
    periodo + fornecedor + situacao + ') ' + // column_
    'from CONTAS_APAGAR where situacao = 1 ' + periodo + fornecedor + situacao);
  Qrsoma.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
  Qrsoma.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  Qrsoma.open;

  rpagar.Value := Qrsoma.FieldByName('apagar').asfloat;
  rpaga.Value := Qrsoma.FieldByName('VALORPAGO').asfloat;

  wwDBGrid1.DATASOURCE := dscontaspagar;

end;

procedure Tfrmcontaspagar.Localizar1Click(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure Tfrmcontaspagar.ClienteButtonClick(Sender: TObject);
begin
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
      RXLabel6.Text    := DM.SDS_FornecedoresNOME.Text;
      Cliente.Text := DM.SDS_FornecedoresCODIGO.Text;
end;

procedure Tfrmcontaspagar.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT2.Text:=''
end;

procedure Tfrmcontaspagar.wwDBGrid1CellClick(Column: TXColumn);
begin
  try
    if qrcontaspagar.FieldByName('filtro').asstring = '1' then
    begin
      qrcontaspagar.edit;
      qrcontaspagar.FieldByName('filtro').asstring := '0';
      rselecao.Value := rselecao.Value - qrcontaspagar.FieldByName
        ('liquido').asfloat;
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

procedure Tfrmcontaspagar.BIMportarClick(Sender: TObject);
begin
NAO_INCLUIR := false;
qrgrade.Active := false;
qrgrade.Active := true;

 qrcontaspagar.open;

if Application.MESSAGEBOX('Confirma a importação das contas da antiga tabela?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
    qrgrade.Refresh;

   with qrgrade do
   begin
    First;
        while not Eof do
        begin
         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONTAS_APAGAR');
         DM.ProxCod.Open;

          IF qrgradeTIPO.Text = 'F' THEN
          BEGIN
          qrcontaspagar.Insert;
          qrcontaspagar.Edit;
          qrcontaspagar.fieldbyname('codigo').asINTEGER           :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;
          qrcontaspagar.fieldbyname('data_emissao').asdatetime    :=  qrgradeDATA_EMISSAO.AsDateTime;
          qrcontaspagar.fieldbyname('data_vencimento').asdatetime :=  qrgradeDATA_VENCIMENTO.asdatetime;
          qrcontaspagar.fieldbyname('data_PAGAMENTO').asdatetime  :=  qrgradeDATA_BAIXA.asdatetime;
          qrcontaspagar.fieldbyname('codconta').asstring           :=  '46';
          qrcontaspagar.fieldbyname('codfornecedor').asstring     :=  qrgradeCODIGO_FORNECEDOR_1.Text;
          qrcontaspagar.fieldbyname('valor').asfloat              :=  qrgradeVALOR_PARCELA.asfloat;
          qrcontaspagar.fieldbyname('valorpago').asfloat          :=  qrgradeVALOR_BAIXA.AsFloat;
          qrcontaspagar.fieldbyname('liquido').asfloat            :=  qrgradeVALOR_PArcela.asfloat + qrgradeMULTA.AsFloat + qrgradeJUROS.AsFloat - qrgradeDESCONTO.AsFloat;
          qrcontaspagar.fieldbyname('desconto').asfloat           :=  qrgradeDESCONTO.AsFloat;
          qrcontaspagar.fieldbyname('acrescimo').asfloat          :=  qrgradeMULTA.AsFloat + qrgradeJUROS.AsFloat;
          qrcontaspagar.fieldbyname('documento').asstring         :=  qrgradeN_DOCUMENTO.asstring + '-' + qrgradePARCELA.asstring;
          qrcontaspagar.fieldbyname('notafiscal').AsString        :=  qrgradeN_DOCUMENTO.asstring;
          qrcontaspagar.fieldbyname('historico').asstring         :=  Copy(qrgradeOBSERVACOES.asstring,1,60);
          qrcontaspagar.fieldbyname('C').value                     := null;
          qrcontaspagar.fieldbyname('E').Value                    :=  null;
          qrcontaspagar.fieldbyname('filtro').aSINTEGER           :=  0;
          qrcontaspagar.fieldbyname('especie').asstring           :=  Copy(qrgradeTIPO_DOCUMENTO.asstring,1,20);
          if qrgradeAUTORIZACAO.Text = 'B' THEN
          qrcontaspagar.fieldbyname('situacao').aSINTEGER         :=  2
          ELSE
          qrcontaspagar.fieldbyname('situacao').aSINTEGER         :=  1;
          qrcontaspagar.fieldbyname('codnota').value              :=  null;
          qrcontaspagar.fieldbyname('MOVIMENTO').value            :=  25;
          qrcontaspagar.fieldbyname('CODCAIXA').value             :=  null;
          end else
          IF qrgradeTIPO.Text = 'P' THEN
          BEGIN
          qrcontaspagar.Insert;
          qrcontaspagar.Edit;
          qrcontaspagar.fieldbyname('codigo').asINTEGER           :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;
          qrcontaspagar.fieldbyname('data_emissao').asdatetime    :=  qrgradeDATA_EMISSAO.AsDateTime;
          qrcontaspagar.fieldbyname('data_vencimento').asdatetime :=  qrgradeDATA_VENCIMENTO.asdatetime;
          qrcontaspagar.fieldbyname('data_PAGAMENTO').asdatetime  :=  qrgradeDATA_BAIXA.asdatetime;
          qrcontaspagar.fieldbyname('codconta').asstring           :=  qrgradeCODIGO_FORNECEDOR_1.Text;
          qrcontaspagar.fieldbyname('codfornecedor').Value        :=  NULL;
          qrcontaspagar.fieldbyname('valor').asfloat              :=  qrgradeVALOR_PARCELA.asfloat;
          qrcontaspagar.fieldbyname('valorpago').asfloat          :=  qrgradeVALOR_BAIXA.AsFloat;
          qrcontaspagar.fieldbyname('liquido').asfloat            :=  qrgradeVALOR_PAGAR.asfloat;
          qrcontaspagar.fieldbyname('desconto').asfloat           :=  qrgradeDESCONTO.AsFloat;
          qrcontaspagar.fieldbyname('acrescimo').asfloat          :=  qrgradeMULTA.AsFloat + qrgradeJUROS.AsFloat;
          qrcontaspagar.fieldbyname('documento').asstring         :=  qrgradeN_DOCUMENTO.asstring + '-' + qrgradePARCELA.asstring;
          qrcontaspagar.fieldbyname('notafiscal').AsString        :=  qrgradeN_DOCUMENTO.asstring;
          qrcontaspagar.fieldbyname('historico').asstring         :=  Copy(qrgradeOBSERVACOES.asstring,1,60);
          qrcontaspagar.fieldbyname('C').value                     := null;
          qrcontaspagar.fieldbyname('E').Value                    :=  null;
          qrcontaspagar.fieldbyname('filtro').aSINTEGER           :=  0;
          qrcontaspagar.fieldbyname('especie').asstring           :=  Copy(qrgradeTIPO_DOCUMENTO.asstring,1,20);
          if qrgradeAUTORIZACAO.Text = 'B' THEN
          qrcontaspagar.fieldbyname('situacao').aSINTEGER         :=  2
          ELSE
          qrcontaspagar.fieldbyname('situacao').aSINTEGER         :=  1;
          qrcontaspagar.fieldbyname('codnota').value              :=  null;
          qrcontaspagar.fieldbyname('MOVIMENTO').value            :=  25;
          qrcontaspagar.fieldbyname('CODCAIXA').value             :=  null;
          end;
          if  qrcontaspagar.State in [dsedit, dsinsert] then
          begin
          qrcontaspagar.post;
          end;
          Next;
          end;
     end;
 end;

end;

procedure Tfrmcontaspagar.i1Click(Sender: TObject);
begin
BIMportar.Click;
end;

procedure Tfrmcontaspagar.ClienteExit(Sender: TObject);
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
end;


procedure Tfrmcontaspagar.econtaExit(Sender: TObject);
begin
TEdit(Sender).Color := clwindow;
 // econta.Text := frmprincipal.zerarcodigo(econta.Text, 6);
  if econta.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, econta.Text, 'codigo')
    then
      bloccontaClick(frmcontaspagar)
    else
    begin
    //  Edit5.setfocus;
      enomeconta.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end  else
    blocconta.setfocus;
   // enomeconta.Text := '';

end;

procedure Tfrmcontaspagar.bloccontaClick(Sender: TObject);
begin
 FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;

  econta.Text := DM.SDS_PLCONTASCODIGO.TEXT;
  enomeconta.Text := DM.SDS_PlCONTASnome.TEXT;

end;

procedure Tfrmcontaspagar.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontaspagar.ClienteEnter(Sender: TObject);
begin
   dm.SDS_Fornecedores.Active := false;
   dm.SDS_Fornecedores.SQL.Clear;
   dm.SDS_Fornecedores.sql.add('select * from fornecedores order by NOME ASC');
   dm.SDS_Fornecedores.Active := True;
end;

procedure Tfrmcontaspagar.wwDBGrid1DblClick(Sender: TObject);
begin
FormLancPlcontas := tFormLancPlcontas.create(self);
FormLancPlcontas.showmodal;
end;

end.
