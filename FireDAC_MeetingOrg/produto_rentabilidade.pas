unit produto_rentabilidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls,
  Buttons, ExtCtrls, TFlatPanelUnit, Collection, Grids, Wwdbigrd, Wwdbgrid,
  Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvGlowButton, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  Tfrmproduto_rentabilidade = class(TForm)
    dsrentabilidade_produto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    qrrentabilidade_entrada: TFDQuery;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Fechar1: TMenuItem;
    QUERY: TFDQuery;
    QUERY1: TFDQuery;
    Panel1: TPanel;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    lcodigo: TLabel;
    lproduto: TLabel;
    Label4: TLabel;
    Bevel3: TBevel;
    elote: TLabel;
    Label5: TLabel;
    Bevel4: TBevel;
    RTOTAL: TRxCalcEdit;
    Bevel5: TBevel;
    Panel2: TPanel;
    Bevel6: TBevel;
    Label1: TLabel;
    Label7: TLabel;
    RDIGITADO: TRxCalcEdit;
    RDIFERENCA: TRxCalcEdit;
    Bevel7: TBevel;
    bgravar: TAdvGlowButton;
    bretorna: TAdvGlowButton;
    qrrentabilidade_entradaRENTABILIDADE: TWideStringField;
    qrrentabilidade_entradaCODPRODUTO: TWideStringField;
    qrrentabilidade_entradaPRODUTO: TWideStringField;
    qrrentabilidade_entradaRENDIMENTO: TFloatField;
    qrrentabilidade_entradaQUANTIDADE: TFloatField;
    qrrentabilidade_entradaVALOR: TFloatField;
    qrrentabilidade_entradaCODIGO: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure RDIFERENCAChange(Sender: TObject);
    procedure qrrentabilidade_entradaBeforeInsert(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure bretornaClick(Sender: TObject);
    procedure qrrentabilidade_entradaBeforeEdit(DataSet: TDataSet);
    procedure qrrentabilidade_entradaAfterPost(DataSet: TDataSet);
    procedure qrrentabilidade_entradaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_rentabilidade: Tfrmproduto_rentabilidade;
  qtde_anterior: real;
  nao_incluir: boolean;
  vqde_ant, vqde_ant_item: double;
  atualizar: boolean;


implementation

uses  principal, compra, compra_menu,
  ModulodeDados;

{$R *.dfm}

procedure Tfrmproduto_rentabilidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_rentabilidade.FormShow(Sender: TObject);
begin
  atualizar := false;
  nao_incluir := false;

  RTOTAL.Value := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;
  lcodigo.Caption := frmcompra.qrnota_item.fieldbyname('codproduto').asstring;

  RDIGITADO.Value := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;
  elote.Caption := '';

  vqde_ant := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;

  if frmcompra_menu.vopcao_item = 1 then
  begin
    if frmcompra_menu.vopcao_nfe = 2 then vqde_ant := frmcompra.QRNOTA_item.fieldbyname('qtde').asfloat;
    qrrentabilidade_entrada.close;
    qrrentabilidade_entrada.SQL.clear;
    qrrentabilidade_entrada.SQL.add('select * from c000078 where rentabilidade = ''' + frmcompra.QRNOTA_item.fieldbyname('codproduto').asstring + ''' order by produto');
    qrrentabilidade_entrada.open;
    if qrrentabilidade_entrada.RecordCount > 0 then
    begin
      qrrentabilidade_entrada.First;
      while not qrrentabilidade_entrada.eof do
      begin
        qrrentabilidade_entrada.Edit;
        qrrentabilidade_entrada.fieldbyname('quantidade').AsFloat := (qrrentabilidade_entrada.fieldbyname('rendimento').AsFloat * RTOTAL.Value) / 100;
        qrrentabilidade_entrada.fieldbyname('valor').AsFloat := (frmcompra.QRNOTA_item.fieldbyname('unitario').AsFloat * qrrentabilidade_entrada.fieldbyname('quantidade').AsFloat);
        qrrentabilidade_entrada.post;
        qrrentabilidade_entrada.Next;
      end;
      Rdiferenca.Value := (RTOTAL.Value - RDIGITADO.Value);
    end;
    qrrentabilidade_entrada.First;
  end;

  atualizar := true;

  Application.ProcessMessages;
  wwDBGrid1.setfocus;
end;

procedure Tfrmproduto_rentabilidade.bgravarClick(Sender: TObject);
var
  vlot, vcod, vpro: string;
  vcodproduto, vproduto: string;
  vqde, vqde_produto: double;
  vval: double;
  vrec_item, vcodigo, vrecno: integer;
begin
  if rdiferenca.value <> 0 then
  begin
    if application.messagebox('Há diferença no rateio! Deseja continuar?', 'Atenção', mb_yesno + mb_iconquestion) = idno then
    begin
      exit;
    end;

  end;

  vrec_item := frmcompra.QRNOTA_item.RecNo;
  vcod := lcodigo.Caption;
  vqde := frmcompra.QRNOTA_item.fieldbyname('qtde').asfloat;
  vval := frmcompra.QRNOTA_item.fieldbyname('total').asfloat;
  if frmcompra_menu.vopcao_item = 1 then
  begin
    if application.messagebox('Tem certeza que deseja Processar a Rentabilidade?', 'Atenção', mb_yesno + mb_iconquestion) = idno then exit;

    query.close;
    query.SQL.clear;
    query.SQL.add('select * from PRODUTO_RENTABILIDADE where rentabilidade = ''' + vcod + '''');
    query.open;

    DM.qrlote_rentabilidade.Open;
    DM.qrlote_rentabilidade.Last;

    if DM.qrlote_rentabilidade.FieldByName('lote').AsString = '' then
      vcodigo := 1
    else
      vcodigo := strtoint(DM.qrlote_rentabilidade.FieldByName('lote').AsString) + 1;

    elote.Caption := formPrincipal.zerarcodigo(inttostr(vcodigo), 10);

    DM.qrlote_rentabilidade.insert;
    DM.qrlote_rentabilidade.FieldByName('situacao').AsFloat := 1;
    DM.qrlote_rentabilidade.FieldByName('lote').AsString := elote.Caption;
    DM.qrlote_rentabilidade.FieldByName('codproduto').AsString := lcodigo.Caption;
    DM.qrlote_rentabilidade.FieldByName('unidade').AsString := frmcompra.QRNOTA_item.fieldbyname('UN_COMPRA').AsString;
    DM.qrlote_rentabilidade.FieldByName('codigo_nota').AsString := frmcompra.dbedit19.Text;
    DM.qrlote_rentabilidade.FieldByName('notafiscal').AsString := frmcompra.enumero.Text;
    DM.qrlote_rentabilidade.FieldByName('data').AsDateTime := frmcompra.eentrada.Date;
    DM.qrlote_rentabilidade.FieldByName('quantidade').AsFloat := RTOTAL.Value;
    DM.qrlote_rentabilidade.FieldByName('valor').AsFloat := frmcompra.QRNOTA_item.fieldbyname('TOTAL').asfloat;
    DM.qrlote_rentabilidade.FieldByName('observacao').AsString := '';
    DM.qrlote_rentabilidade.Post;

    //FDemir desativou
   { DM.QRPRODUTO_MOV.CLOSE;
    DM.QRPRODUTO_MOV.SQL.CLEAR;
    DM.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
    DM.QRPRODUTO_MOV.OPEN;

    query.first;
    while not query.eof do
    begin
      if query.fieldbyname('codproduto').asstring <> '000000' then // verificando se nao eh perda
      begin
       { DM.qrproduto_mov.Insert;
        DM.qrproduto_mov.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
        DM.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := DM.qrlote_rentabilidade.FIELDBYNAME('lote').ASSTRING;
        DM.qrproduto_mov.fieldbyname('codnota').AsString := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
        DM.qrproduto_mov.fieldbyname('SERIAL').AsString := '';
        DM.qrproduto_mov.fieldbyname('numeronota').AsString := frmcompra.enumero.Text;
        DM.qrproduto_mov.fieldbyname('codproduto').asstring := query.fieldbyname('codproduto').asstring;
        DM.qrproduto_mov.fieldbyname('qtde').asfloat := query.FieldByName('quantidade').asfloat;
        DM.qrproduto_mov.fieldbyname('unitario').asfloat := frmcompra.QRNOTA_item.FieldByName('unitario').asfloat;
        DM.qrproduto_mov.fieldbyname('total').asfloat := query.fieldbyname('valor').asfloat;
        DM.qrproduto_mov.fieldbyname('unidade').asstring := frmcompra.QRNOTA_item.fieldbyname('un_compra').AsString;
        DM.qrproduto_mov.fieldbyname('aliquota').asFLOAT := 0;
        DM.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
        DM.qrproduto_mov.fieldbyname('codcliente').AsString := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
        DM.qrproduto_mov.fieldbyname('codvendedor').AsString := 'S/VEND';
        DM.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 16; // entrada nos produto
        DM.qrproduto_mov.FieldByName('data').asstring := DM.qrlote_rentabilidade.FIELDBYNAME('data').ASSTRING;
        DM.qrproduto_mov.Post;
      end;
      query.Next;
    end;
    // produto acabado ENTRADA NO ESTOQUE
    DM.qrproduto_mov.Insert;
    DM.qrproduto_mov.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
    DM.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := DM.qrlote_rentabilidade.FIELDBYNAME('lote').ASSTRING;
    DM.qrproduto_mov.fieldbyname('codnota').AsString := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
    DM.qrproduto_mov.fieldbyname('SERIAL').AsString := '';
    DM.qrproduto_mov.fieldbyname('numeronota').AsString := frmcompra.enumero.Text;
    DM.qrproduto_mov.fieldbyname('codproduto').asstring := DM.qrlote_rentabilidade.fieldbyname('codproduto').AsString;
    DM.qrproduto_mov.fieldbyname('qtde').asfloat := DM.qrlote_rentabilidade.FieldByName('quantidade').asfloat;
    DM.qrproduto_mov.fieldbyname('unitario').asfloat := frmcompra.QRNOTA_item.FieldByName('unitario').asfloat;
    DM.qrproduto_mov.fieldbyname('total').asfloat := DM.qrlote_rentabilidade.fieldbyname('valor').asfloat;
    DM.qrproduto_mov.fieldbyname('unidade').asstring := frmcompra.QRNOTA_item.fieldbyname('un_compra').AsString;
    DM.qrproduto_mov.fieldbyname('aliquota').asFLOAT := 0; // query.fieldbyname('aliquota').asFLOAT;
    DM.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
    DM.qrproduto_mov.fieldbyname('codcliente').AsString := '000000';
    DM.qrproduto_mov.fieldbyname('codvendedor').AsString := 'S/VEND';
    DM.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 15; // baixa na rentabilidade
    DM.qrproduto_mov.FieldByName('data').asstring := DM.qrlote_rentabilidade.FIELDBYNAME('data').ASSTRING;
    DM.qrproduto_mov.Post;
    /////////////////
    DM.qrlote_rentabilidade.RecNo := vrecno;
    DM.qrlote_rentabilidade.Edit;
    DM.qrlote_rentabilidade.FieldByName('situacao').AsInteger := 2;
    DM.qrlote_rentabilidade.Post;
  end
  else // alteração
  begin
    if application.messagebox('Tem certeza que Deseja Alterar a Rentabilidade?', 'Atenção', mb_yesno + mb_iconquestion) = idno then exit;

    query.close;
    query.SQL.clear;
    query.SQL.add('select * from produto_rentabilidade where codigo = ''' + vcod + '''');
    query.open;

    frmcompra.QRNOTA_item.Open;
    frmcompra.QRNOTA_item.First;

    while not frmcompra.QRNOTA_item.eof do
    begin
      query.close;
      query.SQL.clear;
      query.SQL.add('select * from produto_rentabilidade where codproduto = ''' + frmcompra.QRNOTA_item.FIELDBYNAME('codigo_produto').ASSTRING + '''');
      query.open;
      query.First;

      while not query.eof do
      begin
        DM.QRPRODUTO_MOV.CLOSE;
        DM.QRPRODUTO_MOV.SQL.CLEAR;
        DM.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''' + frmcompra.QRNOTA_item.FIELDBYNAME('CODNOTA').ASSTRING + '''');
        DM.QRPRODUTO_MOV.SQL.ADD('and CODPRODUTO = ''' + query.FIELDBYNAME('CODPRODUTO').ASSTRING + '''');
        DM.QRPRODUTO_MOV.OPEN;
        if DM.QRPRODUTO_MOV.RecordCount > 0 then
        begin
          DM.qrproduto_mov.EDIT;
          DM.qrproduto_mov.fieldbyname('qtde').asfloat := query.FieldByName('quantidade').asfloat;
          DM.qrproduto_mov.Post;
        end;
        query.next;
      end;
      frmcompra.QRNOTA_item.Next;
    end;   }
    frmcompra.QRNOTA_item.RecNo := vrec_item;
  end;
  close;
end;

procedure Tfrmproduto_rentabilidade.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_rentabilidade.RDIFERENCAChange(Sender: TObject);
begin
  try
    if rdiferenca.Value = 0 then rdiferenca.Font.Color := clblue else rdiferenca.Font.Color := clred;
  except
  end;
end;

procedure Tfrmproduto_rentabilidade.qrrentabilidade_entradaBeforeInsert(DataSet: TDataSet);
begin
  qtde_anterior := 0;
end;

procedure Tfrmproduto_rentabilidade.wwDBGrid1Enter(Sender: TObject);
begin
  nao_incluir := true;
end;

procedure Tfrmproduto_rentabilidade.wwDBGrid1Exit(Sender: TObject);
begin
  nao_incluir := false;
end;

procedure Tfrmproduto_rentabilidade.Fechar1Click(Sender: TObject);
begin
  bretornaClick(frmproduto_rentabilidade);
end;

procedure Tfrmproduto_rentabilidade.bretornaClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_rentabilidade.qrrentabilidade_entradaBeforeEdit(
  DataSet: TDataSet);
begin
  qtde_anterior := qrrentabilidade_entrada.fieldbyname('quantidade').asfloat;
end;

procedure Tfrmproduto_rentabilidade.qrrentabilidade_entradaAfterPost(
  DataSet: TDataSet);
begin
  rdigitado.value := rdigitado.value - qtde_anterior +
    qrrentabilidade_entrada.fieldbyname('quantidade').asfloat;
  rdiferenca.value := rtotal.value - rdigitado.value;
end;

procedure Tfrmproduto_rentabilidade.qrrentabilidade_entradaBeforePost(
  DataSet: TDataSet);
begin
  if atualizar then
  begin
    qrrentabilidade_entrada.fieldbyname('rendimento').asfloat :=
      (qrrentabilidade_entrada.fieldbyname('quantidade').asfloat * 100) /
      rtotal.value;
  end;
end;

end.
