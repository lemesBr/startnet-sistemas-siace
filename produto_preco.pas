unit produto_preco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Buttons, TFlatPanelUnit, Mask,
  DBCtrls, DB, RzEdit, RXDBCtrl,
  ComCtrls, Menus,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvGlowButton,
  RxToolEdit, RxCurrEdit;

type
  Tfrmproduto_preco = class(TForm)
    ppreco: TPanel;
    FlatPanel9: TFlatPanel;
    FlatPanel10: TFlatPanel;
    dspreco: TDataSource;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    batualiza: TAdvGlowButton;
    BITBTN1: TAdvGlowButton;
    edcusto: TRzNumericEdit;
    edvenda: TRzNumericEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    FlatPanel1: TFlatPanel;
    Label86: TLabel;
    DBEdit69: TDBEdit;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Bevel2: TBevel;
    Label28: TLabel;
    Label41: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label39: TLabel;
    Bevel4: TBevel;
    Label40: TLabel;
    Label49: TLabel;
    Bevel7: TBevel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit32: TDBEdit;
    bpreco_venda: TBitBtn;
    Label71: TLabel;
    Label72: TLabel;
    batualiza_grade: TAdvGlowButton;
    DBEdit5: TRxDBCalcEdit;
    bnovopreco_venda: TBitBtn;
    bar: TProgressBar;
    query1: TFDQuery;
    query: TFDQuery;
    qrprod: TFDQuery;
    PopupMenu1: TPopupMenu;
    cancelar1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21Exit(Sender: TObject);
    procedure batualizaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit68Exit(Sender: TObject);
    procedure DBEdit69Exit(Sender: TObject);
    procedure bpreco_vendaClick(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure batualiza_gradeClick(Sender: TObject);
    procedure bnovopreco_vendaClick(Sender: TObject);
    procedure cancelar1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_preco: Tfrmproduto_preco;

implementation

uses compra_menu, principal, compra_item, ModulodeDados;

{$R *.dfm}

procedure Tfrmproduto_preco.DBEdit19Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_preco.DBEdit19Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  DM.qrpreco.Edit;
  DM.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat :=
    DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
    DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat / 100;

  DM.qrpreco.fieldbyname('PIS_ENTRADA').asfloat :=
    DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
    DM.qrpreco.fieldbyname('PIS_ENTRADA_P').asfloat / 100;

  DM.qrpreco.fieldbyname('COFINS_ENTRADA').asfloat :=
    DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
    DM.qrpreco.fieldbyname('COFINS_ENTRADA_P').asfloat / 100;

  DM.qrpreco.fieldbyname('IPI').asfloat :=
    DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
    DM.qrpreco.fieldbyname('IPI_P').asfloat / 100;

  //if DM.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
  bpreco_vendaClick(frmproduto_preco);

end;

procedure Tfrmproduto_preco.DBEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmproduto_preco.DBEdit21Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_preco.batualizaClick(Sender: TObject);
begin

  DM.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat :=  DM.qrpreco.fieldbyname('preco_venda').asfloat;

  DM.qrpreco.fieldbyname('DATA_ALTERACAO').asfloat := date;

  DM.qrproduto.fieldbyname('DATA_REMARCACAO_VENDA').AsDateTime := DM.qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime;
  DM.qrproduto.fieldbyname('preco_venda').asfloat := dbedit5.value;
  DM.qrproduto.fieldbyname('preco_custo').asfloat := DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat; //DM.qrpreco.fieldbyname('valor_ultima_compra').asfloat;
  DM.qrproduto.post;
  DM.QRPRECO.Post;
  close;

end;

procedure Tfrmproduto_preco.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_preco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_preco.FormShow(Sender: TObject);
begin
  edcusto.Text := formatfloat('###,###,##0.00', frmcompra_item.vcusto_anterior);
  edvenda.Text := formatfloat('###,###,##0.00', DM.qrprodutoPRECO_VENDA.AsCurrency);

  if DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').Value = null then
    DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').AsFloat := 0;

  // custo da compra
  DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat :=
    (DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat +
    DM.qrpreco.fieldbyname('FRETE').asfloat +
    DM.qrpreco.fieldbyname('SEGURO').asfloat +
    DM.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat +
    DM.qrpreco.fieldbyname('IPI').asfloat) -
    (DM.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat +
    DM.qrpreco.fieldbyname('DESCONTO').asfloat);

end;

procedure Tfrmproduto_preco.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then batualiza_grade.SetFocus;
end;

procedure Tfrmproduto_preco.DBEdit68Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if (DM.qrpreco.State = dsedit) or (DM.qrpreco.State = dsinsert) then
  begin
    DM.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat :=
      DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
      DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat / 100;

    bpreco_vendaClick(frmproduto_preco);
  end;

end;

procedure Tfrmproduto_preco.DBEdit69Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (DM.qrpreco.State = dsedit) or (DM.qrpreco.State = dsinsert) then
  begin
    DM.qrpreco.fieldbyname('IPI').asfloat :=
      DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
      DM.qrpreco.fieldbyname('IPI_P').asfloat / 100;
  end;
  bpreco_vendaClick(frmproduto_preco);

end;

procedure Tfrmproduto_preco.bpreco_vendaClick(Sender: TObject);
begin
  if (DM.qrpreco.State = dsedit) or (DM.qrpreco.State = dsinsert) then
  begin
  // custo da compra
      DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat :=
      (DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat +
      DM.qrpreco.fieldbyname('FRETE').asfloat +
      DM.qrpreco.fieldbyname('SEGURO').asfloat +
      DM.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat +
      DM.qrpreco.fieldbyname('IPI').asfloat) -
      (
      DM.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat +
      DM.qrpreco.fieldbyname('PIS_ENTRADA').asfloat +
      DM.qrpreco.fieldbyname('COFINS_ENTRADA').asfloat +
      DM.qrpreco.fieldbyname('DESCONTO').asfloat);

    DM.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat := DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;

  //total dos custos
    DM.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat :=
      DM.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat +
      DM.qrpreco.fieldbyname('PIS_P').asfloat +
      DM.qrpreco.fieldbyname('COFINS_P').asfloat +
      DM.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat +
      DM.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat +
      DM.qrpreco.fieldbyname('COMISSAO_P').asfloat;

  //preco de venda
    if DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat <= 0 then
    begin
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat := 0;
    end
    else
    begin
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat :=
        DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat /
        ((100 - (DM.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat + DM.qrpreco.fieldbyname('LUCRO_P').asfloat)) / 100);
    end;

    DM.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat := DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat;

    DM.qrpreco.fieldbyname('ICMS_SAIDA').asfloat :=
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat *
      DM.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat / 100;

    DM.qrpreco.fieldbyname('PIS').asfloat :=
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat *
      DM.qrpreco.fieldbyname('PIS_P').asfloat / 100;

    DM.qrpreco.fieldbyname('COFINS').asfloat :=
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat *
      DM.qrpreco.fieldbyname('COFINS_P').asfloat / 100;

    DM.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat :=
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat *
      DM.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat / 100;

    DM.qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat :=
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat *
      DM.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat / 100;

    DM.qrpreco.fieldbyname('COMISSAO').asfloat :=
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat *
      DM.qrpreco.fieldbyname('COMISSAO_P').asfloat / 100;

    DM.qrpreco.fieldbyname('TOTAL_CUSTO').asfloat :=
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat *
      DM.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat / 100;

    DM.qrpreco.fieldbyname('LUCRO').asfloat :=
      DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat *
      DM.qrpreco.fieldbyname('LUCRO_P').asfloat / 100;
  end;

end;

procedure Tfrmproduto_preco.DBEdit22Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  DM.qrpreco.Edit;
  DM.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat :=
    DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat * DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat / 100;

  DM.qrpreco.fieldbyname('IPI').asfloat :=
    DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
    DM.qrpreco.fieldbyname('IPI_P').asfloat / 100;

  //if DM.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
  bpreco_vendaClick(frmproduto_preco);


end;

procedure Tfrmproduto_preco.batualiza_gradeClick(Sender: TObject);
begin

  dm.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat :=   DM.qrpreco.fieldbyname('preco_venda').asfloat;
  dm.qrpreco.fieldbyname('DATA_ALTERACAO').asfloat := date;
  dm.QRPRECO.Post;

  bnovopreco_vendaClick(frmproduto_preco);

  close;

end;

procedure Tfrmproduto_preco.bnovopreco_vendaClick(Sender: TObject);
begin
//  DM.qrconfig.open;

//  if (DM.sds_empresa.FieldByName('TIPO_SEGMENTO').asstring = '2')then // and
    //(DM.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL') then
  begin

    if DM.qrproduto.fieldbyname('codigo_marca').asstring <> '1' then
    begin

      if Application.MessageBox(pchar('Deseja Atualizar os Produtos do Grupo Remarcação ' + DM.qrproduto.fieldbyname('codigo_marca').asstring + ' ?'), 'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
      begin


        query1.Close;
        query1.SQL.Clear;
        query1.SQL.Add('select * from produto_precos');
        query1.Open;

        query.Close;
        query.SQL.Clear;
        query.SQL.Add('select * from produtos where codigo_marca = ''' + DM.qrproduto.fieldbyname('codigo_marca').asstring + '''');
        query.Open;

        bar.position := 0;
        bar.Max := query.RecordCount;

        query.First;
        while not query.Eof do begin

          qrprod.close;
          qrprod.sql.clear;
          qrprod.sql.add('update PRODUTOS set');
          qrprod.sql.add('DATA_REMARCACAO_VENDA = :DATA_REMARCACAO_VENDA,');
          qrprod.sql.add('preco_venda = :PRECOVENDA,');
          qrprod.sql.add('preco_custo = :precocusto');
          qrprod.sql.add('where codigo = ''' + query.fieldbyname('codigo').AsString + '''');
          qrprod.params.parambyname('DATA_REMARCACAO_VENDA').AsDateTime := DM.qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime;
          qrprod.params.parambyname('precovenda').asfloat := dbedit5.value;
          qrprod.params.parambyname('precocusto').asfloat := DM.qrpreco.fieldbyname('valor_ultima_compra').asfloat;
          qrprod.execsql;


          if QUERY1.LOCATE('codproduto', query.fieldbyname('codigo').AsString, [loCaseInsensitive]) then
          begin
            query1.Edit;
            query1.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
            query1.fieldbyname('ICMS_ENTRADA_P').asfloat := DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat;
            query1.fieldbyname('ICMS_ENTRADA').asfloat := DM.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
            query1.fieldbyname('DESCONTO').asfloat := DM.qrpreco.fieldbyname('DESCONTO').asfloat;
            query1.fieldbyname('FRETE').asfloat := DM.qrpreco.fieldbyname('FRETE').asfloat;
            query1.fieldbyname('SEGURO').asfloat := DM.qrpreco.fieldbyname('SEGURO').asfloat;
            query1.fieldbyname('OUTRAS_DESPESAS').asfloat := DM.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat;
            query1.fieldbyname('IPI_P').asfloat := DM.qrpreco.fieldbyname('IPI_P').asfloat;
            query1.fieldbyname('IPI').asfloat := DM.qrpreco.fieldbyname('IPI').asfloat;
            query1.fieldbyname('CUSTO_COMPRA').asfloat := DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;
            query1.fieldbyname('ICMS_SAIDA_P').asfloat := DM.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat;
            query1.fieldbyname('ICMS_SAIDA').asfloat := DM.qrpreco.fieldbyname('ICMS_SAIDA').asfloat;
            query1.fieldbyname('PIS_P').asfloat := DM.qrpreco.fieldbyname('PIS_P').asfloat;
            query1.fieldbyname('PIS').asfloat := DM.qrpreco.fieldbyname('PIS').asfloat;
            query1.fieldbyname('COFINS_P').asfloat := DM.qrpreco.fieldbyname('COFINS_P').asfloat;
            query1.fieldbyname('COFINS').asfloat := DM.qrpreco.fieldbyname('COFINS').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat := DM.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat := DM.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL_P').asfloat := DM.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL').asfloat := DM.qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat;
            query1.fieldbyname('COMISSAO_P').asfloat := DM.qrpreco.fieldbyname('COMISSAO_P').asfloat;
            query1.fieldbyname('COMISSAO').asfloat := DM.qrpreco.fieldbyname('COMISSAO').asfloat;
            query1.fieldbyname('TOTAL_CUSTO_P').asfloat := DM.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat;
            query1.fieldbyname('TOTAL_CUSTO').asfloat := DM.qrpreco.fieldbyname('TOTAL_CUSTO').asfloat;
            query1.fieldbyname('LUCRO_P').asfloat := DM.qrpreco.fieldbyname('LUCRO_P').asfloat;
            query1.fieldbyname('LUCRO').asfloat := DM.qrpreco.fieldbyname('LUCRO').asfloat;
            query1.fieldbyname('PRECO_VENDA').asfloat := DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat;
            query1.fieldbyname('NOVO_PRECO_VENDA').asfloat := DM.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
            query1.fieldbyname('DATA_ALTERACAO').AsDateTime := DM.qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime;
            query1.fieldbyname('NOVO_PRECO_CUSTO').asfloat := DM.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat;
            query1.fieldbyname('PRECO_AUTOMATICO').AsInteger := DM.qrpreco.fieldbyname('PRECO_AUTOMATICO').AsInteger;
            query1.fieldbyname('ALTERA_AUTOMATICO').AsInteger := DM.qrpreco.fieldbyname('ALTERA_AUTOMATICO').AsInteger;
          end
          else
          begin
            dm.ProxCod.Close;
            dm.ProxCod.SQL.Clear;
            dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTO_PRECOS');
            DM.ProxCod.Open;

            query1.Insert;
            query1.fieldbyname('codigo').asINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;//frmprincipal.codifica('000026');
            query1.fieldbyname('codproduto').asstring := query.fieldbyname('codigo').asstring;
            query1.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
            query1.fieldbyname('ICMS_ENTRADA_P').asfloat := DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat;
            query1.fieldbyname('ICMS_ENTRADA').asfloat := DM.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
            query1.fieldbyname('DESCONTO').asfloat := DM.qrpreco.fieldbyname('DESCONTO').asfloat;
            query1.fieldbyname('FRETE').asfloat := DM.qrpreco.fieldbyname('FRETE').asfloat;
            query1.fieldbyname('SEGURO').asfloat := DM.qrpreco.fieldbyname('SEGURO').asfloat;
            query1.fieldbyname('OUTRAS_DESPESAS').asfloat := DM.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat;
            query1.fieldbyname('IPI_P').asfloat := DM.qrpreco.fieldbyname('IPI_P').asfloat;
            query1.fieldbyname('IPI').asfloat := DM.qrpreco.fieldbyname('IPI').asfloat;
            query1.fieldbyname('CUSTO_COMPRA').asfloat := DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;
            query1.fieldbyname('ICMS_SAIDA_P').asfloat := DM.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat;
            query1.fieldbyname('ICMS_SAIDA').asfloat := DM.qrpreco.fieldbyname('ICMS_SAIDA').asfloat;
            query1.fieldbyname('PIS_P').asfloat := DM.qrpreco.fieldbyname('PIS_P').asfloat;
            query1.fieldbyname('PIS').asfloat := DM.qrpreco.fieldbyname('PIS').asfloat;
            query1.fieldbyname('COFINS_P').asfloat := DM.qrpreco.fieldbyname('COFINS_P').asfloat;
            query1.fieldbyname('COFINS').asfloat := DM.qrpreco.fieldbyname('COFINS').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat := DM.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat := DM.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL_P').asfloat := DM.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL').asfloat := DM.qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat;
            query1.fieldbyname('COMISSAO_P').asfloat := DM.qrpreco.fieldbyname('COMISSAO_P').asfloat;
            query1.fieldbyname('COMISSAO').asfloat := DM.qrpreco.fieldbyname('COMISSAO').asfloat;
            query1.fieldbyname('TOTAL_CUSTO_P').asfloat := DM.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat;
            query1.fieldbyname('TOTAL_CUSTO').asfloat := DM.qrpreco.fieldbyname('TOTAL_CUSTO').asfloat;
            query1.fieldbyname('LUCRO_P').asfloat := DM.qrpreco.fieldbyname('LUCRO_P').asfloat;
            query1.fieldbyname('LUCRO').asfloat := DM.qrpreco.fieldbyname('LUCRO').asfloat;
            query1.fieldbyname('PRECO_VENDA').asfloat := DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat;
            query1.fieldbyname('NOVO_PRECO_VENDA').asfloat := DM.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
            query1.fieldbyname('DATA_ALTERACAO').AsDateTime := DM.qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime;
            query1.fieldbyname('NOVO_PRECO_CUSTO').asfloat := DM.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat;
            query1.fieldbyname('PRECO_AUTOMATICO').AsInteger := DM.qrpreco.fieldbyname('PRECO_AUTOMATICO').AsInteger;
            query1.fieldbyname('ALTERA_AUTOMATICO').AsInteger := DM.qrpreco.fieldbyname('ALTERA_AUTOMATICO').AsInteger;
          end;

//         showmessage(floattostr(DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat)+' Venda '+floattostr(DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat));

          query1.Post;

          query.edit;
          query.fieldbyname('preco_custo').asfloat := DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
          query.fieldbyname('preco_venda').asfloat := DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat;
          query.post;

          query.Next;

          bar.Position := bar.position + 1;

        end;
      end;
    end;

    bar.Position := 0;

  end;

end;

procedure Tfrmproduto_preco.cancelar1Click(Sender: TObject);
begin
  if DM.qrpreco.fieldbyname('PRECO_VENDA').asfloat = 0 then
  begin
    Application.MessageBox('Preço de Venda Não Informado!', 'Atenção', mb_ok + mb_iconerror);
    frmproduto_preco := tfrmproduto_preco.create(self);
    DBEdit5.SetFocus;
    exit;
  end;

  BitBtn1Click(frmproduto_preco);
end;

procedure Tfrmproduto_preco.DBEdit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clWindow;
  if (DM.qrpreco.State = dsedit) or (DM.qrpreco.State = dsinsert) then
  begin
    DM.qrpreco.fieldbyname('PIS_ENTRADA').asfloat :=
      DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
      DM.qrpreco.fieldbyname('PIS_ENTRADA_P').asfloat / 100;

    bpreco_vendaClick(frmproduto_preco);
  end;
end;

procedure Tfrmproduto_preco.DBEdit4Exit(Sender: TObject);
begin
  tedit(sender).Color := clWindow;
  if (DM.qrpreco.State = dsedit) or (DM.qrpreco.State = dsinsert) then
  begin
    DM.qrpreco.fieldbyname('COFINS_ENTRADA').asfloat :=
      DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat *
      DM.qrpreco.fieldbyname('COFINS_ENTRADA_P').asfloat / 100;

    bpreco_vendaClick(frmproduto_preco);
  end;

end;

end.
