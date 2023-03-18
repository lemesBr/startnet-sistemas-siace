unit UnitListSaidaN;
                 
interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Placemnt, DB, IBCustomDataSet, IBQuery, Buttons, ExtCtrls,
 Grids, DBGrids, StdCtrls, Mask, ToolEdit, IBSQL;

type
 TSaidaNFListFrm = class(TForm)
   GroupBox2: TGroupBox;
   Label6: TLabel;
   Label4: TLabel;
   Label1: TLabel;
   Label2: TLabel;
   Label3: TLabel;
   Edit1: TEdit;
   GroupBox4: TGroupBox;
   Label5: TLabel;
   Label7: TLabel;
   DateEdit1: TDateEdit;
   DateEdit2: TDateEdit;
   RadioButton1: TRadioButton;
   RadioButton2: TRadioButton;
   BitBtn1: TBitBtn;
   Edit2: TEdit;
   Edit3: TEdit;
   Edit4: TEdit;
   Edit5: TEdit;
   Panel7: TPanel;
   Splitter2: TSplitter;
   Splitter1: TSplitter;
   Panel9: TPanel;
   Panel11: TPanel;
   DBGrid2: TDBGrid;
   Panel6: TPanel;
   SpeedButton4: TSpeedButton;
   SpeedButton2: TSpeedButton;
   SpeedButton1: TSpeedButton;
   SpeedButton3: TSpeedButton;
   Panel3: TPanel;
   DBGrid1: TDBGrid;
   Panel4: TPanel;
   QryPedidos: TIBQuery;
   DtsQryPedidos: TDataSource;
   DtsQryPeditens: TDataSource;
   QryPeditens: TIBQuery;
   QryCadastro: TIBQuery;
   QryPeditensCOD_PEDIDOS: TIntegerField;
   QryPeditensREF_PRODUTOS: TIBStringField;
   QryPeditensNUM_SERIE: TIBStringField;
   QryPeditensPRODUTO: TIBStringField;
   QryPeditensQUANTIDADE: TIBBCDField;
   QryPeditensFIM_GARANTIA_APOS_VENDA: TDateTimeField;
   QryPeditensFIM_GARANTIA_FABRICANTE: TDateTimeField;
   QryPeditensSUBTOTAL: TIBBCDField;
   SQLUpdate: TIBSQL;
   QryUpdate: TIBQuery;
   QryPeditensPRC_VENDA: TIBBCDField;
    QryContagem: TIBQuery;
    QryPedidosCOD_PEDIDOS: TIntegerField;
    QryPedidosFORMA_PGT: TIBStringField;
    QryPedidosVALOR_TOTALPRODUTO: TIBBCDField;
    QryPedidosVALOR_TOTALNF: TIBBCDField;
    QryPedidosNUM_NF: TIBStringField;
    QryPedidosNUM_FORM: TIBStringField;
    QryPedidosCOD_CLI_DESTINATARIO: TIntegerField;
    QryPedidosNOME_DESTINATARIO: TIBStringField;
    QryContagemNOTAS: TIntegerField;
    QryContagemTOTAL: TIBBCDField;
    QryPedidosDATAHORA_EMISSAO: TDateTimeField;
    QryPedidosDATAHORA_SAIDAENTRADA: TDateTimeField;
    QryPedidosDATAHORA_SAIDA: TDateTimeField;
    Label8: TLabel;
    Edit6: TEdit;
    QryPedidosCNPJ_DESTINATARIO: TIBStringField;
    QryPedidosIE_DESTINATARIO: TIBStringField;
    CheckBox1: TCheckBox;
    QryPedidosSITUACAO_NF: TIBStringField;
    QryPedidosMODELO_NF: TIBStringField;
   procedure Gerar;
   procedure EditCancel;
   procedure Del;
   procedure Cancela_Nota;
   procedure Habilita_Nota;
   procedure Limpar(Sender: TObject);
   procedure Imprimir(Sender: TObject);
   procedure FiltroChanged(Sender: TObject);

   procedure ResizeGrid(Sender: TObject);
   procedure BitBtn1Click(Sender: TObject);
   procedure Seleciona_Cliente(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit1KeyPress(Sender: TObject; var Key: char);
   procedure Edit3KeyPress(Sender: TObject; var Key: char);
   procedure Edit4KeyPress(Sender: TObject; var Key: char);
   procedure DateEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DateEdit1Exit(Sender: TObject);
   procedure Edit1Change(Sender: TObject);
   procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
     DataCol: integer; Column: TColumn; State: TGridDrawState);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
     DataCol: integer; Column: TColumn; State: TGridDrawState);
    procedure Label6MouseEnter(Sender: TObject);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SaidaNFListFrm: TSaidaNFListFrm;
 OrderbyStr, OrderbyStr_2: String;
 Cod_Cliente: integer;
 Nota_Cancelada: boolean = False;

implementation

uses UnitSelect, UnitDataM1, UnitRepSaidaN, UnitFrmPrincipal, UnitNotaFiscalConfig, UnitSaidaN;

{$R *.dfm}

procedure TSaidaNFListFrm.Gerar;
begin
 with QryPedidos do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('Select COD_PEDIDOS, MODELO_NF, FORMA_PGT, VALOR_TOTALPRODUTO, DATAHORA_SAIDA, VALOR_TOTALNF,');
   SQL.Add('SITUACAO_NF, DATAHORA_EMISSAO, CNPJ_DESTINATARIO, IE_DESTINATARIO, DATAHORA_SAIDAENTRADA, NUM_NF, NUM_FORM,');
   SQL.Add('COD_CLI_DESTINATARIO, NOME_DESTINATARIO from PEDIDOS');
   SQL.Add('where COD_PEDIDOS > 0 ');
   //---------------pela referencia----------------------------
   if edit5.Text <> '' then
    begin
     sql.add('and (PEDIDOS.COD_PEDIDOS in (select COD_PEDIDOS from PEDIDOS_ITENS where REF_PRODUTOS = :REFPROD))');
     params.parambyname('REFPROD').AsString := edit5.Text;
    end;
   //---------------Listar Cupons Fiscais-----------------------
   if not CheckBox1.Checked then
    begin
     sql.add('and (MODELO_NF <> ''2D'')');
    end;
   //---------------pelo nº de serie----------------------------
   if edit4.Text <> '' then
    begin
     sql.add('and (PEDIDOS.COD_PEDIDOS in (select COD_PEDIDOS from PEDIDOS_ITENS WHERE NUM_SERIE = :SERIE))');
     params.parambyname('SERIE').AsString := edit4.Text;
    end;
   //---------------por Cliente----------------------------
   if edit1.Text <> '' then
    begin
     sql.add('and COD_CLI_DESTINATARIO = :Cliente');
     params.parambyname('Cliente').AsInteger := Cod_Cliente;
    end;
   //---------------por CNPJ----------------------------
   if edit6.Text <> '' then
    begin
     sql.add('and CNPJ_DESTINATARIO = :CNPJ');
     params.parambyname('CNPJ').AsString := Edit6.Text;
    end;
   //---------------pelo nº de controle do formulario----------------------------
   if edit2.Text <> '' then
    begin
     sql.add('and NUM_FORM = :Controle');
     params.parambyname('Controle').AsString := edit2.Text;
    end;
   //---------------pelo nº da nota----------------------------
   if edit3.Text <> '' then
    begin
     sql.add('and NUM_NF LIKE :nota');
     params.parambyname('nota').AsString := edit3.Text;
    end;
  //---------------por data emissao/entrada----------------------------
   if ((length(trim(dateedit1.Text)) >= 8) or (length(trim(dateedit2.Text)) >= 8)) then
    begin
     if RadioButton1.Checked then
     begin
      if (length(trim(dateedit1.Text)) >= 8)  then
       sql.add(' and (DATAHORA >= :data1)');
      if (length(trim(dateedit2.Text)) >= 8)  then
       sql.add('and (DATAHORA <= :data2)');
     end;
     if RadioButton2.Checked then
     begin
      if (length(trim(dateedit1.Text)) >= 8)  then
       sql.add(' and (DATAHORA_SAIDA >= :data1)');
      if (length(trim(dateedit2.Text)) >= 8) then
       sql.add(' and (DATAHORA_SAIDA <= :data2)');
     end;
     if (length(trim(dateedit1.Text)) >= 8)  then
      Params.ParamByName('data1').AsDateTime :=
       strtodatetime(dateedit1.Text + ' 00:00:00');
     if (length(trim(dateedit2.Text)) >= 8) then
      Params.ParamByName('data2').AsDateTime :=
       strtodatetime(dateedit2.Text + ' 23:59:59');
    end;
   SQL.Add('order by NUM_NF desc');
   OrderByStr := 'order by NUM_NF desc';
   Prepare;
   Open;
  end;

 with QryPeditens do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('select COD_PEDIDOS, REF_PRODUTOS, NUM_SERIE, PRODUTO, QUANTIDADE,');
   SQL.Add('FIM_GARANTIA_APOS_VENDA, FIM_GARANTIA_FABRICANTE, SUBTOTAL, PRC_VENDA');
   SQL.Add('from PEDIDOS_ITENS where COD_PEDIDOS = :COD_PEDIDOS');
   SQL.Add('Order By produto');
   OrderbyStr_2 := 'Order By produto';
   Prepare;
   Open;
  end;

 with QryContagem do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL := QryPedidos.SQL;
   Params := QryPedidos.Params;
   SQL.Delete(0);
   SQL.Delete(0);
   SQL.Delete(0);
   SQL.Insert(0, 'Select count(COD_PEDIDOS) NOTAS, sum(VALOR_TOTALNF) TOTAL from PEDIDOS');
   Prepare;
   Open;
  end;


 if QryPedidos.RecordCount > 0 then
  begin
   Splitter1.Visible := True;
   panel9.Visible := True;
   panel3.Visible := True;
   if DbGrid1.CanFocus then
    DBGrid1.SetFocus;
   panel6.Caption := '  ' + QryContagem.FieldByName('NOTAS').AsString + ' Registro(s) Listado(s)';
  end
 else
  begin
   panel9.Visible := False;
   panel3.Visible := False;
   panel6.Caption := '  Nenhuma Saída de Nota Fiscal';
  end;

 DM1.DefSenderDtsStateChange(SaidaNFListFrm.QryPedidos);
 if QryPedidos.Active then
   QryPedidos.Tag := 1;
end;

procedure TSaidaNFListFrm.ResizeGrid(Sender: TObject);
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



procedure TSaidaNFListFrm.BitBtn1Click(Sender: TObject);
begin
 Selectfrm.Caption := 'Selecione o Cliente';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Cliente;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT * FROM CADASTRO WHERE CODCLI > 0');
   IBQuery1.sql.Add('ORDER BY NOME');
   IBQuery1.Open;
  end;

 SelectFrm.ShowModal;
end;

procedure TSaidaNFListFrm.Seleciona_Cliente(Sender: TObject);
begin
 if not VarIsNull(SelectFrm.IBQuery1['NOME']) then
  begin
    edit1.Text := SelectFrm.IBQuery1['NOME'];
   if not VarIsNull(SelectFrm.IBQuery1['CODCLI']) then
    Cod_Cliente := SelectFrm.IBQuery1['CODCLI'];
   if not VarIsNull(SelectFrm.IBQuery1['CGCCPF']) then
    Edit6.Text := SelectFrm.IBQuery1['CGCCPF'];
  end;
 selectFrm.Close;
end;

procedure TSaidaNFListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([SaidaNFListFrm.QryCadastro]);
 DM1.DefSenderDtsStateChange(SaidaNFListFrm.QryPedidos);
end;

procedure TSaidaNFListFrm.Limpar(Sender: TObject);
begin
 QryPedidos.Close;
 QryPedidos.UnPrepare;
 QryPeditens.Close;
 QryPeditens.UnPrepare;
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
 panel3.Visible := False;
 panel6.Caption := '  Listagem de Saída de Notas Fiscais';
 SpeedButton3.Click;
 DM1.DefSenderDtsStateChange(SaidaNFListFrm.QryPedidos);
end;

procedure TSaidaNFListFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := caFree;
 DM1.CloseIBArray([SaidaNFListFrm.QryCadastro, SaidaNFListFrm.QryPedidos,
   SaidaNFListFrm.QryPeditens]);
 DM1.DefSenderDtsStateChange(SaidaNFListFrm.QryPedidos);
 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);
end;

procedure TSaidaNFListFrm.Edit1Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
end;

procedure TSaidaNFListFrm.Edit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TSaidaNFListFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_delete then
  begin
   tedit(Sender).Text := '';
  end;
end;

procedure TSaidaNFListFrm.Edit1KeyPress(Sender: TObject; var Key: char);
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

procedure TSaidaNFListFrm.Edit3KeyPress(Sender: TObject; var Key: char);
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

procedure TSaidaNFListFrm.Edit4KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   if RadioButton1.CanFocus then
    RadioButton1.SetFocus;
  end;
end;

procedure TSaidaNFListFrm.DateEdit2KeyPress(Sender: TObject;
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
   Gerar;
  end;
end;

procedure TSaidaNFListFrm.DateEdit1Exit(Sender: TObject);
begin
 try
   TDateEdit(Sender).CheckValidDate;
   TDateEdit(Sender).Color := clwindow;
 except
   TDateEdit(Sender).SetFocus;
   ShowMessage('Digite uma Data válida');
  end;
end;

procedure TSaidaNFListFrm.Edit1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TSaidaNFListFrm.FiltroChanged(Sender: TObject);
begin
 if QryPedidos.Active then
  begin
   screen.cursor := crhourglass;
   panel6.Caption := '  Listagem de Saída de Notas Fiscais';
   Dm1.CloseIBArray([QryPedidos]);
   DM1.DefSenderDtsStateChange(QryPedidos);
   panel3.Visible := False;
   Splitter1.Visible := False;
   Panel9.Visible := False;
   Splitter2.Visible := False;
   screen.cursor := crdefault;
  end;
end;

procedure TSaidaNFListFrm.DBGrid2DrawColumnCell(Sender: TObject;
 const Rect: TRect; DataCol: integer; Column: TColumn;
 State: TGridDrawState);
begin
 if column.Title.Caption = 'Garantia do Fabricante' then
  begin
   if not varisnull(QryPeditens['FIM_GARANTIA_FABRICANTE']) then
    begin
     if QryPeditens['FIM_GARANTIA_FABRICANTE'] >=
       strtodatetime(datetostr(date) + ' 00:00:00') then
      begin
       Dbgrid2.Canvas.Font.color := clgreen;
       Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top +
         3, DateTimeToStr(QryPeditens['FIM_GARANTIA_FABRICANTE']));
      end;
     if QryPeditens['FIM_GARANTIA_FABRICANTE'] <
       strtodatetime(datetostr(date) + ' 00:00:00') then
      begin
       Dbgrid2.Canvas.Font.color := clred;
       Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top +
         3,DateTimeToStr(QryPeditens['FIM_GARANTIA_FABRICANTE']));
      end;
    end
   else
    begin
     Dbgrid2.Canvas.Font.color := clred;
     Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'       - Sem Garantia -');
    end;
  end;
 if Column.Title.Caption = 'Garantia de Venda' then
  begin
   if not varisnull(QryPeditens['FIM_GARANTIA_APOS_VENDA']) then
    begin
     if QryPeditens['FIM_GARANTIA_APOS_VENDA'] >=
       strtodatetime(datetostr(date) + ' 00:00:00') then
      begin
       Dbgrid2.Canvas.Font.color := clgreen;
       Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top +
         3, DateTimeToStr(QryPeditens['FIM_GARANTIA_APOS_VENDA']));
      end;
     if QryPeditens['FIM_GARANTIA_APOS_VENDA'] <
       strtodatetime(datetostr(date) + ' 00:00:00') then
      begin
       Dbgrid2.Canvas.Font.color := clred;
       Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top +
         3,DateTimeToStr(QryPeditens['FIM_GARANTIA_APOS_VENDA']));
      end;
    end
   else
    begin
     Dbgrid2.Canvas.Font.color := clred;
     Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'       - Sem Garantia -');
    end;
  end;
end;

procedure TSaidaNFListFrm.Imprimir(Sender: TObject);
begin
 Application.CreateForm(TSaidaNFRepFrm, SaidaNFRepFrm);

 if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
  begin
   if RadioButton1.Checked then
    begin
     SaidaNFRepFrm.QRLabel27.Enabled := True;
     SaidaNFRepFrm.QRLabel27.Caption := 'Data de Emissão:';
    end
   else if RadioButton2.Checked then
    begin
     SaidaNFRepFrm.QRLabel27.Enabled := True;
     SaidaNFRepFrm.QRLabel27.Caption := 'Data de Entrada:';
    end;
   SaidaNFRepFrm.QRLabel110.Enabled := True;
   SaidaNFRepFrm.QRLabel110.Caption := DateToStr(DateEdit1.Date);  // Data de Início
   SaidaNFRepFrm.QRLabel101.Enabled := True;
   SaidaNFRepFrm.QRLabel101.Caption := DatetoStr(DateEdit2.Date);  // Data Final
   SaidaNFRepFrm.QRLabel100.Enabled := True;
  end
 else
  begin
   SaidaNFRepFrm.QRLabel27.Enabled := False;
   SaidaNFRepFrm.QRLabel100.Enabled := False;
   SaidaNFRepFrm.QRLabel110.Enabled := False;
   SaidaNFRepFrm.QRLabel101.Enabled := False;
  end;

 SaidaNFRepFrm.QRMemo1.Lines.Clear;
 if Edit1.Text <> '' then
   SaidaNFRepFrm.QRMemo1.Lines.add('Cliente: ' + Edit1.Text);
 if Edit6.Text <> '' then
   SaidaNFRepFrm.QRMemo1.Lines.add('CNPJ: ' + Edit6.Text);
 if Edit3.Text <> '' then
   SaidaNFRepFrm.QRMemo1.Lines.add('Nº Nota: ' + Edit3.Text);
 if Edit2.Text <> '' then
   SaidaNFRepFrm.QRMemo1.Lines.add('Controle Formulário: ' + Edit2.Text);
 if Edit5.Text <> '' then
   SaidaNFRepFrm.QRMemo1.Lines.add('Referência: ' + Edit5.Text);
 if Edit4.Text <> '' then
   SaidaNFRepFrm.QRMemo1.Lines.add('Nº de Série: ' + Edit4.Text);

 SaidaNFRepFrm.QuickRep1.Preview;
end;

procedure TSaidaNFListFrm.DBGrid1DblClick(Sender: TObject);
begin
 Application.CreateForm(TSaidaNFCadFrm, SaidaNFCadFrm);
 if not DM1.DstPedidos.Active then
  DM1.DstPedidos.Active := True;
 SaidaNFCadFrm.Mostrar(QryPedidos['COD_PEDIDOS']);
end;

procedure TSaidaNFListFrm.DBGrid1DrawColumnCell(Sender: TObject;
 const Rect: TRect; DataCol: integer; Column: TColumn;
 State: TGridDrawState);
begin
 if not VarIsNull(QryPedidos['COD_PEDIDOS']) then
  begin
   if column.Title.Caption = 'Nº da Nota' then
    begin
     if QryPedidos['SITUACAO_NF'] = 'S' then
      begin
       DBGrid1.Canvas.Font.color := clred;
       DBGrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3, (VarToStr(QryPedidos['NUM_NF']) + ' - Cancelada'));
      end;
    end;
  end;

 if not VarIsNull(QryPedidos['COD_CLI_DESTINATARIO']) then
  begin
   if column.Title.Caption = 'Cliente' then
    begin
     with QryCadastro do
      begin
       Close;
       UnPrepare;
       SQL.Clear;
       SQL.Add('SELECT CODCLI FROM CADASTRO WHERE CODCLI = ' + IntToStr(QryPedidos['COD_CLI_DESTINATARIO']));
       Prepare;
       Open;
      end;
     if QryPedidos['COD_CLI_DESTINATARIO'] = -1 then
      begin
       DBGrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'- Venda Avulso -');
      end
     else if QryPedidos['COD_CLI_DESTINATARIO'] <> QryCadastro['CODCLI'] then
      begin
       DBGrid1.Canvas.Font.color := clMaroon;
       DBGrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3, (VarToStr(QryPedidos['NOME_DESTINATARIO']) + ' - Cliente Excluido -'));
      end;
    end;
  end;
end;

procedure TSaidaNFListFrm.Label6MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TSaidaNFListFrm.Label6MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TSaidaNFListFrm.Label6Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.click;
end;

procedure TSaidaNFListFrm.Label3MouseEnter(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TSaidaNFListFrm.Label3MouseLeave(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TSaidaNFListFrm.Label3Click(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.ProdutosMnu.click;
end;

procedure TSaidaNFListFrm.DBGrid1TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 s := TRIM(Column.FieldName);
 with QryPedidos do
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

procedure TSaidaNFListFrm.DBGrid2TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 s := TRIM(Column.FieldName);
 with QryPedItens do
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

procedure TSaidaNFListFrm.Del;
begin
 if  Application.MessageBox('Deseja excluir esta Nota Fiscal?', 'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes then
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

   with SQLUpdate do
    begin
     Close;
     SQL.Clear;
     SQL.Add('delete from PEDIDOS where COD_PEDIDOS = :COD_PEDIDOS');
     Params.ByName('COD_PEDIDOS').AsInteger := QryPedidos.FieldByName('COD_PEDIDOS').AsInteger;
     Prepare;
     ExecQuery;
     Transaction.CommitRetaining;
    end;
  end;

 with QryPedidos do
  begin
   Close;
   UnPrepare;
   Prepare;
   Open;
  end;
end;

procedure TSaidaNFListFrm.EditCancel;
begin
 if QryPedidos['SITUACAO_NF'] = 'S' then
  begin
   if Application.MessageBox('Deseja habilitar esta Nota Fiscal?',
                             'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes  then
    begin
     Habilita_Nota;
    end;
  end
 else if QryPedidos['SITUACAO_NF'] = 'N' then
  begin
   if Application.MessageBox('Deseja cancelar esta Nota Fiscal?',
                             'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes  then
    begin
     Cancela_Nota;
    end;
  end;

 with QryPedidos do
  begin
   Close;
   UnPrepare;
   Prepare;
   Open;
  end;
end;

procedure TSaidaNFListFrm.Cancela_Nota;
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
   SQL.Add('UPDATE PEDIDOS SET SITUACAO_NF = ''S'' WHERE COD_PEDIDOS = ' + QryPedidos.FieldByName('COD_PEDIDOS').AsString);
   Prepare;
   ExecQuery;
   Transaction.CommitRetaining;
  end;                
end;

procedure TSaidaNFListFrm.Habilita_Nota;
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
   SQL.Add('UPDATE PEDIDOS SET SITUACAO_NF = ''N'' WHERE COD_PEDIDOS = ' + QryPedidos.FieldByName('COD_PEDIDOS').AsString);
   Prepare;
   ExecQuery;
   Transaction.CommitRetaining;
  end;
end;

procedure TSaidaNFListFrm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then
  if DateEdit2.CanFocus then
   DateEdit2.SetFocus;

 if key = vk_return then
  DBGrid1DblClick(Self);
end;

procedure TSaidaNFListFrm.Edit5KeyPress(Sender: TObject; var Key: Char);
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

procedure TSaidaNFListFrm.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   if Edit4.CanFocus then
    Edit4.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   if DateEdit1.CanFocus then
    DateEdit1.SetFocus;
  end;
end;

end.
