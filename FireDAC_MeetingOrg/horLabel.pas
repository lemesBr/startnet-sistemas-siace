unit HORLABEL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, Db, ExtCtrls;

type
  THLabel = (h5160, h5161, h5162);

  TFormEtqProdRel = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRMemo4: TQRMemo;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    FSkipRow: integer;
    LabelCnt: integer;
    Memos: array[0..3] of TQRMemo;
    procedure AddIfNotBlank(memo: TQRMemo; s: string);
  public
    { Public declarations }
    LabelSize : THLabel;
    SkipRow: integer;
  end;

var
  FormEtqProdRel: TFormEtqProdRel;

implementation

uses HORMAIN;

{$R *.DFM}

procedure TFormEtqProdRel.FormCreate(Sender: TObject);
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

procedure TFormEtqProdRel.AddIfNotBlank(memo: TQRMemo; s: string);
begin
  { simple function to only add non blank fields }
  if Trim(s) <> '' then
    memo.Lines.Add(s);
end;

procedure TFormEtqProdRel.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
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
          h5160: Size.Width := 2.60;
          h5161: Size.Width := 4.00;
          h5162: Size.Width := 1.88;
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

procedure TFormEtqProdRel.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  nIdx : integer;
begin
  for nIdx := low(memos) to high(memos) do
    memos[nIdx].Lines.Clear;

  if FSkipRow > 0 then begin
    dec(FSkipRow);
    quickrep1.DataSet.Prior;
  end
  else begin
    with quickrep1.DataSet do
    begin
      for nIdx := 0 to LabelCnt do
      begin
        { Add text to the memo.  We are not using any the data aware
        Quick Report components because we are doing our own dataset
        navigation.}

        { Add the fields to the memo }
        if not EOF then begin
          memos[nIdx].Lines.Add(FormEtqProdutos.ClientDataSet2Descricao.AsString);

          { simple function to only add non blank fields }
          AddIfNotBlank(memos[nIdx], 'R$: ' + FormatFloat('##,##0.00',FormEtqProdutos.ClientDataSet2Valor.AsFloat));
          AddIfNotBlank(memos[nIdx], 'Cod: '+ FormEtqProdutos.ClientDataSet2Codigo_barras.AsString);
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

end.
