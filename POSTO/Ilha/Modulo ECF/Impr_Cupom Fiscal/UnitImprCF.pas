unit UnitImprCF;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Buttons;

type
 TImprCupomFiscalFrm = class(TForm)
   GroupBox1: TGroupBox;
   Label1: TLabel;
   Edit1: TEdit;
   ComboBox1: TComboBox;
   Label2: TLabel;
   Edit2: TEdit;
   Label3: TLabel;
   Label4: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Label7: TLabel;
   Label8: TLabel;
   Label9: TLabel;
   Label10: TLabel;
   Label11: TLabel;
   BitBtn2: TBitBtn;
   BitBtn1: TBitBtn;
   procedure BitBtn2Click(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure FormShow(Sender: TObject);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 ImprCupomFiscalFrm: TImprCupomFiscalFrm;

implementation

uses UnitFrmPrincipal, MonitoriaBombas;

{$R *.dfm}

procedure TImprCupomFiscalFrm.BitBtn2Click(Sender: TObject);
begin
 self.Close;
end;

procedure TImprCupomFiscalFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TImprCupomFiscalFrm.Edit1Enter(Sender: TObject);
begin
 TEdit(Sender).color := claqua;
end;

procedure TImprCupomFiscalFrm.Edit1Exit(Sender: TObject);
begin
 TEdit(Sender).color := clwindow;
end;

procedure TImprCupomFiscalFrm.FormShow(Sender: TObject);
begin
 //label8.caption  := CUB.Bomba[Cod_Bomba_Default - 1].Produto_Desc_UltimaVenda;
 label9.Caption := 'R$ ' + formatcurr('###,##0,000',
   CUB.Bomba[Cod_Bomba_Default - 1].Preco_UltimaVenda / 1000);
 label10.Caption := 'R$ ' + formatcurr('###,##0,00',
   CUB.Bomba[Cod_Bomba_Default - 1].Mililitros_UltimaVenda / 1000);
 label11.Caption := 'R$ ' + formatcurr('###,##0,00',
   CUB.Bomba[Cod_Bomba_Default - 1].Dinheiro_UltimaVenda / 100);
end;

end.
