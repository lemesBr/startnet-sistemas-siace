�
 TFMEDICOS 0�  TPF0	TfMedicosfMedicosLeftNTopOBorderIconsbiSystemMenu BorderStylebsSingleCaption   MédicosClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.Style 	FormStyle
fsMDIChild
KeyPreview	OldCreateOrder	Position	poDefaultVisible	OnClose	FormCloseOnCreate
FormCreate
OnKeyPressFormKeyPressPixelsPerInch`
TextHeight TTabbedNotebookTabbedNotebook1Left Top WidthHeight�AlignalClient
TabsPerRow
TabFont.CharsetDEFAULT_CHARSETTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Style ParentShowHintShowHintTabOrder TabStop TTabPage LeftTopCaption   Médicos TBitBtnbSairLeftiTop�Width� HeightHintSai do cadastroCaption&SairParentShowHintShowHint	TabOrderOnClickPROSAIRClick
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33����33w?33333���33s�3333���337?3333��3333333��3333333��3333333��3333333��3333333��333�333���333w3333��3333333��33?3333���333333���33w��33     33wwwwws3	NumGlyphs  TPanelPanel1LeftTopWidth�HeightCaption   CADASTRO DE MÉDICOSColorclMoneyGreenFont.CharsetANSI_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrder  TDBNavigator
bNavegadorLeftTop�Width� Height
DataSourcedsdseMedicosVisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbDeletenbEditnbPost Hints.StringsPrimeiroAnteriroProximoUltimoIncluir novosDelete o PosicionadoAlterar o PosicionadoSalvar   Cancelar Inclusão/Alteração ParentShowHintShowHint	TabOrder  	TwwDBGrid	wwDBGrid1LeftTop"Width�HeightgControlType.Strings#CONSELHO;CustomEdit;wwDBComboBox3;F Selected.Strings
CRM	10	CRMMEDICO	39	MEDICOCONSELHO	36	CONSELHOUF	3	UF IniAttributes.FileNameDELPHI32.ini.iniIniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	
DataSourcedsdseMedicos
KeyOptionsdgEnterToTabdgAllowDeletedgAllowInsert TabOrder TitleAlignmenttaLeftJustifyTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameSystemTitleFont.Style 
TitleLinesTitleButtonsOnEnterwwDBGrid1EnterOnExitwwDBGrid1Exit
OnKeyPresswwDBGrid1KeyPress PaintOptions.AlternatingRowColorclMoneyGreenPaintOptions.ActiveRecordColorclNavy  TwwDBComboBoxwwDBComboBox3LeftTopjWidth� Height
ShowButton	Style
csDropDownMapList	AllowClearKeyAutoDropDown	ShowMatchText		DataFieldCONSELHO
DataSourcedsdseMedicosDropDownCountFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style HistoryList.FileNameDELPHI32.ini.ini
ItemHeight Items.Strings!Conselho Regional de Medicina	CRM/   Conselho Regional de Medicina Veterinária	CRMV$Conselho Regional de Odontologia	CRO 
ParentFontSortedTabOrderUnboundDataType	wwDefault  TBitBtnBitBtn1Left� Top�Width� HeightCaption
   RelatórioTabOrderTabStopOnClickBitBtn1Click    TDataSourcedsdseMedicosAutoEditDataSet
dseMedicosLeftFTop  TwwSearchDialogwwSearchDialog1Selected.Strings"NOME_COMERCIAL	50	NOME_COMERCIAL	FNRO_REGISTRO	20	NRO_REGISTRO	F CODIGO_BARRAS	13	CODIGO_BARRAS	FLABORATORIO	50	LABORATORIO	FAPRESENTACAO	50	APRESENTACAO	F*FORMA_FARMACEUTICA	20	FORMA_FARMACEUTICA	FNRO_LOTE	20	NRO_LOTE	FQUANTIDADE	10	QUANTIDADE	FCADASTRO	10	CADASTRO	F GridTitleAlignmenttaLeftJustify	GridColorclWhiteGridOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgPerfectRowFit ShadowSearchTable
dseMedicosCaptionSearchMaxWidth 	MaxHeight� CharCaseecNormalLeftfTop  TMDOTransaction	TransacaoActive
AutoCommitDefaultDatabasefMenu.ConexaoParams.Stringsread_committedrec_version  LeftTop  TMDODataSet
dseMedicosAfterDeletedseMedicosAfterPostAfterInsertdseMedicosAfterInsert	AfterPostdseMedicosAfterPost
BeforePostdseMedicosBeforePostDatabasefMenu.ConexaoTransaction	TransacaoBufferChunks�CachedUpdatesDeleteSQL.StringsDELETE FROM MEDICOWHERE  CRM = :OLD_CRM InsertSQL.StringsINSERT INTO MEDICO  (CRM, MEDICO, CONSELHO, UF)VALUES!  (:CRM, :MEDICO, :CONSELHO, :UF) LoadDefaultsModifySQL.StringsUPDATE MEDICOSET  CRM = :CRM,  MEDICO = :MEDICO,  CONSELHO = :CONSELHO,
  UF = :UFWHERE  CRM = :OLD_CRM RefreshSQL.StringsSELECT   CRM,	  MEDICO,  CONSELHO,  UFFROM MEDICO WHERE  CRM = :CRM SelectSQL.Stringsselect *  from MEDICOorder by MEDICO Left(Top TMDOStringFielddseMedicosCRMDisplayWidth
	FieldNameCRMOrigin"MEDICO"."CRM"Required	Size
  TMDOStringFielddseMedicosMEDICODisplayWidth'	FieldNameMEDICOOrigin"MEDICO"."MEDICO"Size2  TMDOStringFielddseMedicosCONSELHODisplayWidth$	FieldNameCONSELHOOrigin"MEDICO"."CONSELHO"Size  TMDOStringFielddseMedicosUFDisplayWidth	FieldNameUFOrigin"MEDICO"."UF"Size    