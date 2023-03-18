unit Encerrantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, TFlatPanelUnit, FDvGlowButton,
  Grids, FDvObj, BaseGrid, FDvGrid, DBAdvGrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DateUtils, Menus;

type
  TfrmEncerrantes = class(TForm)
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    pficha: TFlatPanel;
    Label14: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    dtATual: TDateTimePicker;
    grdEncerrantes: TDBAdvGrid;
    qrEncerrantes: TZQuery;
    dsEncerrantes: TDataSource;
    qrCombustivel: TZQuery;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Label2: TLabel;
    lbsituacao: TLabel;
    qrult_encerrantes: TZQuery;
    qrFecha: TZQuery;
    qrApoio: TZQuery;
    qrEncerrantesCODIGO: TIntegerField;
    qrEncerrantesDATA: TDateTimeField;
    qrEncerrantesCOD_BICO: TIntegerField;
    qrEncerrantesABERTURA: TIntegerField;
    qrEncerrantesENCERRAMENTO: TIntegerField;
    qrEncerrantesQUANTIDADE: TFloatField;
    qrEncerrantesAFERICAO: TFloatField;
    qrEncerrantesPRECO: TFloatField;
    qrEncerrantesVALOR: TFloatField;
    qrEncerrantesCOD_PRODUTO: TIntegerField;
    qrEncerrantesSITUACAO: TWideStringField;
    qrCombustivelNOME: TWideStringField;
    qrCombustivelPR_COMPRA: TFloatField;
    qrCombustivelPR_CUSTO: TFloatField;
    qrCombustivelPR_VENDA: TFloatField;
    qrCombustivelCODIGO: TIntegerField;
    qrult_encerrantesCODIGO: TIntegerField;
    qrult_encerrantesDATA: TDateTimeField;
    qrult_encerrantesCOD_BICO: TIntegerField;
    qrult_encerrantesABERTURA: TIntegerField;
    qrult_encerrantesENCERRAMENTO: TIntegerField;
    qrult_encerrantesQUANTIDADE: TFloatField;
    qrult_encerrantesAFERICAO: TFloatField;
    qrult_encerrantesPRECO: TFloatField;
    qrult_encerrantesVALOR: TFloatField;
    qrult_encerrantesCOD_PRODUTO: TIntegerField;
    qrult_encerrantesSITUACAO: TWideStringField;
    qrult_encerrantesATUALIZADO: TIntegerField;
    procedure bfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEncerrantes: TfrmEncerrantes;
  xsituacao : integer;

implementation

uses modulo, LancaEncerrantes, principal, AlteraEncerrantes;

{$R *.dfm}

procedure TfrmEncerrantes.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEncerrantes.FormShow(Sender: TObject);
begin

        // Vira encerrantes
        qrult_Encerrantes.Close;
        qrult_Encerrantes.SQL.Clear;
        qrult_Encerrantes.SQL.Add('select * from ULT_ENCERRANTES where ATUALIZADO = 0');
        qrult_Encerrantes.Open;

        if frmmodulo.qrcaixa_operador.fieldbyname('data').AsDateTime > qrult_Encerrantes.FieldByName('data').AsDateTime  then
        begin
           if qrult_Encerrantes.FieldByName('atualizado').AsInteger = 0 then
           begin
            qrEncerrantes.Open;
            While not qrult_Encerrantes.Eof do
            begin
              qrEncerrantes.Insert;
              qrEncerrantes.FieldByName('codigo').AsString := qrult_Encerrantes.FieldByName('codigo').asstring;
              qrEncerrantes.FieldByName('cod_produto').AsInteger := qrult_Encerrantes.FieldByName('cod_produto').asinteger;
              qrEncerrantes.FieldByName('data').AsDateTime := frmmodulo.qrcaixa_operador.fieldbyname('data').AsDateTime;
              qrEncerrantes.FieldByName('cod_bico').AsInteger := qrult_Encerrantes.FieldByName('cod_bico').asinteger;
              qrEncerrantes.FieldByName('abertura').AsInteger := qrult_Encerrantes.FieldByName('abertura').asinteger;
              qrEncerrantes.FieldByName('preco').AsFloat := qrult_Encerrantes.FieldByName('preco').asinteger;
              qrEncerrantes.FieldByName('situacao').AsString := 'A';
              qrEncerrantes.Post;
              qrult_Encerrantes.Next;
            end;

            qrult_Encerrantes.First;
            While not qrult_Encerrantes.Eof do
            begin
               qrult_Encerrantes.Edit;
               qrult_Encerrantes.FieldByName('atualizado').AsInteger := 1;
               qrult_Encerrantes.Post;
               qrult_Encerrantes.Next;
            end;
            frmmodulo.Conexao.commit;
           end;
        end;



  xencerrant := 0;
//  dtAtual.Date := date;
  dtAtual.Date :=  frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
  qrEncerrantes.Close;
  qrEncerrantes.SQL.Clear;
  qrEncerrantes.SQL.Add('select * from ENCERRANTES where data= :data');
  //qrEncerrantes.Params.ParamByName('data').AsDate := dtAtual.Date;
  qrEncerrantes.Params.ParamByName('data').AsDateTime :=frmmodulo.qrcaixa_operador.fieldbyname('data').AsDateTime;
  qrEncerrantes.Open;

  if qrEncerrantes.RecordCount > 0 then
  begin
    if qrEncerrantes.FieldByName('situacao').AsString = 'A' then
    begin
      bgravar.Caption := 'F2|Fechar Encerrantes';
      lbsituacao.Caption := 'Encerrantes Abertos';
      xsituacao := 0;
    end
    else
    begin
//      bgravar.Caption := 'F2|Reabrir Encerrantes';
        bgravar.Enabled := False;
      lbsituacao.Caption := 'Encerrantes Fechados';
      xsituacao := 1;
    end;
  end
  else
        lbsituacao.Caption := 'Sem Encerrantes para esta data';

end;

procedure TfrmEncerrantes.bincluirClick(Sender: TObject);
begin
  frmLancaEncerrantes := tfrmLancaEncerrantes.create(Self);
  frmLancaEncerrantes.ShowModal;
  qrEncerrantes.Refresh
end;

procedure TfrmEncerrantes.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir registro',4) then
  begin
     if Application.messagebox(pchar('Deseja Excluir o registro agora?'),'Exclusão',mb_yesno+mb_iconquestion) = idYes then
     begin
      qrEncerrantes.Delete;
      frmmodulo.Conexao.commit;
      qrEncerrantes.Refresh;
     end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure TfrmEncerrantes.balterarClick(Sender: TObject);
begin
  xencerrant := qrEncerrantes.fieldbyname('codigo').AsInteger;
  frmAlteraEncerrantes := tfrmAlteraEncerrantes.create(Self);
  frmALteraEncerrantes.ShowModal;
  qrEncerrantes.Refresh;

end;

procedure TfrmEncerrantes.bgravarClick(Sender: TObject);
var
   xencerr_final : double;
   xnova_data : TDateTime;
begin
    if  xsituacao = 0 then
    begin
      if Application.messagebox(pchar('Deseja Fechar os Encerrantes para esta data agora?'),'Confirmação',mb_yesno+mb_iconquestion) = idYes then
      begin
        qrFecha.Close;
        qrFecha.SQL.Clear;
        qrFecha.SQL.Add('select * from ENCERRANTES where data= :data');
        qrFecha.Params.ParamByName('data').AsDateTime :=frmmodulo.qrcaixa_operador.fieldbyname('data').AsDateTime;
        qrFecha.Open;

        qrFecha.First;
        While not qrFecha.Eof do
        begin
          qrFecha.Edit;
          qrFecha.FieldByName('situacao').AsString := 'F';
          qrFecha.Post;
          qrFecha.Next;

        end;
        frmmodulo.Conexao.commit;

            qrApoio.Close;
            qrApoio.SQL.Clear;
            qrApoio.SQL.Add('select * from ENCERRANTES where data= :data');
            qrApoio.Params.ParamByName('data').AsDateTime :=frmmodulo.qrcaixa_operador.fieldbyname('data').AsDateTime;
            qrApoio.Open;

            qrApoio.First;

            While not qrApoio.Eof do
            begin
              qrult_Encerrantes.Insert;
              qrult_Encerrantes.fieldbyname('codigo').AsString := frmprincipal.codifica('ENCERR');
              qrult_Encerrantes.fieldbyname('data').AsDateTime := qrApoio.fieldbyname('data').AsDateTime;
              qrult_Encerrantes.fieldbyname('cod_bico').AsInteger := qrApoio.fieldbyname('cod_bico').AsInteger;
              qrult_Encerrantes.fieldbyname('abertura').AsInteger := qrApoio.fieldbyname('encerramento').AsInteger;
              qrult_Encerrantes.fieldbyname('cod_produto').AsInteger := qrApoio.fieldbyname('cod_produto').AsInteger;
              qrult_Encerrantes.fieldbyname('preco').AsFloat := qrApoio.fieldbyname('preco').AsFloat;
              qrult_Encerrantes.fieldbyname('situacao').AsString := 'A';
              qrult_Encerrantes.fieldbyname('atualizado').AsInteger := 0;
              qrult_Encerrantes.Post;

              qrApoio.Next;

            end;


            frmmodulo.Conexao.commit;

//          bgravar.Caption := 'F2|Reabrir Encerrantes';
           bgravar.Enabled := False;
          lbsituacao.Caption := 'Encerrantes Fechados';
          xsituacao := 1;
      end;
    end;


{
    else
    begin
      if Application.messagebox(pchar('Deseja Reabrir os Encerrantes para esta data agora?'),'Confirmação',mb_yesno+mb_iconquestion) = idYes then
      begin
        qrEncerrantes.Close;
        qrEncerrantes.SQL.Clear;
        qrEncerrantes.SQL.Add('select * from ENCERRANTES where data= :data');
//        qrEncerrantes.Params.ParamByName('data').AsDate := dtAtual.Date;
        qrEncerrantes.Params.ParamByName('data').AsDate := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
        qrEncerrantes.Open;

        qrEncerrantes.First;
        qrEncerrantes.Edit;
        While not qrEncerrantes.Eof do
        begin
          qrEncerrantes.FieldByName('situacao').AsString := 'A';
          qrEncerrantes.Post;
          qrEncerrantes.Next;

        end;
          frmmodulo.Conexao.commit;
          bgravar.Caption := 'F2|Fechar Encerrantes';
          lbsituacao.Caption := 'Encerrantes Abertos';
          xsituacao := 0;
      end;
    end;
}
end;

end.
