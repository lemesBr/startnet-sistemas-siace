unit PesqMedicEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MDODatabase, StdCtrls, Mask, wwdbedit, ExtCtrls, DB,
  MDOCustomDataSet, MDOQuery, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  wwDialog, wwidlg;

type
  TfPesqMecEntradas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel14: TPanel;
    Label1: TLabel;
    Panel15: TPanel;
    Transacao: TMDOTransaction;
    MDOQuery1: TMDOQuery;
    cCodigo: TEdit;
    Label2: TLabel;
    MDOQuery2: TMDOQuery;
    wwDBGrid1: TwwDBGrid;
    dsMDOQuery2: TwwDataSource;
    bSair: TBitBtn;
    MDOQuery2NOTA_FISCAL: TMDOStringField;
    MDOQuery2TIPO_OP_NF: TMDOStringField;
    MDOQuery2EMISSAO_NF: TDateField;
    MDOQuery2CNPJ_FORNECEDOR: TMDOStringField;
    MDOQuery2NOME_FORNECEDOR: TMDOStringField;
    MDOQuery2CODIGO_BARRAS: TMDOStringField;
    MDOQuery2NRM: TMDOStringField;
    MDOQuery2DESCRICAO: TMDOStringField;
    MDOQuery2LOTE: TMDOStringField;
    MDOQuery2QUANTIDADE: TFloatField;
    MDOQuery2RECEBIDO: TDateField;
    sdPesquisar: TwwSearchDialog;
    procedure cCodigoExit(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPesqMecEntradas: TfPesqMecEntradas;

implementation
uses Menu;

{$R *.dfm}

procedure TfPesqMecEntradas.cCodigoExit(Sender: TObject);
begin
  if cCodigo.Text <> '' then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from PRODUTOS ');
      SQL.Add('where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := cCodigo.Text;
      Active := True;
      if RecordCount > 0 then
      begin
        Label2.Caption := FieldByName('NRM').AsString+' - '+FieldByName('DESCRICAO').AsString;
        with MDOQuery2 do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('select * from ENTRADAS where CODIGO_BARRAS = :CODIGO ORDER BY RECEBIDO');
          ParamByName('CODIGO').AsString := cCodigo.Text;
          Active := True;
        end;
      end
      else
        begin
          ShowMessage('ATENÇÃO!! Medicamento não cadastrado.');
          cCodigo.SetFocus;
          Abort;
        end;
      end;
    end
    else
    begin
      ShowMessage('ATENÇÃO!! Código Invalido.');
      cCodigo.SetFocus;
      Abort;
    end;
end;

procedure TfPesqMecEntradas.bSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfPesqMecEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfPesqMecEntradas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfPesqMecEntradas.cCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then
  begin
    if cCodigo.Text <> '' then
    begin
      with MDOQuery1 do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('select * from PRODUTOS ');
        SQL.Add('where DESCRICAO like :DESCRICAO ');
        SQL.Add('order by DESCRICAO');
        ParamByName('DESCRICAO').AsString := '%'+UpperCase(cCodigo.Text)+'%';
        Active := True;

        sdPesquisar.ShadowSearchTable := MDOQuery1;
        sdPesquisar.Selected.Add('DESCRICAO' +#9+'50'+#9+'Descrição');
        sdPesquisar.Selected.Add('CODIGO_BARRAS' +#9+'18'+#9+'Código Barras');
        sdPesquisar.Selected.Add('NRM' +#9+'18'+#9+'NRM');
        sdPesquisar.Execute;

        cCodigo.Text := FieldByName('CODIGO_BARRAS').AsString;
      end;
    end;
  end;
end;

procedure TfPesqMecEntradas.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+27;
end;

end.
