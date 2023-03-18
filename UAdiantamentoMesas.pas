unit UAdiantamentoMesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, sLabel, IBDatabase, DB,
  IBCustomDataSet, IBQuery, Grids, DBGrids, IBUpdateSQL, ComCtrls, RxToolEdit,
  RxCurrEdit;

type
  TfrmAdiantamentosMesa = class(TForm)
    sLabelFX1: TsLabelFX;
    edtValor: TCurrencyEdit;
    IBAd: TIBQuery;
    IBTRA: TIBTransaction;
    DBGrid1: TDBGrid;
    IBAdCODIGO: TIntegerField;
    IBAdORDEM: TIntegerField;
    IBAdVALOR: TIBBCDField;
    IBAdDESCRICAO: TIBStringField;
    UpA: TIBUpdateSQL;
    sLabelFX2: TsLabelFX;
    DsA: TDataSource;
    edtDescricao: TEdit;
    StatusBar1: TStatusBar;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure MostraAdiantamentos;
    procedure LimpaCampos;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescricaoKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    CodigoDaMesa: Integer;
  end;

var
  frmAdiantamentosMesa: TfrmAdiantamentosMesa;

implementation

uses UMesas, UDialog, ModulodeDados;

{$R *.dfm}

procedure TfrmAdiantamentosMesa.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_DELETE then
        begin
           IBAd.Delete;
        end;
end;

procedure TfrmAdiantamentosMesa.edtDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
                try
                    IBAd.Insert;
                    IBAdCODIGO.AsInteger := CodigoDaMesa;
                    IBAdVALOR.AsCurrency := edtValor.Value;
                    IBAdDESCRICAO.AsString := edtDescricao.Text;
                    IBAd.Post;
                    IBTRA.CommitRetaining;
                    LimpaCampos;
                    MostraAdiantamentos;
                except
                    IBAd.Cancel;
                    KDialog( 'Erro Inserindo FDiantamento', 'FDinatamentos', 'ERRO' );
                    IBTRA.RollbackRetaining;
                    LimpaCampos;
                    MostraAdiantamentos;
                end;
      end;
end;

procedure TfrmAdiantamentosMesa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    IBAd.Close;
    if IBTRA.InTransaction then
        IBTRA.Commit;
    Action := caFree;
    Self := nil;
end;

procedure TfrmAdiantamentosMesa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE : Close;
      VK_F2: LimpaCampos;
      VK_F3: begin
                try
                    IBAd.Insert;
                    IBAdCODIGO.AsInteger := CodigoDaMesa;
                    IBAdVALOR.AsCurrency := edtValor.Value;
                    IBAdDESCRICAO.AsString := edtDescricao.Text;
                    IBAd.Post;
                    IBTRA.CommitRetaining;
                    LimpaCampos;
                    MostraAdiantamentos;
                except
                    IBAd.Cancel;
                    KDialog( 'Erro Inserindo FDiantamento', 'FDinatamentos', 'ERRO' );
                    IBTRA.RollbackRetaining;
                    LimpaCampos;
                    MostraAdiantamentos;
                end;
             end;
      VK_F4: DBGrid1.SetFocus;
   end;
end;

procedure TfrmAdiantamentosMesa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TfrmAdiantamentosMesa.FormShow(Sender: TObject);
begin
  LimpaCampos;
  MostraAdiantamentos;
end;

procedure TfrmAdiantamentosMesa.LimpaCampos;
begin
   edtDescricao.Clear;
   edtValor.Value := 0;
   edtValor.SelectAll;
   edtValor.SetFocus;
end;

procedure TfrmAdiantamentosMesa.MostraAdiantamentos;
begin
   if IBTRA.InTransaction then
       IBTRA.Commit;
   IBTRA.StartTransaction;
   IBAd.Close;
   IBAd.ParamByName( 'COD' ).AsInteger := CodigoDaMesa;
   IBAd.Open;

end;

end.
