unit ImportarXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, DB, DBTables, Wwquery,
  MDOCustomDataSet, MDODatabase, MDOQuery, MDOSQL, Grids, Wwdbigrd,
  Wwdbgrid, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfImportarXML = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Transacao: TMDOTransaction;
    dseEntradas: TMDODataSet;
    qryTmp: TMDOQuery;
    dseLabDistr: TMDODataSet;
    dseEntradasNOTA_FISCAL: TMDOStringField;
    dseEntradasTIPO_OP_NF: TMDOStringField;
    dseEntradasEMISSAO_NF: TDateField;
    dseEntradasCNPJ_FORNECEDOR: TMDOStringField;
    dseEntradasNOME_FORNECEDOR: TMDOStringField;
    dseEntradasCODIGO_BARRAS: TMDOStringField;
    dseEntradasNRM: TMDOStringField;
    dseEntradasDESCRICAO: TMDOStringField;
    dseEntradasLOTE: TMDOStringField;
    dseEntradasQUANTIDADE: TFloatField;
    dseEntradasRECEBIDO: TDateField;
    dseCabEntradas: TMDODataSet;
    OpenDialog1: TOpenDialog;
    dseCabEntradasNOTA_FISCAL: TMDOStringField;
    dseCabEntradasTIPO_OP_NF: TMDOStringField;
    dseCabEntradasEMISSAO_NF: TDateField;
    dseCabEntradasCNPJ_FORNECEDOR: TMDOStringField;
    dseCabEntradasRECEBIDO: TDateField;
    dseCabEntradasNOME_FORNECEDOR: TMDOStringField;
    dsdseCabEntradas: TDataSource;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure dseEntradasAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dseLabDistrAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImportarXML: TfImportarXML;

implementation
uses Funcoes;

{$R *.dfm}

procedure TfImportarXML.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfImportarXML.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  dseCabEntradas.Active := True;
  dseEntradas.Active := True;
  dseLabDistr.Active := True;
end;

procedure TfImportarXML.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfImportarXML.BitBtn1Click(Sender: TObject);
var vXMLDoc : TXMLDocument;
    NodeNFe, NodeinfNFe, Nodeide, Nodeemit, NodeenderEmit, Nodedet, Nodeprod, NodeTmp : IXMLNode;

    vNotaFiscal, vEmissao, vCnpj, vFantasia, vEndereco, vCep, vBairro, vCidade, vUf, vInscricao, vFone : WideString;

    i,ii : Integer;
    vCodigo, vBarras, vNLote, vQLote : Array[1..1000] of string;

    vDistrib : String;
begin
  // zerar as variaveis
  i:=0;
  for i:=1 to 1000 do
  begin
    vCodigo[i]:=''; vBarras[i]:=''; vNLote[i]:='';  vQLote[i]:='';  
  end;

  // Cria a variável baseada no TXMLDocument
  vXMLDoc := TXMLDocument.Create(self);

  // Le conteúdo do arquivo XML informado
  if OpenDialog1.Execute then
    vXMLDoc.LoadFromFile(OpenDialog1.FileName);

  NodeNFe := vXMLDoc.DocumentElement.ChildNodes.FindNode('NFe');
    NodeinfNFe      := NodeNFe.ChildNodes.FindNode('infNFe');
      Nodeide       := NodeinfNFe.ChildNodes.FindNode('ide');
        vNotaFiscal := Nodeide.ChildNodes['nNF'].Text;
        vEmissao    := Nodeide.ChildNodes['dEmi'].Text;

      // Emitente Distribuidora/Laboratorio
      Nodeemit      := NodeinfNFe.ChildNodes.FindNode('emit');
        vCnpj       := Nodeemit.ChildNodes['CNPJ'].Text;
        if Nodeemit.ChildNodes['xFant'].Text <> '' then
          vFantasia   := Nodeemit.ChildNodes['xFant'].Text
        else
          vFantasia   := Nodeemit.ChildNodes['xNome'].Text;
        vInscricao:= Nodeemit.ChildNodes['IE'].Text;

        NodeenderEmit := Nodeemit.ChildNodes.FindNode('enderEmit');
          vEndereco := NodeenderEmit.ChildNodes['xLgr'].Text+', '+ NodeenderEmit.ChildNodes['nro'].Text;
          vBairro   := NodeenderEmit.ChildNodes['xBairro'].Text;
          vCidade   := NodeenderEmit.ChildNodes['xMun'].Text;
          vUf       := NodeenderEmit.ChildNodes['UF'].Text;
          vCep      := NodeenderEmit.ChildNodes['CEP'].Text;
          vFone     := NodeenderEmit.ChildNodes['fone'].Text;

      // Produtos
      Nodedet := NodeinfNFe.ChildNodes.FindNode('det');
      Nodedet.ChildNodes.First;
      i:=1;
      repeat
        Nodeprod   := Nodedet.ChildNodes['prod'];
        // Pegar os produtos
        vCodigo[i] := Nodeprod.ChildNodes['cProd'].Text;
        vBarras[i] := Nodeprod.ChildNodes['cEAN'].Text;

        // Lote
        NodeTmp := Nodeprod.ChildNodes['med'];
          vNLote[i] := NodeTmp.ChildNodes['nLote'].Text;
          vQLote[i] := NodeTmp.ChildNodes['qLote'].Text;

        Inc(i);
        Nodedet := Nodedet.NextSibling;
      until Nodedet = nil;

  // Buscar Laboratorio/Distribuidora pelo CPNJ
  with qryTmp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select * from LABORATORIO where CNPJ = :CNPJ');
    ParamByName('CNPJ').AsString := Copy(vCnpj,1,2)+'.'+Copy(vCnpj,3,3)+'.'+Copy(vCnpj,6,3)+'/'+Copy(vCnpj,9,4)+'-'+Copy(vCnpj,13,2);
    Active := True;
    if RecordCount > 0 then
    begin
      vDistrib := FieldByName('CNPJ').AsString
    end
    else
    begin
      // Senão encontrou cadastra
      with dseLabDistr do
      begin
        Insert;
        FieldByName('CNPJ').AsString      := Copy(vCnpj,1,2)+'.'+Copy(vCnpj,3,3)+'.'+Copy(vCnpj,6,3)+'/'+Copy(vCnpj,9,4)+'-'+Copy(vCnpj,13,2);
        FieldByName('NOME').AsString      := vFantasia;
        FieldByName('ENDERECO').AsString  := vEndereco;
        FieldByName('BAIRRO').AsString    := vBairro;
        FieldByName('CIDADE').AsString    := vCidade;
        FieldByName('UF').AsString        := vUf;
        FieldByName('CEP').AsString       := Copy(vCep,1,5)+'-'+Copy(vCep,6,3);
        FieldByName('FONE').AsString      := vFone;
        FieldByName('INSCRICAO').AsString := vInscricao;
        Post;
        vDistrib := Copy(vCnpj,1,2)+'.'+Copy(vCnpj,3,3)+'.'+Copy(vCnpj,6,3)+'/'+Copy(vCnpj,9,4)+'-'+Copy(vCnpj,13,2);
      end;
    end;
  end;

  // Verifica se a nota jah foi lançada
  with qryTmp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT * FROM CAB_ENTRADAS ');
    SQL.Add('WHERE NOTA_FISCAL = :NOTA_FISCAL ');
    SQL.Add('AND EMISSAO_NF = :EMISSAO_NF ');
    SQL.Add('AND CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR ');
    ParamByName('NOTA_FISCAL').AsString     := vNotaFiscal;
    ParamByName('EMISSAO_NF').AsDate        := StrToDateTime(Copy(vEmissao,9,2)+'/'+Copy(vEmissao,6,2)+'/'+Copy(vEmissao,1,4));
    ParamByName('CNPJ_FORNECEDOR').AsString := vDistrib;
    Active := True;
    if RecordCount > 0 then
    begin
      ShowMessage('ATENÇÃO!! Nota Fiscal já cadastrada.');
      Abort;
    end;
    Active := False;
  end;

  // Lançar a Nota
  dseCabEntradas.Insert;
  dseCabEntradas.FieldByName('NOTA_FISCAL').AsString     := vNotaFiscal;
  dseCabEntradas.FieldByName('EMISSAO_NF').AsDateTime    := StrToDateTime(Copy(vEmissao,9,2)+'/'+Copy(vEmissao,6,2)+'/'+Copy(vEmissao,1,4));
  dseCabEntradas.FieldByName('TIPO_OP_NF').AsString      := '1';
  dseCabEntradas.FieldByName('RECEBIDO').AsDateTime      := StrToDateTime(Copy(vEmissao,9,2)+'/'+Copy(vEmissao,6,2)+'/'+Copy(vEmissao,1,4));
  dseCabEntradas.FieldByName('CNPJ_FORNECEDOR').AsString := vDistrib;
  dseCabEntradas.FieldByName('NOME_FORNECEDOR').AsString := vFantasia;
  dseCabEntradas.Post;

  // Lançar os produtos
  i:=0;
  for i:=1 to 1000 do
  begin

    if vCodigo[i] = '' then
      Break;

    // Verifica se o produto esta cadastrado
    with qryTmp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT * FROM PRODUTOS ');
      SQL.Add('WHERE CODIGO_BARRAS = :CODIGO');
      ParamByName('CODIGO').AsString := vBarras[i];
      Active := True;
      if RecordCount > 0 then
      begin
        dseEntradas.Insert;
        dseEntradas.FieldByName('NOTA_FISCAL').AsString          := vNotaFiscal;
        dseEntradas.FieldByName('EMISSAO_NF').AsDateTime         := StrToDateTime(Copy(vEmissao,9,2)+'/'+Copy(vEmissao,6,2)+'/'+Copy(vEmissao,1,4));
        dseEntradas.FieldByName('TIPO_OP_NF').AsString           := '1';
        dseEntradas.FieldByName('RECEBIDO').AsDateTime           := StrToDateTime(Copy(vEmissao,9,2)+'/'+Copy(vEmissao,6,2)+'/'+Copy(vEmissao,1,4));
        dseEntradas.FieldByName('CNPJ_FORNECEDOR').AsString      := vDistrib;
        dseEntradas.FieldByName('NOME_FORNECEDOR').AsString      := vFantasia;
        dseEntradas.FieldByName('CODIGO_BARRAS').AsString        := FieldByName('CODIGO_BARRAS').AsString;
        dseEntradas.FieldByName('NRM').AsString                  := FieldByName('NRM').AsString;
        dseEntradas.FieldByName('DESCRICAO').AsString            := FieldByName('DESCRICAO').AsString;
        dseEntradas.FieldByName('LOTE').AsString                 := vNLote[i];
        if Pos('.',vQLote[i]) > 0 then
          dseEntradas.FieldByName('QUANTIDADE').AsInteger := Round(StrToInt(Trim(FU_STRTRAN(vQLote[i],'.','')))/1000)
        else
          dseEntradas.FieldByName('QUANTIDADE').AsInteger := Round(StrToInt(Trim(vQLote[i])));
        dseEntradas.Post;
      end;
    end;
  end;

  if dseEntradas.RecordCount = 0 then
  begin
    ShowMessage('ATENÇÃO!! Não foi importado nenhum item dessa nota, pois não estavam cadastrados. Verifique.');
    dseCabEntradas.Delete;
  end
  else
    ShowMessage('IMPORTAÇÃO Concluida com sucesso.');
end;

procedure TfImportarXML.dseEntradasAfterPost(DataSet: TDataSet);
begin
  dseEntradas.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfImportarXML.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfImportarXML.dseLabDistrAfterPost(DataSet: TDataSet);
begin
  dseLabDistr.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

end.
