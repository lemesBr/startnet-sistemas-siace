unit fLigacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Spin, Mask, Grids, DBGrids, DB,
  RxToolEdit, RxCurrEdit;

type
  TF_Ligacao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DsPadrao: TDataSource;
    BtNovo: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtExcluir: TBitBtn;
    BtFechar: TBitBtn;
    Grupo1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Grupo2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdQtdMinuto: TRxCalcEdit;
    EdVlrMinuto: TRxCalcEdit;
    EdData: TDateEdit;
    EdHora: TMaskEdit;
    EdNumero: TEdit;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    frOperacao: TLabel;
    procedure BtFecharClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
procedure AtivaBotoes(Ativa: Boolean);
var
  F_Ligacao: TF_Ligacao;

implementation

uses ModuleDados1, ModulodeDados;


{$R *.dfm}

Function Validacao : Boolean;
Begin
  Result := False;

  //===========================================//
  // Verifica se o Categoria foi preenchido //
  //===========================================//
  If F_Ligacao.EdData.Text = '  /  /    ' Then
  Begin
    MessageDlg('A Data da Ligação não pode ficar em branco.',MtInformation,[MbOk],0);
    F_Ligacao.EdData.SetFocus;
    Exit;
  End;

  Result := True;
End;

procedure Normal;
begin
  with F_Ligacao do
  begin
  //  DM1.Conf.Open;
    AtivaBotoes(True);
    EdData.Date        := Date;
    EdHora.Text        := TimeToStr(Time);
    EdNumero.Text      := '';
    EdQtdMinuto.Value  := 1;
    EdVlrMinuto.Value  := DM.SDS_CONFIGURACOESCON_VALORMINUTO.AsFloat;
    frOperacao.Caption := '';
    EdData.SetFocus;

    DM1.Ligacao.Close;
    DM1.Ligacao.SQL.Clear;
    DM1.Ligacao.SQL.Add(' Select * From Ligacao       ');
    DM1.Ligacao.SQL.Add(' Where  LIG_CodEntrada =:P00 ');
    DM1.Ligacao.Params[00].AsString := CodEntrada;
    DM1.Ligacao.Open;
  end;
end;

Procedure LeRegistro;
Begin
  with F_Ligacao do
  begin
    AtivaBotoes(True);
    EdData.Date        := DM1.LigacaoLIG_DATALIGACAO.Value;
    EdHora.Text        := DM1.LigacaoLIG_HoraLIGACAO.AsString;
    EdNumero.Text      := DM1.LigacaoLIG_NUMCHAMADO.Value;
    EdQtdMinuto.Text   := FloatToStr(DM1.LigacaoLIG_MINFALADO.AsFloat);
    EdVlrMinuto.text   := FloatToStr(DM1.LigacaoLIG_MINVALOR.AsFloat);
    frOperacao.Caption := 'Alterando';
    EdData.SetFocus;
  end;
End;

procedure AtivaBotoes(Ativa: Boolean);
begin
  with F_Ligacao do
  begin
    Grupo1.Enabled:= Not Ativa;
    Grupo2.Enabled := Ativa;
    BtNovo.Enabled := not Ativa;
    BtGravar.Enabled := Ativa;
    BtCancelar.Enabled := Ativa;
    BtExcluir.Enabled := Ativa;
    BtFechar.Enabled := not Ativa;
  end;
end;

procedure TF_Ligacao.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Ligacao.BtNovoClick(Sender: TObject);
begin
  Normal;
  Edit1.Text         := CodEntrada;
  frOperacao.Caption := 'Inserindo';
end;



procedure TF_Ligacao.BtGravarClick(Sender: TObject);
begin
  Try
    If Validacao Then
    Begin
      If Not DM.IBTransaction.Active Then
        DM.IBTransaction.StartTransaction;

      If frOperacao.Caption = 'Inserindo' Then
      Begin
        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('INSERT INTO Ligacao                 ' +
                         '(LIG_CodEntrada , LIG_DataLigacao , ' +
                         ' LIG_HoraLigacao, LIG_NumChamado  , ' +
                         ' LIG_MinFalado  , LIG_MinValor     )' +
                         'VALUES                   ' +
                         '(:P00, :P01, :P02, :P03, :P04, :P05)');
        DM1.IBS1.Params[00].AsString  := Edit1.Text;
        DM1.IBS1.Params[01].AsDate    := EdData.Date;
        DM1.IBS1.Params[02].AsString  := EdHora.Text;
        DM1.IBS1.Params[03].AsString  := EdNumero.Text;
        DM1.IBS1.Params[04].AsString  := EdQtdMinuto.Text;
        DM1.IBS1.Params[05].AsFloat   := EdVlrMinuto.Value;
        DM1.IBS1.ExecSQL;
      End
      Else
      Begin
        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('UPDATE Ligacao          ' +
                         'SET                     ' +
                         ' LIG_CodEntrada  =:P00, LIG_DataLigacao =:P01 , ' +
                         ' LIG_HoraLigacao =:P02, LIG_NumChamado  =:P03 , ' +
                         ' LIG_MinFalado   =:P04, LIG_MinValor    =:P05   ' +
                         'WHERE                   ' +
                         ' LIG_Controle   =:P06   ');
        DM1.IBS1.Params[00].AsString  := Edit1.Text;
        DM1.IBS1.Params[01].AsDate    := EdData.Date;
        DM1.IBS1.Params[02].AsString  := EdHora.Text;
        DM1.IBS1.Params[03].AsString  := EdNumero.Text;
        DM1.IBS1.Params[04].AsString  := EdQtdMinuto.Text;
        DM1.IBS1.Params[05].AsFloat   := EdVlrMinuto.Value;
        DM1.IBS1.Params[06].AsInteger := DM1.LigacaoLIG_CONTROLE.Value;
        DM1.IBS1.ExecSQL;
      End;
      DM.IBTransaction.CommitRetaining;
      BtNovo.OnClick(Sender);
    End;
  Except
    MessageDlg('Tabela em uso exclusivo no momento.',Mterror,[MbOk],0);
    DM.IBTransaction.RollbackRetaining;
    BtNovo.OnClick(Sender);
  End;

end;

procedure TF_Ligacao.BtCancelarClick(Sender: TObject);
begin
  BtNovo.OnClick(Sender);
end;

procedure TF_Ligacao.BtExcluirClick(Sender: TObject);
begin
 If frOperacao.Caption = 'Inserindo' Then
   Exit;
   
 If Validacao Then
   If MessageDlg('Tem certeza que deseja Excluir o registro.',MtInformation,[MbYes, MbNo],0)=MrYes Then
   Begin
   Try
     If Not DM.IBTransaction.Active Then
       DM.IBTransaction.StartTransaction;

     DM1.IBS1.Close;
     DM1.IBS1.SQL.Clear;
     DM1.IBS1.SQL.Add('DELETE FROM Ligacao   ' +
                      'WHERE                 ' +
                      'LIG_Controle = :P01   ');
     DM1.IBS1.Params[00].AsInteger := DM1.LigacaoLIG_CONTROLE.Value;
     DM1.IBS1.ExecSQL;
     DM.IBTransaction.CommitRetaining;
     BtNovo.OnClick(Sender);
   Except
     MessageDlg('Tabela em uso exclusivo no momento.',Mterror,[MbOk],0);
     DM.IBTransaction.RollbackRetaining;
     BtNovo.OnClick(Sender);
   End;
  End;
end;

procedure TF_Ligacao.FormShow(Sender: TObject);
begin
  BtNovo.OnClick(Sender);
end;

procedure TF_Ligacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //==============================
  //MUDAR O NOME DA TABELA
  DM1.Ligacao.Close;
  //DM1.Conf.Close;
  Release;
end;

procedure TF_Ligacao.FormDestroy(Sender: TObject);
begin
  //==============================
  //MUDAR O NOME DO FORMULÁRIO
  F_Ligacao := Nil;
end;

procedure TF_Ligacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_Ligacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    Key := #0 ;
    if key=#27 then
    close;
end;

procedure TF_Ligacao.DBGrid1DblClick(Sender: TObject);
begin
  LeRegistro;
end;

procedure TF_Ligacao.DBGrid1CellClick(Column: TColumn);
begin
LeRegistro;
end;

end.
