unit ImportarSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, DB, DBTables, Wwquery,
  MDOCustomDataSet, MDODatabase, MDOQuery, MDOSQL, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TfImportarSaidas = class(TForm)
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label1: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwQuery1: TwwQuery;
    Transacao: TMDOTransaction;
    dseSaidas: TMDODataSet;
    dsdseSaidas: TDataSource;
    MDOQuery1: TMDOQuery;
    dseSaidasNRO_PEDIDO: TIntegerField;
    dseSaidasTIPO_RECEITUARIO: TMDOStringField;
    dseSaidasNRO_NOTIFICACAO: TMDOStringField;
    dseSaidasDATA_PRESCRICAO: TDateField;
    dseSaidasNOME_PRESCRITOR: TMDOStringField;
    dseSaidasNRO_REG_PROFISSIONAL: TMDOStringField;
    dseSaidasCONSELHO_PROFISSIONAL: TMDOStringField;
    dseSaidasUF_CONSELHO: TMDOStringField;
    dseSaidasUSO_MEDICAMENTO: TMDOStringField;
    dseSaidasNOME_COMPRADOR: TMDOStringField;
    dseSaidasTIPO_DOC_COMPRADOR: TMDOStringField;
    dseSaidasNRO_DOC_COMPRADOR: TMDOStringField;
    dseSaidasORGAO_EXP_DOCTO: TMDOStringField;
    dseSaidasUF_EMISSAO_DOCTO: TMDOStringField;
    dseSaidasNRM: TMDOStringField;
    dseSaidasCODIGO_BARRAS: TMDOStringField;
    dseSaidasDESCRICAO: TMDOStringField;
    dseSaidasLOTE: TMDOStringField;
    dseSaidasQUANTIDADE: TFloatField;
    dseSaidasDATA_VENDA: TDateField;
    dseMedico: TMDODataSet;
    dseClientes: TMDODataSet;
    wwDBGrid1: TwwDBGrid;
    dswwQuery1: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure dseSaidasAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dseMedicoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImportarSaidas: TfImportarSaidas;

implementation

{$R *.dfm}

procedure TfImportarSaidas.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfImportarSaidas.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  dseSaidas.Active := True;
  dseMedico.Active := True;
  dseClientes.Active := True;
end;

procedure TfImportarSaidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  wwQuery1.Active  := False;
  dseSaidas.Active := False;
  dseMedico.Active := False;
  dseClientes.Active := False;
  MDOQuery1.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfImportarSaidas.BitBtn1Click(Sender: TObject);
begin
  with wwQuery1 do
  begin
    Active := False;
    ParamByName('DATA_VEN_COM1').AsDateTime := wwDBDateTimePicker1.DateTime;
    ParamByName('DATA_VEN_COM2').AsDateTime := wwDBDateTimePicker2.DateTime;
    Active := True;

    if RecordCount > 0 then
    begin
      First;
      while not eof do
      begin

        // Pesquisar o Medico
        with MDOQuery1 do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('select * from MEDICO ');
          SQL.Add('where CRM = :CRM ');
          ParamByName('CRM').AsString := wwQuery1.FieldByName('CRF_MEDICO').AsString;
          Active := True;
          if RecordCount = 0 then
          begin
            with dseMedico do
            begin
              Insert;
              FieldByName('CRM').AsString        := wwQuery1.FieldByName('CRF_MEDICO').AsString;
              FieldByName('MEDICO').AsString     := wwQuery1.FieldByName('NOME_MEDICO').AsString;
              FieldByName('CONSELHO').AsString   := 'CRM';
              FieldByName('UF').AsString         := 'PR';
              FieldByName('CADASTRO').AsDateTime := Date;
              Post;
            end;
          end;
        end;

        // Pesquisar o Cliente
        with MDOQuery1 do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('select * from CLIENTES ');
          SQL.Add('where DOCUMENTO = :DOCUMENTO ');
          ParamByName('DOCUMENTO').AsString := wwQuery1.FieldByName('RG_CLIENTE').AsString;
          Active := True;
          if RecordCount = 0 then
          begin
            with dseClientes do
            begin
              Insert;
              FieldByName('DOCUMENTO').AsString    := wwQuery1.FieldByName('RG_CLIENTE').AsString;
              FieldByName('NOME_CLIENTE').AsString := wwQuery1.FieldByName('NOME_CLIENTE').AsString;
              FieldByName('ORGAO_EXP').AsString    := 'SESP';
              FieldByName('UF_ORGAO').AsString     := 'PR';
              FieldByName('TIPO_DOCTO').AsString   := '2';
              Post;
            end;
          end;
        end;

        // Verifica se o produto esta cadastrado, senão avisa
        with MDOQuery1 do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('select * from PRODUTOS ');
          SQL.Add('where CODIGO_BARRAS = :CODIGO_BARRAS ');
          SQL.Add('and NRM = :NRM ');
          ParamByName('CODIGO_BARRAS').AsString := wwQuery1.FieldByName('PRODUTO').AsString;
          ParamByName('NRM').AsString           := wwQuery1.FieldByName('NRM').AsString;

          Active := True;
          if RecordCount = 0 then
          begin
            ShowMessage('ATENÇÃO!! O Produto '+wwQuery1.FieldByName('Produto').AsString+' '+wwQuery1.FieldByName('MS_PRODUTO').AsString+' '+wwQuery1.FieldByName('DESCRICAO').AsString+' não esta cadastrado no SNGPC, cadastre e importe novamente.');
            Abort;
          end;
        end;

        // Pesquisa para ver se o medicamento jah foi cadastrado.
        with dseSaidas do
        begin
          dseSaidas.Active := False;
          dseSaidas.SelectSQL.Clear;
          dseSaidas.SelectSQL.Add('select * from SAIDAS ');
          dseSaidas.SelectSQL.Add('where NRO_PEDIDO    = :NRO_PEDIDO ');
          dseSaidas.SelectSQL.Add('and NRO_NOTIFICACAO = :NRO_NOTIFICACAO ');
          dseSaidas.SelectSQL.Add('and NRM             = :NRM ');
          dseSaidas.SelectSQL.Add('and DATA_VENDA      = :DATA_VENDA ');
          dseSaidas.SelectSQL.Add('and LOTE            = :LOTE ');
          dseSaidas.SelectSQL.Add('and DATA_PRESCRICAO = :DATA_PRESCRICAO ');

          dseSaidas.ParamByName('NRO_PEDIDO').Value      := wwQuery1.FieldByName('DOCTO_PEDIDO').AsInteger;
          dseSaidas.ParamByName('NRO_NOTIFICACAO').Value := wwQuery1.FieldByName('NRO_RECEITA').AsString;
          dseSaidas.ParamByName('NRM').Value             := wwQuery1.FieldByName('NRM').AsString;
          dseSaidas.ParamByName('DATA_VENDA').Value      := wwQuery1.FieldByName('DATA_VEN_COM').AsDateTime;
          dseSaidas.ParamByName('LOTE').AsString         := wwQuery1.FieldByName('LOTE').AsString;
          dseSaidas.ParamByName('DATA_PRESCRICAO').Value := wwQuery1.FieldByName('DATA_RECEITA').AsDateTime;
          dseSaidas.Active := True;

          if dseSaidas.RecordCount = 0 then
            dseSaidas.Insert
          else
            dseSaidas.Edit;

          dseSaidas.FieldByName('USO_MEDICAMENTO').AsString      := '1';
          dseSaidas.FieldByName('NRO_PEDIDO').AsInteger          := wwQuery1.FieldByName('DOCTO_PEDIDO').AsInteger;
          dseSaidas.FieldByName('TIPO_RECEITUARIO').AsString     := wwQuery1.FieldByName('TIPO_RECEITA').AsString;
          dseSaidas.FieldByName('NRO_NOTIFICACAO').AsString      := wwQuery1.FieldByName('NRO_RECEITA').AsString;
          dseSaidas.FieldByName('DATA_PRESCRICAO').AsDateTime    := wwQuery1.FieldByName('DATA_RECEITA').AsDateTime;
          dseSaidas.FieldByName('NOME_PRESCRITOR').AsString      := wwQuery1.FieldByName('NOME_MEDICO').AsString;
          dseSaidas.FieldByName('NRO_REG_PROFISSIONAL').AsString := wwQuery1.FieldByName('CRF_MEDICO').AsString;
          dseSaidas.FieldByName('CONSELHO_PROFISSIONAL').AsString:= 'CRM';
          dseSaidas.FieldByName('UF_CONSELHO').AsString          := 'PR';
          dseSaidas.FieldByName('NOME_COMPRADOR').AsString       := wwQuery1.FieldByName('NOME_CLIENTE').AsString;
          dseSaidas.FieldByName('TIPO_DOC_COMPRADOR').AsString   := '2';
          dseSaidas.FieldByName('NRO_DOC_COMPRADOR').AsString    := wwQuery1.FieldByName('RG_CLIENTE').AsString;
          dseSaidas.FieldByName('ORGAO_EXP_DOCTO').AsString      := 'SESP';
          dseSaidas.FieldByName('UF_EMISSAO_DOCTO').AsString     := 'PR';
          dseSaidas.FieldByName('NRM').AsString                  := wwQuery1.FieldByName('NRM').AsString;
          dseSaidas.FieldByName('CODIGO_BARRAS').AsString        := wwQuery1.FieldByName('PRODUTO').AsString;
          dseSaidas.FieldByName('DESCRICAO').AsString            := wwQuery1.FieldByName('DESCRICAO').AsString;
          dseSaidas.FieldByName('LOTE').AsString                 := upperCase(wwQuery1.FieldByName('LOTE').AsString);
          dseSaidas.FieldByName('QUANTIDADE').AsFloat            := wwQuery1.FieldByName('QTDE').AsFloat;
          dseSaidas.FieldByName('DATA_VENDA').AsDateTime         := wwQuery1.FieldByName('DATA_VEN_COM').AsDateTime;
          dseSaidas.Post;
        end;
        Next;
      end;
      ShowMessage('IMPORTAÇÃO Concluida.');
    end
    else
      ShowMessage('ATENÇÃO! Sem dados para importar nesse período.');
  end;
end;

procedure TfImportarSaidas.dseSaidasAfterPost(DataSet: TDataSet);
begin
  dseSaidas.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfImportarSaidas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfImportarSaidas.dseMedicoAfterPost(DataSet: TDataSet);
begin
  dseMedico.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

end.
