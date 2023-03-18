unit UnitInfoRegistro;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, DBCtrls, Placemnt;

type
 TInfoRegistroIBFrm = class(TForm)
   Label1: TLabel;
   Label2: TLabel;
   DBText1: TDBText;
   Label4: TLabel;
   DBText3: TDBText;
   DBText4: TDBText;
   FormStorage1: TFormStorage;
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 InfoRegistroIBFrm: TInfoRegistroIBFrm;

implementation

{$R *.dfm}

end.
