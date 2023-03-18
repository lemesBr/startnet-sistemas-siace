unit SelRelSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, ExtCtrls;

type
  TfSelRelSaidas = class(TForm)
    Data1: TwwDBDateTimePicker;
    Data2: TwwDBDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Ordem: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelRelSaidas: TfSelRelSaidas;

implementation

uses RelSaidas;

{$R *.dfm}

procedure TfSelRelSaidas.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSelRelSaidas.BitBtn2Click(Sender: TObject);
begin
  try
    fRelSaidas := TfRelSaidas.Create(Self);
  Finally
    fRelSaidas.Release;
    fRelSaidas.Free;
  end;
end;

procedure TfSelRelSaidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfSelRelSaidas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

end.
