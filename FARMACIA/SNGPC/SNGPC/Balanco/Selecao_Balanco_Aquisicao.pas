unit Selecao_Balanco_Aquisicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ExtCtrls, wwdblook, Db, DBTables, Wwtable,
  Wwquery, wwdbedit, Wwdatsrc, wwdbdatetimepicker, Wwdotdot, Wwdbcomb;

type
  TfSelBalancoAquisicao = class(TForm)
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Periodo: TRadioGroup;
    Data1: TwwDBDateTimePicker;
    Data2: TwwDBDateTimePicker;
    cBxPortaria: TwwDBComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Data1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelBalancoAquisicao: TfSelBalancoAquisicao;

implementation

uses Balanco_Aquisicoes;

{$R *.DFM}

procedure TfSelBalancoAquisicao.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSelBalancoAquisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfSelBalancoAquisicao.Data1Exit(Sender: TObject);
var 
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Data1.DateTime, Ano, Mes, Dia);
  if (Mes >= 1) and (Mes <= 3) then
  begin
    Periodo.ItemIndex := 0;
    Data2.DateTime := StrToDateTime('31/03/'+IntToStr(Ano));
  end;
  if (Mes >= 4) and (Mes <= 6) then
  begin
    Periodo.ItemIndex := 1;
    Data2.DateTime := StrToDateTime('30/06/'+IntToStr(Ano));
  end;
  if (Mes >= 7) and (Mes <= 9) then
  begin
    Periodo.ItemIndex := 2;
    Data2.DateTime := StrToDateTime('30/09/'+IntToStr(Ano));
  end;
  if (Mes >= 10) and (Mes <= 12) then
  begin
    Periodo.ItemIndex := 3;
    Data2.DateTime := StrToDateTime('31/12/'+IntToStr(Ano));
  end;
end;

procedure TfSelBalancoAquisicao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfSelBalancoAquisicao.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+27;
end;

procedure TfSelBalancoAquisicao.BitBtn2Click(Sender: TObject);
begin
  try
    fBalancoAquisicoes := TfBalancoAquisicoes.Create(Self);
  finally
    fBalancoAquisicoes.Release;
    fBalancoAquisicoes.Free;
  end;
end;

procedure TfSelBalancoAquisicao.Data2Exit(Sender: TObject);
var
  Ano, Mes, Dia: Word;
  Ano1, Mes1, Dia1: Word;
begin
  DecodeDate(Data1.DateTime, Ano, Mes, Dia);
  DecodeDate(Data2.DateTime, Ano1, Mes1, Dia1);
  if (Mes = 1) and (Mes1 = 12) then
    Periodo.ItemIndex := 4;

end;

end.
