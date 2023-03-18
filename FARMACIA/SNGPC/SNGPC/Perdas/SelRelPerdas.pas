unit SelRelPerdas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons;

type
  TfSelRelPerdas = class(TForm)
    Data1: TwwDBDateTimePicker;
    Data2: TwwDBDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
  fSelRelPerdas: TfSelRelPerdas;

implementation

uses RelPerdas;

{$R *.dfm}

procedure TfSelRelPerdas.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSelRelPerdas.BitBtn2Click(Sender: TObject);
begin
  try
    fRelPerdas := TfRelPerdas.Create(Self);
  Finally
    fRelPerdas.Release;
    fRelPerdas.Free;
  end;
end;

procedure TfSelRelPerdas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfSelRelPerdas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

end.
