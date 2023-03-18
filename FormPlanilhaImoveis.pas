unit FormPlanilhaImoveis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, StdCtrls, Buttons, ComCtrls,
  CellEditors, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxGradient, frxClass, frxDBSet;

type
  TFPlanilhaImoveis = class(TForm)
    Panel1: TPanel;
    gridPlanilha: TDBGrid;
    dsPlanilha: TDataSource;
    edtPesquisa: TEdit;
    Label2: TLabel;
    spbPesquisa: TSpeedButton;
    spbIncluir: TSpeedButton;
    pgcPlanilha: TPageControl;
    tbVisu: TTabSheet;
    tbInsert: TTabSheet;
    v: TBevel;
    cbxImovel: TComboBoxEditor;
    Label6: TLabel;
    edtAvista: TEdit;
    Label9: TLabel;
    edtIntermediacao: TEdit;
    Label3: TLabel;
    edtEntrada: TEdit;
    Label4: TLabel;
    edtValorProposta: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    edtSaldoFinanciar: TEdit;
    SpeedButton1: TSpeedButton;
    spbSalvar: TSpeedButton;
    Label8: TLabel;
    Bevel2: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtJurosEdit: TEdit;
    Label20: TLabel;
    lbl12Meses: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    lbl24Meses: TLabel;
    lbl36Meses: TLabel;
    lbl48Meses: TLabel;
    lbl96Meses: TLabel;
    lbl84Meses: TLabel;
    lbl72Meses: TLabel;
    lbl60Meses: TLabel;
    lbl108Meses: TLabel;
    lbl120Meses: TLabel;
    spbCancelar: TSpeedButton;
    spbExcluir: TSpeedButton;
    cbxDeleteTodos: TCheckBox;
    spbBoletos: TSpeedButton;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    procedure spbIncluirClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure edtAvistaEnter(Sender: TObject);
    procedure edtAvistaExit(Sender: TObject);
    procedure cbxImovelKeyPress(Sender: TObject; var Key: Char);
    procedure cbxImovelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbBoletosClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spbPesquisaClick(Sender: TObject);
  private
    { Private declarations }
    function ConverteReais(Valor: String): Currency;
    function ConverteText(Valor: String): string;
   function PassaNomeImovel(ID: Integer): string;
    procedure PesquisaImovel(Pesquisa: String; Campo: TComboBoxEditor);
    procedure CalculaValores(Avista,intermed,Entrada: Currency);
  public
    { Public declarations }
    
    N_LOTE,N_QUADRA: String;
    Custo_Venda: Currency;
    ID_IMOVEL: Integer;
  end;

var
  FPlanilhaImoveis: TFPlanilhaImoveis;

implementation

uses uDMMovimentacao, PesquisaImoveis, ModulodeDados,Math, DateUtils;

{$R *.dfm}

procedure TFPlanilhaImoveis.spbIncluirClick(Sender: TObject);
begin
  pgcPlanilha.ActivePage:= tbInsert;
  dsPlanilha.DataSet.Insert;
end;

procedure TFPlanilhaImoveis.spbCancelarClick(Sender: TObject);
begin
  pgcPlanilha.ActivePage:= tbVisu;
  dsPlanilha.DataSet.Cancel;
end;

procedure TFPlanilhaImoveis.spbSalvarClick(Sender: TObject);
begin
  if cbxImovel.Text = '' then
  begin
    Application.MessageBox('Selecione um imóvel!','Atenção',MB_ICONWARNING);
    Exit;
  end;
  
  if lbl12Meses.Caption <> '0,00' then
  begin
    pgcPlanilha.ActivePage:= tbVisu;
    dsPlanilha.DataSet.FieldByName('PLANO_12').AsFloat:= ConverteReais(lbl12Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_24').AsFloat:= ConverteReais(lbl24Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_36').AsFloat:= ConverteReais(lbl36Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_48').AsFloat:= ConverteReais(lbl48Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_60').AsFloat:= ConverteReais(lbl60Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_72').AsFloat:= ConverteReais(lbl72Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_84').AsFloat:= ConverteReais(lbl84Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_96').AsFloat:= ConverteReais(lbl96Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_108').AsFloat:= ConverteReais(lbl108Meses.Caption);
    dsPlanilha.DataSet.FieldByName('PLANO_120').AsFloat:= ConverteReais(lbl120Meses.Caption);
    dsPlanilha.DataSet.FieldByName('ID_IMOVEL').Asinteger:= ID_IMOVEL;
    dsPlanilha.DataSet.FieldByName('QT').AsString:= N_QUADRA;
    dsPlanilha.DataSet.FieldByName('LT').AsString:= N_LOTE;
    dsPlanilha.DataSet.FieldByName('VENDA_VISTA').AsFloat:= ConverteReais(edtAvista.Text);
    dsPlanilha.DataSet.FieldByName('INTERMEDIACAO').AsFloat:= ConverteReais(edtIntermediacao.Text);
    dsPlanilha.DataSet.FieldByName('VALOR_PROPOSTA').AsFloat:= ConverteReais(edtValorProposta.Text);
    dsPlanilha.DataSet.FieldByName('ENTRADA').AsFloat:= ConverteReais(edtEntrada.Text);
    dsPlanilha.DataSet.FieldByName('SALDO_FINANCIAR').AsFloat:= ConverteReais(edtSaldoFinanciar.Text);
    dsPlanilha.DataSet.Post;
  end
  else
  begin
    Application.MessageBox('É necessário somar!','Atenção',MB_ICONWARNING);
  end;
end;

function TFPlanilhaImoveis.ConverteReais(Valor: String): Currency;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));
end;

function TFPlanilhaImoveis.ConverteText(Valor: String): string;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= Trim(Valor);
end;

procedure TFPlanilhaImoveis.edtAvistaEnter(Sender: TObject);
begin
  if TEdit(Sender).text <> '' then
    TEdit(Sender).text:= ConverteText(TEdit(Sender).text);
end;

procedure TFPlanilhaImoveis.edtAvistaExit(Sender: TObject);
var
  V1,V2,V3: Currency;
begin
  V1:= 0;V2:= 0;V3:= 0;
  if TEdit(Sender).text <> '' then
    TEdit(Sender).text:= FloatToStrF(ConverteReais(TEdit(Sender).text),ffnumber ,12,2);
  if edtAvista.Text <> '' then
    V1:= ConverteReais(edtAvista.Text);
  if edtIntermediacao.Text <> '' then
    V2:= ConverteReais(edtIntermediacao.Text);
  if edtEntrada.Text <> '' then
    V3:= ConverteReais(edtEntrada.Text);
  CalculaValores(V1,V2,V3);
end;

procedure TFPlanilhaImoveis.cbxImovelKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if Key = #13 then
//    PesquisaImovel(cbxImovel.Text,cbxImovel);
end;

procedure TFPlanilhaImoveis.PesquisaImovel(Pesquisa: String;
  Campo: TComboBoxEditor);
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  if Pesquisa = '' then
    qr.SQL.Add('SELECT ENDERECO FROM VIEW_IMOVEL')
  else
    qr.SQL.Add('SELECT * FROM VIEW_IMOVEL WHERE ENDERECO LIKE ' + QuotedStr('%'+Pesquisa+'%'));
  qr.Open;

  Campo.Items.Clear;
  while not qr.Eof do
  begin
    Campo.Items.Add(qr.FieldByName('ENDERECO').AsString);
    qr.Next;
  end;
  qr.Destroy;
end;

procedure TFPlanilhaImoveis.cbxImovelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    try
      FPesquisaImovel:= TFPesquisaImovel.create(nil);
      FPesquisaImovel.tag:= 1;
      FPesquisaImovel.showmodal;
    finally
      ID_IMOVEL:=DMMovimentacao.dsImovel.dataset.fieldbyname('ID').asinteger;
      N_LOTE:= DMMovimentacao.dsImovel.dataset.fieldbyname('N_LOTE').AsString;
      N_QUADRA:= DMMovimentacao.dsImovel.dataset.fieldbyname('QUADRA').AsString;
      Custo_Venda:= DMMovimentacao.dsImovel.dataset.fieldbyname('PRECO_VENDA').AsFloat;
      edtAvista.Text:= FloatToStrF(Custo_Venda,ffNumber,12,2);
      CalculaValores(DMMovimentacao.dsImovel.dataset.fieldbyname('PRECO_VENDA').AsFloat,0,0);
      FreeandNil(FPesquisaImovel);
      cbxImovel.text:= PassaNomeImovel(ID_IMOVEL);
    end;
  end;
end;

function TFPlanilhaImoveis.PassaNomeImovel(ID: Integer): string;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT ENDERECO FROM VIEW_IMOVEL WHERE ID  = ' +InttoStr(ID));
  qr.Open;
  Result:= qr.FieldByName('ENDERECO').AsString;
  qr.Destroy;
end;

procedure TFPlanilhaImoveis.SpeedButton1Click(Sender: TObject);
const
  Parcelas: array[1..10] of Integer = (12,24,36,48,60,72,84,96,108,120);
Var
  Prest, R1, R2, Total,i,n,Valor : Extended;
  A: Integer;
  Valores: array[1..10] of Extended;
begin
  if edtJurosEdit.Text <> '' then
  begin
    for A := 1 to 10 do
    begin
      Valor := strtofloat(ConverteText(edtSaldoFinanciar.Text));
      n     := Parcelas[A];
      i     := (strtofloat(edtJurosEdit.Text) / 100) + 1;
      R1    := (Power( i , n ) - 1) ;
      R2    := (i - 1) * (power ( i , n ));
      Total := R1 / R2;
      Prest := valor / Total;
      Valores[A]:= Prest;
    end;

    lbl12Meses.Caption := FloatToStrF(Valores[1],ffNumber,12,2);
    lbl24Meses.Caption := FloatToStrF(Valores[2],ffNumber,12,2);
    lbl36Meses.Caption := FloatToStrF(Valores[3],ffNumber,12,2);
    lbl48Meses.Caption := FloatToStrF(Valores[4],ffNumber,12,2);
    lbl60Meses.Caption := FloatToStrF(Valores[5],ffNumber,12,2);
    lbl72Meses.Caption := FloatToStrF(Valores[6],ffNumber,12,2);
    lbl84Meses.Caption := FloatToStrF(Valores[7],ffNumber,12,2);
    lbl96Meses.Caption := FloatToStrF(Valores[8],ffNumber,12,2);
    lbl108Meses.Caption:= FloatToStrF(Valores[9],ffNumber,12,2);
    lbl120Meses.Caption:= FloatToStrF(Valores[10],ffNumber,12,2);
  end
  else
  begin
    Application.MessageBox('Preencha o juros!','Atenção',MB_ICONWARNING);
    edtJurosEdit.SetFocus;
  end;
end;

procedure TFPlanilhaImoveis.CalculaValores(Avista, intermed,
  Entrada: Currency);
begin
  edtValorProposta.Text:= FloatToStrF(Avista - intermed,ffNumber,12,2);
  edtSaldoFinanciar.Text:= FloatToStrF(Avista - (intermed + Entrada),ffNumber,12,2);
end;

procedure TFPlanilhaImoveis.spbExcluirClick(Sender: TObject);
begin
  if not dsPlanilha.DataSet.IsEmpty then
  begin
    if cbxDeleteTodos.Checked = False then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir esse Registro?',
       'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsPlanilha.DataSet.Delete;
      end;
    end
    else
    begin
      if Application.MESSAGEBOX('Deseja realmente Todos os registros?',
       'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsPlanilha.DataSet.Close;
        dsPlanilha.DataSet.Open;
        while not dsPlanilha.DataSet.Eof do
        begin
          dsPlanilha.DataSet.Delete;
          dsPlanilha.DataSet.Next;
        end;
      end;
    end;
  end;
end;

procedure TFPlanilhaImoveis.FormCreate(Sender: TObject);
begin
  dsPlanilha.DataSet.Open;
end;

procedure TFPlanilhaImoveis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsPlanilha.DataSet.Close;
end;

procedure TFPlanilhaImoveis.spbBoletosClick(Sender: TObject);
begin
  dsPlanilha.DataSet.Filtered:= False;
  dsPlanilha.DataSet.Refresh;
  frxReport.LoadFromFile('rel\RelatorioPlanilhaImovel.fr3');
  frxReport.ShowReport;
end;

procedure TFPlanilhaImoveis.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    try
      FPesquisaImovel:= TFPesquisaImovel.create(nil);
      FPesquisaImovel.tag:= 1;
      FPesquisaImovel.showmodal;
    finally
      ID_IMOVEL:=DMMovimentacao.dsImovel.dataset.fieldbyname('ID').asinteger;
      dsPlanilha.DataSet.Filtered:= False;
      dsPlanilha.DataSet.Filter:= 'ID_IMOVEL = ' + IntToStr(ID_IMOVEL);
      dsPlanilha.DataSet.Filtered:= True;
      FreeandNil(FPesquisaImovel);
      edtPesquisa.text:= PassaNomeImovel(ID_IMOVEL);
    end;
  end;
end;

procedure TFPlanilhaImoveis.spbPesquisaClick(Sender: TObject);
begin
  dsPlanilha.DataSet.Filtered:= False;
  dsPlanilha.DataSet.Refresh;
end;

end.
