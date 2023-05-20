program facturacionemprendedor;

uses
  Vcl.Forms,
  MainU in 'main\MainU.pas' {MainF},
  App in 'classes\App.pas',
  CFDI in 'classes\CFDI.pas',
  CFDIV4 in 'classes\CFDIV4.pas',
  Client in 'classes\Client.pas',
  Comprobante in 'classes\Comprobante.pas',
  Config in 'classes\Config.pas',
  DBC in 'classes\DBC.pas',
  Item in 'classes\Item.pas',
  Nota in 'classes\Nota.pas',
  Qry in 'classes\Qry.pas',
  User in 'classes\User.pas',
  SharedU in 'shared\SharedU.pas',
  ClientsBuscaU in 'clientes\ClientsBuscaU.pas' {ClientsBuscaF},
  DMU in 'db\DMU.pas' {DMF: TDataModule},
  ItemsBuscaU in 'items\ItemsBuscaU.pas' {ItemsBuscaF},
  ClienteEditarU in 'clientes\ClienteEditarU.pas' {ClienteEditarF},
  ClienteRegistraU in 'clientes\ClienteRegistraU.pas' {ClienteRegistraF},
  EmpresaEditarU in 'empresa\EmpresaEditarU.pas' {EmpresaEditarF},
  IngresaPagoU in 'billing\IngresaPagoU.pas' {IngresaPagoF},
  EliminarPagoU in 'billing\EliminarPagoU.pas' {EliminarPagoF},
  ItemEditaU in 'items\ItemEditaU.pas' {ItemEditaF},
  ItemRegistraU in 'items\ItemRegistraU.pas' {ItemRegistraF},
  CertificadoRegistraU in 'certificados\CertificadoRegistraU.pas' {CertificadoRegistraF},
  CertificadoEditaU in 'certificados\CertificadoEditaU.pas' {CertificadoEditaF},
  ImpuestoEditaU in 'impuestos\ImpuestoEditaU.pas' {ImpuestoEditaF},
  ImpuestoRegistraU in 'impuestos\ImpuestoRegistraU.pas' {ImpuestoRegistraF},
  PacEditaU in 'pacs\PacEditaU.pas' {PacEditaF},
  PacRegistraU in 'pacs\PacRegistraU.pas' {PacRegistraF},
  Empresa in 'classes\Empresa.pas',
  PagoRegistraU in 'pagos\PagoRegistraU.pas' {PagoRegistraF},
  Pac in 'classes\Pac.pas',
  PacAdmin in 'classes\PacAdmin.pas',
  SerieRegistraU in 'series\SerieRegistraU.pas' {SerieRegistraF},
  SerieEditaU in 'series\SerieEditaU.pas' {SerieEditaF},
  TimbreRegistraU in 'timbres\TimbreRegistraU.pas' {TimbreRegistraF},
  TimbreEditaU in 'timbres\TimbreEditaU.pas' {TimbreEditaF},
  FormaPagoEditaU in 'formadepago\FormaPagoEditaU.pas' {FormaPagoEditaF},
  FormaPagoRegistraU in 'formadepago\FormaPagoRegistraU.pas' {FormaPagoRegistraF},
  MetodoPagoRegistraU in 'metododepago\MetodoPagoRegistraU.pas' {MetodoPagoRegistraF},
  MetodoPagoEditaU in 'metododepago\MetodoPagoEditaU.pas' {MetodoPagoEditaF},
  LugarExpedicionEditaU in 'lugarexpedicion\LugarExpedicionEditaU.pas' {LugarExpedicionEditaF},
  LugarExpedicionRegistraU in 'lugarexpedicion\LugarExpedicionRegistraU.pas' {LugarExpedicionRegistraF},
  MonedaRegistraU in 'moneda\MonedaRegistraU.pas' {MonedaRegistraF},
  MonedaEditaU in 'moneda\MonedaEditaU.pas' {MonedaEditaF},
  CertAdmin in 'classes\CertAdmin.pas',
  ImpuestosAdmin in 'classes\ImpuestosAdmin.pas',
  MetodoPagoAdmin in 'classes\MetodoPagoAdmin.pas',
  FormaPagoAdmin in 'classes\FormaPagoAdmin.pas',
  SeriesAdmin in 'classes\SeriesAdmin.pas',
  LugarEexpAdmin in 'classes\LugarEexpAdmin.pas',
  MonedaAdmin in 'classes\MonedaAdmin.pas',
  TimbresAdmin in 'classes\TimbresAdmin.pas',
  Global in 'shared\Global.pas',
  TimbreSeleccionaPac in 'timbres\TimbreSeleccionaPac.pas' {TimbreSeleccionaPacF},
  ItemSelecImpU in 'items\ItemSelecImpU.pas' {ItemSelecImpF},
  InformacionAduanera in 'informacionaduanera\InformacionAduanera.pas',
  InformacionAduaneraEdita in 'informacionaduanera\InformacionAduaneraEdita.pas' {InformacionAduaneraEditaF},
  InformacionAduaneraRegistra in 'informacionaduanera\InformacionAduaneraRegistra.pas' {InformacionAduaneraRegistraF},
  ItemSelecInfoAduanera in 'items\ItemSelecInfoAduanera.pas' {ItemSelecInfoAduaneraF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainF, MainF);
  Application.CreateForm(TClientsBuscaF, ClientsBuscaF);
  Application.CreateForm(TClienteEditarF, ClienteEditarF);
  Application.CreateForm(TClientsBuscaF, ClientsBuscaF);
  Application.CreateForm(TClienteRegistraF, ClienteRegistraF);
  Application.CreateForm(TClientsBuscaF, ClientsBuscaF);
  Application.CreateForm(TDMF, DMF);
  Application.CreateForm(TItemsBuscaF, ItemsBuscaF);
  Application.CreateForm(TClienteEditarF, ClienteEditarF);
  Application.CreateForm(TClienteRegistraF, ClienteRegistraF);
  Application.CreateForm(TEmpresaEditarF, EmpresaEditarF);
  Application.CreateForm(TIngresaPagoF, IngresaPagoF);
  Application.CreateForm(TEliminarPagoF, EliminarPagoF);
  Application.CreateForm(TItemEditaF, ItemEditaF);
  Application.CreateForm(TItemRegistraF, ItemRegistraF);
  Application.CreateForm(TCertificadoRegistraF, CertificadoRegistraF);
  Application.CreateForm(TCertificadoEditaF, CertificadoEditaF);
  Application.CreateForm(TImpuestoEditaF, ImpuestoEditaF);
  Application.CreateForm(TImpuestoRegistraF, ImpuestoRegistraF);
  Application.CreateForm(TPacEditaF, PacEditaF);
  Application.CreateForm(TPacRegistraF, PacRegistraF);
  Application.CreateForm(TPagoRegistraF, PagoRegistraF);
  Application.CreateForm(TSerieRegistraF, SerieRegistraF);
  Application.CreateForm(TSerieEditaF, SerieEditaF);
  Application.CreateForm(TTimbreRegistraF, TimbreRegistraF);
  Application.CreateForm(TTimbreEditaF, TimbreEditaF);
  Application.CreateForm(TFormaPagoEditaF, FormaPagoEditaF);
  Application.CreateForm(TFormaPagoRegistraF, FormaPagoRegistraF);
  Application.CreateForm(TMetodoPagoRegistraF, MetodoPagoRegistraF);
  Application.CreateForm(TMetodoPagoEditaF, MetodoPagoEditaF);
  Application.CreateForm(TLugarExpedicionEditaF, LugarExpedicionEditaF);
  Application.CreateForm(TLugarExpedicionRegistraF, LugarExpedicionRegistraF);
  Application.CreateForm(TMonedaRegistraF, MonedaRegistraF);
  Application.CreateForm(TMonedaEditaF, MonedaEditaF);
  Application.CreateForm(TTimbreSeleccionaPacF, TimbreSeleccionaPacF);
  Application.CreateForm(TItemSelecImpF, ItemSelecImpF);
  Application.CreateForm(TInformacionAduaneraEditaF, InformacionAduaneraEditaF);
  Application.CreateForm(TInformacionAduaneraRegistraF, InformacionAduaneraRegistraF);
  Application.CreateForm(TItemSelecInfoAduaneraF, ItemSelecInfoAduaneraF);
  Application.Run;
end.

