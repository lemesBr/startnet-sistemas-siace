unit fApartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask,
  ImgList, acAlphaImageList, System.ImageList, AdvGlowButton, RxToolEdit;

type
  TF_Apartamento = class(TForm)
    Panel1: TPanel;
    Grupo1: TGroupBox;
    Label1: TLabel;
    Btp: TSpeedButton;
    Edit1: TEdit;
    Grupo2: TGroupBox;
    Label2: TLabel;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdCategoria: TEdit;
    EdCodCategoria: TComboEdit;
    Panel2: TPanel;
    frOperacao: TLabel;
    Bevel1: TBevel;
    ImageList3: TsAlphaImageList;
    BtFechar: TAdvGlowButton;
    BtExcluir: TAdvGlowButton;
    BtCancelar: TAdvGlowButton;
    BtGravar: TAdvGlowButton;
    BtNovo: TAdvGlowButton;
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
    procedure EdCodCategoriaExit(Sender: TObject);
    procedure EdCodCategoriaDblClick(Sender: TObject);
    procedure EdCodCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure AtivaBotoes(Ativa: Boolean);

var
  F_Apartamento: TF_Apartamento;

implementation

uses FpApartamento, ModulodeDados, ModuleDados1, ConsCategoria,
  FpCategoria, UDialog;


{$R *.dfm}
Procedure Preenche;
Begin
  with F_Apartamento do
  begin
    Edit2       .Text   := DM1.Apartamento1APA_Apartamento.Value;
    EdCodCategoria.Text := DM1.Apartamento1APA_CodCategoria.Value;

    //===========================================//
    // PROCURA POR Categoria DE ACORDO COM CÓDIGO
    //EdCodGrupo.Text := RetZero(EdCodGrupo.Text,6);
    DM1.Categoria.Close;
    DM1.Categoria.SQL.Clear;
    DM1.Categoria.SQL.Add('SELECT * FROM Categoria      ' +
                          'WHERE CAT_CodCategoria = :P00');
    DM1.Categoria.Params[00].Text:=EdCodCategoria.Text;
    DM1.Categoria.Open;

    If Not DM1.Categoria.IsEmpty Then
    Begin
      EdCategoria.Text := DM1.CategoriaCAT_Categoria.Value;
      DM1.Categoria.Close;
    End;
    
  end;
End;

Function Validacao : Boolean;
Begin
  Result := False;
  //===========================================//
  // Verifica se o Produto foi preenchido      //
  //===========================================//
  If F_Apartamento.Edit2.Text = '' Then
  Begin
    MessageDlg('O Campo Apartamento não pode ficar em branco.',MtInformation,[MbOk],0);
    F_Apartamento.Edit2.SetFocus;
    Exit;
  End;

  //===========================================//
  // Verifica se o Cód. Grupo   foi preenchido //
  //===========================================//
  If F_Apartamento.EdCodCategoria.Text = '' Then
  Begin
    MessageDlg('O Campo Categoria não pode ficar em branco.',MtInformation,[MbOk],0);
    F_Apartamento.EdCodCategoria.SetFocus;
    Exit;
  End;


  Result := True;
End;

procedure Normal;
begin
  with F_Apartamento do
  begin
    AtivaBotoes(False);
    Edit1       .Text   := '';
    Edit2       .Text   := '';
    EdCodCategoria.Text := '';
    EdCategoria.Text    := '';
    Edit1.SetFocus;
  end;
end;

procedure AtivaBotoes(Ativa: Boolean);
begin
  with F_Apartamento do
  begin
    Grupo1.Enabled     := Not Ativa;
    Grupo2.Enabled     := Ativa;
    BtNovo.Enabled     := not Ativa;
    BtGravar.Enabled   := Ativa;
    BtCancelar.Enabled := Ativa;
    BtExcluir.Enabled  := Ativa;
    BtFechar.Enabled   := not Ativa;
  end;
end;

procedure TF_Apartamento.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Apartamento.BtNovoClick(Sender: TObject);
begin
  Normal;
  AtivaBotoes(True);
  Edit1.Text         := '000000';
  frOperacao.Caption := 'Inserindo';
  Edit2.SetFocus;
end;

procedure TF_Apartamento.BtGravarClick(Sender: TObject);
begin
  Try
    If Validacao Then
    Begin
      if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;

      If frOperacao.Caption = 'Inserindo' Then
      Begin
        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('INSERT INTO Apartamento                ' +
                         '(APA_CodCategoria, APA_Apartamento,    ' +
                         ' APA_Situacao    , APA_CodApartamento) ' +
                         'VALUES                                 ' +
                         '(:P00, :P01, :P02, :P03)               ');
        DM1.IBS1.Params[00].AsString := EdCodCategoria.Text;
        DM1.IBS1.Params[01].AsString := Edit2.Text;
        DM1.IBS1.Params[02].AsString := 'LIVRE';
        DM1.IBS1.Params[03].AsString := Maximo('APA_CodApartamento','Apartamento');
        DM1.IBS1.ExecQuery;
      End
      Else
      Begin
        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                         'SET                       ' +
                         'APA_CodCategoria =:P00,   ' +
                         'APA_Apartamento  =:P01    ' +
                         'WHERE                     ' +
                         'APA_CodApartamento = :P02 ');
        DM1.IBS1.Params[00].AsString := EdCodCategoria.Text;
        DM1.IBS1.Params[01].AsString := Edit2.Text;
        DM1.IBS1.Params[02].AsString := Edit1.Text;
        DM1.IBS1.ExecQuery;
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

procedure TF_Apartamento.BtCancelarClick(Sender: TObject);
begin
  Normal;
end;

procedure TF_Apartamento.BtExcluirClick(Sender: TObject);
begin
 If frOperacao.Caption = 'Inserindo' Then
   Exit;
   
 If Validacao Then
   If MessageDlg('Tem certeza que deseja Excluir o registro.',MtInformation,[MbYes, MbNo],0)=MrYes Then
   Begin
   Try
     If Not DM.IBTransaction.InTransaction Then
       DM.IBTransaction.StartTransaction;

     DM1.IBS1.Close;
     DM1.IBS1.SQL.Clear;
     DM1.IBS1.SQL.Add('DELETE FROM Apartamento   ' +
                      'WHERE                     ' +
                      'APA_CodApartamento = :P01 ');
     DM1.IBS1.Params[00].AsString := Edit1.Text;
     DM1.IBS1.ExecQuery;
     DM.IBTransaction.CommitRetaining;
     Normal;
   Except
     MessageDlg('Tabela em uso exclusivo no momento.',Mterror,[MbOk],0);
     DM.IBTransaction.RollbackRetaining;
     Normal;
   End;
  End;
end;

procedure TF_Apartamento.FormShow(Sender: TObject);
begin
  Normal;
end;

procedure TF_Apartamento.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_F2 Then
  Begin
    //=========================================================
    //MUDAR O NOME DO FORMULARIO DE PESQUISA
    If F_pApartamento= Nil Then
      Application.CreateForm(TF_pApartamento,F_pApartamento);
    F_pApartamento.ShowModal;

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
    DM1.Apartamento1.Close;
    DM1.Apartamento1.SQL.Clear;
    DM1.Apartamento1.SQL.Add('SELECT * FROM Apartamento      ' +
                            'WHERE APA_CodApartamento = :P00');
    DM1.Apartamento1.Params[00].Text:=Edit1.Text;
    DM1.Apartamento1.Open;

    If DM1.Apartamento1.IsEmpty Then
    Begin
      MessageDlg('O Código não foi encontrado.',MtInformation,[MbOk],0);
      Edit1.SetFocus;
      Exit;
    End;

    frOperacao.Caption := 'Alterando' ;
    Preenche();
    AtivaBotoes(True);
    Edit2.SetFocus;
    DM1.Apartamento1.Close;
  End;
end;

procedure TF_Apartamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //==============================
  //MUDAR O NOME DA TABELA
  DM1.Apartamento1.Close;
  DM1.Categoria.Close;
  Release;
end;

procedure TF_Apartamento.FormDestroy(Sender: TObject);
begin
  //==============================
  //MUDAR O NOME DO FORMULÁRIO
  F_Apartamento := Nil;
end;

procedure TF_Apartamento.BtpClick(Sender: TObject);
begin
  //=========================================================
  //MUDAR O NOME DO FORMULÁRIO DE PESQUISA
  If F_pApartamento= Nil Then
    Application.CreateForm(TF_pApartamento,F_pApartamento);
  F_pApartamento.ShowModal;

  Edit1.Text := pPADRAO ;
  Edit1.SetFocus;
end;

procedure TF_Apartamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_Apartamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    Key := #0 ;
end;

procedure TF_Apartamento.EdCodCategoriaExit(Sender: TObject);
begin
  If EdCodCategoria.Text = '' Then
  Begin
    EdCategoria.Text := '';
    Exit;
  End;  
  //===========================================//
  // PROCURA POR Categoria DE ACORDO COM CÓDIGO
  EdCodCategoria.Text := RetZero(EdCodCategoria.Text,6);
  DM1.Categoria.Close;
  DM1.Categoria.SQL.Clear;
  DM1.Categoria.SQL.Add('SELECT * FROM Categoria      ' +
                        'WHERE CAT_CodCategoria = :P00');
  DM1.Categoria.Params[00].Text:=EdCodCategoria.Text;
  DM1.Categoria.Open;

  If DM1.Categoria.IsEmpty Then
  Begin
    MessageDlg('O Código não foi encontrado.',MtInformation,[MbOk],0);
    EdCodCategoria.SetFocus;
    Exit;
  End Else
    Begin
      EdCategoria.Text := DM1.CategoriaCAT_Categoria.Value;
    End;
  DM1.Categoria.Close;
end;

procedure TF_Apartamento.EdCodCategoriaDblClick(Sender: TObject);
begin
  //============================================
  //PROCURA POR Categoria
  If F_pCategoria= Nil Then
    Application.CreateForm(TF_pCategoria,F_pCategoria);
    F_pCategoria.ShowModal;


  EdCodCategoria.Text := pPADRAO  ;
  EdCategoria.Text    := pPADRAO1 ;

  If EdCodCategoria.Text <> '' Then
    EdCodCategoria.OnExit(Sender);
end;

procedure TF_Apartamento.EdCodCategoriaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_F2 Then
    EdCodCategoria.OnDblClick(Sender);
end;

end.
