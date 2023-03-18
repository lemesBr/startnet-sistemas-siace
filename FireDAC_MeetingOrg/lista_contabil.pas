unit lista_contabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, TFlatPanelUnit,
  Buttons, DB,  frxClass,
  frxDBSet, frxDesgn, Menus, aDvGlowButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RxToolEdit;

type
  Tfrmlista_Contabil = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxcontabil: TfrxReport;
    fsnivel1: TfrxDBDataset;
    fsconta: TfrxDBDataset;
    dsnivel1: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bevel2: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrcontabil: TFDQuery;
    qrnivel1: TFDQuery;
    qrnivel1CODIGO: TIntegerField;
    qrnivel1NOME: TStringField;
    qrnivel1COD_COMPLETO: TStringField;
    qrnivel1ENTRADA: TBCDField;
    qrnivel1SAIDA: TBCDField;
    qrnivel1DATA: TDateField;
    qrnivel1VALOR: TBCDField;
    Bevel3: TBevel;
    DateEdit4: TDateEdit;
    Label2: TLabel;
    DateEdit3: TDateEdit;
    Label5: TLabel;
    qrcontabilCODIGO: TIntegerField;
    qrcontabilNOME: TStringField;
    qrcontabilCOD_COMPLETO: TStringField;
    qrcontabilENTRADA: TBCDField;
    qrcontabilSAIDA: TBCDField;
    qrcontabilVALOR: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_Contabil: Tfrmlista_Contabil;

implementation

uses principal, ModulodeDados;

{$R *.dfm}

procedure Tfrmlista_Contabil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_Contabil.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 1;
  combo_ordem.ItemIndex := 0;




end;

procedure Tfrmlista_Contabil.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_Contabil.bimprimirClick(Sender: TObject);
var BANCO, ordem, inicio, final : string;
begin
  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit3.TexT;
    final:=dateedit4.TexT;

  if DateEdit4.Date < DateEdit3.Date then
  begin
    ShowMessage('Data final deve ser maior que a data inicial');
    DateEdit4.Date := DateEdit3.Date;
    Exit;
  end;

  if  combo_relatorio.Text = '' then
  begin
    ShowMessage('Selecione um relatorio para imprimir');
  end;

  if combo_relatorio.ItemIndex = 0 then
  begin
    qrnivel1.close;
    qrnivel1.sql.clear;
    qrnivel1.sql.add('select * from V_PLANO_ANALITICO where COD_COMPLETO is not null ');
    if inicio > ' / /   ' then
    qrnivel1.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qrnivel1.SQL.add(' ORDER BY '+ combo_ordem.text + ' asc');
    qrnivel1.open;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'MOVIMENTAÇÃO ANALITICA - PLANO DE CONTAS POR PERÍODO';
    fxcontabil.LoadFromFile('\siace\rel\FCONTABIL1.fr3');
    fxcontabil.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 1 then
  begin
    qrcontabil.close;
    if (inicio = ' / /   ') or (final = ' / /   ') then
    begin
      ShowMessage('data invalida');
      DateEdit3.SetFocus;
      Exit;
    end;
    qrcontabil.Params.ParamByName('datai').AsDate := DateEdit3.Date;
    qrcontabil.Params.ParamByName('dataf').AsDate := DateEdit4.Date;
    qrcontabil.open;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'MOVIMENTAÇÃO SINTÉTICA - PLANO DE CONTAS POR PERÍODO';
    fxcontabil.LoadFromFile('\siace\rel\fcontabil2.fr3');
    fxcontabil.ShowReport;
  end;  
end;

procedure Tfrmlista_Contabil.BitBtn1Click(Sender: TObject);
begin

 { if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    fxcontabil.LoadFromFile('\siace\rel\fcontabil1.fr3');
    fxcontabil.DesignReport;
  end;  }


end;

end.
