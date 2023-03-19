unit UCadLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, Buttons, ExtCtrls, ComCtrls, StdCtrls, AlignEdit,
  IBDatabase, IBSQL, ImgList, ToolWin, aDvGlowButton, aDvPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.Comp.Client;

type
  TFrmCadLab = class(TFrmCadastroNovo)
    Label1: TLabel;
    cod_lab: TAlignEdit;
    Label2: TLabel;
    EdtNome: TEdit;
    IBSQLLab: TFDCommand;
    IBTRLab: TFDTransaction;
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure Botoes(acao : string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadLab: TFrmCadLab;

implementation

Uses ModulodeDados, Ubibli1, UConsLab, Principal;

var
  bGrava: boolean;

{$R *.dfm}

procedure TFrmCadLab.Botoes(acao : string);
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
    EDedit(FrmCadLab, true);
    btnNovo.Enabled      := false;
    BtnSalvar.Enabled    := true;
    btnCancelar.Enabled  := true;
    BtnEditar.Enabled   := false;

    if acao = 'N' then
    begin
      Limpaedit(FrmCadLab);
      btnExcluir.Enabled   := false
    end
    else
      btnExcluir.Enabled   := true;

    BtnLocalizar.Enabled := false;
  end
  else
  begin
    if not (acao = 'G') then
      Limpaedit(FrmCadLab);

    EDedit(FrmCadLab, false);
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

procedure TFrmCadLab.FormShow(Sender: TObject);
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

procedure TFrmCadLab.BtnNovoClick(Sender: TObject);
begin
  inherited;
  bGrava:= true;
  Botoes('N');
  edtnome.SetFocus;
end;

procedure TFrmCadLab.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Botoes('C');
end;

procedure TFrmCadLab.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  bGrava:= false;
  Botoes('A');
  edtnome.SetFocus;
end;

procedure TFrmCadLab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if IBTRLab.Active then
     IBTRLab.Commit;

  IBSQLLab.Close;
  Action:= caFree;
end;

procedure TFrmCadLab.BtnGravarClick(Sender: TObject);
begin
  inherited;
  if edtnome.Text = '' then
  begin
    showmessage('Digite a Descrição');
    edtnome.SetFocus;
    exit;
  end;

  if IBTRLab.Active then
    IBTRLab.Commit;

  IBTRLab.StartTransaction;
  try
    try
      with IBSQLLab do
      begin
        close;
        CommandText.Clear;

        if bGrava then
        begin
          cod_lab.Text:= inttostr(prxcod('laboratorio', 'cod_lab', dm.IBTransaction, dm.QConsulta));
          CommandText.Add('INSERT INTO LABORATORIO(COD_LAB, NOME_LAB) VALUES(:CODLAB, :NOMELAB)');
        end
        else
          CommandText.Add('UPDATE LABORATORIO SET NOME_LAB = :NOMELAB WHERE COD_LAB = :CODLAB');

        Parambyname('codlab').AsInteger     := strtoint(cod_lab.Text);
        Parambyname('nomelab').AsString     := edtnome.Text;
        open;
      end;

      IBTRLab.Commit;
      Botoes('G');
    except
      IBTRLab.Rollback;
      showmessage('Erro ao Gravar');
    end;
  finally
    IBSQLLab.Close;
  end;
end;

procedure TFrmCadLab.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  excluir(FrmCadLab, 'laboratorio', cod_lab, IBSQLLab, IBTRLab);
  Botoes('E');
end;

procedure TFrmCadLab.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsLab, FrmConsLab);
  FrmConsLab.tag:= 0;
  FrmConsLab.showmodal;
end;

end.
