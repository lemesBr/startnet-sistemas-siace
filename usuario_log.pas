unit usuario_log;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ADvGlowButton, StdCtrls, Mask, DB,
  Grids, Wwdbigrd, Wwdbgrid, Menus, frxDesgn, frxClass,
  frxDBSet, IBCustomDataSet, IBQuery, RxToolEdit;

type
  Tfrmusuario_log = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    bfiltrar: TAdvGlowButton;
    Bevel1: TBevel;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    Bevel2: TBevel;
    bitbtn5: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Sair1: TMenuItem;
    DSLOG: TDataSource;
    FXLOG: TfrxReport;
    FSLOG: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    N1: TMenuItem;
    N2: TMenuItem;
    QRLOG: TIBQuery;
    QRLOGDATA: TDateField;
    QRLOGHORA: TIBStringField;
    QRLOGCODUSUARIO: TIntegerField;
    QRLOGTABELA: TIBStringField;
    QRLOGCODREGISTRO: TIBStringField;
    QRLOGFUNCAO: TIBStringField;
    QRLOGHISTORICO: TIBStringField;
    QRLOGCODIGO: TIntegerField;
    QRLOGUSUARIO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitbtn5Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmusuario_log: Tfrmusuario_log;

implementation

uses  ModulodeDados;

{$R *.dfm}

procedure Tfrmusuario_log.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmusuario_log.bitbtn5Click(Sender: TObject);
begin
    FXLOG.LoadFromFile('\siace\rel\f000189.fr3');
    FXLOG.ShowReport;
end;

procedure Tfrmusuario_log.bfecharClick(Sender: TObject);
begin
close;
end;

procedure Tfrmusuario_log.FormShow(Sender: TObject);
begin
  DATEEDIT1.DATE := DATE;
  DATEEDIT2.DATE := DATE;
  bfiltrarClick(FRMUSUARIO_LOG);
end;

procedure Tfrmusuario_log.bfiltrarClick(Sender: TObject);
begin
     if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
  QRLOG.CLOSE;
  QRLOG.SQL.CLEAR;
  QRLOG.SQL.ADD('SELECT');
  QRLOG.SQL.ADD('LOG.*,');
  QRLOG.SQL.ADD('USUARIOS.CODIGO, USUARIOS.USUARIO');
  QRLOG.SQL.ADD('FROM');
  QRLOG.SQL.ADD('LOG,');
  QRLOG.SQL.ADD('USUARIOS');
  QRLOG.SQL.ADD('WHERE');
  QRLOG.SQL.ADD('LOG.CODUSUARIO = USUARIOS.CODIGO');
  QRLOG.SQL.ADD('AND LOG.DATA BETWEEN :DATAI AND :DATAF');
  QRLOG.SQL.ADD('ORDER BY LOG.DATA,HORA');
  QRLOG.PARAMS.ParamByName('DATAI').ASDATETIME := DATEEDIT1.DATE;
  QRLOG.PARAMS.ParamByName('DATAF').ASDATETIME := DATEEDIT2.DATE;
  QRLOG.Open;
  dm.IBTransaction.CommitRetaining;
end;

procedure Tfrmusuario_log.N2Click(Sender: TObject);
begin
 //
end;

procedure Tfrmusuario_log.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmusuario_log.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BFILTRAR.SETFOCUS;
end;

end.
