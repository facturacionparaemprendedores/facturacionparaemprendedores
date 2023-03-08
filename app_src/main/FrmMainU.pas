unit FrmMainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  FrameClientsU, FrameBillingU, FrameItemsU, FrameConfigU, FramePacsU, EmpresaAdminU,
  FrameEmpresaAdminU, FrameCertificadosU, FrameImpuestosU, FrameAboutU, FrameUpdateU, Global;

type
  TFrmMainF = class(TForm)
    PanelHoldWork: TPanel;
    PanelWorkLeft: TPanel;
    PanelWorkTop: TPanel;
    PanelLogin: TPanel;
    PanelUserPas: TPanel;
    LabelUser: TLabel;
    LabelPass: TLabel;
    EditUser: TEdit;
    EditPass: TEdit;
    Image1: TImage;
    ButtonLogin: TButton;
    PanelWorkTopButton: TPanel;
    LabelLeyenda: TLabel;
    Splitter1: TSplitter;
    PanelWorkDer: TPanel;
    PanelBilling: TPanel;
    PanelClients: TPanel;
    PanelArticulos: TPanel;
    PanelConfig: TPanel;
    PanelSalir: TPanel;
    PageControlWork: TPageControl;
    TabSheetBilling: TTabSheet;
    TabSheetItems: TTabSheet;
    TabSheetClients: TTabSheet;
    TabSheetConfig: TTabSheet;
    TabSheetPacs: TTabSheet;
    PanelAcerca: TPanel;
    TabSheetAbout: TTabSheet;
    TabSheetUpdate: TTabSheet;
    PanelUpdate: TPanel;
    PanelLog: TPanel;
    Memo1: TMemo;
    TabSheetEmpresa: TTabSheet;
    PanelEmpresa: TPanel;
    PanelCertificados: TPanel;
    TabSheetCertificados: TTabSheet;
    PanelImpuestos: TPanel;
    TabSheetImpuestos: TTabSheet;
    PanelFacturas: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure PanelWorkTopButtonClick(Sender: TObject);
    procedure ButtonLoginClick(Sender: TObject);
    procedure PanelSalirClick(Sender: TObject);
    procedure CreateFrameBilling;
    procedure CreateFrameItems;
    procedure CreateFrameClients;
    procedure CreateFrameConfig;
    procedure CreateFramePacs;
    procedure CreateFrameAbout;
    procedure CreateFrameUpdate;
    procedure CreateFrameEmpresa;
    procedure CreateFrameCertificados;
    procedure CreateFrameImpuestos;
    procedure ShowTab(ActiveTab: TTabSheet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PanelBillingClick(Sender: TObject);
    procedure PanelArticulosClick(Sender: TObject);
    procedure PanelClientsClick(Sender: TObject);
    procedure PanelConfigClick(Sender: TObject);
    procedure PanelAcercaClick(Sender: TObject);
    procedure PanelUpdateClick(Sender: TObject);
    procedure PanelEmpresaClick(Sender: TObject);
    procedure PanelCertificadosClick(Sender: TObject);
    procedure PanelImpuestosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMainF: TFrmMainF;

  FrameClients: TFrameClients;
  FrameBilling: TFrameBilling;
  FramePacs: TFramePacs;
  FrameConfig: TFrameConfig;
  FrameItems: TFrameItems;
  FrameAbout: TFrameAbout;
  FrameUpdate: TFrameUpdate;
  EmpresaAdminF: TEmpresaAdminF;
  FrameEmpresaAdmin: TFrameEmpresaAdmin;
  FrameCertificados: TFrameCertificados;
  FrameImpuestos: TFrameImpuestosF;



implementation

//uses

//FrmFacturarU;

{$R *.dfm}

procedure TFrmMainF.CreateFrameBilling;
begin
  FrameBilling := TFrameBilling.Create(FrmMainF);
  FrameBilling.Parent := TabSheetBilling;
  FrameBilling.Align := alClient;
end;

procedure TFrmMainF.CreateFrameItems;
begin
  FrameItems := TFrameItems.Create(FrmMainF);
  FrameItems.Parent := TabSheetItems;
  FrameItems.Align := alClient;
end;

procedure TFrmMainF.CreateFrameClients;
begin
  FrameClients := TFrameClients.Create(FrmMainF);
  FrameClients.Parent := TabsheetClients;
  FrameClients.Align := alClient;
end;

procedure TFrmMainF.CreateFrameConfig;
begin
  FrameConfig := TFrameConfig.Create(FrmMainF);
  FrameConfig.Parent := TabSheetConfig;
  FrameConfig.Align := alClient;
end;

procedure TFrmMainF.CreateFramePacs;
begin
  FramePacs := TFramePacs.Create(FrmMainF);
  FramePacs.Parent := TabSheetPacs;
  FramePacs.Align := alClient;
end;


procedure TFrmMainF.CreateFrameAbout;
begin
  FrameAbout := TFrameAbout.Create(FrmMainF);
  FrameAbout.Parent := TabSheetAbout;
  FrameAbout.Align := alClient;
end;

procedure TFrmMainF.CreateFrameUpdate;
begin
  FrameUpdate := TFrameUpdate.Create(FrmMainF);
  FrameUpdate.Parent := TabSheetUpdate;
  FrameUpdate.Align := alClient;
end;

procedure TFrmMainF.CreateFrameEmpresa;
begin
  FrameEmpresaAdmin := TFrameEmpresaAdmin.Create(FrmMainF);
  FrameEmpresaAdmin.Parent := TabSheetEmpresa;
  FrameEmpresaAdmin.Align := alClient;
end;


procedure TFrmMainF.CreateFrameCertificados;
begin
  FrameCertificados := TFrameCertificados.Create(FrmMainF);
  FrameCertificados.Parent := TabSheetCertificados;
  FrameCertificados.Align := alClient;
end;

procedure TFrmMainF.CreateFrameImpuestos;
begin
  FrameImpuestos := TFrameImpuestosF.Create(FrmMainF);
  FrameImpuestos.Parent := TabSheetImpuestos;
  FrameImpuestos.Align := alClient;
end;


procedure TFrmMainF.ButtonLoginClick(Sender: TObject);
begin

  if  Global.User.Login(EditUser.Text, EditPass.Text) then
  begin
    LabelLeyenda.Caption  := 'Acceso garantizado';
    PanelLogin.Visible := False;
    PanelHoldWork.Visible := True;
  end
  else
  begin
    LabelLeyenda.Caption := 'Revise usario y contrasena';
  end;

end;

procedure TFrmMainF.ShowTab(ActiveTab: TTabSheet);
var
 i: integer;
begin
  for i := 0 to PageControlWork.PageCount -1 do
  begin
    PagecontrolWork.Pages[i].TabVisible := False;
  end;

    PageControlWork.ActivePage := ActiveTab;
end;

procedure TFrmMainF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMainF.Caption := 'Facturacion para emprendedores ';
  FrameClients.Free;
  FrameClients := nil;

  FrameBilling.Free;
  FrameBilling := nil;

  FramePacs.Free;
  FramePacs := nil;

  FrameConfig.Free;
  FrameConfig := nil;

  FrameItems.Free;
  FrameItems := nil;

  Global.DeInitialize;

end;

procedure TFrmMainF.FormCreate(Sender: TObject);
begin
//Instance clase app


  //se crean los frames dinamicamente
  CreateFrameBilling;
  CreateFrameItems;
  CreateFrameClients;
  CreateFrameConfig;
  CreateFramePacs;
  CreateFrameAbout;
  CreateFrameUpdate;
  CreateFrameEmpresa;
  CreateFrameCertificados;
  CreateFrameImpuestos;

         //hay que ocultar las pestanas y activar una pestana

  ShowTab(TabsheetBilling);

  FrmMainF.Caption := 'Facturador 1.5';

  Global.Initialize;




  PanelHoldWork.Visible := False;
  PanelLogin.Visible := True;

  LabelLeyenda.Caption := '';

  FrmMainF.Position := poScreenCenter;
  FrmMainF.WindowState := wsMaximized;
end;

procedure TFrmMainF.PanelAcercaClick(Sender: TObject);
begin
  ShowTab(TabsheetAbout);
end;

procedure TFrmMainF.PanelArticulosClick(Sender: TObject);
begin
  ShowTab(TabsheetItems);
end;

procedure TFrmMainF.PanelBillingClick(Sender: TObject);
begin
  ShowTab(TabsheetBilling);
end;

procedure TFrmMainF.PanelCertificadosClick(Sender: TObject);
begin
  ShowTab(TabSheetCertificados);
end;

procedure TFrmMainF.PanelClientsClick(Sender: TObject);
begin
  ShowTab(TabsheetClients);
end;

procedure TFrmMainF.PanelConfigClick(Sender: TObject);
begin
  ShowTab(TabsheetConfig);
end;

procedure TFrmMainF.PanelEmpresaClick(Sender: TObject);
begin
  ShowTab(TabSheetEmpresa);
end;

procedure TFrmMainF.PanelImpuestosClick(Sender: TObject);
begin
  ShowTab(TabSheetImpuestos);
end;

procedure TFrmMainF.PanelSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMainF.PanelUpdateClick(Sender: TObject);
begin
  ShowTab(TabsheetUpdate);
end;

procedure TFrmMainF.PanelWorkTopButtonClick(Sender: TObject);
begin
  if PanelWorkTopButton.Caption = '<'  then
  begin
    PanelWorkLeft.Width := 200;
    PanelWorkTopButton.Caption := '>'
  end
  else
  if PanelWorkTopButton.Caption = '>'
  then
  begin
    PanelWorkLeft.Width := 60 ;
    PanelWorkTopButton.Caption := '<'
  end;

end;

end.
