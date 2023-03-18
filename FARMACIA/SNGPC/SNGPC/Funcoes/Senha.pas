unit Senha;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, Dialogs, jpeg, ExtCtrls;

type
  TfSenha = class(TForm)
    Label1: TLabel;
    senha: TEdit;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    ImageFd: TImage;
    procedure senhaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSenha: TfSenha;

implementation

{$R *.DFM}

procedure TfSenha.senhaChange(Sender: TObject);
begin
     OKBtn.Enabled := TRUE;
     CancelBtn.Enabled := TRUE;
end;

procedure TfSenha.FormShow(Sender: TObject);
begin
     senha.text := '';
     senha.SetFocus;
     OKBtn.Enabled := FALSE;
     CancelBtn.Enabled := FALSE;
end;

end.

