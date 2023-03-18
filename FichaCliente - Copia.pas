unit FichaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, RLRichFilter, RLPDFFilter;

type
  TFormFichaCliente = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    Matricial: TRLDraftFilter;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText25: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel46: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel47: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel48: TRLLabel;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLDBText39: TRLDBText;
    RLLabel51: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel52: TRLLabel;
    RLDBText41: TRLDBText;
    RLLabel53: TRLLabel;
    RLDBText42: TRLDBText;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel58: TRLLabel;
    RLDBText43: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBText46: TRLDBText;
    RLLabel62: TRLLabel;
    RLDBText47: TRLDBText;
    RLLabel63: TRLLabel;
    RLDBText48: TRLDBText;
    RLLabel57: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLDBText44: TRLDBText;
    RLLabel68: TRLLabel;
    RLDBText49: TRLDBText;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLDBText50: TRLDBText;
    RLLabel72: TRLLabel;
    RLDBText51: TRLDBText;
    RLLabel73: TRLLabel;
    RLDBText52: TRLDBText;
    RLLabel74: TRLLabel;
    RLDBText53: TRLDBText;
    RLLabel75: TRLLabel;
    RLDBText54: TRLDBText;
    RLLabel76: TRLLabel;
    RLDBText55: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFichaCliente: TFormFichaCliente;

implementation

uses clientes;

{$R *.dfm}

end.
