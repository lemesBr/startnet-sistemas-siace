unit fListMovDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,FR1, Buttons, ExtCtrls, ComCtrls, aDvGlowButton,
  ImgList, acAlphaImageList, System.ImageList;

type
  TF_ListMovDia = class(TForm)
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
  F_ListMovDia: TF_ListMovDia;

implementation

uses fR5, ModuleDados1;

{$R *.dfm}

Function TF_ListMovDia.Validacao : Boolean;
Var TotalPago, Dinheiro, Cheque, Cartao : Real;
Begin
  Result    := False;
  TotalPago := 0.00;
  Dinheiro  := 0.00;
  Cheque    := 0.00;
  Cartao    := 0.00;

  // Seleciona as Entradas de Hospedes do Periodo
  // ==================================================
  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add( ' Select *   ' );
  DM1.Qry0.SQL.Add( ' From EntraHospede, Clientes, Apartamento      ' );
  DM1.Qry0.SQL.Add( ' Where      ' );
  DM1.Qry0.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry0.SQL.Add( ' ENT_CodHospede     = codigo             And  ' );
  DM1.Qry0.SQL.Add( ' ENT_DataEntrada     >= :P00             And  ' );
  DM1.Qry0.SQL.Add( ' ENT_DataEntrada     <= :P01             And  ' );
  DM1.Qry0.SQL.Add( ' ENT_DataSaida  is null                  ' );

  If Grupo1.ItemIndex = 0 Then
    DM1.Qry0.SQL.Add( ' Order By ENT_CODApartamento ' )
  Else
    DM1.Qry0.SQL.Add( ' Order By ENT_DataEntrada    ' );

  DM1.Qry0.Params[00].AsDate := EdData1.Date;
  DM1.Qry0.Params[01].AsDate := EdData2.Date;
  DM1.Qry0.Open;

  // Seleciona o Total Pago para o Relatório
  // ==================================================
  DM1.Qry1.Close;
  DM1.Qry1.SQL.Clear;
  DM1.Qry1.SQL.Add( ' Select SUM(ENT_TOTALPAGO) as TotalPago   ' );
  DM1.Qry1.SQL.Add( ' From EntraHospede, clientes, Apartamento      ' );
  DM1.Qry1.SQL.Add( ' Where      ' );
  DM1.Qry1.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry1.SQL.Add( ' ENT_CodHospede     = Codigo             And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      >= :P00              And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      <= :P01                   ' );
  DM1.Qry1.Params[00].AsDate := EdData1.Date;
  DM1.Qry1.Params[01].AsDate := EdData2.Date;
  DM1.Qry1.Open;


  TotalPago := DM1.Qry1.FieldByName( 'TotalPago' ).AsFloat;

  // Seleciona o Total Pago por forma de Pagamento DINHEIRO
  // ==================================================
  DM1.Qry1.Close;
  DM1.Qry1.SQL.Clear;
  DM1.Qry1.SQL.Add( ' Select SUM(ENT_TOTALPAGO) as TotalPago   ' );
  DM1.Qry1.SQL.Add( ' From EntraHospede, Clientes, Apartamento      ' );
  DM1.Qry1.SQL.Add( ' Where      ' );
  DM1.Qry1.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry1.SQL.Add( ' ENT_CodHospede     = Codigo             And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      >= :P00              And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      <= :P01              And  ' );
  DM1.Qry1.SQL.Add( ' ENT_FormaPagamento  = :P02                   ' );
  DM1.Qry1.Params[00].AsDate := EdData1.Date;
  DM1.Qry1.Params[01].AsDate := EdData2.Date;
  DM1.Qry1.Params[02].AsInteger := 0 ;
  DM1.Qry1.Open;

  Dinheiro := DM1.Qry1.FieldByName( 'TotalPago' ).AsFloat;


  // Seleciona o Total Pago por forma de Pagamento CHEQUE
  // ==================================================
  DM1.Qry1.Close;
  DM1.Qry1.SQL.Clear;
  DM1.Qry1.SQL.Add( ' Select SUM(ENT_TOTALPAGO) as TotalPago   ' );
  DM1.Qry1.SQL.Add( ' From EntraHospede, Clientes, Apartamento      ' );
  DM1.Qry1.SQL.Add( ' Where      ' );
  DM1.Qry1.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry1.SQL.Add( ' ENT_CodHospede     = Codigo             And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      >= :P00              And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      <= :P01              And  ' );
  DM1.Qry1.SQL.Add( ' ENT_FormaPagamento  = :P02                   ' );
  DM1.Qry1.Params[00].AsDate := EdData1.Date;
  DM1.Qry1.Params[01].AsDate := EdData2.Date;
  DM1.Qry1.Params[02].AsInteger := 1 ;
  DM1.Qry1.Open;

  Cheque := DM1.Qry1.FieldByName( 'TotalPago' ).AsFloat;

  // Seleciona o Total Pago por forma de Pagamento CARTAO
  // ==================================================
  DM1.Qry1.Close;
  DM1.Qry1.SQL.Clear;
  DM1.Qry1.SQL.Add( ' Select SUM(ENT_TOTALPAGO) as TotalPago   ' );
  DM1.Qry1.SQL.Add( ' From EntraHospede, Clientes, Apartamento      ' );
  DM1.Qry1.SQL.Add( ' Where      ' );
  DM1.Qry1.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry1.SQL.Add( ' ENT_CodHospede     = Clientes.codigo    And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      >= :P00              And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      <= :P01              And  ' );
  DM1.Qry1.SQL.Add( ' ENT_FormaPagamento  = :P02                   ' );
  DM1.Qry1.Params[00].AsDate := EdData1.Date;
  DM1.Qry1.Params[01].AsDate := EdData2.Date;
  DM1.Qry1.Params[02].AsInteger := 2 ;
  DM1.Qry1.Open;

  Cartao := DM1.Qry1.FieldByName( 'TotalPago' ).AsFloat;

  // Seleciona os Apartamentos fechados do periodo.
  // ==================================================
  DM1.Qry1.Close;
  DM1.Qry1.SQL.Clear;
  DM1.Qry1.SQL.Add( ' Select *   ' );
  DM1.Qry1.SQL.Add( ' From EntraHospede, Clientes, Apartamento      ' );
  DM1.Qry1.SQL.Add( ' Where      ' );
  DM1.Qry1.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
  DM1.Qry1.SQL.Add( ' ENT_CodHospede     = Codigo     And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      >= :P00              And  ' );
  DM1.Qry1.SQL.Add( ' ENT_DataSaida      <= :P01                   ' );

  If Grupo1.ItemIndex = 0 Then
    DM1.Qry1.SQL.Add( ' Order By ENT_CODApartamento ' )
  Else
    DM1.Qry1.SQL.Add( ' Order By ENT_DataEntrada    ' );

  DM1.Qry1.Params[00].AsDate := EdData1.Date;
  DM1.Qry1.Params[01].AsDate := EdData2.Date;
  DM1.Qry1.Open;



  If F_R5= Nil Then
  Application.CreateForm(TF_R5,F_R5);

  F_R5.QrTotalPago.Caption := FormatFloat('###,###,##0.00',TotalPago);
  F_R5.QrDinheiro.Caption  := FormatFloat('###,###,##0.00',Dinheiro);
  F_R5.QrCheque.Caption    := FormatFloat('###,###,##0.00',Cheque);
  F_R5.QrCartao.Caption    := FormatFloat('###,###,##0.00',Cartao);
  F_R5.LbPeriodo.Caption := 'Período de.: ' + DateToStr(EdData1.Date) +
                            ' a ' + DateToStr(EdData2.Date);

  Result := True;
End;

procedure TF_ListMovDia.BtCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ListMovDia.BtVisualizarClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    F_R5.QuickRep1.Preview;
  End;
end;

procedure TF_ListMovDia.BtImprimirClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    F_R5.QuickRep1.Print;
  End;
end;

procedure TF_ListMovDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TF_ListMovDia.FormDestroy(Sender: TObject);
begin
  F_ListMovDia := Nil;
end;

procedure TF_ListMovDia.FormShow(Sender: TObject);
begin
  EdData1.Date := Date;
  EdData2.Date := Date + 30;
  EdData1.SetFocus;
end;

procedure TF_ListMovDia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_ListMovDia.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then Key := #0;
end;

end.
