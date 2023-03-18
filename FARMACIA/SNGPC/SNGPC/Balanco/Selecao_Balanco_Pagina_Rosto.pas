unit Selecao_Balanco_Pagina_Rosto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ExtCtrls, wwdblook, Db, DBTables, Wwtable,
  Wwquery, wwdbedit, Wwdatsrc, wwdbdatetimepicker, Wwdotdot, Wwdbcomb;

type
  TfSelBalancoPaginaRosto = class(TForm)
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Periodo: TRadioGroup;
    Data1: TwwDBDateTimePicker;
    Data2: TwwDBDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Data1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelBalancoPaginaRosto: TfSelBalancoPaginaRosto;

implementation

uses Balanco_Pagina_Rosto;

{$R *.DFM}

procedure TfSelBalancoPaginaRosto.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSelBalancoPaginaRosto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfSelBalancoPaginaRosto.Data1Exit(Sender: TObject);
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

procedure TfSelBalancoPaginaRosto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfSelBalancoPaginaRosto.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+27;
end;

procedure TfSelBalancoPaginaRosto.BitBtn2Click(Sender: TObject);
begin
  try
    fBalancoPaginaRosto := TfBalancoPaginaRosto.Create(Self);
  finally
    fBalancoPaginaRosto.Release;
    fBalancoPaginaRosto.Free;
  end;
end;

end.
