unit LegendaStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TLegendaEstadoListMFrm = class(TForm)
    GroupBox9: TGroupBox;
    GroupBox1: TGroupBox;
    AbastecendoImg: TImage;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    PausaImg: TImage;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Image2: TImage;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    AutorizadaImg: TImage;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    NaoAutorizadaImg: TImage;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    ForadoArImg: TImage;
    GroupBox7: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    BicoForaImg: TImage;
    GroupBox8: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    FimDeVendaImg: TImage;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LegendaEstadoListMFrm: TLegendaEstadoListMFrm;

implementation

uses Unit_Rep_Legenda;


{$R *.dfm}

procedure TLegendaEstadoListMFrm.BitBtn2Click(Sender: TObject);
begin
self.close;
end;

procedure TLegendaEstadoListMFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
end;

procedure TLegendaEstadoListMFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then
  self.close;
end;

procedure TLegendaEstadoListMFrm.BitBtn1Click(Sender: TObject);
begin
 application.CreateForm(TLegendaEstadoRepMFrm, LegendaEstadoRepMFrm);
 LegendaEstadoRepMFrm.Quickrep1.preview;
end;

end.
