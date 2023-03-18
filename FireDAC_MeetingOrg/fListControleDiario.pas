unit fListControleDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FR1, Buttons, ExtCtrls, ComCtrls, aDvGlowButton,
  ImgList, acAlphaImageList, System.ImageList;

type
  TF_ListControleDiario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    EdData1: TDateTimePicker;
    EdData2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Grupo1: TRadioGroup;
    ImageList3: TsAlphaImageList;
    BtCancelar: TAdvGlowButton;
    BtImprimir: TAdvGlowButton;
    BtVisualizar: TAdvGlowButton;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtVisualizarClick(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Function Validacao : Boolean;
  public
    { Public declarations }
  end;

var
  F_ListControleDiario: TF_ListControleDiario;

implementation

uses  fR4, ModuleDados1;

{$R *.dfm}

Function TF_ListControleDiario.Validacao : Boolean;
Begin
  Result    := False;

  // Seleciona as Entradas de Hospedes do Periodo
  // ==================================================
  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add( ' Select *   ' );
  DM1.Qry0.SQL.Add( ' From EntraHospede, clientes, Apartamento      ' );
  DM1.Qry0.SQL.Add( ' Where      ' );
  DM1.Qry0.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry0.SQL.Add( ' ENT_CodHospede     = CLIENTES.CODIGO     And  ' );
  DM1.Qry0.SQL.Add( ' ENT_DataEntrada     >= :P00             And  ' );
  DM1.Qry0.SQL.Add( ' ENT_DataEntrada     <= :P01                  ' );

  If Grupo1.ItemIndex = 0 Then
    DM1.Qry0.SQL.Add( ' Order By ENT_CODApartamento ' )
  Else
    DM1.Qry0.SQL.Add( ' Order By ENT_DataEntrada    ' );

  DM1.Qry0.Params[00].AsDate := EdData1.Date;
  DM1.Qry0.Params[01].AsDate := EdData2.Date;
  DM1.Qry0.Open;

  // Verifica se QUERY está vazia
  // ==================================================
  If DM1.Qry0.IsEmpty Then
  Begin
    MessageDlg('Dados não encontrados para o relatório.',MtInformation,[MbOk],0);
    Exit;
  End;

 // DM1.Empresa.Close;
 // DM1.Empresa.Open;

  If F_R4= Nil Then
  Application.CreateForm(TF_R4,F_R4);

  F_R4.LbPeriodo.Caption := 'Período de.: ' + DateToStr(EdData1.Date) +
                            ' a ' + DateToStr(EdData2.Date);

  Result := True;
End;

procedure TF_ListControleDiario.BtCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ListControleDiario.BtVisualizarClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    F_R4.QuickRep1.Preview;
  End;
end;

procedure TF_ListControleDiario.BtImprimirClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    F_R4.QuickRep1.Print;
  End;
end;

procedure TF_ListControleDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TF_ListControleDiario.FormDestroy(Sender: TObject);
begin
  F_ListControleDiario := Nil;
end;

procedure TF_ListControleDiario.FormShow(Sender: TObject);
begin
  EdData1.Date := Date;
  EdData2.Date := Date + 30;
  EdData1.SetFocus;
end;

procedure TF_ListControleDiario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_ListControleDiario.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then Key := #0;
end;

end.
