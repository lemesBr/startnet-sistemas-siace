unit fretes_cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid,  ExtCtrls, StdCtrls, Mask, 
  Buttons, TFlatPanelUnit, Wwkeycb,  Menus, XDBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxToolEdit,
  RxCurrEdit, AdvGlowButton;

type
  TFormFretes_cheque = class(TForm)
    qrcheque: TFDQuery;
    dscheque: TDataSource;
    FlatPanel1: TFlatPanel;
    wwDBGrid1: TXDBGrid;
    Panel1: TPanel;
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
    qrchequeVALOR_CHEQUE: TBCDField;
    qrchequeDESTINO: TStringField;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFretes_cheque: TFormFretes_cheque;

implementation

uses fretes_pgto, ModulodeDados;


{$R *.dfm}

procedure TFormFretes_cheque.RadioButton1Click(Sender: TObject);
begin
  qrcheque.IndexFieldNames := 'N_CHEQUE';
  loc.setfocus;
end;

procedure TFormFretes_cheque.RadioButton2Click(Sender: TObject);
begin
  qrcheque.IndexFieldNames := 'titular';
  loc.setfocus;
end;

procedure TFormFretes_cheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFormFretes_cheque.FormShow(Sender: TObject);
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

procedure TFormFretes_cheque.wwDBGrid1DblClick(Sender: TObject);
begin
  if qrcheque.FieldByName('CHEK_BOX').asstring = '1' then
  begin
    qrcheque.Edit;
    qrcheque.fieldbyname('CHEK_BOX').AsString := '0';
    qrcheque.Post;
    rtotal.value := rtotal.value - qrcheque.fieldbyname('valor_cheque').asfloat;

  end
  else
  begin
    qrcheque.Edit;
    qrcheque.fieldbyname('CHEK_BOX').AsString := '1';
    qrcheque.Post;
    rtotal.value := rtotal.value + qrcheque.fieldbyname('valor_cheque').asfloat;
  end;

end;

procedure TFormFretes_cheque.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormFretes_cheque.bgravarClick(Sender: TObject);
begin
  qrcheque.Close;
  qrcheque.SQL.clear;
  qrcheque.SQL.Add('update cheques set destino = ''' + copy(FormFretes_pgto.qrcontaspagar.FieldByName('fornecedor').asString, 1, 50) + ''', DATA_BAIXA = :datai where CHEK_BOX = ''' + '1' + ''' and COMPENSADO = ''S''');
  qrcheque.Params.ParamByName('datai').asdatetime := FormFretes_pgto.dateedit1.date;
  qrcheque.ExecSQL;
  FormFretes_pgto.rvalor_terceiro.value := rtotal.value;
  close;
end;

procedure TFormFretes_cheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#27 then
   begin
     Close;
   end;
end;

procedure TFormFretes_cheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_F10) then
      begin
      bgravar.Click;
      end;
end;

end.
