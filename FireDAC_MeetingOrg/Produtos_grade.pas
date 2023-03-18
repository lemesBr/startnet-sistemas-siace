unit Produtos_grade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, StdCtrls, aDvGlowButton, ExtCtrls, RXCtrls,
  rxToolEdit, rxCurrEdit, RXDBCtrl;

type
  TFormGrade = class(TForm)
    Panel4: TPanel;
    RxLabel6: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Image1: TImage;
    suiButton5: TAdvGlowButton;
    Edit2: TEdit;
    suiButton6: TAdvGlowButton;
    DBEdit1: TDBEdit;
    db_nome: TDBEdit;
    suiDBLookupComboBox1: TDBLookupComboBox;
    dbt_codigo: TDBEdit;
    RxLabel18: TRxLabel;
    suiDBEdit14: TRxDBCalcEdit;
    Panel2: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrade: TFormGrade;

implementation

uses ModulodeDados, Produtos;

{$R *.dfm}

procedure TFormGrade.bgravarClick(Sender: TObject);
begin
       dm.qrgrade_produto.post;
    //   dm.conexao.commit;
       
end;

end.
