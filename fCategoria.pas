unit fCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Spin, Mask,
  ImgList, acAlphaImageList, System.ImageList, AdvGlowButton, RxToolEdit,
  RxCurrEdit;

type
  TF_Categoria = class(TForm)
    Panel1: TPanel;
    Grupo1: TGroupBox;
    Label1: TLabel;
    Btp: TSpeedButton;
    Edit1: TEdit;
    Grupo2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    EdDiaria1: TRxCalcEdit;
    EdQtdPessoas: TSpinEdit;
    EdDiaria2: TRxCalcEdit;
    Panel2: TPanel;
    Bevel1: TBevel;
    frOperacao: TLabel;
    ImageList3: TsAlphaImageList;
    BtFechar: TAdvGlowButton;
    BtNovo: TAdvGlowButton;
    BtGravar: TAdvGlowButton;
    BtCancelar: TAdvGlowButton;
    BtExcluir: TAdvGlowButton;
    Label8: TLabel;
    Eddiaria3: TRxCalcEdit;
    Label9: TLabel;
    Eddiaria4: TRxCalcEdit;
    procedure BtFecharClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BtpClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
procedure AtivaBotoes(Ativa: Boolean);
var
  F_Categoria: TF_Categoria;

implementation

uses FpCategoria, ModuleDados1, ModulodeDados, UDialog;


{$R *.dfm}

Function Validacao : Boolean;
Begin
  Result := False;

  //===========================================//
  // Verifica se o Categoria foi preenchido //
  //===========================================//
  If F_Categoria.Edit2.Text = '' Then
  Begin
    MessageDlg('A Descrição da Categoria não pode ficar em branco.',MtInformation,[MbOk],0);
    F_Categoria.Edit2.SetFocus;
    Exit;
  End;

  Result := True;
End;

procedure Normal;
begin
  with F_Categoria do
  begin
    AtivaBotoes(False);
    Edit1.Text         := '';
    Edit2.Text         := '';
    EdDiaria1.Value    := 0;
    EdDiaria2.Value    := 0;
    EdDiaria3.Value    := 0;
    EdQtdPessoas.Value := 1;
    frOperacao.Caption := '';
    Edit1.SetFocus;
  end;
end;

procedure AtivaBotoes(Ativa: Boolean);
begin
  with F_Categoria do
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

procedure TF_Categoria.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Categoria.BtNovoClick(Sender: TObject);
begin
  Normal;
  AtivaBotoes(True);
  Edit1.Text         := '000000';
  frOperacao.Caption := 'Inserindo';
  Edit2.SetFocus;
end;



procedure TF_Categoria.BtGravarClick(Sender: TObject);
begin
  Try
    If Validacao Then
    Begin
      If Not DM.IBTransaction.ACTIVE Then
        DM.IBTransaction.StartTransaction;

      If frOperacao.Caption = 'Inserindo' Then
      Begin
        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('INSERT INTO Categoria                ' +
                         '(CAT_Categoria   , CAT_AtePessoas  , ' +
                         ' CAT_ValorDiaria1, CAT_ValorDiaria2, ' +
                         ' CAT_ValorDiaria3, CAT_ValorDiaria4, CAT_CodCategoria  )' +
                         'VALUES                   ' +
                         '(:P00, :P01, :P02, :P03, :P04, :P05, :P06   )');
        DM1.IBS1.Params[00].AsString   := Edit2.Text;
        DM1.IBS1.Params[01].AsInteger  := EdQtdPessoas.Value;
        DM1.IBS1.Params[02].AsFloat    := EdDiaria1.Value;
        DM1.IBS1.Params[03].AsFloat    := EdDiaria2.Value;
        DM1.IBS1.Params[04].AsFloat    := EdDiaria3.Value;
        DM1.IBS1.Params[05].AsFloat    := EdDiaria4.Value;
        DM1.IBS1.Params[06].AsString := Maximo('CAT_CodCategoria','Categoria');
        DM1.IBS1.ExecSQL;
      End
      Else
      Begin
        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('UPDATE Categoria        ' +
                         'SET                     ' +
                         'CAT_Categoria    =:P00, CAT_AtePessoas   =:P01, ' +
                         'CAT_ValorDiaria1 =:P02, CAT_ValorDiaria2 =:P03, ' +
                         'CAT_ValorDiaria3 =:P04, CAT_ValorDiaria4 =:P05  ' +
                         'WHERE CAT_CodCategoria = :P06 ');
        DM1.IBS1.Params[00].AsString   := Edit2.Text;
        DM1.IBS1.Params[01].AsInteger  := EdQtdPessoas.Value;
        DM1.IBS1.Params[02].AsFloat    := EdDiaria1.Value;
        DM1.IBS1.Params[03].AsFloat    := EdDiaria2.Value;
        DM1.IBS1.Params[04].AsFloat    := EdDiaria3.Value;
        DM1.IBS1.Params[05].AsFloat    := EdDiaria4.Value;
        DM1.IBS1.Params[06].AsString   := Edit1.Text;
        DM1.IBS1.ExecSQL;
      End;
      DM.IBTransaction.CommitRetaining;
      Normal;
    End;
  Except
   // MessageDlg('Tabela em uso exclusivo no momento.',Mterror,[MbOk],0);
    KDialog( 'Ocorreu um erro ao tentar salvar, Verifique', 'Siace Sistemas - Erros', 'ERRO', 'Contate o Administrador do Sistema!!!' );
    DM.IBTransaction.RollbackRetaining;
    Normal;
  End;

end;

procedure TF_Categoria.BtCancelarClick(Sender: TObject);
begin
  Normal;
end;

procedure TF_Categoria.BtExcluirClick(Sender: TObject);
begin
 If frOperacao.Caption = 'Inserindo' Then
   Exit;
   
 If Validacao Then
   If MessageDlg('Tem certeza que deseja Excluir o registro.',MtInformation,[MbYes, MbNo],0)=MrYes Then
   Begin
   Try
     If Not DM.IBTransaction.ACTIVE Then
       DM.IBTransaction.StartTransaction;

     DM1.IBS1.Close;
     DM1.IBS1.SQL.Clear;
     DM1.IBS1.SQL.Add('DELETE FROM Categoria   ' +
                      'WHERE                      ' +
                      'CAT_CodCategoria = :P01 ');
     DM1.IBS1.Params[00].AsString := Edit1.Text;
     DM1.IBS1.ExecSQL;
     DM.IBTransaction.CommitRetaining;
     Normal;
   Except
     MessageDlg('Tabela em uso exclusivo no momento.',Mterror,[MbOk],0);
     DM.IBTransaction.RollbackRetaining;
     Normal;
   End;
  End;
end;

procedure TF_Categoria.FormShow(Sender: TObject);
begin
  Normal;
end;

procedure TF_Categoria.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_F2 Then
  Begin
    //=========================================================
    //MUDAR O NOME DO FORMULARIO DE PESQUISA
    If F_pCategoria= Nil Then
      Application.CreateForm(TF_pCategoria,F_pCategoria);
    F_pCategoria.ShowModal;

    Edit1.Text := pPADRAO ;
    If Edit1.Text <> '' Then
      Key := Vk_Return;
  End;

  If Key = Vk_Return Then
  Begin
    //===========================================//
    // Verifica se o Código foi Digitado
    If Edit1.Text = '' Then
    Begin
      MessageDlg('O Código não pode ficar em branco.',MtInformation,[MbOk],0);
      Edit1.SetFocus;
      Exit;
    End;

    //===========================================//
    // MUDAR A TABELA
    Edit1.Text := RetZero(Edit1.Text,6);
    DM1.Categoria.Close;
    DM1.Categoria.SQL.Clear;
    DM1.Categoria.SQL.Add('SELECT * FROM Categoria      ' +
                          'WHERE CAT_CodCategoria = :P00');
    DM1.Categoria.Params[00].Text:=Edit1.Text;
    DM1.Categoria.Open;

    If DM1.Categoria.IsEmpty Then
    Begin
      MessageDlg('O Código não foi encontrado.',MtInformation,[MbOk],0);
      Edit1.SetFocus;
      Exit;
    End;

    frOperacao.Caption := 'Alterando' ;
    Edit2.Text         := DM1.Categoria.FieldByName('CAT_Categoria'   ).Text;
    EdDiaria1.Value    := DM1.Categoria.FieldByName('CAT_ValorDiaria1').AsFloat;
    EdDiaria2.Value    := DM1.Categoria.FieldByName('CAT_ValorDiaria2').AsFloat;
    EdDiaria3.Value    := DM1.Categoria.FieldByName('CAT_ValorDiaria3').AsFloat;
    EdDiaria4.Value    := DM1.Categoria.FieldByName('CAT_ValorDiaria4').AsFloat;
    EdQtdPessoas.Value := DM1.Categoria.FieldByName('CAT_AtePessoas'  ).AsInteger;
    AtivaBotoes(True);
    Edit2.SetFocus;

    DM1.Categoria.Close;    
  End;
end;

procedure TF_Categoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //==============================
  //MUDAR O NOME DA TABELA
  DM1.Categoria.Close;
  Release;
end;

procedure TF_Categoria.FormDestroy(Sender: TObject);
begin
  //==============================
  //MUDAR O NOME DO FORMULÁRIO
  F_Categoria := Nil;
end;

procedure TF_Categoria.BtpClick(Sender: TObject);
begin
  //=========================================================
  //MUDAR O NOME DO FORMULÁRIO DE PESQUISA
  If F_pCategoria= Nil Then
    Application.CreateForm(TF_pCategoria,F_pCategoria);
  F_pCategoria.ShowModal;
  
  Edit1.Text := pPADRAO ;
end;

procedure TF_Categoria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_Categoria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    Key := #0 ;
end;

end.
