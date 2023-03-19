unit UCadLocaisEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, ImgList, ComCtrls, ToolWin, ExtCtrls, StdCtrls,
  AlignEdit, IBDatabase, IBSQL, Buttons, AdvGlowButton,
  AdvPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.Comp.Client;

type
  TFrmCadLocaisEstoque = class(TFrmCadastroNovo)
    Label1: TLabel;
    codigo: TAlignEdit;
    Label2: TLabel;
    EdtNome: TEdit;
    IBSQLLE: TFDCommand;
    IBTRLE: TFDTransaction;
    procedure Botoes(acao : string);
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadLocaisEstoque: TFrmCadLocaisEstoque;

implementation

Uses ModulodeDados, Ubibli1, UConsLocaisEstoque, Principal;

var
  bGrava: boolean;

{$R *.dfm}

procedure TFrmCadLocaisEstoque.Botoes(acao : string);
begin
  {
    (N)OVO
    (G)RAVAR
    (C)ANCELAR
    (A)LTERAR
    (E)EXCLUIR
    (P)ESQUISAR/CONSULTAR
  }

  if (acao = 'N') or (acao = 'A') then
  begin
    EDedit(FrmCadLocaisEstoque, true);
    btnNovo.Enabled      := false;
    BtnSalvar.Enabled    := true;
    btnCancelar.Enabled  := true;
    BtnEditar.Enabled   := false;

    if acao = 'N' then
    begin
      Limpaedit(FrmCadLocaisEstoque);
      btnExcluir.Enabled   := false;
    end
    else
      btnExcluir.Enabled   := true;

    BtnLocalizar.Enabled := false;
  end
  else
  begin
    if not (acao = 'G') then
      Limpaedit(FrmCadLocaisEstoque);

    EDedit(FrmCadLocaisEstoque, false);
    btnNovo.Enabled      := true;
    BtnSalvar.Enabled    := false;
    btnCancelar.Enabled  := false;

    if (acao = 'C') or (acao = 'E') then
      btnEditar.Enabled:= false
    else
      btnEditar.Enabled:= true;

    if acao = 'G' then
      btnExcluir.Enabled:= true
    else
      BtnExcluir.Enabled:= false;

    BtnLocalizar.Enabled := true;
  end;
end;

procedure TFrmCadLocaisEstoque.FormShow(Sender: TObject);
begin
  inherited;
  if tag = 0 then
  begin
    bGrava:= true;
    Botoes('N');
    edtnome.SetFocus;
  end
  else
  if tag = 1 then
    Botoes('G');
end;

procedure TFrmCadLocaisEstoque.BtnNovoClick(Sender: TObject);
begin
  inherited;
  bGrava:= true;
  Botoes('N');
  edtnome.SetFocus;
end;

procedure TFrmCadLocaisEstoque.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Botoes('C');
end;

procedure TFrmCadLocaisEstoque.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  bGrava:= false;
  Botoes('A');
  edtnome.SetFocus;
end;

procedure TFrmCadLocaisEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if IBTRLE.Active then
     IBTRLE.Commit;

  IBSQLLE.Close;
  Action:= caFree;
end;

procedure TFrmCadLocaisEstoque.BtnGravarClick(Sender: TObject);
begin
  inherited;
  if trim(edtnome.Text) = '' then
  begin
    showmessage('Digite o Nome da Classificação');
    edtnome.SetFocus;
    exit;
  end;

  if IBTRLE.Active then
     IBTRLE.Commit;

  IBTRLE.StartTransaction;
  try
    try
      with IBSQLLE do
      begin
        close;
        CommandText.Clear;

        if bGrava then
        begin
          codigo.Text:= inttostr(prxcod('locais_estoque', 'codigo', dm.IBTransaction, dm.QConsulta));
          CommandText.Add('INSERT INTO LOCAIS_ESTOQUE(CODIGO, DESCRICAO) ' +
          'VALUES(:1, :2)');
        end
        else
        begin
          CommandText.Add('UPDATE LOCAIS_ESTOQUE SET DESCRICAO = :2 WHERE CODIGO = :1');
        end;

        Parambyname('1').AsInteger := strtoint(codigo.Text);
        Parambyname('2').AsString  := trim(edtnome.Text);
        open;
      end;

      IBTRLE.Commit;
      Botoes('G');
    except
      IBTRLE.Rollback;
      showmessage('Erro ao Gravar o Local de Estoque');
    end;
  finally
    IBSQLLE.Close;
  end;
end;

procedure TFrmCadLocaisEstoque.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  excluir(FrmCadLocaisEstoque, 'locais_estoque', codigo, IBSQLLE, IBTRLE);
  Botoes('E');
end;

procedure TFrmCadLocaisEstoque.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsLocaisEstoque, FrmConsLocaisEstoque);
  FrmConsLocaisEstoque.tag:= 0;
  FrmConsLocaisEstoque.showmodal;
end;

procedure TFrmCadLocaisEstoque.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

end.
