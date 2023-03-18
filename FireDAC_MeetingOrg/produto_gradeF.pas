unit produto_gradeF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  StdCtrls,
  Buttons, ExtCtrls, TFlatPanelUnit, Collection, Grids, Wwdbigrd, Wwdbgrid,
  Menus, Mask,  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RxToolEdit, RxCurrEdit;

type
  Tfrmproduto_gradeF = class(TForm)
    dsgrade_produto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    ViewSplit1: TViewSplit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    qrgrade_entrada: TFDQuery;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    Label2: TLabel;
    RTOTAL: TRxCalcEdit;
    RDIGITADO: TRxCalcEdit;
    Label3: TLabel;
    RDIFERENCA: TRxCalcEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Fechar1: TMenuItem;
    qrgrade_entradaCODIGO: TIntegerField;
    qrgrade_entradaCODPRODUTO: TIntegerField;
    qrgrade_entradaCODNOTA: TIntegerField;
    qrgrade_entradaQTDE: TBCDField;
    qrgrade_entradaCODGRADE: TIntegerField;
    qrgrade_entradaCODITEM: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure RDIFERENCAChange(Sender: TObject);
    procedure qrgrade_entradaBeforeEdit(DataSet: TDataSet);
    procedure qrgrade_entradaBeforeInsert(DataSet: TDataSet);
    procedure qrgrade_entradaAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure qrgrade_entradaAfterInsert(DataSet: TDataSet);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_gradeF: Tfrmproduto_gradeF;
  qtde_anterior: real;
  nao_incluir: boolean;

implementation

uses  principal, compra_menu, compra_item, ModulodeDados;

{$R *.dfm}

procedure Tfrmproduto_gradeF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_gradeF.FormShow(Sender: TObject);
begin

  nao_incluir := false;


  qrgrade_entrada.close;
  qrgrade_entrada.SQL.clear;
  qrgrade_entrada.SQL.add('select * from PRODUTO_GRADE where codITEM = ''' + codigo_it + ''' order by codigo');
  qrgrade_entrada.open;

  if QRGRADE_ENTRADA.RecordCount = 0 then
  begin
    DM.qrgrade_produto.close;
    DM.qrgrade_produto.sql.clear;
    DM.qrgrade_produto.sql.add('select * from produtos_grade where codproduto = ''' + DM.qrproduto.fieldbyname('codigo').asstring + ''' order by codigo');
    DM.qrgrade_produto.Open;
    DM.qrgrade_produto.First;
    while not DM.qrgrade_produto.eof do
    begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTO_GRADE');
      DM.ProxCod.Open;

      qrgrade_entrada.Insert;
      qrgrade_entrada.fieldbyname('codigo').asINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;//frmprincipal.codifica('000033');
      qrgrade_entrada.fieldbyname('codproduto').asstring := DM.qrproduto.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('codnota').asstring := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring + '' + frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('coditem').asstring := codigo_it;
      qrgrade_entrada.fieldbyname('codgrade').asstring := DM.qrgrade_produto.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('qtde').asfloat := 0;
      qrgrade_entrada.post;
      DM.qrgrade_produto.Next;
    end;

    if frmcompra_item.efracao.value > 0 then
      RTOTAL.Value := frmcompra_item.efracao.value * frmcompra_item.eqtde.Value
    else
      RTOTAL.Value := frmcompra_item.eqtde.Value;

    rdigitado.Value := 0;
    Rdiferenca.Value := RTOTAL.VALUE;
  end
  else
  begin

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;
    qrgrade_entrada.first;

    if frmcompra_item.efracao.value > 0 then
      RTOTAL.Value := frmcompra_item.efracao.value * frmcompra_item.eqtde.Value
    else
      RTOTAL.Value := frmcompra_item.eqtde.Value;


    while not qrgrade_entrada.eof do
    begin
      rdigitado.Value := qrgrade_entrada.fieldbyname('qtde').asfloat + rdigitado.value;
      qrgrade_entrada.Next;
    end;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end;

  qrgrade_entrada.Refresh;
  wwDBGrid1.setfocus;
end;

procedure Tfrmproduto_gradeF.bgravarClick(Sender: TObject);
begin



  if qrgrade_entrada.State = dsedit then
    qrgrade_entrada.Post;


  application.ProcessMessages;



  if (rdiferenca.value <> 0) then
  begin
    if rdigitado.Value <> 0 then
    begin
      application.MessageBox('Os valores digitados nesta grade não confere com a quantidade deste produto! Caso não queira utilizar esta grade, favor zerar todos os valores no campo "QTDE".', 'Atenção', mb_ok + MB_ICONWARNING);
      wwdbgrid1.setfocus;
    end
    else
    begin
      qrgrade_entrada.Refresh;
      close;
    end;
  end
  else
  begin
    qrgrade_entrada.Refresh;
    close;
  end;
end;

procedure Tfrmproduto_gradeF.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_gradeF.RDIFERENCAChange(Sender: TObject);
begin
  try
    if rdiferenca.Value = 0 then rdiferenca.Font.Color := clblue else rdiferenca.Font.Color := clred;
  except
  end;
end;

procedure Tfrmproduto_gradeF.qrgrade_entradaBeforeEdit(DataSet: TDataSet);
begin
  qtde_anterior := qrgrade_entrada.fieldbyname('qtde').asfloat;
end;

procedure Tfrmproduto_gradeF.qrgrade_entradaBeforeInsert(DataSet: TDataSet);
begin
  qtde_anterior := 0;
end;

procedure Tfrmproduto_gradeF.qrgrade_entradaAfterPost(DataSet: TDataSet);
begin
  if DM.qrgrade_produto.Locate('codigo', qrgrade_entrada.fieldbyname('codgrade').asstring, [loCaseInsensitive]) then
  begin
    DM.qrgrade_produto.Edit;
    DM.qrgrade_produto.fieldbyname('estoque').asfloat := DM.qrgrade_produto.fieldbyname('estoque').asfloat +
      qrgrade_entrada.fieldbyname('qtde').asfloat -
      qtde_anterior;
    DM.qrgrade_produto.Post;
  end;

  rdigitado.Value := rdigitado.value + qrgrade_entrada.fieldbyname('qtde').asfloat - qtde_anterior;
  rdiferenca.Value := rdigitado.value - rtotal.value;
end;

procedure Tfrmproduto_gradeF.wwDBGrid1Enter(Sender: TObject);
begin
  nao_incluir := true;
end;

procedure Tfrmproduto_gradeF.wwDBGrid1Exit(Sender: TObject);
begin
  nao_incluir := false;
end;

procedure Tfrmproduto_gradeF.qrgrade_entradaAfterInsert(DataSet: TDataSet);
begin
  if nao_incluir then qrgrade_entrada.Cancel;
end;

procedure Tfrmproduto_gradeF.Fechar1Click(Sender: TObject);
begin
  bgravarclick(frmproduto_gradef);
end;

end.
