unit Uinventario_rel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpRenderPDF, RpRenderRTF, RpDefine, RpRender, RpRenderHTML,
  SUIButton, ExtCtrls, StdCtrls, RpRenderText, Mask, sMaskEdit,
  sCustomComboEdit, sTooledit, aDvReflectionImage, RXCtrls, DB,
  frxClass, frxDBSet, frxDesgn, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, sLabel;

type
  TFormInv = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    suiButton1: TsuiButton;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderPDF1: TRvRenderPDF;
    suiButton2: TsuiButton;
    suiButton3: TsuiButton;
    myLabel3d2: TsLabelFX;
    RvRenderText1: TRvRenderText;
    Label4: TLabel;
    DateEdit1: TsDateEdit;
    Label5: TLabel;
    suiButton4: TsuiButton;
    img: TAdvReflectionImage;
    RxLabel57: TRxLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsinventario: TfrxDBDataset;
    qrinventario: TFDQuery;
    dsinventario: TDataSource;
    Label7: TLabel;
    suiButton5: TsuiButton;
    qrinventarioCODIGO: TIntegerField;
    qrinventarioCODIGO_BARRAS: TStringField;
    qrinventarioDESCRICAO: TStringField;
    qrinventarioATIVO: TStringField;
    qrinventarioDESC_UNIDADE: TStringField;
    qrinventarioCODIGO_GRUPO: TIntegerField;
    qrinventarioCODIGO_SUBGRUPO: TIntegerField;
    qrinventarioCODIGO_MARCA: TIntegerField;
    qrinventarioSECCAO: TIntegerField;
    qrinventarioCATEGORIA: TIntegerField;
    qrinventarioNCM_SH: TStringField;
    qrinventarioTIPO_ATIVIDADE: TStringField;
    qrinventarioPRODUTO_PROPRIEDADE: TIntegerField;
    qrgrupo_tipo: TFDQuery;
    fstotal_TIPO: TfrxDBDataset;
    qrgrupo_tipoTOTAL: TFMTBCDField;
    qrgrupo_tipoTIPO: TStringField;
    Label8: TLabel;
    suiButton6: TsuiButton;
    Label9: TLabel;
    suiButton7: TsuiButton;
    QRINVENTARIO31: TFDQuery;
    DataSource1: TDataSource;
    fsinventario31: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDesigner2: TfrxDesigner;
    QRINVENTARIO31SEQUENCIA: TIntegerField;
    QRINVENTARIO31ID_INV: TIntegerField;
    QRINVENTARIO31COD_ITEM: TIntegerField;
    QRINVENTARIO31UND_ITEN: TStringField;
    QRINVENTARIO31TXT_COMPLEN: TStringField;
    QRINVENTARIO31COD_CONTA: TStringField;
    QRINVENTARIO31COD_BARRAS: TStringField;
    QRINVENTARIO31DATA: TDateField;
    Label10: TLabel;
    suiButton8: TsuiButton;
    QRGRUPO: TFDQuery;
    fstotal_TIPO1: TfrxDBDataset;
    QRGRUPOTIPO: TStringField;
    QRINVENTARIO31TIPO: TStringField;
    QRINVENTARIO31UND: TStringField;
    Label11: TLabel;
    suiButton9: TsuiButton;
    qrRel: TFDQuery;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    qrRelCODIGO: TStringField;
    qrRelDESCRICAO: TStringField;
    qrRelESTOQUE_POSTERIOR: TBCDField;
    qrRelEMPRESA: TStringField;
    qrRelEMPRESA_CNPJ: TStringField;
    qrRelEMPRESA_FONE: TStringField;
    qrRelEMPRESA_LOGO: TBlobField;
    qrinventarioPRECO_CUSTO: TFMTBCDField;
    qrinventarioPRECO_VENDA: TFMTBCDField;
    qrinventarioESTOQUE_ATUAL: TBCDField;
    qrinventarioESTOQUE: TBCDField;
    qrinventarioVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    qrinventarioVALOR_ESTOQUE: TFMTBCDField;
    qrinventarioCUSTO_MEDIO: TFMTBCDField;
    qrinventarioV_T_CUSTO_MEDIO: TFMTBCDField;
    qrinventarioVALOR_EST_CUSTO: TFMTBCDField;
    qrinventarioESTOQUE_FRACAO: TBCDField;
    qrinventarioV_T_CUSTO_FRACAO: TFMTBCDField;
    QRINVENTARIO31QTD_ITEN: TFMTBCDField;
    QRINVENTARIO31VLR_UNIT: TFMTBCDField;
    QRINVENTARIO31VL_ITEM_TOTAL: TFMTBCDField;
    QRGRUPOTOTAL: TFMTBCDField;
    qrRelVALOR_UNITARIO: TFMTBCDField;
    qrRelVALOR_TOTAL: TFMTBCDField;
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInv: TFormInv;

implementation

uses ModulodeDadosConsultas, ModulodeDadosRelatorios, ModulodeDados,
  UINVENTARIOABERT, UInventario, UInventario_custo, UrelInventarioCusto,
  UInventario_farma;

{$R *.dfm}

procedure TFormInv.suiButton3Click(Sender: TObject);
var
  di : string;
begin
Try
//DMC.SDS_Est_Atual_Custo.Active:= False;
//DMC.SDS_Est_Atual_Custo.Active:= True;
if ComboBox1.ItemIndex = 12 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO  ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 0 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''00'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 1 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''01'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 2 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''02'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 3 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''03'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 4 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''04'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 5 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''05'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 6 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''06'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 7 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''07'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 8 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''08'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 9 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''09'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 10 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''10'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 11 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''99'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end;
if  DMC.SDS_Est_Atual_Custo.EOF then
  Begin
  ShowMessage('Não Há Itens no Estoque Geral');
  end
  else
  begin
    DI:= DateEdit1.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SelectReport('Rp_Est_Atual_Custo',False);
    DMR.RvRelatorios.Execute;
  end;
        Except
      ShowMessage('Não Foi Possivel gerar o Inventário');
  end;

end;

procedure TFormInv.suiButton1Click(Sender: TObject);
begin
try
if ComboBox1.ItemIndex = 12 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO  ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 0 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''00'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 1 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''01'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 2 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''02'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 3 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''03'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 4 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''04'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 5 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''05'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 6 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''06'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 7 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''07'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 8 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''08'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 9 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''09'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 10 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''10'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 11 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''99'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end;
if  DMC.SDS_Est_Atual_Custo.EOF then
  Begin
       ShowMessage('Não Há Itens em Estoque');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do livro inventário?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormRELinventario := tFormRELinventario.create(Self);
     FormRELinventario.RLReport1.Prepare;
     FormRELinventario.RLReport1.PreviewModal;
     end else
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.DefaultFilter.Destroy;
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormRELinventario := tFormRELinventario.create(Self);
     FormRELinventario.RLReport1.DefaultFilter.Destroy;
     FormRELinventario.RLReport1.Prepare;
     FormRELinventario.RLReport1.PreviewModal;
     end;
  end;
        Except
    //Msge.ShowModal;
    ShowMessage('Erro ao Gerar o Inventário');
  end;

end;

procedure TFormInv.suiButton2Click(Sender: TObject);
begin
try
//DMC.SDS_Est_Atual_Custo.Active:= False;
//DMC.SDS_Est_Atual_Custo.Active:= True;
if ComboBox1.ItemIndex = 12 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO  ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 0 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''00'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 1 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''01'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 2 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''02'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 3 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''03'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 4 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''04'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 5 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''05'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 6 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''06'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 7 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''07'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 8 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''08'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 9 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''09'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 10 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''10'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 11 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''99'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end;

if  DMC.SDS_Est_Atual_Custo.EOF then
  Begin
       ShowMessage('Não Há Itens em Estoque');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do livro inventário?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormInventario_Custo := tFormInventario_Custo.create(Self);
     FormInventario_Custo.Tag := 0;
     FormInventario_Custo.RLReport1.Prepare;
     FormInventario_Custo.RLReport1.PreviewModal;
     end else
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.DefaultFilter.Destroy;
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormInventario_Custo := TFormInventario_Custo.create(Self);
     FormInventario_Custo.Tag := 0;
     FormInventario_Custo.RLReport1.DefaultFilter.Destroy;
     FormInventario_Custo.RLReport1.Prepare;
     FormInventario_Custo.RLReport1.PreviewModal;
     end;
  end;
        Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;
end;

procedure TFormInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormInv := nil;
end;

procedure TFormInv.FormShow(Sender: TObject);
begin
DateEdit1.Date := Date;
end;

procedure TFormInv.suiButton4Click(Sender: TObject);
begin
try

if ComboBox1.ItemIndex = 12 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO  ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 0 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''00'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 1 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''01'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 2 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''02'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 3 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''03'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 4 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''04'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 5 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''05'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 6 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''06'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 7 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''07'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 8 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''08'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 9 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''09'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 10 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''10'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 11 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''99'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end;

  if  DMC.SDS_Est_Atual_Custo.EOF then
  Begin
       ShowMessage('Não Há Itens em Estoque');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do livro inventário?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormRel_custoMedio := TFormRel_custoMedio.create(Self);
     FormRel_custoMedio.RLReport1.Prepare;
     FormRel_custoMedio.RLReport1.PreviewModal;
     end else
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.DefaultFilter.Destroy;
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormRel_custoMedio := TFormRel_custoMedio.create(Self);
     FormRel_custoMedio.RLReport1.DefaultFilter.Destroy;
     FormRel_custoMedio.RLReport1.Prepare;
     FormRel_custoMedio.RLReport1.PreviewModal;
     end;
  end;
        Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;

end;

procedure TFormInv.suiButton5Click(Sender: TObject);
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
  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '1';
  dm.qrrelatorio.fieldbyname('LINHA7').asstring :=   DateEdit1.Text;
  dm.qrrelatorio.POST;

  if ComboBox1.ItemIndex = 12 then
begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO ');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;
  if ComboBox1.ItemIndex = 0 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''00'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''00''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;
  if ComboBox1.ItemIndex = 1 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''01'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''01''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;
   if ComboBox1.ItemIndex = 2 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''02'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''02''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;
   if ComboBox1.ItemIndex = 3 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''03'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''03''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;

  if ComboBox1.ItemIndex = 4 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''04'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''04''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;

   if ComboBox1.ItemIndex = 5 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''05'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''05''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;

   if ComboBox1.ItemIndex = 6 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''06'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''06''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;

   if ComboBox1.ItemIndex = 7 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''07'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''07''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;

   if ComboBox1.ItemIndex = 8 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''08'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''08''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;

   if ComboBox1.ItemIndex = 9 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''09'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''09''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;
  if ComboBox1.ItemIndex = 10 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''10'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''10''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;
  if ComboBox1.ItemIndex = 11 then
  begin
  qrinventario.close;
  qrinventario.sql.clear;
  qrinventario.sql.add('select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''99'' ');
  qrinventario.sql.add('order by TIPO_ATIVIDADE, DESCRICAO');
  qrinventario.open;

  APPLICATION.ProcessMessages;

    qrgrupo_tipo.CLOSE;
    qrgrupo_tipo.SQL.CLEAR;
    qrgrupo_tipo.SQL.ADD('SELECT SUM(VALOR_EST_CUSTO) TOTAL, TIPO_ATIVIDADE as tipo ');
    qrgrupo_tipo.SQL.ADD('FROM V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''99''');
    qrgrupo_tipo.SQL.ADD('GROUP BY TIPO order by TIPO');
    qrgrupo_tipo.OPEN;

    fXproduto.LoadFromFile('\siace\rel\Finventario.fr3');
    fxproduto.ShowReport;
  end;
end;

procedure TFormInv.suiButton6Click(Sender: TObject);
begin
try
//DMC.SDS_Est_Atual_Custo.Active:= False;
//DMC.SDS_Est_Atual_Custo.Active:= True;
if ComboBox1.ItemIndex = 12 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO  ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 0 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''00'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 1 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''01'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 2 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''02'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 3 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''03'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 4 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''04'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 5 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''05'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 6 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''06'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 7 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''07'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 8 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''08'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 9 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''09'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 10 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''10'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 11 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO WHERE TIPO_ATIVIDADE = ''99'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end;

if  DMC.SDS_Est_Atual_Custo.EOF then
  Begin
       ShowMessage('Não Há Itens em Estoque');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do livro inventário?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormInventario_farma := tFormInventario_farma.create(Self);
     FormInventario_farma.Tag := 0;
     FormInventario_farma.RLReport1.Prepare;
     FormInventario_farma.RLReport1.PreviewModal;
     end else
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.DefaultFilter.Destroy;
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormInventario_farma := TFormInventario_farma.create(Self);
     FormInventario_farma.Tag := 0;
     FormInventario_farma.RLReport1.DefaultFilter.Destroy;
     FormInventario_farma.RLReport1.Prepare;
     FormInventario_farma.RLReport1.PreviewModal;
     end;
  end;
        Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;
end;

procedure TFormInv.suiButton7Click(Sender: TObject);
begin
//TRY
if ComboBox1.ItemIndex = 12 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 0 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''00'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 1 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''01'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 2 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''02'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 3 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''03'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 4 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''04'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 5 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''05'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 6 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''06'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 7 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''07'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 8 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''08'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 9 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''09'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 10 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''10'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end else
if ComboBox1.ItemIndex = 11 then
begin
DMC.SDS_Est_Atual_Custo.Close;
DMC.SDS_Est_Atual_Custo.SQL.Clear;
DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_CUSTO_SEM_CONSUMO WHERE TIPO_ATIVIDADE = ''99'' ORDER BY DESCRICAO ASC');
DMC.SDS_Est_Atual_Custo.Open;
end;

if  DMC.SDS_Est_Atual_Custo.EOF then
  Begin
       ShowMessage('Não Há Itens em Estoque');
  end
  else
  begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do livro inventário?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormInventario_farma := tFormInventario_farma.create(Self);
     FormInventario_farma.Tag := 0;
     FormInventario_farma.RLReport1.Prepare;
     FormInventario_farma.RLReport1.PreviewModal;
     end else
     BEGIN
     FormAberturaLivro := tFormAberturaLivro.create(Self);
     FormAberturaLivro.RLReport1.DefaultFilter.Destroy;
     FormAberturaLivro.RLReport1.Prepare;
     FormAberturaLivro.RLReport1.PreviewModal;

     FormInventario_farma := TFormInventario_farma.create(Self);
     FormInventario_farma.Tag := 0;
     FormInventario_farma.RLReport1.DefaultFilter.Destroy;
     FormInventario_farma.RLReport1.Prepare;
     FormInventario_farma.RLReport1.PreviewModal;
     end;
  end;
      {  Except
        ShowMessage('Erro ao Gerar o Inventário');
end;  }
end;

procedure TFormInv.suiButton8Click(Sender: TObject);
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
  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '1';
  dm.qrrelatorio.fieldbyname('LINHA7').asstring :=   DateEdit1.Text;
  dm.qrrelatorio.POST;
   
  qrinventario31.close;
  qrinventario31.Parambyname('DATA').AsDate  := DateEdit1.Date;
  qrinventario31.open;


   QRGRUPO.CLOSE;
   QRGRUPO.SQL.CLEAR;
   QRGRUPO.SQL.ADD('SELECT SUM(VL_ITEM_TOTAL) TOTAL, TIPO ');
   QRGRUPO.SQL.ADD('FROM SPED_INVENTARIO_ITENS WHERE QTD_ITEN > 0 ');
   QRGRUPO.SQL.ADD('GROUP BY TIPO order by TIPO');
   QRGRUPO.OPEN;

  APPLICATION.ProcessMessages;

    fXproduto.LoadFromFile('\siace\rel\inventario31.fr3');
    fxproduto.ShowReport;
end;

procedure TFormInv.suiButton9Click(Sender: TObject);
begin
  frxReport.LoadFromFile('C:\siace\rel\RelatorioEstoque.fr3');
  FrxReport.Variables['DATA'] := QuotedStr(DateToStr(DateEdit1.Date));
  qrRel.Close;
  qrRel.ParamByName('DATA').AsDate:= DateEdit1.Date;
  qrRel.Open;
  frxReport.ShowReport;
end;

end.
