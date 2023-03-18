unit Agendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, Grids,
  XDBGrids, DB, Menus, aDvGlowButton, ImgList, acAlphaImageList,
  System.ImageList, RxToolEdit;

type
  TFormAgendamento = class(TForm)
    Grupo1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdApartamento: TEdit;
    EdCodApartamento: TComboEdit;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    EdHospede: TEdit;
    EdCodHospede: TComboEdit;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdData1: TDateEdit;
    EdPrevisao: TDateEdit;
    EdHora: TDateTimePicker;
    XDBGrid1: TXDBGrid;
    DataSource1: TDataSource;
    frOperacao: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    cancelar: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Gravar: TMenuItem;
    Fechar1: TMenuItem;
    ImageList3: TsAlphaImageList;
    BtNovo: TAdvGlowButton;
    BtGravar: TAdvGlowButton;
    BtCancelar: TAdvGlowButton;
    BtExcluir: TAdvGlowButton;
    BtFechar: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure EdCodHospedeButtonClick(Sender: TObject);
    procedure EdCodHospedeDblClick(Sender: TObject);
    procedure EdCodHospedeExit(Sender: TObject);
    procedure EdCodHospedeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtGravarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodApartamentoButtonClick(Sender: TObject);
    procedure EdCodApartamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodApartamentoExit(Sender: TObject);
    procedure BtFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPrevisaoExit(Sender: TObject);
    procedure EdHoraExit(Sender: TObject);
    procedure XDBGrid1DblClick(Sender: TObject);
    procedure XDBGrid1CellClick(Column: TXColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgendamento: TFormAgendamento;

implementation

uses ModuleDados1, ModulodeDados, ConsClientes, FpApartamento, Principal,
  UDialog;

{$R *.dfm}

Procedure Normal;
Begin
  With FormAgendamento Do
  Begin
    EdCodApartamento.Text := '';
    EdApartamento.Text    := '';
    EdCodHospede.Text     := '';
    EdHospede.Text        := '';
    EdData1.Date          := Date;
    EdHora.Time           := Time;
    EdPrevisao.Text       := '  /  /    ';
   
  End;
End;

Function Validacao : Boolean;
Begin
  Result := False;

  //===========================================//
  // Verifica se o Cód do Hospede foi preenchido
  If FormAgendamento.EdCodHospede.Text = '' Then
  Begin
    MessageDlg('O Campo Hospede não pode ficar em branco.',MtInformation,[MbOk],0);
    FormAgendamento.EdCodHospede.SetFocus;
    Exit;
  End;

  If FormAgendamento.EdCodApartamento.Text = '' Then
  Begin
    MessageDlg('O Campo Código do apartamento não pode ficar em branco.',MtInformation,[MbOk],0);
    FormAgendamento.EdCodHospede.SetFocus;
    Exit;
  End;
  //===========================================//
  // Verifica se a Previsão foi preenchida
  If FormAgendamento.EdPrevisao.Text = '  /  /    ' Then
  Begin
    MessageDlg('A Previsão de Entrada não pode ficar em branco.',MtInformation,[MbOk],0);
    FormAgendamento.EdPrevisao.SetFocus;
    Exit;
  End;

  //===========================================//
  // Verifica se a Data foi preenchido
  If FormAgendamento.EdData1.Text = '  /  /    ' Then
  Begin
    MessageDlg('A Data da Reserva não pode ficar em branco.',MtInformation,[MbOk],0);
    //FormAgendamento.EdData1.SetFocus;
    Exit;
  End;


  Result := True;
End;

procedure TFormAgendamento.FormShow(Sender: TObject);
begin
 { If Situacao = 'LIVRE' Then
  Begin
    Normal;
    Edit1.Text            := '';
    EdCodApartamento.Text := CodApartamento;
 //   EdApartamento.Text    := Apartamento;
  End
  Else
  If Situacao = 'OCUPADO' Then
  Begin  }

    DM1.Qry0.Close;
    DM1.Qry0.SQL.Clear;
    DM1.Qry0.SQL.Add(' Select * From hotel_reserva, Clientes, apartamento  ');
    DM1.Qry0.SQL.Add(' Where   ');
    DM1.Qry0.SQL.Add(' RES_CodHospede = Codigo AND RES_CODAPARTAMENTO = apa_codapartamento') ;
    DM1.Qry0.Open;
    DM.IBTransaction.CommitRetaining;
    
   { EdCodApartamento.Text := DM1.Qry0.FieldByName('RES_CODAPARTAMENTO').AsString;
    EdApartamento.Text    := DM1.Qry0.FieldByName('apa_apartamento').AsString;
    EdCodHospede.Text     := DM1.Qry0.FieldByName('Codigo' ).AsString;
    EdHospede.Text        := DM1.Qry0.FieldByName('NOME_RS'    ).AsString;
    EdData1.Date          := DM1.Qry0.FieldByName('RES_DATA').AsDateTime;
    EdHora.Time           := DM1.Qry0.FieldByName('RES_HORA_PREVISAO').AsDateTime;
    EdPrevisao.Text       := DM1.Qry0.FieldByName('RES_DATA_PREVISAO').AsString;
    Edit1.Text            := DM1.Qry0.FieldByName('RES_SEQ').AsString;
    EdCodHospede.SetFocus; }
    BtNovo.Enabled := True;
    BtCancelar.Enabled := False;
    GroupBox1.Enabled := False;
    GroupBox2.Enabled := False;
    GroupBox3.Enabled := False;
    
end;

procedure TFormAgendamento.EdCodHospedeButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

  If formconsclientes = Nil Then
    Application.CreateForm(Tformconsclientes,formconsclientes);
    formconsclientes.BitBtn2.Enabled := False;
   formconsclientes.ShowModal;


  EdCodHospede.Text := DM.SDS_ClientesCODIGO.text  ;
  EdHospede.Text    := DM.SDS_ClientesNOME_RS.Text ;
  EdPrevisao.SetFocus;

  If EdCodHospede.Text <> '' Then
    EdCodHospede.OnExit(Sender);
end;

procedure TFormAgendamento.EdCodHospedeDblClick(Sender: TObject);
begin
 DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

  If formconsclientes = Nil Then
    Application.CreateForm(Tformconsclientes,formconsclientes);
    formconsclientes.BitBtn2.Enabled := False;
   formconsclientes.ShowModal;


  EdCodHospede.Text := DM.SDS_ClientesCODIGO.text  ;
  EdHospede.Text    := DM.SDS_ClientesNOME_RS.Text ;

  If EdCodHospede.Text <> '' Then
    EdCodHospede.OnExit(Sender);
end;

procedure TFormAgendamento.EdCodHospedeExit(Sender: TObject);
begin
 If EdCodHospede.Text = '' Then
  Begin
    EdHospede.Text := '';
    Exit;
  End;
  //===========================================//
  // PROCURA POR Hospede DE ACORDO COM CÓDIGO
//  EdCodHospede.Text := EdCodHospede.Text;

{  DM1.Hospede.Close;
  DM1.Hospede.SQL.Clear;
  DM1.Hospede.SQL.Add('SELECT * FROM clientes      ' +
                      'WHERE Codigo = :P00');
  DM1.Hospede.Params[00].AsInteger:=StrToInt(EdCodHospede.Text);
  DM1.Hospede.Open;  }

    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo ='+EdCodHospede.Text+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


  If DM.SDS_Clientes.IsEmpty Then
  Begin
    MessageDlg('O Código do cliente não foi encontrado.',MtInformation,[MbOk],0);
    EdCodHospede.SetFocus;
    Exit;
  End Else
    Begin
      EdHospede.Text := DM.SDS_ClientesNOME_RS.Text;
      EdPrevisao.SetFocus;
    End;
end;

procedure TFormAgendamento.EdCodHospedeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = Vk_F2 Then

    EdCodHospede.OnDblClick(Sender);

  If Key = Vk_Return Then
  Begin
   EdCodHospedeExit(Sender);
  end;
end;

procedure TFormAgendamento.BtGravarClick(Sender: TObject);
begin
 If Validacao = False Then
 begin
    Exit;
    Abort;
   BtNovo.SetFocus;
 end;

  Try
    If frOperacao.Caption = 'Inserindo' Then
    Begin
      //============================================
      //Insere os dados da Entrada
    {  dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(RES_SEQ) as N_CODIGO FROM HOTEL_RESERVA');
      DM.ProxCod.Open;}

      Panel2.SetFocus;
      if DM1.Qry0.Locate('RES_CODAPARTAMENTO;RES_CODHOSPEDE',VarArrayOf([EdCodApartamento.Text,EdCodHospede.text]),[]) then
      begin
       MessageDlg('Já existe uma reserva para esse hospede neste apartamento....',MtInformation,[MbOk],0);
       Exit;
       Abort;
      end;

      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('INSERT INTO HOTEL_RESERVA (RES_SEQ,'+
                       'RES_CODHOSPEDE, RES_CODAPARTAMENTO,'+
                       'RES_DATA, RES_DATA_PREVISAO, RES_HORA_PREVISAO)'+
                       'VALUES                                ' +
                       '(:P00, :P01, :P02, :P03, :P04, :P05)  ');


      DM1.IBS1.Params[00].AsINteger := StrToInt(Edit1.text);
      DM1.IBS1.Params[01].AsString  := EdCodHospede.Text;
      DM1.IBS1.Params[02].AsString  := EdCodApartamento.Text;
      DM1.IBS1.Params[03].AsDate    := EdData1.Date;
      DM1.IBS1.Params[04].AsString  := EdPrevisao.Text;
      DM1.IBS1.Params[05].AsTime    := EdHora.Time;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;
    End
    Else
    Begin
      //============================================
      //Atualiza os dados da Entrada
      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('UPDATE HOTEL_RESERVA SET RES_CODHOSPEDE = :RES_CODHOSPEDE,     '+
                       'RES_CODAPARTAMENTO = :RES_CODAPARTAMENTO, RES_DATA = :RES_DATA, '+
                       'RES_DATA_PREVISAO = :RES_DATA_PREVISAO, RES_HORA_PREVISAO = :RES_HORA_PREVISAO'+
                       ' WHERE  (RES_SEQ = :RES_SEQ) ');

      DM1.IBS1.Params[00].AsString := EdCodHospede.Text;
      DM1.IBS1.Params[01].AsString := EdCodApartamento.Text;
      DM1.IBS1.Params[02].AsDate   := EdData1.Date;
      DM1.IBS1.Params[03].AsDate   := EdPrevisao.Date;
      DM1.IBS1.Params[04].AsTime   := EdHora.Time;
      DM1.IBS1.Params[05].AsInteger := StrToInt(Edit1.Text);
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;
     // Botao := 'G' ;
      //Close;
    End;



    Normal;

BtNovo.Enabled := True;
BtCancelar.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox3.Enabled := False;
frOperacao.Caption := '' ;

    DM1.Qry0.Close;
    DM1.Qry0.SQL.Clear;
    DM1.Qry0.SQL.Add(' Select * From hotel_reserva, Clientes, apartamento  ');
    DM1.Qry0.SQL.Add(' Where   ');
    DM1.Qry0.SQL.Add(' RES_CodHospede = Codigo AND RES_CODAPARTAMENTO = apa_codapartamento') ;
    DM1.Qry0.Open;
    DM.IBTransaction.CommitRetaining;


  BtNovo.SetFocus;

  Except
    MessageDlg('Erro ao Gravar a reserva tente novamente....',Mterror,[MbOk],0);
    DM.IBTransaction.RollbackRetaining;
   // Close;
  End;
end;


procedure TFormAgendamento.BitBtn2Click(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Excluir o Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label1.Caption ='S'then
begin
 //   DM.IBTransaction.StartTransaction;
 if Application.MESSAGEBOX('Confirma a Exclusão da Reserva?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    DM1.Qry1.Close;
    DM1.Qry1.SQL.Clear;
    DM1.Qry1.SQL.Add(' DELETE FROM HOTEL_RESERVA WHERE (RES_SEQ = :RES_SEQ);');
    DM1.Qry1.ParamByName('RES_SEQ').AsString := Edit1.Text;
    DM1.Qry1.ExecSQL;
    DM.IBTransaction.CommitRetaining;


    DM1.Qry0.Close;
    DM1.Qry0.SQL.Clear;
    DM1.Qry0.SQL.Add(' Select * From hotel_reserva, Clientes, apartamento  ');
    DM1.Qry0.SQL.Add(' Where   ');
    DM1.Qry0.SQL.Add(' RES_CodHospede = Codigo AND RES_CODAPARTAMENTO = apa_codapartamento') ;
    DM1.Qry0.Open;
    DM.IBTransaction.CommitRetaining;
   end;
end;
end;

procedure TFormAgendamento.BtNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Inserir Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label3.Caption ='S'then
begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(RES_SEQ) as N_CODIGO FROM HOTEL_RESERVA');
      DM.ProxCod.Open;
      
BtCancelar.Enabled := True;
GroupBox1.Enabled := True;
GroupBox2.Enabled := True;
GroupBox3.Enabled := True;
BtNovo.Enabled := False;

 Normal;

  Edit1.Text         :=  inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1);
  frOperacao.Caption := 'Inserindo';

   EdCodApartamento.SetFocus;
 end;
end;

procedure TFormAgendamento.BtCancelarClick(Sender: TObject);
begin
BtNovo.Enabled := True;
BtCancelar.Enabled := False;
GroupBox1.Enabled := False;
GroupBox2.Enabled := False;
GroupBox3.Enabled := False;
frOperacao.Caption := 'Cancelado' ;
end;

procedure TFormAgendamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then Key := #0;

    if Key = #27 then
  Close;
end;

procedure TFormAgendamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then Key := Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormAgendamento.EdCodApartamentoButtonClick(Sender: TObject);
begin
 If F_pApartamento= Nil Then
    Application.CreateForm(TF_pApartamento,F_pApartamento);
    F_pApartamento.Tag := 1;
    F_pApartamento.ShowModal;

    EdCodApartamento.Text := pPADRAO;
    EdApartamento.Text := pPADRAO1;
end;

procedure TFormAgendamento.EdCodApartamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If Key = Vk_F2 Then
  Begin
    //=========================================================
    //MUDAR O NOME DO FORMULARIO DE PESQUISA
    If F_pApartamento= Nil Then
      Application.CreateForm(TF_pApartamento,F_pApartamento);
    F_pApartamento.ShowModal;

    EdCodApartamento.Text := pPADRAO ;
    If EdCodApartamento.Text <> '' Then
      Key := Vk_Return;
  End;


  If Key = Vk_Return Then
  Begin
    //===========================================//
    // Verifica se o Código foi Digitado
    If EdCodApartamento.Text = '' Then
    Begin
      MessageDlg('O Código não pode ficar em branco.',MtInformation,[MbOk],0);
      Edit1.SetFocus;
      Exit;
    End;
     EdCodApartamento.Text := RetZero(EdCodApartamento.Text,6);
    //===========================================//
    // MUDAR A TABELA

    DM1.Qry1.Close;
    DM1.Qry1.SQL.Clear;
    DM1.Qry1.SQL.Add('SELECT * FROM Apartamento      ' +
                            'WHERE APA_CodApartamento = :P00');
    DM1.Qry1.Params[00].Text := EdCodApartamento.Text;
    DM1.Qry1.Open;

    If DM1.Qry1.IsEmpty Then
    Begin
      MessageDlg('O Código do apartamento não foi encontrado.',MtInformation,[MbOk],0);
      EdCodApartamento.SetFocus;
      Exit;
    End;
    EdApartamento.Text := DM1.Qry1.FieldByName('APA_APARTAMENTO' ).AsString;
    EdCodHospede.SetFocus;
    DM1.Qry1.Close;
  End;
  
end;

procedure TFormAgendamento.EdCodApartamentoExit(Sender: TObject);
begin
    EdCodApartamento.Text := RetZero(EdCodApartamento.Text,6);

    DM1.Qry1.Close;
    DM1.Qry1.SQL.Clear;
    DM1.Qry1.SQL.Add('SELECT * FROM Apartamento      ' +
                            'WHERE APA_CodApartamento = :P00');
    DM1.Qry1.Params[00].Text := EdCodApartamento.Text;
    DM1.Qry1.Open;

    If DM1.Qry1.IsEmpty Then
    Begin
      MessageDlg('O Código do apartamento não foi encontrado.',MtInformation,[MbOk],0);
      EdCodApartamento.SetFocus;
      Exit;
    End;
    EdApartamento.Text := DM1.Qry1.FieldByName('APA_APARTAMENTO' ).AsString;
    EdCodHospede.SetFocus;
    DM1.Qry1.Close;
end;

procedure TFormAgendamento.BtFecharClick(Sender: TObject);
begin
close;
end;

procedure TFormAgendamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormAgendamento := nil;
end;

procedure TFormAgendamento.EdPrevisaoExit(Sender: TObject);
begin
EdHora.SetFocus;
end;

procedure TFormAgendamento.EdHoraExit(Sender: TObject);
begin
BtGravar.SetFocus;
end;

procedure TFormAgendamento.XDBGrid1DblClick(Sender: TObject);
begin
   if Application.MESSAGEBOX('Atenção!!! Deseja editar a  Reserva?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
   begin
    EdCodApartamento.Text := DM1.Qry0.FieldByName('RES_CODAPARTAMENTO').AsString;
    EdApartamento.Text    := DM1.Qry0.FieldByName('apa_apartamento').AsString;
    EdCodHospede.Text     := DM1.Qry0.FieldByName('Codigo' ).AsString;
    EdHospede.Text        := DM1.Qry0.FieldByName('NOME_RS'    ).AsString;
    EdData1.Date          := DM1.Qry0.FieldByName('RES_DATA').AsDateTime;
    EdHora.Time           := DM1.Qry0.FieldByName('RES_HORA_PREVISAO').AsDateTime;
    EdPrevisao.Text       := DM1.Qry0.FieldByName('RES_DATA_PREVISAO').AsString;
    Edit1.Text            := DM1.Qry0.FieldByName('RES_SEQ').AsString;

 BtCancelar.Enabled := True;
GroupBox1.Enabled := True;
GroupBox2.Enabled := True;
GroupBox3.Enabled := True;
//BtNovo.Enabled := False;
end;
end;

procedure TFormAgendamento.XDBGrid1CellClick(Column: TXColumn);
begin
    Edit1.Text            := DM1.Qry0.FieldByName('RES_SEQ').AsString;
end;

end.
