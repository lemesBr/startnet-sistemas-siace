unit afericao_rel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ADvGlowButton, StdCtrls, Mask, DB,
  Grids, Wwdbigrd, Wwdbgrid, Menus, frxDesgn, frxClass,
  frxDBSet,   IBCustomDataSet, IBQuery, DBCtrls, RxToolEdit;

type
  TFormRelAfercao = class(TForm)
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
    N1: TMenuItem;
    N2: TMenuItem;
    QRLOG: TIBQuery;
    Edit11: TDBLookupComboBox;
    QRLOGCODIGO: TIntegerField;
    QRLOGDATA: TDateField;
    QRLOGCODIGO_PROD: TIntegerField;
    QRLOGQUANTIDADE: TIBBCDField;
    QRLOGVALOR_UNITARIO: TIBBCDField;
    QRLOGVALOR_TOTAL: TIBBCDField;
    QRLOGUSERCAD: TIBStringField;
    QRLOGDATACAD: TDateField;
    QRLOGCOD_USUARIO: TIntegerField;
    QRLOGDESCRICAO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bitbtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelAfercao: TFormRelAfercao;

implementation

uses  ModulodeDados, Principal, Relatorio_afericoes;

{$R *.dfm}

procedure TFormRelAfercao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFormRelAfercao.bfecharClick(Sender: TObject);
begin
close;
end;

procedure TFormRelAfercao.FormShow(Sender: TObject);
begin
  //dm.sds_usuarios.LOCATE('USUARIO',FORMPRINCIPAL.USERLOGADO,[LOCASEINSENSITIVE]);
  DATEEDIT1.DATE := DATE;
  DATEEDIT2.DATE := DATE;
  bfiltrarClick(FormRelAfercao);
end;

procedure TFormRelAfercao.bfiltrarClick(Sender: TObject);
begin
  IF Edit11.Text <> '' THEN
  begin
  if dm.IBTransaction.Active then
   dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
  QRLOG.CLOSE;
  QRLOG.SQL.CLEAR;
  QRLOG.SQL.ADD('SELECT');
  QRLOG.SQL.ADD('AFERICAO.*,');
  QRLOG.SQL.ADD('PRODUTOS.DESCRICAO');
  QRLOG.SQL.ADD('FROM');
  QRLOG.SQL.ADD('AFERICAO,');
  QRLOG.SQL.ADD('PRODUTOS');
  QRLOG.SQL.ADD('WHERE');
  QRLOG.SQL.ADD('AFERICAO.USERCAD = :USUARIO AND');
  QRLOG.SQL.ADD('AFERICAO.CODIGO_PROD = PRODUTOS.CODIGO AND ');
  QRLOG.SQL.ADD('AFERICAO.DATA BETWEEN :DATAI AND :DATAF');
  QRLOG.SQL.ADD('ORDER BY AFERICAO.DATA');
  QRLOG.PARAMS.ParamByName('USUARIO').AsString := EDIT11.Text;
  QRLOG.PARAMS.ParamByName('DATAI').ASDATETIME := DATEEDIT1.DATE;
  QRLOG.PARAMS.ParamByName('DATAF').ASDATETIME := DATEEDIT2.DATE;
  QRLOG.Open;
  dm.IBTransaction.CommitRetaining;
  end
  else
  begin
   if dm.IBTransaction.Active then
   dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
  QRLOG.CLOSE;
  QRLOG.SQL.CLEAR;
  QRLOG.SQL.ADD('SELECT');
  QRLOG.SQL.ADD('AFERICAO.*,');
  QRLOG.SQL.ADD('PRODUTOS.DESCRICAO');
  QRLOG.SQL.ADD('FROM');
  QRLOG.SQL.ADD('AFERICAO,');
  QRLOG.SQL.ADD('PRODUTOS');
  QRLOG.SQL.ADD('WHERE');
  QRLOG.SQL.ADD('AFERICAO.CODIGO_PROD = PRODUTOS.CODIGO AND ');
  QRLOG.SQL.ADD('AFERICAO.DATA BETWEEN :DATAI AND :DATAF');
  QRLOG.SQL.ADD('ORDER BY AFERICAO.DATA');
  QRLOG.PARAMS.ParamByName('DATAI').ASDATETIME := DATEEDIT1.DATE;
  QRLOG.PARAMS.ParamByName('DATAF').ASDATETIME := DATEEDIT2.DATE;
  QRLOG.Open;
  dm.IBTransaction.CommitRetaining;
  end;
end;

procedure TFormRelAfercao.N2Click(Sender: TObject);
begin
 //
end;

procedure TFormRelAfercao.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TFormRelAfercao.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BFILTRAR.SETFOCUS;
end;

procedure TFormRelAfercao.bitbtn5Click(Sender: TObject);
begin
IF NOT QRLOG.Eof then
BEGIN
FormRelAfericoes := TFormRelAfericoes.Create(self);
FormRelAfericoes.RLReport1.Prepare;
FormRelAfericoes.RLReport1.PreviewModal;
end;
end;

end.
