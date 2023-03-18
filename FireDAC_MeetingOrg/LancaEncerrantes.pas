unit LancaEncerrantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FDvGlowButton, ExtCtrls, TFlatPanelUnit, StdCtrls, Mask, RzEdit,
  RzDBEdit, RzDBBnEd, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RXDBCtrl, RxToolEdit, RxCurrEdit;

type
  TfrmLancaEncerrantes = class(TForm)
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label14: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    eabertura: TDBEdit;
    eencerrante: TDBEdit;
    eafericao: TDBEdit;
    qrLAnca: TZQuery;
    dsLanca: TDataSource;
    lbbico: TLabel;
    ebico: TEdit;
    rquantidade: TRxCalcEdit;
    qrCombustivel: TZQuery;
    qrApoio: TZQuery;
    qrBicos: TZQuery;
    qrBicosCODIGO: TIntegerField;
    qrBicosCOD_PRODUTO: TIntegerField;
    qrBicosPRECO: TFloatField;
    qrBicosCOD_BOMBA: TIntegerField;
    qrBicosENCERRANTE: TIntegerField;
    qrBicosTANQUE: TIntegerField;
    qrLAncaCODIGO: TIntegerField;
    qrLAncaDATA: TDateTimeField;
    qrLAncaCOD_BICO: TIntegerField;
    qrLAncaABERTURA: TIntegerField;
    qrLAncaENCERRAMENTO: TIntegerField;
    qrLAncaQUANTIDADE: TFloatField;
    qrLAncaAFERICAO: TFloatField;
    qrLAncaPRECO: TFloatField;
    qrLAncaVALOR: TFloatField;
    qrLAncaCOD_PRODUTO: TIntegerField;
    qrLAncaSITUACAO: TWideStringField;
    procedure ebicoKeyPress(Sender: TObject; var Key: Char);
    procedure eaberturaKeyPress(Sender: TObject; var Key: Char);
    procedure eencerranteKeyPress(Sender: TObject; var Key: Char);
    procedure eafericaoKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ebicoEnter(Sender: TObject);
    procedure eaberturaEnter(Sender: TObject);
    procedure eencerranteEnter(Sender: TObject);
    procedure eafericaoEnter(Sender: TObject);
    procedure ebicoExit(Sender: TObject);
    procedure eaberturaExit(Sender: TObject);
    procedure eencerranteChange(Sender: TObject);
    procedure eencerranteExit(Sender: TObject);
    procedure eafericaoExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancaEncerrantes: TfrmLancaEncerrantes;
  xproduto : integer;
  xpreco : double;
  
implementation

uses modulo, principal, loc_bico;

{$R *.dfm}

procedure TfrmLancaEncerrantes.ebicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLancaEncerrantes.eaberturaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmLancaEncerrantes.eencerranteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmLancaEncerrantes.eafericaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmLancaEncerrantes.bcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLancaEncerrantes.FormShow(Sender: TObject);
begin
  qrLanca.Open;
  qrLanca.Insert;
  ebico.SetFocus;
end;

procedure TfrmLancaEncerrantes.ebicoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLancaEncerrantes.eaberturaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLancaEncerrantes.eencerranteEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLancaEncerrantes.eafericaoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLancaEncerrantes.ebicoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if ebico.Text <> '' then
  begin
     qrBicos.Close;
     qrBicos.SQL.Clear;
     qrBicos.SQL.Add('select * from CADBICO where codigo = :codigo');
     qrBicos.Params.ParamByName('codigo').AsInteger := StrToInt(ebico.Text);
     qrBicos.Open;
     if qrBicos.RecordCount > 0 then
     begin
       xproduto := qrBicos.fieldbyname('cod_produto').AsInteger;
       xpreco   := qrBicos.fieldbyname('preco').AsFloat;
     end
     else
     begin
        application.messagebox( 'Bico não cadastro. Verifique!','Erro',mb_ok+MB_ICONERROR);
        frmloc_bico := tfrmloc_bico.Create(self);
        frmloc_bico.ShowModal;
        ebico.SetFocus;
     end;

     qrCombustivel.Close;
     qrCombustivel.SQL.Clear;
     qrCombustivel.SQL.Add('select * from CADCOMBUSTIVEL where codigo = :codigo');
     qrCombustivel.Params.ParamByName('codigo').AsInteger := xproduto;
     qrCombustivel.Open;
     if qrCombustivel.RecordCount > 0 then
       lbbico.Caption := qrCombustivel.fieldbyname('nome').asstring;

  end;
end;

procedure TfrmLancaEncerrantes.eaberturaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmLancaEncerrantes.eencerranteChange(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmLancaEncerrantes.eencerranteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmLancaEncerrantes.eafericaoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  rquantidade.Value := qrLanca.fieldbyname('encerramento').asinteger -
                 qrLanca.fieldbyname('abertura').asinteger -
                 qrLanca.fieldbyname('afericao').asinteger;

end;

procedure TfrmLancaEncerrantes.bgravarClick(Sender: TObject);
var
  xencerrantes : double;
begin
  qrApoio.Close;
  qrApoio.SQL.Clear;
  qrApoio.SQL.Add('select * from ENCERRANTES where cod_bico = :cod_bico');
  qrApoio.Params.ParamByName('cod_bico').AsInteger := StrToInt(ebico.Text);
  qrApoio.Open;

  if qrApoio.RecordCount > 0 then
    xencerrantes := qrApoio.fieldbyname('encerramento').asfloat;

  if xencerrantes > 0 then
  begin
     application.messagebox( 'Já existe encerrante cadastrado para este Bico nesta data. Verifique!','Atenção',mb_ok+mb_iconwarning);
     qrLanca.Cancel;
     ebico.SetFocus;
  end;
  qrLanca.FieldByName('codigo').AsString := frmprincipal.codifica('ENCERR');
  qrLanca.FieldByName('cod_produto').AsInteger := xproduto;
  qrLanca.FieldByName('data').AsDateTime := frmmodulo.qrcaixa_operador.fieldbyname('data').AsDateTime;
  qrLanca.FieldByName('cod_bico').AsInteger := StrToInt(ebico.Text);
  qrLanca.FieldByName('quantidade').AsFloat := rquantidade.Value;
  qrLanca.FieldByName('preco').AsFloat := xpreco;
  qrLanca.FieldByName('valor').AsFloat := qrLanca.FieldByName('quantidade').AsFloat * xpreco;
  qrLanca.FieldByName('situacao').AsString := 'A';

  qrLanca.Post;


  qrApoio.Close;
  qrApoio.SQL.Clear;
  qrApoio.SQL.Add('update CADBICO set encerrante = :encerrante where codigo = :codigo');
  qrApoio.Params.ParamByName('codigo').AsInteger := StrToInt(ebico.Text);
  qrApoio.Params.ParamByName('encerrante').AsInteger := qrLanca.FieldByName('encerramento').AsInteger;
  qrApoio.ExecSql;

  frmmodulo.Conexao.commit;
  qrLanca.Close;
end;

end.
