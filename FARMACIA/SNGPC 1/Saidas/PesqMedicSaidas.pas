unit PesqMedicSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MDODatabase, StdCtrls, Mask, wwdbedit, ExtCtrls, DB,
  MDOCustomDataSet, MDOQuery, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  wwDialog, wwidlg;

type
  TfPesqMecSaidas = class(TForm)
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
    sdPesquisar: TwwSearchDialog;
    MDOQuery2NRO_PEDIDO: TIntegerField;
    MDOQuery2TIPO_RECEITUARIO: TMDOStringField;
    MDOQuery2NRO_NOTIFICACAO: TMDOStringField;
    MDOQuery2DATA_PRESCRICAO: TDateField;
    MDOQuery2NOME_PRESCRITOR: TMDOStringField;
    MDOQuery2NRO_REG_PROFISSIONAL: TMDOStringField;
    MDOQuery2CONSELHO_PROFISSIONAL: TMDOStringField;
    MDOQuery2UF_CONSELHO: TMDOStringField;
    MDOQuery2USO_MEDICAMENTO: TMDOStringField;
    MDOQuery2NOME_COMPRADOR: TMDOStringField;
    MDOQuery2TIPO_DOC_COMPRADOR: TMDOStringField;
    MDOQuery2NRO_DOC_COMPRADOR: TMDOStringField;
    MDOQuery2ORGAO_EXP_DOCTO: TMDOStringField;
    MDOQuery2UF_EMISSAO_DOCTO: TMDOStringField;
    MDOQuery2NRM: TMDOStringField;
    MDOQuery2CODIGO_BARRAS: TMDOStringField;
    MDOQuery2DESCRICAO: TMDOStringField;
    MDOQuery2LOTE: TMDOStringField;
    MDOQuery2QUANTIDADE: TFloatField;
    MDOQuery2DATA_VENDA: TDateField;
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
  fPesqMecSaidas: TfPesqMecSaidas;

implementation
uses Menu;

{$R *.dfm}

procedure TfPesqMecSaidas.cCodigoExit(Sender: TObject);
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
          SQL.Add('select * from SAIDAS where CODIGO_BARRAS = :CODIGO ORDER BY DATA_VENDA');
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

procedure TfPesqMecSaidas.bSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfPesqMecSaidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfPesqMecSaidas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfPesqMecSaidas.cCodigoKeyDown(Sender: TObject; var Key: Word;
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

procedure TfPesqMecSaidas.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+27;
end;

end.
