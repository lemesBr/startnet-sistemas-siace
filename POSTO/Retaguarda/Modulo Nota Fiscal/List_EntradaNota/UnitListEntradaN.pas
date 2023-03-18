unit UnitListEntradaN;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids, ExtCtrls, DB,
 IBCustomDataSet, IBQuery, DateUtils, Placemnt, IBSQL;

type
 TEntradaNFListFrm = class(TForm)
   GroupBox2: TGroupBox;
   Edit1: TEdit;
   GroupBox4: TGroupBox;
   DateEdit1: TDateEdit;
   DateEdit2: TDateEdit;
   BitBtn1: TBitBtn;
   Label6: TLabel;
   DtsQry_NF_Entrada: TDataSource;
   QryEntradaProd: TIBQuery;
   Label5: TLabel;
   Label7: TLabel;
   Label4: TLabel;
   Label1: TLabel;
   Edit2: TEdit;
   Edit3: TEdit;
   RadioButton1: TRadioButton;
   RadioButton2: TRadioButton;
   DtsQryProduto: TDataSource;
   QryProduto: TIBQuery;
   Panel7: TPanel;
   Panel9: TPanel;
   Panel11: TPanel;
   Panel6: TPanel;
   SpeedButton4: TSpeedButton;
   SpeedButton2: TSpeedButton;
   SpeedButton1: TSpeedButton;
   SpeedButton3: TSpeedButton;
   Edit4: TEdit;
   Label2: TLabel;
   Edit5: TEdit;
   Label3: TLabel;
   Panel1: TPanel;
   Splitter2: TSplitter;
   QryNumSerie: TIBQuery;
   DtsQryNumSerie: TDataSource;
   DBGrid2: TDBGrid;
   DBGrid3: TDBGrid;
   Panel3: TPanel;
   DBGrid1: TDBGrid;
   Splitter1: TSplitter;
   Panel4: TPanel;
   Panel2: TPanel;
   QryNumSerieNUM_SERIE: TIBStringField;
   QryNumSerieFIM_GARANTIA_FABRICANTE: TDateTimeField;
   QryProdutoCOD_NF_ENTRADA_ITENS: TIntegerField;
   QryProdutoCOD_NF_ENTRADA: TIntegerField;
   QryProdutoNOME: TIBStringField;
   QryProdutoREFERENCIA: TIBStringField;
   QryProdutoAPR_UND: TIBStringField;
   QryProdutoCL_FIS: TIBStringField;
   QryProdutoVALOR_DESCONTO: TIBBCDField;
   QryProdutoALIQUOTA_ICMS: TIBBCDField;
   QryProdutoALIQUOTA_IPI: TIBBCDField;
   QryProdutoQUANTIDADE: TIBBCDField;
   QryProdutoS_TRIB: TIBStringField;
   QryProdutoVALOR_IPI: TIBBCDField;
   QryProdutoSUBTOTAL: TIBBCDField;
   QryProdutoPRC_CUSTO: TIBBCDField;
   QryProdutoCOD_PRODUTOS: TIntegerField;
   QryNumSerieGARANTIA_POSVENDA: TIntegerField;
    Label8: TLabel;
    Edit6: TEdit;
    QryUpdate: TIBQuery;
    SQLUpdate: TIBSQL;
    QryEntradaProdCOD_NF_ENTRADA: TIntegerField;
    QryEntradaProdCFOP: TIntegerField;
    QryEntradaProdBASE_ICMS: TIBBCDField;
    QryEntradaProdBASE_ICMS_SUBST: TIBBCDField;
    QryEntradaProdDATAHORA_RECEBIMENTO: TDateTimeField;
    QryEntradaProdNUM_FORM: TIBStringField;
    QryEntradaProdNUM_NF: TIBStringField;
    QryEntradaProdVALOR_FRETE: TIBBCDField;
    QryEntradaProdVALOR_ICMS: TIBBCDField;
    QryEntradaProdVALOR_ICMS_SUBST: TIBBCDField;
    QryEntradaProdVALOR_IPI: TIBBCDField;
    QryEntradaProdBASE_IPI: TIBBCDField;
    QryEntradaProdOUTRAS_DESPESAS: TIBBCDField;
    QryEntradaProdVALOR_SEGURO: TIBBCDField;
    QryEntradaProdVALOR_TOTALNF: TIBBCDField;
    QryEntradaProdOUTRAS_ICMS: TIBBCDField;
    QryEntradaProdVALOR_TOTALPRODUTO: TIBBCDField;
    QryEntradaProdFISCAL: TSmallintField;
    QryEntradaProdICMS_ANTECIPADO: TIBBCDField;
    QryEntradaProdALIQUOTA_ICMS: TIBBCDField;
    QryEntradaProdVALOR_ISENTO_IPI: TIBBCDField;
    QryEntradaProdOUTRAS_IPI: TIBBCDField;
    QryEntradaProdALIQUOTA_IPI: TIBBCDField;
    QryEntradaProdICMS_SUBST_INT: TSmallintField;
    QryEntradaProdCOD_FISCAL_IPI: TIntegerField;
    QryEntradaProdCOD_FISCAL_ICMS: TIntegerField;
    QryEntradaProdVALOR_ISENTO_ICMS: TIBBCDField;
    QryEntradaProdALIQUOTA_ICMS_DIF: TIBBCDField;
    QryEntradaProdVALOR_ICMS_DIF: TIBBCDField;
    QryEntradaProdDATAHORA_EMISSAO: TDateTimeField;
    QryEntradaProdNOME: TIBStringField;
    QryEntradaProdCGCCPF: TIBStringField;
    QryEntradaProdSITUACAO_NF: TIBStringField;
    QryEntradaProdINSCESTRG: TIBStringField;
    QryEntradaProdCNPJ_FORNECEDOR: TIBStringField;
    QryEntradaProdIE_FORNECEDOR: TIBStringField;
    QryContagem: TIBQuery;
    QryContagemNOTAS: TIntegerField;
    QryContagemTOTAL: TIBBCDField;
   procedure Gerar(Sender: TObject);
   procedure Limpar(Sender: TObject);
   procedure Imprimir(Sender: TObject);
   procedure FiltroChanged(Sender: TObject);
   procedure Del;
   procedure EditCancel;
   procedure Habilita_Nota;
   procedure Cancela_Nota;

   procedure BitBtn1Click(Sender: TObject);
   procedure Seleciona_Forn(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure Edit2KeyPress(Sender: TObject; var Key: char);
   procedure Edit1KeyPress(Sender: TObject; var Key: char);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure RadioButton1Click(Sender: TObject);
   procedure RadioButton2Click(Sender: TObject);
   procedure DateEdit2KeyPress(Sender: TObject; var Key: char);
   procedure GroupBox4Enter(Sender: TObject);
   procedure RadioButton1KeyPress(Sender: TObject; var Key: char);
   procedure BitBtn1KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure ResizeGrid(Sender: TObject);
   procedure DBGrid4KeyPress(Sender: TObject; var Key: char);
   procedure Edit1Change(Sender: TObject);
   procedure DateEdit1Change(Sender: TObject);
   procedure QryProdutoAfterScroll(DataSet: TDataSet);
   procedure DateEdit1Exit(Sender: TObject);
   procedure DateEdit2Exit(Sender: TObject);
   procedure QryEntradaProdAfterScroll(DataSet: TDataSet);
   procedure Edit4KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
     DataCol: integer; Column: TColumn; State: TGridDrawState);
    procedure Label6MouseEnter(Sender: TObject);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 EntradaNFListFrm: TEntradaNFListFrm;
 codigcliente: integer;
 OrderbyStr, OrderbyStr_2, OrderbyStr_3: String;

implementation

uses UnitDataM1, UnitSelect, UnitFrmPrincipal,
 UnitRepEntradaN, Unit3EntradaN;

{$R *.dfm}

procedure TEntradaNFListFrm.Gerar(Sender: TObject);
begin
 QryProduto.AfterScroll := nil;
 QryEntradaProd.Tag := 0;
 with QryEntradaProd do
  begin
   Close;
   UnPrepare;
   sql.Clear;
   sql.add('select  COD_NF_ENTRADA,BASE_ICMS, CFOP, BASE_ICMS_SUBST, DATAHORA_RECEBIMENTO, NUM_FORM, NUM_NF, VALOR_FRETE, VALOR_ISENTO_ICMS,');
   sql.add('VALOR_ICMS, VALOR_ICMS_SUBST, VALOR_IPI, OUTRAS_DESPESAS, VALOR_SEGURO, VALOR_TOTALNF, FISCAL, BASE_IPI, OUTRAS_ICMS, ALIQUOTA_ICMS_DIF,');
   sql.add('ICMS_ANTECIPADO, ALIQUOTA_ICMS, VALOR_ISENTO_IPI, OUTRAS_IPI, ALIQUOTA_IPI, ICMS_SUBST_INT, COD_FISCAL_IPI, CNPJ_FORNECEDOR, IE_FORNECEDOR, COD_FISCAL_ICMS,');
   sql.add('VALOR_TOTALPRODUTO, VALOR_ICMS_DIF, DATAHORA_EMISSAO, SITUACAO_NF, CADASTRO.NOME, CADASTRO.CGCCPF, CADASTRO.INSCESTRG from NF_ENTRADA');
   sql.add('LEFT OUTER JOIN CADASTRO on (CADASTRO.CODCLI=NF_ENTRADA.COD_CLI_FORNECEDOR)');
   sql.add('WHERE (COD_NF_ENTRADA <> 0)');
   //---------------pela referencia----------------------------
   if edit5.Text <> '' then
    begin
     sql.add(
       'and (COD_NF_ENTRADA in (select COD_NF_ENTRADA from NF_ENTRADA_ITENS where COD_PRODUTOS in (select COD_PRODUTOS from PRODUTOS where REFERENCIA = :referencia)))');
     params.parambyname('referencia').AsString := edit5.Text;
    end;
   //---------------pelo nº de serie----------------------------
   if edit4.Text <> '' then
    begin
     sql.add(
       'and (COD_NF_ENTRADA in (select COD_NF_ENTRADA from NF_ENTRADA_ITENS where COD_NF_ENTRADA_ITENS in (select COD_NF_ENTRADA_ITENS from NF_ENTRADA_NSERIE where NUM_SERIE = :serie)))');
     params.parambyname('serie').AsString := edit4.Text;
    end;
   //---------------por fornecedor----------------------------
   if edit1.Text <> '' then
    begin
     sql.add('and COD_CLI_FORNECEDOR LIKE :Fornecedor');
     params.parambyname('Fornecedor').AsInteger := codigcliente;
    end;
   //---------------por CNPJ----------------------------
   if edit6.Text <> '' then
    begin
     sql.add('and CNPJ_FORNECEDOR LIKE :CNPJ');
     params.parambyname('CNPJ').AsString := Edit6.Text;
    end;
   //---------------pelo nº de controle do formulario----------------------------
   if edit2.Text <> '' then
    begin
     sql.add('and NUM_FORM LIKE :controle');
     params.parambyname('controle').AsString := edit2.Text;
    end;
   //---------------pelo nº da nota----------------------------
   if edit3.Text <> '' then
    begin
     sql.add('and NUM_NF LIKE :nota');
     params.parambyname('nota').AsString := edit3.Text;
    end;
   //---------------por data emissao/entrada----------------------------
   if ((length(trim(dateedit1.Text)) >= 8) and (length(trim(dateedit2.Text)) >= 8)) then
    begin
     if RadioButton1.Checked then
       sql.add(' and (DATAHORA_EMISSAO between :data1 and :data2)');
     if RadioButton2.Checked then
       sql.add(' and (DATAHORA_RECEBIMENTO between :data1 and :data2)');
     Params.ParamByName('data1').AsDateTime :=
       strtodatetime(dateedit1.Text + ' 00:00:00');
     Params.ParamByName('data2').AsDateTime :=
       strtodatetime(dateedit2.Text + ' 23:59:59');
    end;
   sql.add('order by DATAHORA_RECEBIMENTO desc');
   OrderbyStr := 'order by DATAHORA_RECEBIMENTO desc';
   Prepare;
   Open;
  end;
 with QryProduto do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('select COD_NF_ENTRADA_ITENS,COD_NF_ENTRADA, PRODUTOS.NOME,PRODUTOS.REFERENCIA, APR_UND, CL_FIS, VALOR_DESCONTO,');
   SQL.Add('ALIQUOTA_ICMS, ALIQUOTA_IPI, QUANTIDADE, S_TRIB, VALOR_IPI, SUBTOTAL, PRC_CUSTO,NF_ENTRADA_ITENS.COD_PRODUTOS from NF_ENTRADA_ITENS');
   SQL.Add('LEFT OUTER JOIN PRODUTOS on (PRODUTOS.COD_PRODUTOS=NF_ENTRADA_ITENS.COD_PRODUTOS)');
   SQL.Add('where (COD_NF_ENTRADA=:COD_NF_ENTRADA)');
   SQL.Add('order by Nome');
   OrderbyStr_2 := 'order by Nome';
   Prepare;
   Open;
  end;

 with QryNumSerie do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('select NUM_SERIE,FIM_GARANTIA_FABRICANTE, GARANTIA_POSVENDA from NF_ENTRADA_NSERIE');
   SQL.Add('where (COD_NF_ENTRADA_ITENS=:COD_NF_ENTRADA_ITENS)');
   SQL.Add('order by garantia_posvenda');
   OrderbyStr_3 := 'order by garantia_posvenda';
   Prepare;
   Open;
  end;

 QryProduto.AfterScroll := QryProdutoAfterScroll;

  with QryContagem do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL := QryEntradaProd.SQL;
   Params := QryEntradaProd.Params;
   SQL.Delete(0);
   SQL.Delete(0);
   SQL.Delete(0);
   SQL.Delete(0);
   SQL.Delete(0);
   SQL.Insert(0, 'Select count(COD_NF_ENTRADA) NOTAS, sum(VALOR_TOTALNF) TOTAL from NF_ENTRADA');
   Prepare;
   Open;
  end;

 if QryEntradaProd.RecordCount > 0 then
  begin
   QryProdutoAfterScroll(QryProduto);
   Splitter1.Visible := True;
   panel9.Visible := True;
   panel3.Visible := True;
   if DBGrid1.CanFocus then
    DBGrid1.SetFocus;
   panel6.Caption := '  ' + QryContagem.FieldByName('NOTAS').AsString + ' Registro(s) Listado(s)';
  end
 else
  begin
   panel9.Visible := False;
   panel3.Visible := False;
   panel6.Caption := '  Nenhuma Entrada de Nota Fiscal';
  end;

 if QryEntradaProd.Active then
  QryEntradaProd.Tag := 1;
 DM1.DefSenderDtsStateChange(QryEntradaProd);
end;

procedure TEntradaNFListFrm.Imprimir(Sender: TObject);
begin
 Application.CreateForm(TEntradaNFRepFrm, EntradaNFRepFrm);

 if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
  begin
   if RadioButton1.Checked then
    begin
     EntradaNFRepFrm.QRLabel27.Enabled := True;
     EntradaNFRepFrm.QRLabel27.Caption := 'Data de Emissão:';
    end
   else if RadioButton2.Checked then
    begin
     EntradaNFRepFrm.QRLabel27.Enabled := True;
     EntradaNFRepFrm.QRLabel27.Caption := 'Data de Entrada:';
    end;
   EntradaNFRepFrm.QRLabel110.Enabled := True;
   EntradaNFRepFrm.QRLabel110.Caption := DateToStr(DateEdit1.Date);  // Data de Início
   EntradaNFRepFrm.QRLabel101.Enabled := True;
   EntradaNFRepFrm.QRLabel101.Caption := DatetoStr(DateEdit2.Date);  // Data Final
   EntradaNFRepFrm.QRLabel100.Enabled := True;
  end
 else
  begin
   EntradaNFRepFrm.QRLabel27.Enabled := False;
   EntradaNFRepFrm.QRLabel100.Enabled := False;
   EntradaNFRepFrm.QRLabel110.Enabled := False;
   EntradaNFRepFrm.QRLabel101.Enabled := False;
  end;

 EntradaNFRepFrm.QRMemo1.Lines.Clear;
 if Edit1.Text <> '' then
   EntradaNFRepFrm.QRMemo1.Lines.add('Fornecedor: ' + Edit1.Text);
 if Edit6.Text <> '' then
   EntradaNFRepFrm.QRMemo1.Lines.add('CNPJ: ' + Edit6.Text);
 if Edit3.Text <> '' then
   EntradaNFRepFrm.QRMemo1.Lines.add('Nº Nota: ' + Edit3.Text);
 if Edit2.Text <> '' then
   EntradaNFRepFrm.QRMemo1.Lines.add('Controle Formulário: ' + Edit2.Text);
 if Edit5.Text <> '' then
   EntradaNFRepFrm.QRMemo1.Lines.add('Referência: ' + Edit5.Text);
 if Edit4.Text <> '' then
   EntradaNFRepFrm.QRMemo1.Lines.add('Nº de Série: ' + Edit4.Text);

 EntradaNFRepFrm.QuickRep1.Preview;
end;

procedure TEntradaNFListFrm.BitBtn1Click(Sender: TObject);
begin
 Selectfrm.Caption := 'Selecione o Fornecedor';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Forn;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT CODCLI, NOME, CGCCPF');
   IBQuery1.sql.Add('FROM CADASTRO WHERE CODCLI > 0 and TIPO =' + quotedstr('F'));
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.Open;
  end;

 SelectFrm.ShowModal;
end;

procedure TEntradaNFListFrm.Seleciona_Forn(Sender: TObject);
begin
 if not VarIsNull(SelectFrm.IBQuery1['NOME']) then
  begin
    edit1.Text := SelectFrm.IBQuery1['NOME'];
   if not VarIsNull(SelectFrm.IBQuery1['CODCLI']) then
    codigcliente := SelectFrm.IBQuery1['CODCLI'];
   if not VarIsNull(SelectFrm.IBQuery1['CGCCPF']) then
    Edit6.Text := SelectFrm.IBQuery1['CGCCPF'];
  end;
 selectFrm.Close;
end;

procedure TEntradaNFListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([EntradaNFListFrm.QryProduto]);
 DM1.DefSenderDtsStateChange(EntradaNFListFrm.QryEntradaProd);
 if panel3.Visible = True then
   gerar(self);
end;

procedure TEntradaNFListFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := cafree;
 DM1.CloseIBArray([EntradaNFListFrm.QryEntradaProd, EntradaNFListFrm.QryProduto]);
 DM1.DefSenderDtsStateChange(EntradaNFListFrm.QryEntradaProd);
 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);
end;

procedure TEntradaNFListFrm.Edit1Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
end;

procedure TEntradaNFListFrm.Edit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TEntradaNFListFrm.Edit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '.', #08, #09]) then
   key := #0;  
end;

procedure TEntradaNFListFrm.Edit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   self.Close;
  end;

 if key = #13 then
  begin
   key := #0;
   edit6.SetFocus;
  end;

 if key = #$20 then
   BitBtn1Click(self);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn1Click(self);
  end;
end;

procedure TEntradaNFListFrm.FiltroChanged(Sender: TObject);
begin
 if QryEntradaProd.Active then
  begin
   screen.cursor := crhourglass;
   panel6.Caption := '  Listagem de Entrada de Notas Fiscais';
   Dm1.CloseIBArray([QryEntradaProd]);
   DM1.DefSenderDtsStateChange(QryEntradaProd);
   panel3.Visible := False;
   Splitter1.Visible := False;
   Panel9.Visible := False;
   Splitter2.Visible := False;
   Panel1.Visible := False;
   screen.cursor := crdefault;
  end;
end;

procedure TEntradaNFListFrm.Limpar(Sender: TObject);
begin
 edit1.Clear;
 edit2.Clear;
 edit3.Clear;
 edit4.Clear;
 edit5.Clear;
 edit6.Clear;
 DateEdit1.Clear;
 DateEdit2.Clear;
 panel9.Visible := False;
 Splitter1.Visible := False;
 Splitter2.Visible := False;
 panel1.Visible := False;
 panel3.Visible := False;
 panel6.Caption := '  Listagem de Entrada de Notas Fiscais';
 SpeedButton3.Click;
end;

procedure TEntradaNFListFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_delete then
  begin
   tedit(Sender).Text := '';
  end;
end;

procedure TEntradaNFListFrm.RadioButton1Click(Sender: TObject);
begin
 RadioButton2.Checked := False;
 FiltroChanged(self);
end;

procedure TEntradaNFListFrm.RadioButton2Click(Sender: TObject);
begin
 RadioButton1.Checked := False;
 FiltroChanged(self);
end;

procedure TEntradaNFListFrm.DateEdit2KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0)
  end;

 if key = #13 then
  begin
   key := #0;
   Gerar(self);
  end;
end;

procedure TEntradaNFListFrm.GroupBox4Enter(Sender: TObject);
begin
 RadioButton1.SetFocus;
end;

procedure TEntradaNFListFrm.RadioButton1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   edit4.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TEntradaNFListFrm.BitBtn1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   edit1.SetFocus;
  end;
end;

procedure TEntradaNFListFrm.DBGrid1DblClick(Sender: TObject);
begin
 if QryEntradaProd.RecordCount <> 0 then
  begin
   if not varisnull(QryEntradaProd['COD_NF_ENTRADA']) then
    begin
     lockwindowupdate(handle);
     PrincipalFrm.AddaChild(TEntradaNFCadFrm, EntradaNFCadFrm);

     if DM1.Dst_NF_Entrada.State <> dsbrowse then
       DM1.Dst_NF_Entrada.Cancel;
     EntradaNFCadFrm.Mostrar;

     lockwindowupdate(0);
    end;
  end
end;

procedure TEntradaNFListFrm.ResizeGrid(Sender: TObject);
const
 MaxWidth: integer = 737;
 NormalWidth: integer = 473;
begin
 if Tspeedbutton(Sender).Visible then
  begin
   lockwindowupdate(handle);
   if Sender = speedbutton1 then       // Diminui visualizacao de grid
    begin
     if panel7.Width - (MaxWidth div 10) >= NormalWidth then
      begin
       panel7.Width := panel7.Width - (MaxWidth div 10);
       panel7.Left := panel7.Left + (MaxWidth div 10);
      end
     else
       Sender := speedbutton3;
    end;

   if Sender = speedbutton2 then       // Aumenta visualizacao de grid
    begin
     if panel7.Width + (MaxWidth div 10) <= MaxWidth then
      begin
       panel7.Width := panel7.Width + (MaxWidth div 10);
       panel7.left := panel7.Left - (MaxWidth div 10);
      end
     else
       Sender := speedbutton4;
    end;

   if Sender = speedbutton3 then       // Minimiza visualizacao de Grid
    begin
     panel7.left := panel7.left + (panel7.Width - NormalWidth);
     panel7.Width := NormalWidth;
    end;

   if Sender = speedbutton4 then       // Maximiza visualizacao de Grid
    begin
     panel7.left := panel7.left - (MaxWidth - panel7.Width);
     panel7.Width := MaxWidth;
    end;

   speedbutton2.Visible := panel7.Width < MaxWidth;
   speedbutton4.Visible := panel7.Width < MaxWidth;
   speedbutton1.Visible := panel7.Width > NormalWidth;
   speedbutton3.Visible := panel7.Width > NormalWidth;
   lockwindowupdate(0);
  end;
end;


procedure TEntradaNFListFrm.DBGrid4KeyPress(Sender: TObject; var Key: char);
begin
 if key = #13 then
  begin
   key := #0;
   DBGrid1DblClick(self);
  end;
 if key = #27 then
  begin
   key := #0;
   Self.Close;
  end;
end;

procedure TEntradaNFListFrm.Edit1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TEntradaNFListFrm.DateEdit1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TEntradaNFListFrm.QryProdutoAfterScroll(DataSet: TDataSet);
begin
 if QryNumSerie.RecordCount > 0 then
  begin
   panel1.Visible := True;
   Splitter2.Visible := True;
  end
 else
  begin
   Splitter2.Visible := False;
   panel1.Visible := False;
  end;
end;

procedure TEntradaNFListFrm.DateEdit1Exit(Sender: TObject);
begin
 try
   DateEdit1.CheckValidDate;
   DateEdit1.Color := clwindow;
 except
   DateEdit1.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TEntradaNFListFrm.DateEdit2Exit(Sender: TObject);
begin
 try
   DateEdit2.CheckValidDate;
   DateEdit2.Color := clwindow;
 except
   DateEdit2.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TEntradaNFListFrm.QryEntradaProdAfterScroll(DataSet: TDataSet);
begin
 QryProdutoAfterScroll(QryProduto);
end;

procedure TEntradaNFListFrm.Edit4KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TEntradaNFListFrm.DBGrid3DrawColumnCell(Sender: TObject;
 const Rect: TRect; DataCol: integer; Column: TColumn;
 State: TGridDrawState);
begin
 if column.Title.Caption = 'Garantia Fabricante' then
  begin
   if not varisnull(QryNumSerie['FIM_GARANTIA_FABRICANTE']) then
    begin
     if QryNumSerie['FIM_GARANTIA_FABRICANTE'] >=
       strtodatetime(datetostr(date) + ' 00:00:00') then
      begin
       Dbgrid3.Canvas.Font.color := clgreen;
       Dbgrid3.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'        - Em Garantia -');
      end;
     if QryNumSerie['FIM_GARANTIA_FABRICANTE'] <
       strtodatetime(datetostr(date) + ' 00:00:00') then
      begin
       Dbgrid3.Canvas.Font.color := clred;
       Dbgrid3.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'       - Sem Garantia -');
      end;
    end
   else
    begin
     Dbgrid3.Canvas.Font.color := clred;
     Dbgrid3.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'       - Sem Garantia -');
    end;
  end;
end;

procedure TEntradaNFListFrm.Label6MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TEntradaNFListFrm.Label6MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TEntradaNFListFrm.Label6Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.click;
end;

procedure TEntradaNFListFrm.DBGrid1TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 s := TRIM(Column.FieldName);
 with QryEntradaProd do
  begin
   Close;
   SQL.Delete(SQL.IndexOf(OrderbyStr));
   if OrderbyStr <> 'ORDER BY ' + s then
    begin
     SQL.Add('ORDER BY ' + s);
     OrderbyStr := 'ORDER BY ' + s;
    end
   else
    begin
     SQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 Screen.Cursor := crDefault;
end;

procedure TEntradaNFListFrm.DBGrid2TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 s := TRIM(Column.FieldName);
 with QryProduto do
  begin
   Close;
   SQL.Delete(SQL.IndexOf(OrderbyStr_2));
   if OrderbyStr_2 <> 'ORDER BY ' + s then
    begin
     SQL.Add('ORDER BY ' + s);
     OrderbyStr_2 := 'ORDER BY ' + s;
    end
   else
    begin
     SQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr_2 := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 Screen.Cursor := crDefault;
end;

procedure TEntradaNFListFrm.DBGrid3TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 s := TRIM(Column.FieldName);
 with QryNumSerie do
  begin
   Close;
   SQL.Delete(SQL.IndexOf(OrderbyStr_3));
   if OrderbyStr_3 <> 'ORDER BY ' + s then
    begin
     SQL.Add('ORDER BY ' + s);
     OrderbyStr_3 := 'ORDER BY ' + s;
    end
   else
    begin
     SQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr_3 := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 Screen.Cursor := crDefault;
end;

procedure TEntradaNFListFrm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if not VarIsNull(QryEntradaProd['COD_NF_ENTRADA']) then
  begin
   if column.Title.Caption = 'Nº da Nota' then
    begin
     if QryEntradaProd['SITUACAO_NF'] = 'S' then
      begin
       DBGrid1.Canvas.Font.color := clred;
       DBGrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3, (VarToStr(QryEntradaProd['NUM_NF']) + ' - Cancelada'));
      end;
    end;
  end;  
end;

procedure TEntradaNFListFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 perform(wm_nextdlgctl,1,0);
end;

procedure TEntradaNFListFrm.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TEntradaNFListFrm.Del;
begin
 if  Application.MessageBox('Deseja excluir esta Nota de Entrada?', 'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes then
  begin
   with QryUpdate do
    begin
     Close;
     UnPrepare;
     Prepare;
     Open;
    end;

   QryUpdate.First;

   while not QryUpdate.Eof do
    begin
     with SQLUpdate do
      begin
       Close;
       SQL.Clear;
       SQL.Add('update PRODUTOS set EST_ATUAL = EST_ATUAL - :QUANTIDADE');
       SQL.Add('where Cod_Produtos = :Cod_Produtos');
       Params.ByName('QUANTIDADE').AsFloat := QryUpdate.FieldByName('QUANTIDADE').AsFloat;
       Params.ByName('Cod_Produtos').AsInteger := QryUpdate.FieldByName('COD_PRODUTOS').AsInteger;
       Prepare;
       ExecQuery;
       Transaction.CommitRetaining;
       QryUpdate.Next;
      end;
    end;

   with SQLUpdate do
    begin
     Close;
     SQL.Clear;
     SQL.Add('delete from NF_ENTRADA where COD_NF_ENTRADA = :COD_NF_ENTRADA');
     Params.ByName('COD_NF_ENTRADA').AsInteger := QryEntradaProd.FieldByName('COD_NF_ENTRADA').AsInteger;
     Prepare;
     ExecQuery;
     Transaction.CommitRetaining;
    end;
  end;

 with QryEntradaProd do
  begin
   Close;
   UnPrepare;
   Prepare;
   Open;
  end;
end;

procedure TEntradaNFListFrm.Habilita_Nota;
begin
 with QryUpdate do
  begin
   Close;
   UnPrepare;
   Prepare;
   Open;
  end;

 QryUpdate.First;

 while not QryUpdate.Eof do
  begin
   with SQLUpdate do
    begin
     Close;
     SQL.Clear;
     SQL.Add('update PRODUTOS set EST_ATUAL = EST_ATUAL + :QUANTIDADE');
     SQL.Add('where Cod_Produtos = :Cod_Produtos');
     Params.ByName('QUANTIDADE').AsFloat := QryUpdate.FieldByName('QUANTIDADE').AsFloat;
     Params.ByName('Cod_Produtos').AsInteger := QryUpdate.FieldByName('COD_PRODUTOS').AsInteger;
     Prepare;
     ExecQuery;
     Transaction.CommitRetaining;
     QryUpdate.Next;
    end;
  end;

{ Situação_NF >> N = Normal
                 S = Cancelada}
 with SQLUpdate do
  begin
   Close;
   SQL.Clear;
   SQL.Add('UPDATE NF_ENTRADA SET SITUACAO_NF = ''N'' WHERE COD_NF_ENTRADA = ' + QryEntradaProd.FieldByName('COD_NF_ENTRADA').AsString);
   Prepare;
   ExecQuery;
   Transaction.CommitRetaining;
  end;
end;

procedure TEntradaNFListFrm.Cancela_Nota;
begin
 with QryUpdate do
  begin
   Close;
   UnPrepare;
   Prepare;
   Open;
  end;

 QryUpdate.First;

 while not QryUpdate.Eof do
  begin
   with SQLUpdate do
    begin
     Close;
     SQL.Clear;
     SQL.Add('update PRODUTOS set EST_ATUAL = EST_ATUAL - :QUANTIDADE');
     SQL.Add('where Cod_Produtos = :Cod_Produtos');
     Params.ByName('QUANTIDADE').AsFloat := QryUpdate.FieldByName('QUANTIDADE').AsFloat;
     Params.ByName('Cod_Produtos').AsInteger := QryUpdate.FieldByName('COD_PRODUTOS').AsInteger;
     Prepare;
     ExecQuery;
     Transaction.CommitRetaining;
     QryUpdate.Next;
    end;
  end;

{ Situação_NF >> N = Normal
                 S = Cancelada}
 with SQLUpdate do
  begin
   Close;
   SQL.Clear;
   SQL.Add('UPDATE NF_ENTRADA SET SITUACAO_NF = ''S'' WHERE COD_NF_ENTRADA = ' + QryEntradaProd.FieldByName('COD_NF_ENTRADA').AsString);
   Prepare;
   ExecQuery;
   Transaction.CommitRetaining;
  end;
end;

procedure TEntradaNFListFrm.EditCancel;
begin
 if QryEntradaProd['SITUACAO_NF'] = 'S' then
  begin
   if Application.MessageBox('Deseja habilitar esta Nota Fiscal?',
                             'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes  then
    begin
     Habilita_Nota;
    end;
  end
 else if QryEntradaProd['SITUACAO_NF'] = 'N' then
  begin
   if Application.MessageBox('Deseja cancelar esta Nota Fiscal?',
                             'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes  then
    begin
     Cancela_Nota;
    end;
  end;

 with QryEntradaProd do
  begin
   Close;
   UnPrepare;
   Prepare;
   Open;
  end;
end;

end.
