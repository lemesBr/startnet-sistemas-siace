unit fBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Spin, Mask,
  Grids, DBGrids, DB, ImgList, acAlphaImageList, aDvGlowButton,
  System.ImageList, RxToolEdit, RxCurrEdit;

type
  TF_Bar = class(TForm)
    Panel1: TPanel;
    DsPadrao: TDataSource;
    Grupo1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EdProduto: TEdit;
    EdCodProduto: TComboEdit;
    Grupo2: TGroupBox;
    Label2: TLabel;
    Quantidade: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    EdQuantidade: TRxCalcEdit;
    EdVlrTotal: TRxCalcEdit;
    EdData: TDateEdit;
    EdComanda: TEdit;
    DBGrid1: TDBGrid;
    EdVlrUnitario: TRxCalcEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    frOperacao: TLabel;
    GroupBox2: TGroupBox;
    EdtFracao: TEdit;
    ImageList3: TsAlphaImageList;
    BtNovo: TAdvGlowButton;
    BtGravar: TAdvGlowButton;
    BtCancelar: TAdvGlowButton;
    BtExcluir: TAdvGlowButton;
    BtFechar: TAdvGlowButton;
    Edit2: TEdit;
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
    procedure EdCodProdutoExit(Sender: TObject);
    procedure EdCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProdutoButtonClick(Sender: TObject);
    procedure EdQuantidadeExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
procedure AtivaBotoes(Ativa: Boolean);
var
  F_Bar: TF_Bar;

implementation

uses ModulodeDados, ModuleDados1, ConsProdutos, Math, Principal, UDialog;


{$R *.dfm}

Function Validacao : Boolean;
Begin
  Result := False;

  //========================================
  // Verifica se o Produto foi preenchido
  If F_Bar.EdCodProduto.Text = '' Then
  Begin
    MessageDlg('O Cód. do Produto não pode ficar em branco.',MtInformation,[MbOk],0);
    F_Bar.EdCodProduto.SetFocus;
    Exit;
  End;

  //========================================
  // Verifica se o Data foi preenchido
  If F_Bar.EdData.Text = '  /  /    ' Then
  Begin
    MessageDlg('A Data não pode ficar em branco.',MtInformation,[MbOk],0);
    F_Bar.EdData.SetFocus;
    Exit;
  End;

  //========================================
  // Verifica se o Núm. da Comanda foi preenchido
  If F_Bar.EdComanda.Text = '' Then
  Begin
    MessageDlg('O Núm. da Comanda não pode ficar em branco.',MtInformation,[MbOk],0);
    F_Bar.EdComanda.SetFocus;
    Exit;
  End;

  Result := True;
End;

procedure Normal;
begin
  with F_Bar do
  begin
    AtivaBotoes(True);
    GroupBox1.Enabled   := True;
    Grupo2.Enabled      := False;
    EdCodProduto.Text   := '';
    EdProduto.Text      := '';
    EdData.Date         := Date;
    EdComanda.Text      := '';
    EdVlrUnitario.Value := 0;
    EdQuantidade.Value  := 1;
    EdVlrTotal.Value    := 0;
    frOperacao.Caption := '';
    EdCodProduto.SetFocus;

    DM1.Bar.Close;
    DM1.Bar.SQL.Clear;
    DM1.Bar.SQL.Add(' Select * From Bar, Produtos      ');
    DM1.Bar.SQL.Add(' Where                           ');
    DM1.Bar.SQL.Add(' BAR_CodProduto = Codigo ');
    DM1.Bar.SQL.Add(' And BAR_CodEntrada =:P00        ');
    DM1.Bar.Params[00].AsString := CodEntrada;
    DM1.Bar.Open;
  end;
end;

Procedure LeRegistro;
Begin
  with F_Bar do
  begin
    AtivaBotoes(True);
    GroupBox1.Enabled   := False;
    Grupo2.Enabled      := True;
    EdCodProduto.Text   := DM1.BarBAR_CODPRODUTO.Text;
    EdData.Date         := DM1.BarBAR_DATA.Value;
    EdComanda.Text      := DM1.BarBAR_COMANDA.Value;
    EdVlrUnitario.Value := DM1.BarBAR_VALORUNITARIO.asfloat;
    EdQuantidade.Value  := DM1.BarBAR_QUANTIDADE.asfloat;
    EdVlrTotal.Value    := DM1.BarBAR_VALORTOTAL.asfloat;
    Edit2.text           := DM1.BarBAR_CONTROLE.Text;
    frOperacao.Caption  := 'Alterando';
    EdData.SetFocus;
  end;
End;

procedure AtivaBotoes(Ativa: Boolean);
begin
  with F_Bar do
  begin
    Grupo1.Enabled:= Not Ativa;
    Grupo2.Enabled := Ativa;
    BtNovo.Enabled := not Ativa;
    BtGravar.Enabled := Ativa;
    BtCancelar.Enabled := Ativa;
    BtExcluir.Enabled := Ativa;
    BtFechar.Enabled := Ativa;
  end;
end;

procedure TF_Bar.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Bar.BtNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Inserir Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label3.Caption ='S'then
begin
  Normal;
  Edit1.Text         := CodEntrada;
  frOperacao.Caption := 'Inserindo';
 // GroupBox2.Enabled := False;
end;
end;



procedure TF_Bar.BtGravarClick(Sender: TObject);
begin
//  Try
    If Validacao Then
    Begin
      if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;

      If frOperacao.Caption = 'Inserindo' Then
      Begin
        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('INSERT INTO Bar                     ' +
                         '(BAR_CodEntrada   , BAR_CodProduto, ' +
                         ' BAR_Comanda      , BAR_Quantidade, ' +
                         ' BAR_ValorUnitario, BAR_Data,       '+
                         ' BAR_EMPRESA, BAR_FRACAO, BAR_Controle )      ' +
                         ' VALUES                             ' +
                         '(:P00, :P01, :P02, :P03, :P04, :P05, :P06, :P07, :P08)');
        DM1.IBS1.Params[00].AsString  := Edit1.Text;
        DM1.IBS1.Params[01].AsString  := EdCodProduto.Text;
        DM1.IBS1.Params[02].AsString  := EdComanda.Text;
        DM1.IBS1.Params[03].AsFloat   := EdQuantidade.Value;
        DM1.IBS1.Params[04].AsFloat   := EdVlrUnitario.Value;
        DM1.IBS1.Params[05].AsDate    := EdData.Date;
        DM1.IBS1.Params[06].AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
        DM1.IBS1.Params[07].AsInteger := StrToInt(EdtFracao.text);
        DM1.IBS1.Params[08].AsInteger := 1;
        DM1.IBS1.ExecSQL;
      End
      Else
      Begin
        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('UPDATE Bar              ' +
                         'SET                     ' +
                         ' BAR_CodEntrada    =:P00, BAR_CodProduto =:P01 , ' +
                         ' BAR_Comanda       =:P02, BAR_Quantidade =:P03 , ' +
                         ' BAR_ValorUnitario =:P04, BAR_Data       =:P05 , ' +
                         ' BAR_EMPRESA       =:P06, BAR_FRACAO     =:P07   ' +
                         ' WHERE                   ' +
                         ' BAR_Controle   =:P08   ');
        DM1.IBS1.Params[00].AsString  := Edit1.Text;
        DM1.IBS1.Params[01].AsString  := EdCodProduto.Text;
        DM1.IBS1.Params[02].AsString  := EdComanda.Text;
        DM1.IBS1.Params[03].AsFloat   := EdQuantidade.Value;
        DM1.IBS1.Params[04].AsFloat   := EdVlrUnitario.Value;
        DM1.IBS1.Params[05].AsDate    := EdData.Date;
        DM1.IBS1.Params[06].AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
        DM1.IBS1.Params[07].AsInteger := StrToInt(EdtFracao.text);
        DM1.IBS1.Params[08].AsInteger := StrToInt(Edit2.text);
        DM1.IBS1.ExecSQL;
      End;
      DM.IBTransaction.CommitRetaining;
      BtNovo.OnClick(Sender);
    End;
 { Except
    MessageDlg('Tabela em uso exclusivo no momento.',Mterror,[MbOk],0);
    DM.IBTransaction.RollbackRetaining;
    BtNovo.OnClick(Sender);
  End;}

end;

procedure TF_Bar.BtCancelarClick(Sender: TObject);
begin
//  BtNovo.OnClick(Sender);
BtNovo.Enabled := True;
BtCancelar.Enabled := False;
Grupo2.Enabled := False;
GroupBox2.Enabled := True;
frOperacao.Caption := 'Cancelado' ;
end;

procedure TF_Bar.BtExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Excluir o Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label1.Caption ='S'then
begin
 If frOperacao.Caption = 'Cancelado' Then
   Exit;
   
 If Validacao Then
   If MessageDlg('Tem certeza que deseja Excluir o registro.',MtInformation,[MbYes, MbNo],0)=MrYes Then
   Begin
   Try
     If Not DM.IBTransaction.Active Then
       DM.IBTransaction.StartTransaction;

     DM1.IBS1.Close;
     DM1.IBS1.SQL.Clear;
     DM1.IBS1.SQL.Add('DELETE FROM Bar     ' +
                      'WHERE               ' +
                      'BAR_Controle = :P01 ');
     DM1.IBS1.Params[00].AsInteger := DM1.BarBAR_CONTROLE.Value;
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
end;

procedure TF_Bar.FormShow(Sender: TObject);
begin
  BtNovo.OnClick(Sender);
end;

procedure TF_Bar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //==============================
  //MUDAR O NOME DA TABELA
  DM1.Bar.Close;
  //DM1.Conf.Close;
  Release;
end;

procedure TF_Bar.FormDestroy(Sender: TObject);
begin
  //==============================
  //MUDAR O NOME DO FORMULÁRIO
  F_Bar := Nil;
end;

procedure TF_Bar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_Bar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    Key := #0 ;
  if Key = #27 then
  Close;
end;

procedure TF_Bar.DBGrid1DblClick(Sender: TObject);
begin
  LeRegistro;

 If EdCodProduto.Text > '' then
 begin
  //===========================================//
  // PROCURA POR Produto DE ACORDO COM CÓDIGO
  EdCodProduto.Text := EdCodProduto.Text;
  DM1.Produto.Close;
  DM1.Produto.SQL.Clear;
  DM1.Produto.SQL.Add('SELECT * FROM Produtos      ' +
                      'WHERE Codigo = :P00');
  DM1.Produto.Params[00].Text:=EdCodProduto.Text;
  DM1.Produto.Open;
  DM1.Produto.FetchAll;
  EdProduto.Text      := DM1.ProdutoDESCRICAO.Text;
  EdtFracao.Text      := DM1.ProdutoFRACAO.Text;
  end;
end;

procedure TF_Bar.EdCodProdutoExit(Sender: TObject);
begin
 { If EdCodProduto.Text = '' Then
  Begin
    EdProduto.Text := '';
    Exit;
  End; }

 If EdCodProduto.Text > '' then
 begin
  //===========================================//
  // PROCURA POR Produto DE ACORDO COM CÓDIGO
  EdCodProduto.Text := EdCodProduto.Text;
  DM1.Produto.Close;
  DM1.Produto.SQL.Clear;
  DM1.Produto.SQL.Add('SELECT * FROM Produtos      ' +
                      'WHERE Codigo = :P00');
  DM1.Produto.Params[00].Text:=EdCodProduto.Text;
  DM1.Produto.Open;
  EdProduto.Text      := DM1.ProdutoDESCRICAO.Text;
  EdtFracao.Text      := dm1.ProdutoFRACAO.Text;


  //========================================================
  // PROCURA POR ITEM DA NOTA DE ACORDO COM NÚMERO
{  DM1.Bar.Close;
  DM1.Bar.SQL.Clear;
  DM1.Bar.SQL.Add('SELECT * FROM Bar, Produtos    ' +
                  'WHERE                          ' +
                  ' BAR_CodProduto = codigo   And ' +
                  ' BAR_CodEntrada = :P0      And ' +
                  ' BAR_CODPRODUTO = :P01        ');
  DM1.Bar.Params[00].Text:= Edit1.Text;
  DM1.Bar.Params[01].Text:= EdCodProduto.Text;
  DM1.Bar.Open;

  If Not DM1.Bar.IsEmpty Then
  Begin
    GroupBox1.Enabled   := False;
    Grupo2.Enabled      := True;
    EdCodProduto.Text   := DM1.Bar.FieldByName('BAR_CODPRODUTO'   ).AsString;
    EdData.Text         := DM1.Bar.FieldByName('BAR_DATA'         ).AsString;
    EdComanda.Text      := DM1.Bar.FieldByName('BAR_COMANDA'      ).AsString;
    EdVlrUnitario.Value := DM1.Bar.FieldByName('BAR_VALORUNITARIO').AsFloat;
    EdQuantidade.Value  := DM1.Bar.FieldByName('BAR_QUANTIDADE'   ).AsFloat;
    EdVlrTotal.Value    := DM1.Bar.FieldByName('BAR_VALORTOTAL'   ).AsFloat;
    frOperacao.Caption  := 'Alterando';
    EdData.SetFocus;
  End Else }
  If DM1.Produto.IsEmpty Then
  Begin
    MessageDlg('O Código não foi encontrado.',MtInformation,[MbOk],0);
    EdCodProduto.SetFocus;
    Exit;
  End Else
    Begin
      EdProduto.Text      := DM1.ProdutoDESCRICAO.Text;
      EdVlrUnitario.Value := DM1.ProdutoPRECO_VENDA.AsFloat;
      GroupBox1.Enabled   := False;
      Grupo2.Enabled      := True;
      EdData.SetFocus;
    End;

  DM1.Produto.Close;
end;

end;

procedure TF_Bar.EdCodProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_F2 Then
    EdCodProduto.OnDblClick(Sender);
end;

procedure TF_Bar.EdCodProdutoButtonClick(Sender: TObject);
begin
  //============================================
  //PROCURA POR Produto
  If Formconsprodutos= Nil Then
    Application.CreateForm(TFormconsprodutos,Formconsprodutos);
    Formconsprodutos.ShowModal;


  EdCodProduto.Text := DM.SDS_PRODUTOSCODIGO.Text ;
  EdProduto.Text    := DM.SDS_PRODUTOSDESCRICAO.text ;
  EdtFracao.Text    := dm.SDS_PRODUTOSFRACAO.Text;

  If EdCodProduto.Text <> '' Then
    EdCodProduto.OnExit(Sender);
end;

procedure TF_Bar.EdQuantidadeExit(Sender: TObject);
begin
  EdVlrTotal.Value := EdVlrUnitario.Value * EdQuantidade.Value;
  BtGravar.SetFocus;
end;

procedure TF_Bar.DBGrid1CellClick(Column: TColumn);
begin
LeRegistro;

 If EdCodProduto.Text > '' then
 begin
  //===========================================//
  // PROCURA POR Produto DE ACORDO COM CÓDIGO
  EdCodProduto.Text := EdCodProduto.Text;
  DM1.Produto.Close;
  DM1.Produto.SQL.Clear;
  DM1.Produto.SQL.Add('SELECT * FROM Produtos      ' +
                      'WHERE Codigo = :P00');
  DM1.Produto.Params[00].Text:=EdCodProduto.Text;
  DM1.Produto.Open;
  EdProduto.Text      := DM1.ProdutoDESCRICAO.Text;
  EdtFracao.Text      := DM1.ProdutoFRACAO.Text;
  end;
end;

end.
