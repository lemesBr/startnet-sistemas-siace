unit atualizaImpostos;

interface

uses
  ACBrIBPTax,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids,
  ACBrBase, ACBrSocket, IBSQL, RzPrgres, ComCtrls;

type
  TFormImpostos = class(TForm)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    edNCM: TEdit;
    btnPesquisar: TBitBtn;
    rgTipoExportacao: TRadioGroup;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btExportar: TBitBtn;
    btSair: TBitBtn;
    btProxy: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    sbArquivo: TSpeedButton;
    lVersao: TLabel;
    edArquivo: TEdit;
    btAbrir: TBitBtn;
    btDownload: TBitBtn;
    OpenDialog1: TOpenDialog;
    tmpCadastro: TClientDataSet;
    dtsCadastro: TDataSource;
    SaveDialog1: TSaveDialog;
    ACBrIBPTax1: TACBrIBPTax;
    Label2: TLabel;
    edURL: TEdit;
    BitBtn1: TBitBtn;
    SQLVendas: TIBSQL;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    ckbBuscaNCMParcial: TCheckBox;
    tmpCadastroNCM: TStringField;
    tmpCadastroEx: TIntegerField;
    tmpCadastroTabela: TIntegerField;
    tmpCadastroDescricao: TStringField;
    tmpCadastroAliqFedNacional: TFloatField;
    tmpCadastroAliqFedImportado: TFloatField;
    tmpCadastroAliqEstadual: TFloatField;
    tmpCadastroAliqMunicipal: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btExportarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btDownloadClick(Sender: TObject);
    procedure btAbrirClick(Sender: TObject);
    procedure sbArquivoClick(Sender: TObject);
    procedure btProxyClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

  public

  end;

var
  FormImpostos: TFormImpostos;

implementation

uses
  ProxyConfig, ModulodeDados, statusImpostos;

{$R *.dfm}

procedure TFormImpostos.btAbrirClick(Sender: TObject);
var
  I: Integer;
begin
   Memo1.Clear;
  // configurar a URL do arquivo para ser baixado
  if Trim(edURL.Text) <> '' then
    ACBrIBPTax1.URLDownload := Trim(edURL.Text);

  // se o path do arquivo não for passado, então o componente vai tentar baixar
  // a tabela no URL informado
   Memo1.Lines.BeginUpdate;
  try
  if ACBrIBPTax1.AbrirTabela(edArquivo.Text) then
  begin
    lVersao.Caption := 'Versão: ' + ACBrIBPTax1.VersaoArquivo;

    tmpCadastro.Close;
    tmpCadastro.CreateDataSet;
    tmpCadastro.DisableControls;
    try
      for I := 0 to ACBrIBPTax1.Itens.Count - 1 do
      begin
        tmpCadastro.Append;
        tmpCadastroNCM.AsString              := ACBrIBPTax1.Itens[I].NCM;
        tmpCadastroDescricao.AsString        := ACBrIBPTax1.Itens[I].Descricao;
        tmpCadastroEx.AsString               := ACBrIBPTax1.Itens[I].Excecao;
        tmpCadastroTabela.AsInteger          := Integer(ACBrIBPTax1.Itens[I].Tabela);
        tmpCadastroAliqFedNacional.AsFloat  := ACBrIBPTax1.Itens[I].FederalNacional;
        tmpCadastroAliqFedImportado.AsFloat := ACBrIBPTax1.Itens[I].FederalImportado;
        tmpCadastroAliqEstadual.AsFloat     := ACBrIBPTax1.Itens[I].Estadual;
        tmpCadastroAliqMunicipal.AsFloat    := ACBrIBPTax1.Itens[I].Municipal;
        tmpCadastro.Post;
      end;
    finally
      tmpCadastro.First;
      tmpCadastro.EnableControls;
      BitBtn1.Enabled := True;
    end;
  end;
  finally
    Memo1.Lines.EndUpdate;
  end;
end;

procedure TFormImpostos.btDownloadClick(Sender: TObject);
begin
  tmpCadastro.Close;
  ACBrIBPTax1.URLDownload := Trim(edURL.Text);

  if ACBrIBPTax1.DownloadTabela then
  begin
    MessageDlg('Download da tabela efetuado com sucesso.', mtInformation, [mbOK], 0);

    if MessageDlg('Deseja abrir a tabela e mostrar os dados?', mtInformation, [mbYes,mbNo], 0) = mrYes then
      btAbrir.Click;
  end
  else
    MessageDlg('Não foi possível efetuar o download da tabela.', mtError, [mbOK], 0);
end;

procedure TFormImpostos.btExportarClick(Sender: TObject);
begin
  case rgTipoExportacao.ItemIndex of
    0:
      begin
        SaveDialog1.Title      := 'Exportar arquivo CSV';
        SaveDialog1.FileName   := 'IBPTax.csv';
        SaveDialog1.DefaultExt := '.csv';
        SaveDialog1.Filter     := 'Arquivos CSV|*.csv';

        if SaveDialog1.Execute then
          ACBrIBPTax1.Exportar(SaveDialog1.FileName, exCSV);
      end;

    1:
      begin
        SaveDialog1.Title      := 'Exportar arquivo DSV';
        SaveDialog1.FileName   := 'IBPTax.dsv';
        SaveDialog1.DefaultExt := '.dsv';
        SaveDialog1.Filter     := 'Arquivos DSV|*.dsv';

        if SaveDialog1.Execute then
          ACBrIBPTax1.Exportar(SaveDialog1.FileName, exDSV);
      end;

    2:
      begin
        SaveDialog1.Title      := 'Exportar arquivo XML';
        SaveDialog1.FileName   := 'IBPTax.xml';
        SaveDialog1.DefaultExt := '.xml';
        SaveDialog1.Filter     := 'Arquivos XML|*.xml';

        if SaveDialog1.Execute then
          ACBrIBPTax1.Exportar(SaveDialog1.FileName, exXML);
      end;

    3:
      begin
        SaveDialog1.Title      := 'Exportar arquivo HTML';
        SaveDialog1.FileName   := 'IBPTax.html';
        SaveDialog1.DefaultExt := '.html';
        SaveDialog1.Filter     := 'Arquivos HTML|*.html';

        if SaveDialog1.Execute then
          ACBrIBPTax1.Exportar(SaveDialog1.FileName, exHTML);
      end;

    4:
      begin
        SaveDialog1.Title      := 'Exportar arquivo TXT';
        SaveDialog1.FileName   := 'IBPTaxTexto.txt';
        SaveDialog1.DefaultExt := '.txt';
        SaveDialog1.Filter     := 'Arquivos TXT|*.txt';

        if SaveDialog1.Execute then
          ACBrIBPTax1.Exportar(SaveDialog1.FileName, exTXT);
      end;

    5:
      begin
        SaveDialog1.Title      := 'Exportar arquivo delimitado';
        SaveDialog1.FileName   := 'IBPTax.txt';
        SaveDialog1.DefaultExt := '.txt';
        SaveDialog1.Filter     := 'Arquivos TXT|*.txt';

        if SaveDialog1.Execute then
          ACBrIBPTax1.Exportar(SaveDialog1.FileName, exTXT);
      end;
  end;

  MessageDlg(
    Format('Tabela exportada com sucesso em "%s"'+ sLineBreak, [SaveDialog1.FileName]),
    mtInformation,
    [mbOK],
    0
  );
end;

procedure TFormImpostos.btnPesquisarClick(Sender: TObject);
var
  ex, descricao: String;
  tabela: Integer;
  aliqFedNac, aliqFedImp, aliqEst, aliqMun: Double;
begin
  if ACBrIBPTax1.Procurar(edNCM.Text, ex, descricao, tabela, aliqFedNac, aliqFedImp, aliqEst, aliqMun, ckbBuscaNCMParcial.Checked) then
  begin
    ShowMessage(
      'Código: '    + edNCM.Text  + sLineBreak +
      'Exceção: '   + ex + sLineBreak +
      'Descrição: ' + descricao + sLineBreak +
      'Tabela: '    + IntToStr(tabela) + sLineBreak +
      'Aliq Federal Nacional: '  + FloatToStr(aliqFedNac) + sLineBreak +
      'Aliq Federal Importado: '  + FloatToStr(aliqFedImp) + sLineBreak +
      'Aliq Estadual: '  + FloatToStr(aliqEst) + sLineBreak +
      'Aliq Municipal: '  + FloatToStr(aliqMun)
    );
  end
  else
    showmessage('Código não encontrado!');
end;

procedure TFormImpostos.btProxyClick(Sender: TObject);
var
  frProxyConfig: TfrProxyConfig;
begin
  frProxyConfig := TfrProxyConfig.Create(self);
  try
    frProxyConfig.edServidor.Text := ACBrIBPTax1.ProxyHost;
    frProxyConfig.edPorta.Text    := ACBrIBPTax1.ProxyPort;
    frProxyConfig.edUser.Text     := ACBrIBPTax1.ProxyUser;
    frProxyConfig.edSenha.Text    := ACBrIBPTax1.ProxyPass;

    if frProxyConfig.ShowModal = mrOK then
    begin
      ACBrIBPTax1.ProxyHost := frProxyConfig.edServidor.Text;
      ACBrIBPTax1.ProxyPort := frProxyConfig.edPorta.Text;
      ACBrIBPTax1.ProxyUser := frProxyConfig.edUser.Text;
      ACBrIBPTax1.ProxyPass := frProxyConfig.edSenha.Text;
    end;
  finally
    frProxyConfig.Free;
  end;
end;

procedure TFormImpostos.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormImpostos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACBrIBPTax1.Free;
  Action := caFree;
  FormImpostos := NIL;
end;

procedure TFormImpostos.FormCreate(Sender: TObject);
begin
  ACBrIBPTax1 := TACBrIBPTax.Create(Self);
end;

procedure TFormImpostos.sbArquivoClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    edArquivo.Text := OpenDialog1.FileName;
    btAbrir.Click;
  end;
end;

procedure TFormImpostos.BitBtn1Click(Sender: TObject);
var
  contador, e : Integer;
begin
{if tmpCadastro.Eof then
begin
 showmessage('Primeiro abra a tabela para atualizar...');
end else
      if not tmpCadastro.Eof then
      begin  }
        Application.ProcessMessages;
        // if ACBrIBPTax1.AbrirTabela(edArquivo.Text) then
         // begin

        tmpCadastro.First;
        Contador:= tmpCadastro.RecordCount;
        Application.CreateForm(TFormStatusI, FormStatusI);
        FormStatusI.Show;
        FormStatusI.ProgressBar1.MaxValue := contador;
        For E:=1 to contador do
        begin
         FormStatusI.ProgressBar1.Progress := E;
         Sleep(90);
          if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
           DM.IBTransaction.StartTransaction;
         try
          try
           SQLVendas.Close;
           SQLVendas.SQL.Clear;
           SQLVendas.SQL.Add('update tabela_ncm set tabela_ncm.alic_nac =:alic_nac, tabela_ncm.alic_imp =:alic_imp, tabela =:tab  where codigo_ncm =:cod_ncm');
           SQLVendas.Params.ByName('alic_nac').AsFloat := tmpCadastroAliqFedNacional.AsFloat;
           SQLVendas.Params.ByName('alic_imp').AsFloat := tmpCadastroAliqFedImportado.AsFloat;
           SQLVendas.Params.ByName('tab').AsString     := IntToStr(tmpCadastroTabela.Asinteger);
           SQLVendas.Params.ByName('COD_NCM').AsString := tmpCadastroNCM.AsString;
           SQLVendas.Prepare;
           SQLVendas.ExecQuery;
           tmpCadastro.Next;
           DM.IBTransaction.Commit;
          except
          DM.IBTransaction.Rollback;
          showmessage('Erro ao Atualizar os Ncm e alicotas');
          end;
        finally
        SQLVendas.Close;
        FormStatusI.BringToFront;
        FormStatusI.Repaint;
        Application.ProcessMessages;
        end;
        end;
        FormStatusI.FREE;
        showmessage('Banco de Dados atualizado com sucesso...');
end;

procedure TFormImpostos.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF Key =#27 then
CLOSE;
end;

end.
