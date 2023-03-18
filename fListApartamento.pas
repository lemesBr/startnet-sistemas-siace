unit fListApartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dbcgrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBCtrls,
  jpeg, Menus, aDvGlowButton, aDvToolBar, aDvGlassButton, acPNG, ImgList,
  acAlphaImageList, System.ImageList;

type
  TF_ListApartamento = class(TForm)
    DsApartamento: TDataSource;
    Panel1: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    Image1: TImage;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    imgOCUPADO: TImage;
    ImgLIVRE: TImage;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    LMDButton1: TAdvGlowMenuButton;
    PopupMenu1: TPopupMenu;
    FechamentodaConta1: TMenuItem;
    bincluir: TAdvGlowButton;
    ConsultaHospedagens1: TMenuItem;
    ransfrenciadeApto1: TMenuItem;
    Image4: TImage;
    Label5: TLabel;
    Image5: TImage;
    Label6: TLabel;
    PopupMenu2: TPopupMenu;
    Interditar1: TMenuItem;
    Disenterditar1: TMenuItem;
    Limpeza1: TMenuItem;
    RetirarquartodeLimpeza1: TMenuItem;
    ImageList3: TsAlphaImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtFecharClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure FechamentodaConta1Click(Sender: TObject);
    procedure ConsultaHospedagens1Click(Sender: TObject);
    procedure ransfrenciadeApto1Click(Sender: TObject);
    procedure Interditar1Click(Sender: TObject);
    procedure Limpeza1Click(Sender: TObject);
    procedure RetirarquartodeLimpeza1Click(Sender: TObject);
    procedure Disenterditar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ListApartamento: TF_ListApartamento;

implementation

uses fEntraHospede, fLigacao, fBar, fFechamento, ModuleDados1,
  ModulodeDados, fLavagen, Agendamento, fR3, ConsultaHospedagens,
  hotel_tranferencias, Principal, UDialog;

{$R *.dfm}

Procedure AbreApartamento;
Begin
  DM1.Cds_apartamento.Active := false;
  DM1.Apartamento.Close;
  DM1.Apartamento.SQL.Clear;
  DM1.Apartamento.SQL.Add('SELECT DISTINCT   APARTAMENTO.APA_CODAPARTAMENTO, APARTAMENTO.APA_APARTAMENTO,   APARTAMENTO.APA_SITUACAO,');
  DM1.Apartamento.SQL.Add('APARTAMENTO.APA_CODENTRADA,   APARTAMENTO.APA_CODCATEGORIA,  HOTEL_RESERVA.RES_CODAPARTAMENTO         ');
  DM1.Apartamento.SQL.Add(' From Apartamento ');
  DM1.Apartamento.SQL.Add(' LEFT OUTER JOIN HOTEL_RESERVA ON (APARTAMENTO.APA_CODAPARTAMENTO=HOTEL_RESERVA.RES_CODAPARTAMENTO) Order By  ');
  DM1.Apartamento.SQL.Add(' APA_APARTAMENTO ');
  DM1.Apartamento.Open;
  DM1.Cds_apartamento.Active := True;
End;

Function Livre :Boolean;
Begin
  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add(' SELECT DISTINCT   APARTAMENTO.APA_CODAPARTAMENTO, APARTAMENTO.APA_APARTAMENTO,   APARTAMENTO.APA_SITUACAO, ');
  DM1.Qry0.SQL.Add(' APARTAMENTO.APA_CODENTRADA,   APARTAMENTO.APA_CODCATEGORIA,  HOTEL_RESERVA.RES_CODAPARTAMENTO         ');
  DM1.Qry0.SQL.Add(' From Apartamento ');
  DM1.Qry0.SQL.Add(' LEFT OUTER JOIN HOTEL_RESERVA ON (APARTAMENTO.APA_CODAPARTAMENTO=HOTEL_RESERVA.RES_CODAPARTAMENTO) Where    ') ;
  DM1.Qry0.SQL.Add('APA_CodApartamento =:P00  ') ;
  DM1.Qry0.Params[00].AsString := DM1.cds_ApartamentoAPA_CodApartamento.Value;
  DM1.Qry0.Open;

  If DM1.Qry0.FieldByName('APA_Situacao').AsString = 'LIVRE' Then
  Begin
    Situacao       := 'LIVRE';
    CodApartamento := DM1.cds_Apartamento.FieldByName('APA_CodApartamento').AsString;
    Apartamento    := DM1.cds_Apartamento.FieldByName('APA_Apartamento'   ).AsString;
    Result         := True;
  End  Else
  If DM1.Qry0.FieldByName('APA_Situacao').AsString = 'OCUPADO' Then
  Begin
    Situacao       := 'OCUPADO';
    CodEntrada     := DM1.cds_Apartamento.FieldByName('APA_CodEntrada'    ).AsString;
    CodApartamento := DM1.cds_Apartamento.FieldByName('APA_CodApartamento').AsString;
    Apartamento    := DM1.cds_Apartamento.FieldByName('APA_Apartamento'   ).AsString;
    Result         := False;
  End;
  If DM1.Qry0.FieldByName('APA_Situacao').AsString = 'LIMPEZA' Then
  Begin
    Situacao       := 'LIMPEZA';
    CodApartamento := DM1.cds_Apartamento.FieldByName('APA_CodApartamento').AsString;
    Apartamento    := DM1.cds_Apartamento.FieldByName('APA_Apartamento'   ).AsString;
    Result         := FALSE;
  End  Else
  If DM1.Qry0.FieldByName('APA_Situacao').AsString = 'INTERD' Then
  Begin
    Situacao       := 'INTERD';
    CodApartamento := DM1.cds_Apartamento.FieldByName('APA_CodApartamento').AsString;
    Apartamento    := DM1.cds_Apartamento.FieldByName('APA_Apartamento'   ).AsString;
    Result         := FALSE;
  End;
End;

procedure TF_ListApartamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.Apartamento.Close;
  Release;
end;

procedure TF_ListApartamento.FormDestroy(Sender: TObject);
begin
  F_ListApartamento := Nil;
end;

procedure TF_ListApartamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then Key := Perform(Wm_NextDlgCtl,0,0);

  if (Key=VK_F10) then
      begin
       FechamentodaConta1Click(Sender);
      end;


  if (Key=VK_F9) then
      begin
       ConsultaHospedagens1Click(Sender);
      end;

       if (Key=VK_F8) then
      begin
       ransfrenciadeApto1Click(Sender);
      end;

end;

procedure TF_ListApartamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then Key := #0;
    if Key = #27 then
  Close;
end;

procedure TF_ListApartamento.FormShow(Sender: TObject);
begin
  DbCtrlGrid1.SetFocus;
end;

procedure TF_ListApartamento.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ListApartamento.BtNovoClick(Sender: TObject);
var
  data :string;
begin
if FormPrincipal.Label3.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Inserir Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label3.Caption ='S'then
begin
      data := DateToStr(Date);
// Try
    if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
    DM1.Qry1.Close;
    DM1.Qry1.SQL.Clear;
    DM1.Qry1.SQL.Add(' Select * From hotel_reserva, Clientes, apartamento  ');
    DM1.Qry1.SQL.Add(' Where   ');
    DM1.Qry1.SQL.Add(' RES_CodHospede = Codigo AND RES_CODAPARTAMENTO = apa_codapartamento and RES_DATA_PREVISAO =:data') ;
    DM1.Qry1.Parambyname('data').AsDate  := date;
    DM1.Qry1.Open;
    DM.IBTransaction.CommitRetaining;

    // if DM1.Qry1.Locate('RES_CODAPARTAMENTO;RES_DATA_PREVISAO',VarArrayOf([DM1.cds_ApartamentoAPA_CodApartamento.text,data]),[]) then
    if DM1.Qry1.Locate('RES_CODAPARTAMENTO',DM1.cds_ApartamentoAPA_CodApartamento.text,[]) = True then
    begin
       MessageDlg('Existe uma reserva para esse apartamento Nesta data....',MtInformation,[MbOk],0);
       Exit;
       Abort;
    end;


  If Livre = True Then
  Begin
   {   if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;

     DM1.IBS1.Close;
     DM1.IBS1.SQL.Clear;
     DM1.IBS1.SQL.Add('UPDATE Apartamento     ' +
                      'SET                    ' +
                      'APA_Situacao  =:P00    ' +
                      'WHERE                     ' +
                      'APA_CodApartamento = :P01 ');
     DM1.IBS1.Params[00].AsString := 'OCUPADO';
     DM1.IBS1.Params[01].AsString := CodApartamento;
     DM1.IBS1.ExecQuery;

      DM.IBTransaction.CommitRetaining;}
      
   // If F_EntraHospede = Nil Then
    Application.CreateForm(TF_EntraHospede,F_EntraHospede);
    F_EntraHospede.ShowModal;

    AbreApartamento;
    DbCtrlGrid1.SetFocus;
  End Else
  If Situacao = 'OCUPADO' Then
  Begin
    If Not DM.IBTransaction.Active Then
       DM.IBTransaction.StartTransaction;

  //  If F_EntraHospede = Nil Then
       Application.CreateForm(TF_EntraHospede,F_EntraHospede);
    F_EntraHospede.ShowModal;

    AbreApartamento;
    DbCtrlGrid1.SetFocus;
  End ELSE
  If Situacao = 'LIMPEZA' Then
  begin
     MessageDlg('Apartamento em limpeza, deve estar livre ou ocupado para usar esta rotina..',MtError,[MbOk],0);
   end ELSE

  If Situacao = 'INTERD' Then
  begin
     MessageDlg('Apartamento Interditado, deve estar livre ou ocupado para usar esta rotina..',MtError,[MbOk],0);
   end;

{ Except
   MessageDlg('Problemas ao tentar acessar Tela de Entrada, contate o suporte..',MtError,[MbOk],0);
   DM.IBTransaction.Rollback;
 End;  }
 end;
end;


procedure TF_ListApartamento.BtGravarClick(Sender: TObject);
begin
  If Livre = True Then
  Begin
    MessageDlg('Não é possível realiza está operação porque o Apartamento está vazio.',MtInformation,[MbOk],0);
    DbCtrlGrid1.SetFocus;
    Exit;
  End
  Else
  Begin
    If F_Ligacao = Nil Then
       Application.CreateForm(TF_Ligacao,F_Ligacao);
    F_Ligacao.ShowModal;
    DbCtrlGrid1.SetFocus;
  End;
end;

procedure TF_ListApartamento.BtCancelarClick(Sender: TObject);
begin
  If Livre = True Then
  Begin
    MessageDlg('Não é possível realiza está operação porque o Apartamento está vazio.',MtInformation,[MbOk],0);
    DbCtrlGrid1.SetFocus;
    Exit;
  End
  Else
  Begin
    If F_Bar = Nil Then
       Application.CreateForm(TF_Bar,F_Bar);
    F_Bar.ShowModal;
    DbCtrlGrid1.SetFocus;
  End;
end;

procedure TF_ListApartamento.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
   Var NomeImg, NomeImg1 : String;
begin
    If DM1.Cds_ApartamentoAPA_SITUACAO.AsString = 'LIVRE' Then
    begin
      NomeImg := ExtractFilePath( Application.ExeName ) + '\imagens\livre.png'
    end Else
    If DM1.Cds_ApartamentoAPA_SITUACAO.AsString = 'OCUPADO' Then
    begin
      NomeImg := ExtractFilePath( Application.ExeName ) + '\imagens\ocupado.png';
    END else
    If DM1.Cds_ApartamentoAPA_SITUACAO.AsString = 'LIMPEZA' Then
    begin
      NomeImg := ExtractFilePath( Application.ExeName ) + '\imagens\limpeza.png';
    END else
    If DM1.Cds_ApartamentoAPA_SITUACAO.AsString = 'INTERD' Then
    begin
      NomeImg := ExtractFilePath( Application.ExeName ) + '\imagens\interd.png';
    END;

    if DM1.cds_ApartamentoRES_CODAPARTAMENTO.AsString >'' THEN
    NomeImg1 := ExtractFilePath( Application.ExeName ) + '\imagens\res.bmp'
    else
    NomeImg1 := ExtractFilePath( Application.ExeName ) + '\imagens\limpo.bmp';

    Image1.Picture.LoadFromFile(NomeImg);
    Image2.Picture.LoadFromFile(NomeImg1);
end;

procedure TF_ListApartamento.BitBtn2Click(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Excluir o Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label1.Caption ='S'then
begin
 Try
  CodEntrada := '';
  If Livre <> True Then
    //If MessageDlg('Tem certeza que deseja cancelar a Hospedagem do Apartamento selecionado.',MtInformation,[MbYes, MbNo],0)=MrYes Then
    if Application.MESSAGEBOX('Tem certeza que deseja cancelar a Hospedagem do Apartamento selecionado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    Begin
      If Not DM.IBTransaction.Active Then
         DM.IBTransaction.StartTransaction;

       DM1.IBS1.Close;
       DM1.IBS1.SQL.Clear;
       DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                        'SET                       ' +
                        'APA_Situacao   =:P00,     ' +
                        'APA_CodEntrada =:P01      ' +
                        'WHERE                     ' +
                        'APA_CodApartamento = :P02 ');
       DM1.IBS1.Params[00].AsString := 'LIVRE';
       DM1.IBS1.Params[01].AsString := '';
       DM1.IBS1.Params[02].AsString := CodApartamento;
       DM1.IBS1.ExecSQL;

       DM1.IBS1.Close;
       DM1.IBS1.SQL.Clear;
       DM1.IBS1.SQL.Add('DELETE FROM EntraHospede  ' +
                        'WHERE                     ' +
                        'ENT_CodEntrada = :P00 ');
       DM1.IBS1.Params[00].AsString := CodEntrada;
       DM1.IBS1.ExecSQL;

       DM.IBTransaction.CommitRetaining;
       AbreApartamento;
    End
    Else
    Begin
      
    End
  Else
  Begin
    MessageDlg('Não é possível realiza está operação porque o Apartamento está vazio.',MtInformation,[MbOk],0);
    DbCtrlGrid1.SetFocus;
    Exit;
  End;
 Except
   MessageDlg('Problemas ao tentar Cancelar Hospedagem, contate o suporte..',MtError,[MbOk],0);
   DM.IBTransaction.RollbackRetaining;
 End;
end;
end;

procedure TF_ListApartamento.FormCreate(Sender: TObject);
begin
  AbreApartamento;
end;

procedure TF_ListApartamento.DBCtrlGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 If Livre = False Then
  Begin
  DM1.Qry1.Close;
  DM1.Qry1.SQL.Clear;
  DM1.Qry1.SQL.Add( 'Select * From EntraHospede, clientes      ' );
  DM1.Qry1.SQL.Add( 'Where Ent_CodHospede = CODIGO And' );
  DM1.Qry1.SQL.Add( '      Ent_CodEntrada = :P00' );
  DM1.Qry1.Params[00].AsString := CodEntrada;
  DM1.Qry1.Open;

   Label4.Caption := 'Nome do Hospede: '+ dm1.Qry1.FieldByName('NOME_RS').AsString +'';
  end else
  begin
   Label4.Caption := '';
  end;
end;

procedure TF_ListApartamento.BitBtn4Click(Sender: TObject);
begin
  If Livre = True Then
  Begin
    MessageDlg('Não é possível realiza está operação porque o Apartamento está vazio.',MtInformation,[MbOk],0);
    DbCtrlGrid1.SetFocus;
    Exit;
  End
  Else
  Begin
    If F_LAVAGEN = Nil Then
       Application.CreateForm(TF_LAVAGEN,F_LAVAGEN);
    F_LAVAGEN.ShowModal;
    DbCtrlGrid1.SetFocus;
  End;
end;

procedure TF_ListApartamento.BitBtn3Click(Sender: TObject);
begin
    If FormAgendamento = Nil Then
       Application.CreateForm(TFormAgendamento,FormAgendamento);
       FormAgendamento.ShowModal;
       AbreApartamento;
end;

procedure TF_ListApartamento.Image2DblClick(Sender: TObject);
begin
     If FormAgendamento = Nil Then
       Application.CreateForm(TFormAgendamento,FormAgendamento);
       FormAgendamento.ShowModal;
end;

procedure TF_ListApartamento.FechamentodaConta1Click(Sender: TObject);
begin
If Livre = True Then
  Begin
    MessageDlg('Não é possível realiza está operação porque o Apartamento está vazio.',MtInformation,[MbOk],0);
    DbCtrlGrid1.SetFocus;
    Exit;
  End
  Else
  Begin
    If F_Fechamento = Nil Then
       Application.CreateForm(TF_Fechamento,F_Fechamento);
       F_Fechamento.ShowModal;

      Application.ProcessMessages;

      AbreApartamento;
      DbCtrlGrid1.SetFocus;
  End;
end;

procedure TF_ListApartamento.ConsultaHospedagens1Click(Sender: TObject);
begin
 Application.CreateForm(TFormConsHospedagens,FormConsHospedagens);
 FormConsHospedagens.SHOWMODAL;
end;

procedure TF_ListApartamento.ransfrenciadeApto1Click(Sender: TObject);
begin

    IF Livre = False then
    BEGIN
    if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
    DM1.Qry0.Close;
    DM1.Qry0.SQL.Clear;
    DM1.Qry0.SQL.Add(' Select * From hotel_reserva, Clientes, apartamento  ');
    DM1.Qry0.SQL.Add(' Where   ');
    DM1.Qry0.SQL.Add(' RES_CodHospede = Codigo AND RES_CODAPARTAMENTO = apa_codapartamento') ;
    DM1.Qry0.Open;
    DM.IBTransaction.CommitRetaining;


      DM.IBTransaction.CommitRetaining;

    If FormTransfapto = Nil Then
       Application.CreateForm(TFormTransfapto,FormTransfapto);
    FormTransfapto.ShowModal;

    AbreApartamento;

    end else
    begin
       MessageDlg('Apartamento Não esta Ocupado Para Transferir..',MtError,[MbOk],0);
    end;

end;

procedure TF_ListApartamento.Interditar1Click(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Inserir Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label3.Caption ='S'then
begin

 if Situacao = 'LIVRE'  then
 begin
      if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
      //============================================
      //Atualiza Apartamento
      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                       'SET                       ' +
                       'APA_Situacao   =:P00      ' +
                       'WHERE                     ' +
                       'APA_CodApartamento = :P01 ');
      DM1.IBS1.Params[00].AsString := 'INTERD';
   ///   DM1.IBS1.Params[01].AsString := Edit1.Text;
      DM1.IBS1.Params[01].AsString :=  DM1.cds_ApartamentoAPA_CodApartamento.Value;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;

      AbreApartamento;
  end else
  begin
     MessageDlg('Apartamento deve estar livre..',MtError,[MbOk],0);
  end;
End ;
end;

procedure TF_ListApartamento.Limpeza1Click(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Inserir Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label3.Caption ='S'then
begin
 if Situacao = 'LIVRE'  then
 begin
      if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
      //============================================
      //Atualiza Apartamento
      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                       'SET                       ' +
                       'APA_Situacao   =:P00      ' +
                       'WHERE                     ' +
                       'APA_CodApartamento = :P01 ');
      DM1.IBS1.Params[00].AsString := 'LIMPEZA';
   ///   DM1.IBS1.Params[01].AsString := Edit1.Text;
      DM1.IBS1.Params[01].AsString := DM1.cds_ApartamentoAPA_CodApartamento.Value;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;

      AbreApartamento;
       end else
  begin
    MessageDlg('Apartamento deve estar livre..',MtError,[MbOk],0);
  end;

end;
end;

procedure TF_ListApartamento.RetirarquartodeLimpeza1Click(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Excluir o Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label1.Caption ='S'then
begin
   if Situacao = 'LIMPEZA'  then
   begin
      if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
      //============================================
      //Atualiza Apartamento
      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                       'SET                       ' +
                       'APA_Situacao   =:P00      ' +
                       'WHERE                     ' +
                       'APA_CodApartamento = :P01 ');
      DM1.IBS1.Params[00].AsString := 'LIVRE';
   ///   DM1.IBS1.Params[01].AsString := Edit1.Text;
      DM1.IBS1.Params[01].AsString := DM1.cds_ApartamentoAPA_CodApartamento.Value;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;

      AbreApartamento;

  end else
   begin
    MessageDlg('Apartamento deve estar com status em Limpeza..',MtError,[MbOk],0);
   end;
end;
end;

procedure TF_ListApartamento.Disenterditar1Click(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
KDialog( 'O usuário conectado não possui autorização para Excluir o Registro', 'Siace Sistemas - Informações', 'INFO', 'Contate o Administrador do Sistema para obter acesso!!!' );
End;
if FormPrincipal.Label1.Caption ='S'then
begin
    if Situacao = 'INTERD' then
    begin
    if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
      //============================================
      //Atualiza Apartamento
      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                       'SET                       ' +
                       'APA_Situacao   =:P00      ' +
                       'WHERE                     ' +
                       'APA_CodApartamento = :P01 ');
      DM1.IBS1.Params[00].AsString := 'LIVRE';
   ///   DM1.IBS1.Params[01].AsString := Edit1.Text;
      DM1.IBS1.Params[01].AsString := DM1.cds_ApartamentoAPA_CodApartamento.Value;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;

      AbreApartamento;
      end else
      begin
         MessageDlg('Apartamento deve estar interditado..',MtError,[MbOk],0);
      end;
end;
end;

end.
