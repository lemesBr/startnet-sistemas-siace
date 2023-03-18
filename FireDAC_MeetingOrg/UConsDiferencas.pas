unit UConsDiferencas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, RzEdit, RzBtnEdt, StdCtrls, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Buttons, rxToolEdit;

type
  TFormConsDiferencas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    eproduto: TRzButtonEdit;
    edproduto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    qrCombustiveis: TFDQuery;
    qrCombustiveisCODIGO: TIntegerField;
    qrCombustiveisCODIGO_BARRAS: TStringField;
    qrCombustiveisDESCRICAO: TStringField;
    Query_Leituras: TFDQuery;
    Query_vendido: TFDQuery;
    Query_LeiturasTOTAL: TBCDField;
    Query_vendidoTOTAL: TBCDField;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    procedure eprodutoButtonClick(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsDiferencas: TFormConsDiferencas;

implementation

uses xloc_combustivel;

{$R *.dfm}

procedure TFormConsDiferencas.eprodutoButtonClick(Sender: TObject);
begin
  frmxloc_combustivel := tfrmxloc_combustivel.Create(self);
  frmxloc_combustivel.ShowModal;
   eproduto.Text := IntToStr(frmxloc_combustivel.query.fieldbyname('codigo').AsInteger);
  edproduto.Text := frmxloc_combustivel.query.fieldbyname('descricao').AsString;
end;

procedure TFormConsDiferencas.eprodutoExit(Sender: TObject);
begin
 if eproduto.Text >'' then
  begin
  qrCombustiveis.Close;
  qrCombustiveis.SQL.Clear;
  qrCombustiveis.SQL.Add('select * from PRODUTOS where codigo = :codigo');
  qrCombustiveis.Params.ParamByName('codigo').AsInteger := StrToInt(Trim(eproduto.Text));
  qrCombustiveis.Open;
  edproduto.Text := qrCombustiveis.fieldbyname('descricao').AsString;
  if qrCombustiveis.RecordCount = 0 then
  begin
       application.messagebox('Produto não encontrado! Verifique...!','Atenção',mb_ok+mb_iconerror);
       eproduto.SetFocus;
  end;

 
  end;
end;

procedure TFormConsDiferencas.BitBtn1Click(Sender: TObject);
begin
 if DateEdit1.Text = '  /  /    ' then
 begin
     application.messagebox('Digite alguma data ! Verifique...!','Atenção',mb_ok+mb_iconerror);
     Exit;
 end;

  if eproduto.Text >'' then
  begin
  Query_Leituras.Close;
  Query_Leituras.Params.ParamByName('COD_PRO').AsInteger :=   StrToInt(Trim(eproduto.Text));
  Query_Leituras.Params.ParamByName('DATA').AsDate        := DateEdit1.Date;
  Query_Leituras.Open;

  Query_vendido.Close;
  Query_vendido.Params.ParamByName('COD_PRO').AsInteger :=   StrToInt(Trim(eproduto.Text));
  Query_vendido.Params.ParamByName('DATA').AsDate        := DateEdit1.Date;
  Query_vendido.Open;

  IF NOT Query_Leituras.Eof THEN
  begin
   Edit1.Text := Query_LeiturasTOTAL.Text;
   Edit2.Text := Query_vendidoTOTAL.Text;

   Edit3.Text  := FloatToStr(Query_LeiturasTOTAL.ASFLOAT - Query_vendidoTOTAL.ASFlOAT);

  end;
  end else
  begin
     application.messagebox('Digite algum produto ! Verifique...!','Atenção',mb_ok+mb_iconerror);
     Exit;
  end;

end;

procedure TFormConsDiferencas.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
begin
eprodutoExit(Sender);
end;
end;

end.
