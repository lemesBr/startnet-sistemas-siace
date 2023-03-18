unit URelAbastecimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, SUIButton, DBCtrls, RXCtrls, ExtCtrls,
  aDvGlowButton, FMTBcd, DBClient, DB, Provider, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RxToolEdit;

type
  TFormRelAbastecimentos = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    blocalizar: TAdvGlowButton;
    dts_relIpva: TDataSource;
    GroupBox3: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Qry_RelAbast: TFDQuery;
    Qry_RelAbastNOME: TStringField;
    Qry_RelAbastCOMBUSTIVEL: TStringField;
    Qry_RelAbastNOME1: TStringField;
    Qry_RelAbastSEQ: TIntegerField;
    Qry_RelAbastCOD_PRO: TIntegerField;
    Qry_RelAbastCOD_FOR: TIntegerField;
    Qry_RelAbastCOD_VEI: TIntegerField;
    Qry_RelAbastDATA: TDateField;
    Qry_RelAbastQUANT: TBCDField;
    Qry_RelAbastV_TOTAL: TBCDField;
    Qry_RelAbastV_UNIT: TFMTBCDField;
    Qry_RelAbastKM_VEIC: TIntegerField;
    Qry_RelAbastOBS: TStringField;
    Qry_RelAbastKM_L: TBCDField;
    Qry_RelAbastKM_ROD: TIntegerField;
    Qry_RelAbastPLACA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelAbastecimentos: TFormRelAbastecimentos;
  veic, forn: string;
  
implementation

uses ModulodeDados, URelatorioAbast;

{$R *.dfm}

procedure TFormRelAbastecimentos.FormShow(Sender: TObject);
begin
    DM.SDS_VEICULOS.close;
    DM.SDS_VEICULOS.SQL.clear;
    DM.SDS_VEICULOS.SQL.add('select * from VEICULO order by NOME');
    DM.SDS_VEICULOS.Open;

    
    dm.SDS_Fornecedores.Active := false;
    dm.SDS_Fornecedores.SQL.Clear;
    dm.SDS_Fornecedores.sql.add('select * from fornecedores order by NOME ASC');
    dm.SDS_Fornecedores.Active := True;
end;

procedure TFormRelAbastecimentos.blocalizarClick(Sender: TObject);
var
   inicio, final : string;

begin
    veic :=Edit1.Text;
    forn :=Edit2.Text;

    inicio :=datetostr(DATE);
    final  :=datetostr(DATE);

    inicio :=dateedit1.TexT;
    final  :=dateedit2.TexT;

    if dm.Coneccao.Connected then
      dm.Coneccao.Commit;
    dm.Coneccao.StartTransaction;
    try
    If DateEdit2.Date < DateEdit1.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit2.Date := DateEdit1.Date;
    end  Else
    begin
    Qry_RelAbast.close;
    Qry_RelAbast.SQL.Clear;
    Qry_RelAbast.SQL.add('select * from V_ABASTECIMENTOS where SEQ > 0'+'');
    if DBLookupComboBox1.text > '' then
    Qry_RelAbast.SQL.add('and COD_VEI = ' + QuotedStr(veic)+'');
    if DBLookupComboBox2.text > '' then
    Qry_RelAbast.SQL.add('and COD_FOR = ' + QuotedStr(forn)+'');
    if inicio > ' / /   ' then
    Qry_RelAbast.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_RelAbast.SQL.add('ORDER BY KM_VEIC ASC');
    Qry_RelAbast.Open;
    
    dm.Coneccao.Commit;
    end;
    except
     dm.Coneccao.Rollback;
    end;
    FormRelatorioAbast := tFormRelatorioAbast.create(Self);
    FormRelatorioAbast.RLReport1.Prepare;
    FormRelatorioAbast.RLReport1.PreviewModal;

end;

procedure TFormRelAbastecimentos.DBLookupComboBox1Exit(Sender: TObject);
begin
  Edit1.Text := DM.SDS_VEICULOSCODIGO.Text;
end;

procedure TFormRelAbastecimentos.DBLookupComboBox2Exit(Sender: TObject);
begin
 Edit2.Text := DM.SDS_FornecedoresCODIGO.Text;
end;

procedure TFormRelAbastecimentos.DBLookupComboBox1Click(Sender: TObject);
begin
  Edit1.Text := DM.SDS_VEICULOSCODIGO.Text;
end;

procedure TFormRelAbastecimentos.DBLookupComboBox2Click(Sender: TObject);
begin
 Edit2.Text := DM.SDS_FornecedoresCODIGO.Text;
end;

procedure TFormRelAbastecimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormRelAbastecimentos := nil;
end;
end.


