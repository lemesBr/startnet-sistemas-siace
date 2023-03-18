unit Calendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, SUITitleBar;

type
  TFormCalendario = class(TForm)
    MonthCalendar1: TMonthCalendar;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalendario: TFormCalendario;

implementation

{$R *.dfm}

procedure TFormCalendario.FormActivate(Sender: TObject);
begin
MONTHCALENDAR1.DATE := DATE;
end;

procedure TFormCalendario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormCalendario:=nil;
end;

end.
