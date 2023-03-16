program emprendedor;

uses
  Vcl.Forms,
  FrmMainU in 'main\FrmMainU.pas' {FrmMainF},
  FrameAboutU in 'acerca\FrameAboutU.pas' {FrameAbout: TFrame},
  FrameBillingU in 'billing\FrameBillingU.pas' {FrameBilling: TFrame},
  FrameFacturarU in 'billing\FrameFacturarU.pas' {FrameFacturar: TFrame},
  App in 'classes\App.pas',
  CFDI in 'classes\CFDI.pas',
  CFDIV4 in 'classes\CFDIV4.pas',
  Client in 'classes\Client.pas',
  Comprobante in 'classes\Comprobante.pas',
  Config in 'classes\Config.pas',
  DBC in 'classes\DBC.pas',
  Item in 'classes\Item.pas',
  Nota in 'classes\Nota.pas',
  Pac in 'classes\Pac.pas',
  Qry in 'classes\Qry.pas',
  User in 'classes\User.pas',
  ClientsBuscaU in 'clientes\ClientsBuscaU.pas' {ClientsBuscaF},
  FrameClientsU in 'clientes\FrameClientsU.pas' {FrameClients: TFrame},
  FrameConfigU in 'config\FrameConfigU.pas' {FrameConfig: TFrame},
  DMU in 'db\DMU.pas' {DMF: TDataModule},
  EmpresaAdminU in 'empresa\EmpresaAdminU.pas' {EmpresaAdminF},
  FrameEmpresaAdminU in 'empresa\FrameEmpresaAdminU.pas' {FrameEmpresaAdmin: TFrame},
  FrameItemsU in 'items\FrameItemsU.pas' {FrameItems: TFrame},
  FramePacsU in 'pacs\FramePacsU.pas' {FramePacs: TFrame},
  Global in 'shared\Global.pas',
  SharedU in 'shared\SharedU.pas',
  FrameUpdateU in 'update\FrameUpdateU.pas' {FrameUpdate: TFrame},
  FrameImpuestosU in 'impuestos\FrameImpuestosU.pas' {FrameImpuestosF: TFrame},
  ItemsBuscaU in 'items\ItemsBuscaU.pas' {ItemsBuscaF},
  ClienteEditarU in 'clientes\ClienteEditarU.pas' {ClienteEditarF},
  ClienteRegistraU in 'clientes\ClienteRegistraU.pas' {ClienteRegistraF},
  EmpresaEditarU in 'empresa\EmpresaEditarU.pas' {EmpresaEditarF},
  IngresaPagoU in 'billing\IngresaPagoU.pas' {IngresaPagoF},
  EliminarPagoU in 'billing\EliminarPagoU.pas' {EliminarPagoF},
  ItemEditaU in 'items\ItemEditaU.pas' {ItemEditaF},
  ItemRegistraU in 'items\ItemRegistraU.pas' {ItemRegistraF},
  FrameCertificadosU in 'certificados\FrameCertificadosU.pas' {FrameCertificados: TFrame},
  CertificadoRegistraU in 'certificados\CertificadoRegistraU.pas' {CertificadoRegistraF},
  CertificadoEditaU in 'certificados\CertificadoEditaU.pas' {CertificadoEditaF},
  ImpuestoEditaU in 'impuestos\ImpuestoEditaU.pas' {ImpuestoEditaF},
  ImpuestoRegistraU in 'impuestos\ImpuestoRegistraU.pas' {ImpuestoRegistraF},
  FrameFacturasU in 'facturas\FrameFacturasU.pas' {FrameFacturas: TFrame},
  PacEditaU in 'pacs\PacEditaU.pas' {PacEditaF},
  PacRegistraU in 'pacs\PacRegistraU.pas' {PacRegistraF},
  cfdv40 in '..\xsd40\cfdv40.pas',
  TimbreFiscalDigitalv11 in '..\TimbreFiscalDigitalv11\TimbreFiscalDigitalv11.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMainF, FrmMainF);
  Application.CreateForm(TFrmMainF, FrmMainF);
  Application.CreateForm(TClientsBuscaF, ClientsBuscaF);
  Application.CreateForm(TClienteEditarF, ClienteEditarF);
  Application.CreateForm(TEmpresaAdminF, EmpresaAdminF);
  Application.CreateForm(TClientsBuscaF, ClientsBuscaF);
  Application.CreateForm(TClienteRegistraF, ClienteRegistraF);
  Application.CreateForm(TClientsBuscaF, ClientsBuscaF);
  Application.CreateForm(TDMF, DMF);
  Application.CreateForm(TEmpresaAdminF, EmpresaAdminF);
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
  Application.CreateForm(TPacEditaF, PacEditaF);
  Application.CreateForm(TPacRegistraF, PacRegistraF);
  Application.CreateForm(TPacRegistraF, PacRegistraF);
  Application.Run;
end.

