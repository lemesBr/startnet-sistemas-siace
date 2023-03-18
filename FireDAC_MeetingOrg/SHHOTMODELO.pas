unit SHHOTMODELO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIPageControl, ExtCtrls, SUITabControl, Menus;

type
  TFormPadraoShott = class(TForm)
    pc: TsuiPageControl;
    TAgregados: TsuiTabSheet;
    TSimilares: TsuiTabSheet;
    Tprodutos: TsuiTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPadraoShott: TFormPadraoShott;

implementation

{$R *.dfm}

end.
