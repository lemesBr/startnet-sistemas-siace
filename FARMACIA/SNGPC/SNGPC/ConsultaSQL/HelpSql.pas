unit HelpSql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfHelpSql = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fHelpSql: TfHelpSql;

implementation

{$R *.dfm}

procedure TfHelpSql.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfHelpSql.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfHelpSql.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+27;
end;

end.
