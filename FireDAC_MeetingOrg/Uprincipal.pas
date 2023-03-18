unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    este1: TMenuItem;
    procedure este1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprincipal: TFprincipal;

implementation
uses osbens;

{$R *.dfm}

procedure TFprincipal.este1Click(Sender: TObject);
begin
 if FormOSBem=nil then
    FormOSBem:=TFormOSBem.Create(Self);
FormOSBem.Show;

end;

end.
