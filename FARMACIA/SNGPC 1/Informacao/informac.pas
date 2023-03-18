unit informac;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, DB, Wwdatsrc, DBTables, Wwtable, MPlayer, SysUtils, ShellApi,
  jpeg;

type
  TInforma = class(TForm)
    Panel1: TPanel;
    OKButton: TBitBtn;
    Panel2: TPanel;
    ProductName: TLabel;
    Copyright: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Image2: TImage;
    Panel5: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Informa: TInforma;

implementation

{$R *.DFM}

procedure TInforma.OKButtonClick(Sender: TObject);
begin
     close;
end;

procedure TInforma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;


procedure TInforma.Label8Click(Sender: TObject);
begin
        ShellExecute(Handle,'open','http://www.futurasystem.com.br',nil,nil,SW_MAXIMIZE);
end;

end.

