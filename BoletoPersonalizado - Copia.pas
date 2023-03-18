unit BoletoPersonalizado;

interface

uses Classes, Controls, ExtCtrls, QuickRpt, QRCtrls;

type
  TrepBoletoPersonalizado = class(TQuickRep)
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    imgFichaCompensacao: TQRImage;
    txtCedenteEndereco: TQRMemo;
    txtCedenteNome: TQRLabel;
    QRLabel2: TQRLabel;
    QRMemo2: TQRMemo;
    QRMemo1: TQRMemo;
    QRShape1: TQRShape;
    lblSacado: TQRLabel;
    txtSacado: TQRMemo;
    lblValor: TQRLabel;
    txtValor: TQRLabel;
    lblDataVencimento: TQRLabel;
    txtDataVencimento: TQRLabel;
    lblNossoNumero: TQRLabel;
    txtNossoNumero: TQRLabel;
  private

  public

  end;

var
  repBoletoPersonalizado: TrepBoletoPersonalizado;

implementation

{$R *.DFM}

end.
