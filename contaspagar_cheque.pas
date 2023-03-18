unit contaspagar_cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Collection, ExtCtrls, StdCtrls, Mask, XDBGrids, Menus,
  Wwkeycb, TFlatPanelUnit,
  Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxToolEdit,
  RxCurrEdit, AdvGlowButton, AdvPanel;

type
  Tfrmcontaspagar_cheque = class(TForm)
    FlatPanel1: TAdvPanel;
    Panel1: TAdvPanel;
    Label1: TLabel;
    rtotal: TRxCalcEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    loc: TwwIncrementalSearch;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    dscheque: TDataSource;
    qrcheque: TFDQuery;
    qrchequeCOD_EMPRESA: TIntegerField;
    qrchequeCODIGO: TIntegerField;
    qrchequeCODIGO_COMPRA: TIntegerField;
    qrchequeBANCO: TStringField;
    qrchequeAGENCIA: TStringField;
    qrchequeCONTA_CORRENTE: TStringField;
    qrchequeCONTA_DESDE: TDateField;
    qrchequeTITULAR: TStringField;
    qrchequeTIPO_CHEQUE: TStringField;
    qrchequeN_CHEQUE: TStringField;
    qrchequeQNT: TStringField;
    qrchequeCOD_CLIENTE: TIntegerField;
    qrchequeCLIENTE: TStringField;
    qrchequeRETORNARDO: TStringField;
    qrchequeRETORNADO_PAGO: TStringField;
    qrchequeMOTIVO_RETORNO: TStringField;
    qrchequeDATA_CADASTRO: TDateField;
    qrchequeDATA_DEPOSITO: TDateField;
    qrchequeDATA_RETORNO: TDateField;
    qrchequeDATA_BAIXA: TDateField;
    qrchequeUSUARIO_CADASTRO: TStringField;
    qrchequeUSUARIO_BAIXA: TStringField;
    qrchequeCOMPENSADO: TStringField;
    qrchequeCODIGO_CC: TIntegerField;
    qrchequeNUMERO_CC: TStringField;
    qrchequeNUMERO: TIntegerField;
    qrchequeCOD_BARRAS_CHEQUE: TStringField;
    qrchequeCHEK_BOX: TStringField;
    wwDBGrid1: TXDBGrid;
    qrchequeVALOR_CHEQUE: TBCDField;
    qrchequeDESTINO: TStringField;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure wwDBGrid1CellClick(Column: TXColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_cheque: Tfrmcontaspagar_cheque;

implementation

uses contaspagar_pgto, ModulodeDados, Principal;

{$R *.dfm}

procedure Tfrmcontaspagar_cheque.RadioButton1Click(Sender: TObject);
begin
  qrcheque.IndexFieldNames := 'numero';
  loc.setfocus;
end;

procedure Tfrmcontaspagar_cheque.RadioButton2Click(Sender: TObject);
begin
  qrcheque.IndexFieldNames := 'titular';
  loc.setfocus;
end;

procedure Tfrmcontaspagar_cheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontaspagar_cheque.FormShow(Sender: TObject);
begin
  qrcheque.close;
  qrcheque.SQL.clear;
  qrcheque.SQL.add('update cheques set CHEK_BOX = ''' + '0' + ''' where COMPENSADO = ''N''');
  qrcheque.execsql;

  qrcheque.SQL.clear;
  qrcheque.SQL.add('select * from cheques where COMPENSADO = ''N'' order by DATA_DEPOSITO ASC');
  qrcheque.open;

  dm.sds_clientes.active := False;
  dm.sds_clientes.active := true;

  wwdbgrid1.setfocus;
end;

procedure Tfrmcontaspagar_cheque.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_cheque.bgravarClick(Sender: TObject);
begin
{  qrcheque.Close;
  qrcheque.SQL.clear;
  qrcheque.SQL.Add('update c000040 set destino = ''' + copy(fornecedor, 1, 50) + ''', situacao = 7, DATA_BAIXA = :datai where CODCONTAS_PAGAR = ''' + '1' + ''' and SITUACAO = 1');
  qrcheque.Params.ParamByName('datai').asdatetime := Frmcontaspagar_pgto.dateedit1.date;
  qrcheque.ExecSQL;
  frmcontaspagar_pgto.rvalor_terceiro.value := rtotal.value; }

 { qrcheque.Close;
  qrcheque.SQL.clear;
  qrcheque.SQL.Add('update cheques set destino = ''' + copy(Frmcontaspagar_pgto.qrcontaspagar.FieldByName('fornecedor').asString, 1, 50) + ''', DATA_BAIXA = :datai where CHEK_BOX = ''' + '1' + ''' and COMPENSADO = ''S''');
  qrcheque.Params.ParamByName('datai').asdatetime := Frmcontaspagar_pgto.dateedit1.date;
  qrcheque.ExecSQL;  }


          TRY
            wwDBGrid1.cursor:=crhourglass;
            qrcheque.First;
            repeat
             qrcheque.edit;

            if  qrchequeCHEK_BOX.Value= '1' then
            BEGIN
            qrchequeCOMPENSADO.Value:= 'S';
            qrchequeDATA_BAIXA.Value:= DATE;
             qrchequeUSUARIO_BAIXA.Value:= FormPrincipal.UserLogado;
            end;
            qrcheque.Post;
            qrcheque.Next;
            until  qrcheque.eof;
            //dmcob.CDS_Cobranca1.refresh;
             wwDBGrid1.refresh;
             qrcheque.first;
            wwDBGrid1.cursor:=crdefault;
            except
             qrcheque.cancel;
            end;
             qrcheque.refresh;
  Frmcontaspagar_pgto.rvalor_terceiro.value := rtotal.value;
  close;
end;

procedure Tfrmcontaspagar_cheque.wwDBGrid1CellClick(Column: TXColumn);
begin
  if qrcheque.FieldByName('CHEK_BOX').asstring = '1' then
  begin
    qrcheque.Edit;
    qrcheque.fieldbyname('CHEK_BOX').AsString := '0';
    qrcheque.Post;
    rtotal.value := rtotal.value - qrcheque.fieldbyname('VALOR_CHEQUE').asfloat;

  end
  else
  begin
    qrcheque.Edit;
    qrcheque.fieldbyname('CHEK_BOX').AsString := '1';
    qrcheque.Post;
    rtotal.value := rtotal.value + qrcheque.fieldbyname('VALOR_CHEQUE').asfloat;
  end;
end;

end.
