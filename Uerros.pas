unit Uerros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls, StdCtrls, SUIListBox;

type
  TFormErros = class(TForm)
    suiListBox1: TsuiListBox;
    Panel1: TPanel;
    suiButton1: TsuiButton;


  private
    { Private declarations }
  public
    { Public declarations }
    Procedure LimpaErros;
    Procedure FDicionaErro(p_erro : string);
    Function VerificaSeTemErro : Boolean;
  end;

var
  FormErros: TFormErros;

implementation

{$R *.dfm}
procedure TFormErros.FDicionaErro(p_erro: string);
begin
SUIListBox1.Items.Add(p_erro);
end;
procedure TFormErros.LimpaErros;
begin
SUIListBox1.items.Clear;
end;
function TFormErros.VerificaSeTemErro: Boolean;
begin
result := SUIListBox1.Items.Count > 0;
end;

end.
