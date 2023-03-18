unit etiquetas_6col;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLBarcode, RLReport, RLFilters, RLDraftFilter;

type
  THLabel = (h5166);

  TFormEtiquetas6 = class(TForm)
    RLReport2: TRLReport;
    RLBand1: TRLBand;
    QRMemo1: TRLMemo;
    QrMemo2: TRLMemo;
    QRMemo3: TRLMemo;
    QRMemo4: TRLMemo;
    QRMemo5: TRLMemo;
    QRMemo6: TRLMemo;
    procedure FormCreate(Sender: TObject);
    procedure RLReport2PageStarting(Sender: TObject);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    FSkipRow: integer;
    LabelCnt: integer;
    Memos: array[0..5] of TRLMemo;
    procedure AddIfNotBlank(memo: TRLMemo; s: string);
  public
    { Public declarations }
      LabelSize : THLabel;
      SkipRow: integer;
  end;

var
  FormEtiquetas6: TFormEtiquetas6;

implementation

uses HORMAIN;

{$R *.dfm}

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
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
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
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

procedure TFormEtiquetas6.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  nIdx : integer;
begin
   if LabelSize = h5166 then begin
    memos[5].Enabled := true;
    LabelCnt := 5;
  end;

  for nIdx := low(memos) to high(memos) do
    memos[nIdx].Lines.Clear;

  if FSkipRow > 0 then begin
    dec(FSkipRow);
    RLReport2.DataSource.DataSet.Prior;
  end
  else begin
    with RLReport2.DataSource.DataSet do
    begin
      for nIdx := 0 to LabelCnt do
      begin
        { Add text to the memo.  We are not using any the data aware
        Quick Report components because we are doing our own dataset
        navigation.}

        { Add the fields to the memo }
        if not EOF then begin
          memos[nIdx].Lines.Add(FormEtqProdutos.ClientDataSet2Empresa.AsString);

          { simple function to only add non blank fields }
          AddIfNotBlank(memos[nIdx],  Formatar(FormEtqProdutos.ClientDataSet2Descricao.AsString,20,True));
          AddIfNotBlank(memos[nIdx],  FormEtqProdutos.ClientDataSet2Codigo_barras.AsString + '   ' + 'R$:' + FormatFloat('##,##0.00',FormEtqProdutos.ClientDataSet2Valor.AsFloat));
         // AddIfNotBlank(memos[nIdx], 'R$: ' + FormatFloat('##,##0.00',FormEtqProdutos.ClientDataSet2Valor.AsFloat));
         // AddIfNotBlank1(bar[nIdx], FormEtqProdutos.ClientDataSet2Codigo_barras.AsString);
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



procedure TFormEtiquetas6.FormCreate(Sender: TObject);
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
  Memos[4] := qrmemo5;
  Memos[5] := qrmemo6;
end;

procedure TFormEtiquetas6.RLReport2PageStarting(Sender: TObject);
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
  Memos[4] := qrmemo5;
  Memos[5] := qrmemo6;

end;

procedure TFormEtiquetas6.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  nIdx: integer;
begin
  FSkipRow := SkipRow;
   for nIdx := 0 to LabelCnt do
  begin
    with memos[nIdx] do
    begin
      if Enabled then begin
        // Set the width based on the label size picked
        case LabelSize of
           h5166: RealBounds.Width := 3.10;
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


procedure TFormEtiquetas6.AddIfNotBlank(memo: TRlMemo; s: string);
begin
  { simple function to only add non blank fields }
  if Trim(s) <> '' then
    memo.Lines.Add(s);
end;

end.
