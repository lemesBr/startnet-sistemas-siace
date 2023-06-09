unit produto_serial_entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, StdCtrls, Buttons, ExtCtrls, TFlatPanelUnit,
  Collection, Mask, Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RxToolEdit, RxCurrEdit;

type
  Tfrmproduto_serial_entrada = class(TForm)
    wwDBGrid2: TwwDBGrid;
    dsserial_produto: TDataSource;
    qrserial_produto: TFDQuery;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RTOTAL: TRxCalcEdit;
    RDIGITADO: TRxCalcEdit;
    RDIFERENCA: TRxCalcEdit;
    ViewSplit1: TViewSplit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Fechar1: TMenuItem;
    qrserial_produtoCODIGO: TWideStringField;
    qrserial_produtoCODPRODUTO: TWideStringField;
    qrserial_produtoSERIAL: TWideStringField;
    qrserial_produtoESTOQUE: TFloatField;
    qrserial_produtoCODCLIENTE: TWideStringField;
    qrserial_produtoPRECOCUSTO: TFloatField;
    qrserial_produtoPRECOVENDA: TFloatField;
    qrserial_produtoDATAVENDA: TDateTimeField;
    qrserial_produtoSITUACAO: TIntegerField;
    qrserial_produtoCLIENTE: TWideStringField;
    qrserial_produtoCODNOTA: TWideStringField;
    qrserial_produtoCODITEM: TWideStringField;
    qrserial_produtoDATACOMPRA: TDateTimeField;
    qrserial_produtoNUMERONOTA: TWideStringField;
    qrserial_produtoCODFORNECEDOR: TWideStringField;
    qrserial_produtoCODVENDA_ITEM: TWideStringField;
    qrserial_produtoFILTRO: TIntegerField;
    qrserial_produtoCODVENDA: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure qrserial_produtoAfterInsert(DataSet: TDataSet);
    procedure qrserial_produtoBeforePost(DataSet: TDataSet);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_serial_entrada: Tfrmproduto_serial_entrada;

implementation

uses principal, compra, ModulodeDados;

{$R *.dfm}

procedure Tfrmproduto_serial_entrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action := cafree;
end;

procedure Tfrmproduto_serial_entrada.FormShow(Sender: TObject);
begin
  if frmcompra.qrnota_item.State = dsinsert then
  begin
    qrserial_produto.close;
    qrserial_produto.sql.clear;
    qrserial_produto.sql.add('update PRODUTOS_SERIAL set filtro = 0 where codproduto = ''' + frmcompra.qrnota_item.fieldbyname('codigo_produto').asstring + ''' and situacao = 1');
    qrserial_produto.ExecSQL;
    qrserial_produto.sql.clear;
    qrserial_produto.sql.add('select * from PRODUTOS_SERIAL where codproduto = ''' + frmcompra.qrnota_item.fieldbyname('codigo_produto').asstring + ''' and situacao = 1 order by codigo');
    qrserial_produto.open;

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;
    RTOTAL.Value := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end
  else
  begin
    qrserial_produto.close;
    qrserial_produto.sql.clear;
    qrserial_produto.sql.add('update PRODUTOS_SERIAL set filtro = 0 where codproduto = ''' + frmcompra.qrnota_item.fieldbyname('codigo_produto').asstring + ''' and situacao = 1');
    qrserial_produto.ExecSQL;
    qrserial_produto.close;
    qrserial_produto.sql.clear;
    qrserial_produto.sql.add('select * from PRODUTOS_SERIAL where CODITEM = ''' + frmcompra.qrnota_item.fieldbyname('codigo').asstring + ''' or situacao = 1 order by codigo');
    //verificar
    qrserial_produto.Open;

    qrserial_produto.first;

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;

    while not qrserial_produto.eof do
    begin
      if qrserial_produto.FieldByName('filtro').asinteger = 1 then
        rdigitado.value := rdigitado.value + 1;
      qrserial_produto.Next;
    end;
    RTOTAL.Value := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end;

  qrserial_produto.Refresh;
  wwDBGrid2.setfocus;
end;

procedure Tfrmproduto_serial_entrada.bgravarClick(Sender: TObject);
begin

  if (qrserial_produto.State = dsedit) or (qrserial_produto.State = dsinsert) then
  begin
    if application.messagebox('Existe um registro em edi��o! Deseja salv�-lo?', 'Aviso', mb_yesno + mb_iconwarning) = idyes then
    begin
      qrserial_produto.Post;
    end
    else
    begin
      qrserial_produto.Cancel;
    end;
  end;

  application.ProcessMessages;

  if (rdiferenca.value <> 0) then
  begin
    if rdigitado.Value <> 0 then
    begin
      application.MessageBox('A quantidade de seriais digitados n�o confere com a quantidade deste produto! Favor verificar.', 'Aten��o', mb_ok + MB_ICONWARNING);
      wwdbgrid2.setfocus;
    end
    else
    begin
      qrserial_produto.Refresh;
      close;
    end;
  end
  else
  begin
    qrserial_produto.Refresh;
    close;
  end;
end;

procedure Tfrmproduto_serial_entrada.qrserial_produtoAfterInsert(
  DataSet: TDataSet);
begin
  qrserial_produto.Cancel;
end;

procedure Tfrmproduto_serial_entrada.qrserial_produtoBeforePost(
  DataSet: TDataSet);
begin
  if qrserial_produto.fieldbyname('filtro').asinteger = 1 then
  begin
    rdigitado.value := rdigitado.value + 1;
    rdiferenca.Value := rdigitado.value - rtotal.value;
    qrserial_produto.fieldbyname('CODITEM').asstring := frmcompra.qrnota_item.fieldbyname('codigo').asstring;
    qrserial_produto.fieldbyname('situacao').asinteger := 4;
  end
  else
  begin

    qrserial_produto.fieldbyname('CODITEM').asstring := '';
    qrserial_produto.fieldbyname('situacao').asinteger := 1;

    rdigitado.value := rdigitado.value - 1;
    rdiferenca.Value := rdigitado.value - rtotal.value;
  end;

end;

procedure Tfrmproduto_serial_entrada.Fechar1Click(Sender: TObject);
begin
  bgravarclick(frmproduto_serial_entrada);
end;

end.
