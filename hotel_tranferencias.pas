unit hotel_tranferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, rxToolEdit, aDvGlowButton,
  ImgList, acAlphaImageList, System.ImageList;

type
  TFormTransfapto = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdApartamento: TEdit;
    EdCodApartamento: TComboEdit;
    Grupo1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    ComboEdit1: TComboEdit;
    Panel2: TPanel;
    ImageList3: TsAlphaImageList;
    BtNovo: TAdvGlowButton;
    BtGravar: TAdvGlowButton;
    BtCancelar: TAdvGlowButton;
    BtFechar: TAdvGlowButton;
    procedure BtFecharClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure EdCodApartamentoButtonClick(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure EdCodApartamentoExit(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransfapto: TFormTransfapto;

implementation

uses ModuleDados1, ModulodeDados, FpApartamento;

{$R *.dfm}

procedure TFormTransfapto.BtFecharClick(Sender: TObject);
begin
close;
end;

procedure TFormTransfapto.BtCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormTransfapto.FormShow(Sender: TObject);
begin
    Edit1.Text := CodEntrada;
    EdCodApartamento.Text := CodApartamento;
    EdApartamento.Text    := Apartamento;
    
end;

procedure TFormTransfapto.BtGravarClick(Sender: TObject);
begin


       if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;


        DM1.IBS1.Close;
        DM1.IBS1.SQL.Clear;
        DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                         'SET                       ' +
                         'APA_Situacao   =:P01 ,    ' +
                         'APA_CodEntrada =:P02      ' +
                         'WHERE                     ' +
                         'APA_CodApartamento = :P03 ');
        DM1.IBS1.Params[00].AsString := 'LIVRE';
        DM1.IBS1.Params[01].AsString := '';
        DM1.IBS1.Params[02].AsString := EDCODAPARTAMENTO.TEXT;
        DM1.IBS1.Execsql;

       DM.IBTransaction.CommitRetaining;


     if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;

    DM1.IBS1.Close;
    DM1.IBS1.SQL.Clear;
    DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                     'SET                       ' +
                     'APA_Situacao   =:P01 ,    ' +
                     'APA_CodEntrada =:P02      ' +
                     'WHERE                     ' +
                     'APA_CodApartamento = :P03 ');
    DM1.IBS1.Params[00].AsString := 'OCUPADO';
    DM1.IBS1.Params[01].AsString := Edit1.Text;
    DM1.IBS1.Params[02].AsString := COMBOEDIT1.TEXT;
    DM1.IBS1.ExecSQL;
    DM.IBTransaction.CommitRetaining;


     if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;

   DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('UPDATE EntraHospede              ' +
                       'SET                              ' +
                       ' ENT_CodApartamento =:ENT_CodApartamento       ' +
                       'WHERE                 ' +
                       ' ENT_CodEntrada =:ENT_CodEntrada ');
      DM1.IBS1.ParamByName('ENT_CodApartamento').AsString :=  COMBOEDIT1.TEXT;
      DM1.IBS1.ParamByName('ENT_CodEntrada').AsString := Edit1.Text;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;


    Close;
end;

procedure TFormTransfapto.EdCodApartamentoButtonClick(Sender: TObject);
begin
If F_pApartamento= Nil Then
    Application.CreateForm(TF_pApartamento,F_pApartamento);
    F_pApartamento.Tag := 1;
    F_pApartamento.ShowModal;

    EdCodApartamento.Text := pPADRAO;
    EdApartamento.Text := pPADRAO1;
end;

procedure TFormTransfapto.ComboEdit1ButtonClick(Sender: TObject);
begin
If F_pApartamento= Nil Then
    Application.CreateForm(TF_pApartamento,F_pApartamento);
    F_pApartamento.Tag := 1;
    F_pApartamento.ShowModal;

    ComboEdit1.Text := pPADRAO;
    Edit2.Text := pPADRAO1;
end;

procedure TFormTransfapto.EdCodApartamentoExit(Sender: TObject);
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
    ComboEdit1.SetFocus;
    DM1.Qry1.Close;
end;

procedure TFormTransfapto.ComboEdit1Exit(Sender: TObject);
begin
     ComboEdit1.Text := RetZero(ComboEdit1.Text,6);

    DM1.Qry1.Close;
    DM1.Qry1.SQL.Clear;
    DM1.Qry1.SQL.Add('SELECT * FROM Apartamento      ' +
                            'WHERE APA_CodApartamento = :P00');
    DM1.Qry1.Params[00].Text := ComboEdit1.Text;
    DM1.Qry1.Open;

    If DM1.Qry1.IsEmpty Then
    Begin
      MessageDlg('O Código do apartamento não foi encontrado.',MtInformation,[MbOk],0);
      Edit1.SetFocus;
      Exit;
    End;
    edit2.Text := DM1.Qry1.FieldByName('APA_APARTAMENTO' ).AsString;
    BtGravar.SetFocus;
    DM1.Qry1.Close;
end;

procedure TFormTransfapto.BtNovoClick(Sender: TObject);
begin
GroupBox1.Enabled := True;
GroupBox2.Enabled := True;
BtNovo.Enabled := False;
ComboEdit1.SetFocus;
end;

procedure TFormTransfapto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// If Key = Vk_Return Then Key := Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormTransfapto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormTransfapto := nil;
end;

procedure TFormTransfapto.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then  Close;

      If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormTransfapto.ComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) or  (Key=#9)  then
  begin
   ComboEdit1.Text := RetZero(ComboEdit1.Text,6);

    DM1.Qry1.Close;
    DM1.Qry1.SQL.Clear;
    DM1.Qry1.SQL.Add('SELECT * FROM Apartamento      ' +
                            'WHERE APA_CodApartamento = :P00');
    DM1.Qry1.Params[00].Text := ComboEdit1.Text;
    DM1.Qry1.Open;

    If DM1.Qry1.IsEmpty Then
    Begin
      MessageDlg('O Código do apartamento não foi encontrado.',MtInformation,[MbOk],0);
      Edit1.SetFocus;
      Exit;
    End;
    EdApartamento.Text := DM1.Qry1.FieldByName('APA_APARTAMENTO' ).AsString;
    BtGravar.SetFocus;
    DM1.Qry1.Close;
end;
end;

end.
