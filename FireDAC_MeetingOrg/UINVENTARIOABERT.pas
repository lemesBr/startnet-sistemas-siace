unit UINVENTARIOABERT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, RLFilters, RLDraftFilter;

type
  TFormAberturaLivro = class(TForm)
    RLReport1: TRLReport;
    RLDraftFilter1: TRLDraftFilter;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLReport2: TRLReport;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAberturaLivro: TFormAberturaLivro;

implementation

{$R *.dfm}

end.
