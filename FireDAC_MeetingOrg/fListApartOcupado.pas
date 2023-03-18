unit fListApartOcupado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,FR1, Buttons, ExtCtrls, ImgList,
  acAlphaImageList, System.ImageList, AdvGlowButton;

type
  TF_ListApartOcupado = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Grupo1: TRadioGroup;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    ImageList3: TsAlphaImageList;
    BtVisualizar: TAdvGlowButton;
    BtImprimir: TAdvGlowButton;
    BtCancelar: TAdvGlowButton;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtVisualizarClick(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Function Validacao : Boolean;
  public
    { Public declarations }
  end;

var
  F_ListApartOcupado: TF_ListApartOcupado;

implementation

uses fR2, ModuleDados1, ModulodeDados;

{$R *.dfm}

Function TF_ListApartOcupado.Validacao : Boolean;
Var QtdDiaria : Integer;
    TotalDiaria , TotalGeral  , TotalBar, TotalLigacao : Real;
    HorasAtual : String;
Begin
  Result := False;
  
  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add( ' Select * From EntraHospede, Clientes, Apartamento  ' );
  DM1.Qry0.SQL.Add( ' Where ' );
  DM1.Qry0.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry0.SQL.Add( ' ENT_CodHospede     = Clientes.Codigo    And  ' );
  DM1.Qry0.SQL.Add( ' APA_CODENTRADA     = ENT_CODENTRADA          ' );
  DM1.Qry0.Open;
  
  HorasAtual := TimeToStr(Time);
 // DM1.Conf.Open;

  While Not DM1.Qry0.Eof Do
  Begin
    QtdDiaria := Trunc(Date - DM1.Qry0.FieldByName('ENT_DataEntrada').AsDateTime);
    If HorasAtual > DM.SDS_ConfiguracoesCON_HORADIARIA.Value Then
      If QtdDiaria <> 0 Then
        QtdDiaria := QtdDiaria + 1
      Else
        QtdDiaria := QtdDiaria + 1
    Else
      If QtdDiaria = 0 Then
        QtdDiaria := QtdDiaria + 1
      Else
        QtdDiaria := QtdDiaria;

    //CALCULA O TOTAL DO BAR
    //==============================
    DM1.Qry1.Close;
    DM1.Qry1.SQL.Clear;
    DM1.Qry1.SQL.Add('Select Sum(BAR_ValorTotal) As TotalBar From Bar ');
    DM1.Qry1.SQL.Add('Where Bar_CodEntrada =:P01');
    DM1.Qry1.Params[00].AsString := DM1.Qry0.FieldByName('ENT_CodEntrada').AsString;
    DM1.Qry1.Open;
    TotalBar := DM1.Qry1.FieldByName('TotalBar').AsFloat;

    //CALCULA O TOTAL DO TELEFONE
    //==============================
    DM1.Qry1.Close;
    DM1.Qry1.SQL.Clear;
    DM1.Qry1.SQL.Add('Select Sum(LIG_Total) As TotalTelefone From Ligacao ');
    DM1.Qry1.SQL.Add('Where LIG_CodEntrada =:P00');
    DM1.Qry1.Params[00].AsString := DM1.Qry0.FieldByName('ENT_CodEntrada').AsString;
    DM1.Qry1.Open;
    TotalLigacao := DM1.Qry1.FieldByName('TotalTelefone').AsFloat;

    TotalDiaria := QtdDiaria * DM1.Qry0.FieldByName('ENT_ValorDiaria').AsFloat;
    TotalGeral  := TotalBar + TotalDiaria + TotalLigacao;
    //============================================
    //Atualiza os dados da Entrada
    DM1.IBS1.Close;
    DM1.IBS1.SQL.Clear;
    DM1.IBS1.SQL.Add('UPDATE EntraHospede              ' +
                     'SET                              ' +
                     ' ENT_QtdDiaria    =:P00, ENT_TotalBar    =:P01, ' +
                     ' ENT_TotalLigacao =:P02, ENT_TotalDiaria =:P03, ' +
                     ' ENT_TotalGeral   =:P04  ' +
                     'WHERE                 ' +
                     ' ENT_CodEntrada =:P05 ');
    DM1.IBS1.Params[00].AsInteger := QtdDiaria;
    DM1.IBS1.Params[01].AsFloat   := TotalBar;
    DM1.IBS1.Params[02].AsFloat   := TotalLigacao;
    DM1.IBS1.Params[03].AsFloat   := TotalDiaria;
    DM1.IBS1.Params[04].AsFloat   := TotalGeral;
    DM1.IBS1.Params[05].AsString  := DM1.Qry0.FieldByName('ENT_CodEntrada').AsString;
    DM1.IBS1.ExecQuery;
    DM.IBTransaction.CommitRetaining;

    DM1.QRY0.Next;
  End;


  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add( ' Select * From EntraHospede, Clientes, Apartamento  ' );
  DM1.Qry0.SQL.Add( ' Where ' );
  DM1.Qry0.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry0.SQL.Add( ' ENT_CodHospede     = Clientes.codigo    And  ' );
  DM1.Qry0.SQL.Add( ' APA_CODENTRADA     = ENT_CODENTRADA          ' );

  If Grupo1.ItemIndex = 0 Then
    DM1.Qry0.SQL.Add( ' Order By ENT_CODApartamento ' )
  Else
    DM1.Qry0.SQL.Add( ' Order By APA_Apartamento ' );
  DM1.Qry0.Open;

  If DM1.Qry0.IsEmpty Then
  Begin
    MessageDlg('Dados não encontrados para o relatório.',MtInformation,[MbOk],0);
    Exit;
  End;


  Result := True;
End;

procedure TF_ListApartOcupado.BtCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ListApartOcupado.BtVisualizarClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    If F_R2= Nil Then
     Application.CreateForm(TF_R2,F_R2);
    F_R2.ListApartOcupado.Preview;
  End;
end;

procedure TF_ListApartOcupado.BtImprimirClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    If F_R2= Nil Then
     Application.CreateForm(TF_R2,F_R2);
    F_R2.ListApartOcupado.Print;
  End;
end;

procedure TF_ListApartOcupado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TF_ListApartOcupado.FormDestroy(Sender: TObject);
begin
  F_ListApartOcupado := Nil;
end;

end.
