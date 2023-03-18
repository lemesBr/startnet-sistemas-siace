unit sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, aDvOfficeStatusBar, aDvOfficeStatusBarStylers, aDvToolBar,
  pngimage, ExtCtrls, aDvToolBarStylers, StdCtrls, aDvReflectionLabel,
  aDvGlowButton, RzLabel, RzBorder, aDvReflectionImage,
  TFlatGroupBoxUnit, RXCtrls, sLabel, acPNG;

type
  TFormsobre = class(TForm)
    imgBG: TImage;
    lblInfoTecnica: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblEmail2: TLabel;
    lblSkype2: TLabel;
    lblRepresentante: TLabel;
    lblEmail: TLabel;
    lblSkype: TLabel;
    lblFone1: TLabel;
    lblFone2: TLabel;
    lblSite: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formsobre: TFormsobre;

implementation

uses Biblioteca;

{$R *.dfm}

procedure TFormsobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree ;
Formsobre := nil;
end;

procedure TFormsobre.FormCreate(Sender: TObject);
begin
  lblInfoTecnica.Caption:= Trim(TBiblioteca.LerIni('Siace.ini', 'INFO-SOBRE', 'INFOTEC'));
  lblRepresentante.Caption:= Trim(TBiblioteca.LerIni('Siace.ini', 'INFO-SOBRE', 'REPRESENTANTE'));
  lblEmail.Caption:= Trim(TBiblioteca.LerIni('Siace.ini', 'INFO-SOBRE', 'EMAIL'));
  lblSkype.Caption:= Trim(TBiblioteca.LerIni('Siace.ini', 'INFO-SOBRE', 'SKYPE'));
  lblFone1.Caption:= Trim(TBiblioteca.LerIni('Siace.ini', 'INFO-SOBRE', 'FONE1'));
  lblFone2.Caption:= Trim(TBiblioteca.LerIni('Siace.ini', 'INFO-SOBRE', 'FONE2'));
end;

end.
