unit LiberacaoAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, StdCtrls, Mask, DBCtrls;

type
  TFormLiberacao = class(TForm)
    suiForm1: TsuiForm;
    DBEdit1: TDBEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLiberacao: TFormLiberacao;

implementation

uses ModulodeDados;

{$R *.dfm}

end.
