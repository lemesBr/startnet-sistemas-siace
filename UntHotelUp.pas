// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://fnrhws.hospedagem.turismo.gov.br/FnrhWs/FnrhWs?wsdl
// (4/7/2016 08:20:30 - 1.33.2.5)
// ************************************************************************ //

unit UntHotelUp;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"

  fnrhRequest          = class;                 { "http://webservice.ws.snrhos.id2.inf.br/" }



  // ************************************************************************ //
  // Namespace : http://webservice.ws.snrhos.id2.inf.br/
  // ************************************************************************ //
  fnrhRequest = class(TRemotable)
  private
    Fbgstdsccidade: WideString;
    Fbgstdsccidade2: WideString;
    Fbgstdsccidadedest: WideString;
    Fbgstdsccidadedest2: WideString;
    Fbgstdscestado: WideString;
    Fbgstdscestadodest: WideString;
    Fbgstdscpais: WideString;
    Fbgstdscpaisdest: WideString;
    FchaveAcesso: WideString;
    FnoLocalidade: WideString;
    FsgUf: WideString;
    Fsncelularddd: WideString;
    Fsncelularddi: WideString;
    Fsncelularnum: WideString;
    Fsncidaderes: WideString;
    Fsndtnascimento: TXSDateTime;
    Fsnemail: WideString;
    Fsnestadores: WideString;
    Fsnexcluirficha: WideString;
    Fsnidcidadeibge: WideString;
    Fsnidcidadeibgedest: WideString;
    Fsnidcidadeibgeres: WideString;
    Fsnmotreserva: WideString;
    Fsnmotvia: WideString;
    Fsnnacionalidade: WideString;
    Fsnnomecompleto: WideString;
    Fsnnumcpf: WideString;
    Fsnnumdoc: WideString;
    Fsnnumhosp: WideString;
    Fsnobs: WideString;
    Fsnocupacao: WideString;
    Fsnorgexp: WideString;
    Fsnpaisres: WideString;
    Fsnprevent: TXSDateTime;
    Fsnprevsai: TXSDateTime;
    Fsnresidencia: WideString;
    Fsnsexo: WideString;
    Fsntelefoneddd: WideString;
    Fsntelefoneddi: WideString;
    Fsntelefonenum: WideString;
    Fsntipdoc: WideString;
    Fsntiptran: WideString;
    Fsnuhnum: WideString;
  public
    destructor Destroy; override;
  published
    property bgstdsccidade: WideString read Fbgstdsccidade write Fbgstdsccidade;
    property bgstdsccidade2: WideString read Fbgstdsccidade2 write Fbgstdsccidade2;
    property bgstdsccidadedest: WideString read Fbgstdsccidadedest write Fbgstdsccidadedest;
    property bgstdsccidadedest2: WideString read Fbgstdsccidadedest2 write Fbgstdsccidadedest2;
    property bgstdscestado: WideString read Fbgstdscestado write Fbgstdscestado;
    property bgstdscestadodest: WideString read Fbgstdscestadodest write Fbgstdscestadodest;
    property bgstdscpais: WideString read Fbgstdscpais write Fbgstdscpais;
    property bgstdscpaisdest: WideString read Fbgstdscpaisdest write Fbgstdscpaisdest;
    property chaveAcesso: WideString read FchaveAcesso write FchaveAcesso;
    property noLocalidade: WideString read FnoLocalidade write FnoLocalidade;
    property sgUf: WideString read FsgUf write FsgUf;
    property sncelularddd: WideString read Fsncelularddd write Fsncelularddd;
    property sncelularddi: WideString read Fsncelularddi write Fsncelularddi;
    property sncelularnum: WideString read Fsncelularnum write Fsncelularnum;
    property sncidaderes: WideString read Fsncidaderes write Fsncidaderes;
    property sndtnascimento: TXSDateTime read Fsndtnascimento write Fsndtnascimento;
    property snemail: WideString read Fsnemail write Fsnemail;
    property snestadores: WideString read Fsnestadores write Fsnestadores;
    property snexcluirficha: WideString read Fsnexcluirficha write Fsnexcluirficha;
    property snidcidadeibge: WideString read Fsnidcidadeibge write Fsnidcidadeibge;
    property snidcidadeibgedest: WideString read Fsnidcidadeibgedest write Fsnidcidadeibgedest;
    property snidcidadeibgeres: WideString read Fsnidcidadeibgeres write Fsnidcidadeibgeres;
    property snmotreserva: WideString read Fsnmotreserva write Fsnmotreserva;
    property snmotvia: WideString read Fsnmotvia write Fsnmotvia;
    property snnacionalidade: WideString read Fsnnacionalidade write Fsnnacionalidade;
    property snnomecompleto: WideString read Fsnnomecompleto write Fsnnomecompleto;
    property snnumcpf: WideString read Fsnnumcpf write Fsnnumcpf;
    property snnumdoc: WideString read Fsnnumdoc write Fsnnumdoc;
    property snnumhosp: WideString read Fsnnumhosp write Fsnnumhosp;
    property snobs: WideString read Fsnobs write Fsnobs;
    property snocupacao: WideString read Fsnocupacao write Fsnocupacao;
    property snorgexp: WideString read Fsnorgexp write Fsnorgexp;
    property snpaisres: WideString read Fsnpaisres write Fsnpaisres;
    property snprevent: TXSDateTime read Fsnprevent write Fsnprevent;
    property snprevsai: TXSDateTime read Fsnprevsai write Fsnprevsai;
    property snresidencia: WideString read Fsnresidencia write Fsnresidencia;
    property snsexo: WideString read Fsnsexo write Fsnsexo;
    property sntelefoneddd: WideString read Fsntelefoneddd write Fsntelefoneddd;
    property sntelefoneddi: WideString read Fsntelefoneddi write Fsntelefoneddi;
    property sntelefonenum: WideString read Fsntelefonenum write Fsntelefonenum;
    property sntipdoc: WideString read Fsntipdoc write Fsntipdoc;
    property sntiptran: WideString read Fsntiptran write Fsntiptran;
    property snuhnum: WideString read Fsnuhnum write Fsnuhnum;
  end;


  // ************************************************************************ //
  // Namespace : http://webservice.ws.snrhos.id2.inf.br/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : FnrhWsBinding
  // service   : FnrhWs
  // port      : FnrhWsPort
  // URL       : http://sturespjboss01:8080/FnrhWs/FnrhWs
  // ************************************************************************ //
  FnrhWs = interface(IInvokable)
  ['{0A72A96C-1916-734D-D495-9E3B1EB5C2A3}']
    function  fnrhAtualizar(const chaveAcesso: WideString; const snNum: WideString; const fnrh: fnrhRequest): WideString; stdcall;
    function  fnrhCheckin(const chaveAcesso: WideString; const snNum: WideString; const dataCheckin: TXSDateTime): WideString; stdcall;
    function  fnrhCheckout(const chaveAcesso: WideString; const snNum: WideString; const dataCheckout: TXSDateTime): WideString; stdcall;
    function  fnrhInserir(const chaveAcesso: WideString; const fnrh: fnrhRequest): WideString; stdcall;
  end;

function GetFnrhWs(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): FnrhWs;


implementation

function GetFnrhWs(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): FnrhWs;
const
  defWSDL = 'http://fnrhws.hospedagem.turismo.gov.br/FnrhWs/FnrhWs?wsdl';
  defURL  = 'http://fnrhws.hospedagem.turismo.gov.br/FnrhWs/FnrhWs?wsdl';
  defSvc  = 'FnrhWs';
  defPrt  = 'FnrhWsPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as FnrhWs);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor fnrhRequest.Destroy;
begin
  if Assigned(Fsndtnascimento) then
    Fsndtnascimento.Free;
  if Assigned(Fsnprevent) then
    Fsnprevent.Free;
  if Assigned(Fsnprevsai) then
    Fsnprevsai.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(FnrhWs), 'http://webservice.ws.snrhos.id2.inf.br/', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(FnrhWs), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(FnrhWs), ioDocument);
  RemClassRegistry.RegisterXSClass(fnrhRequest, 'http://webservice.ws.snrhos.id2.inf.br/', 'fnrhRequest');

end.