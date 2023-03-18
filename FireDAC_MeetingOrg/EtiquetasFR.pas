unit EtiquetasFR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, RLFilters, ExtCtrls,  RLDraftFilter;

type
  THLabel = (h5160, h5161, h5162);

  TFormEtiqueta = class(TForm)
    RLReport1: TRLReport;
    RLDraftFilter1: TRLDraftFilter;
    RLBand1: TRLBand;
    QRMemo1: TRLMemo;
    QrMemo2: TRLMemo;
    QRMemo3: TRLMemo;
    QRMemo4: TRLMemo;
    procedure RLReport1BeforePrint(Sender: TObject; var Printit: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var Printit: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLReport1PageStarting(Sender: TObject);

  private
    { Private declarations }
    FSkipRow: integer;
    LabelCnt: integer;
    Memos: array[0..3] of TRLMemo;
    procedure AddIfNotBlank(memo: TRLMemo; s: string);
  public
    { Public declarations }
    LabelSize : THLabel;
    SkipRow: integer;
  end;

var
  FormEtiqueta: TFormEtiqueta;

implementation

uses  HORMAIN;

{$R *.dfm}

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inv�lidos e acrescentar caracteres � esquerda ou � direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante dever� ter
   AcrescentarADireita: Indica se o car�cter ser� acrescentado � direita ou � esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar �ltimos caracteres do texto
   CaracterAcrescentar: Car�cter que dever� ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{N�o faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'C';
            '�','�' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


end;

procedure TFormEtiqueta.AddIfNotBlank(memo: TRlMemo; s: string);
begin
  { simple function to only add non blank fields }
  if Trim(s) <> '' then
    memo.Lines.Add(s);
end;

procedure TFormEtiqueta.RLReport1BeforePrint(Sender: TObject; var Printit: Boolean);
var
  nIdx: integer;
begin
  FSkipRow := SkipRow;
  if LabelSize = h5160 then begin
    memos[2].Enabled := true;
    LabelCnt := 2;
  end else
  if LabelSize = h5162 then begin
    memos[3].Enabled := true;
    LabelCnt := 3;
  end
  else begin
    memos[2].Enabled := FALSE;
    LabelCnt := 1;
  end;

  for nIdx := 0 to LabelCnt do
  begin
    with memos[nIdx] do
    begin
      if Enabled then begin
        // Set the width based on the label size picked
        case LabelSize of
          h5160: RealBounds.Width := 2.60;
          h5161: RealBounds.Width := 4.00;
          h5162: RealBounds.Width := 2.30;
        end;

        // Set the location based on the width
        if nIdx > 0 then
          Left := memos[nIdx-1].Left + memos[nIdx-1].Width
        else
          Left := 0;                  
      end;
    end
  end;
end;

procedure TFormEtiqueta.RLBand1BeforePrint(Sender: TObject; var Printit: Boolean);
var
  nIdx : integer;
begin
  for nIdx := low(memos) to high(memos) do
    memos[nIdx].Lines.Clear;

  if FSkipRow > 0 then begin
    dec(FSkipRow);
    RLReport1.DataSource.DataSet.Prior;
  end
  else begin
    with RLReport1.DataSource.DataSet do
    begin
      for nIdx := 0 to LabelCnt do
      begin
        { Add text to the memo.  We are not using any the data aware
        Quick Report components because we are doing our own dataset
        navigation.}

        { Add the fields to the memo }
        if not EOF then begin
          memos[nIdx].Lines.Add(Formatar(FormEtqProdutos.ClientDataSet2Empresa.AsString,25,True));

          { simple function to only add non blank fields }
          AddIfNotBlank(memos[nIdx], '' + Formatar(FormEtqProdutos.ClientDataSet2Descricao.AsString,25,True));
          AddIfNotBlank(memos[nIdx], 'Cod: '+ FormEtqProdutos.ClientDataSet2Codigo_barras.AsString + ' R$: ' + FormatFloat('##,##0.00',FormEtqProdutos.ClientDataSet2Valor.AsFloat));
         // AddIfNotBlank(memos[nIdx], Table1City.AsString) ;

        end;
        {
          If we are not on the last label for this band AND we are not at the
          end of the dataset, we find the next record.  We don't do the find
          on the last label as the Report will do this automaticly and if we
          do it, we will skip every 4th record.
        }
        if (nIdx < LabelCnt) and (not EOF) then
          Next
        else
          break;
      end;
    end;
  end;
end;

procedure TFormEtiqueta.FormCreate(Sender: TObject);
begin
  {
    We have an array of TQRMemo and we assign each element to the
    existing memos on the report.  This allows us to set the memo
    properties at design time and it gives us an easy way to reference
    the memos at runtime.}

  Memos[0] := qrmemo1;
  Memos[1] := qrmemo2;
  Memos[2] := qrmemo3;
  Memos[3] := qrmemo4;
end;

procedure TFormEtiqueta.RLReport1PageStarting(Sender: TObject);
begin
  Memos[0] := qrmemo1;
  Memos[1] := qrmemo2;
  Memos[2] := qrmemo3;
  Memos[3] := qrmemo4;
end;

end.
