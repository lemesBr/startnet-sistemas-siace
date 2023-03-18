unit lista_planocontas2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, TFlatPanelUnit,
  Buttons, DB,  frxClass,
  frxDBSet, frxDesgn, Menus, aDvGlowButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmlista_planocontas2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxplanocontas: TfrxReport;
    fsnivel1: TfrxDBDataset;
    fsconta: TfrxDBDataset;
    dsnivel1: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bevel2: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrconta: TFDQuery;
    qrnivel1: TFDQuery;
    qrnivel1CODIGO: TIntegerField;
    qrnivel1COD_NATUREZA: TStringField;
    qrnivel1NIVEL_CTA: TStringField;
    qrnivel1COD_CTA: TStringField;
    qrnivel1INDICADOR: TStringField;
    qrnivel1NOME: TStringField;
    qrnivel1USERCAD: TStringField;
    qrnivel1DATACAD: TDateField;
    qrnivel1COD_COMPLETO: TStringField;
    qrnivel1SALDO_CTA: TBCDField;
    qrnivel1DEB_CRED: TStringField;
    qrcontaCODIGO: TIntegerField;
    qrcontaCOD_NATUREZA: TStringField;
    qrcontaNIVEL_CTA: TStringField;
    qrcontaCOD_CTA: TStringField;
    qrcontaINDICADOR: TStringField;
    qrcontaNOME: TStringField;
    qrcontaUSERCAD: TStringField;
    qrcontaDATACAD: TDateField;
    qrcontaCOD_COMPLETO: TStringField;
    qrcontaSALDO_CTA: TBCDField;
    qrcontaDEB_CRED: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_planocontas2: Tfrmlista_planocontas2;

implementation

uses principal, ModulodeDados;

{$R *.dfm}

procedure Tfrmlista_planocontas2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_planocontas2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_ordem.ItemIndex := 0;

  


end;

procedure Tfrmlista_planocontas2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_planocontas2.bimprimirClick(Sender: TObject);
var BANCO, ordem : string;
begin
  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin

    qrnivel1.close;
    qrnivel1.sql.clear;
    qrnivel1.sql.add('select * from planocontas where nivel_cta = 1');
    qrnivel1.open;


{    qrnivel2.close;
    qrnivel2.sql.clear;
    qrnivel2.sql.add('select * from c000035 where nivel = 2');
    qrnivel2.open;
}
    qrconta.close;
    qrconta.sql.clear;
    qrconta.sql.add('select * from planocontas where nivel_cta <> 1 order by '+COMBO_ORDEM.TEXT);
    qrconta.open;



    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'PLANO DE CONTAS';
    FXplanocontas.LoadFromFile('rel\f000035.fr3');
    FXplanocontas.ShowReport;
  end;


end;

procedure Tfrmlista_planocontas2.BitBtn1Click(Sender: TObject);
begin
  {if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;   }
 
  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXplanocontas.LoadFromFile('rel\f000035.fr3');
    FXplanocontas.DesignReport;
  end;


end;

end.
