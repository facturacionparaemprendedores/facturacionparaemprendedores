unit FrameClientsU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids,  ClienteRegistraU, ClienteEditarU;

type
  TFrameClients = class(TFrame)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelCliente: TPanel;
    PanelClienteDatos: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    EditRFC: TEdit;
    EditRazonSocial: TEdit;
    ButtonBuscarPorRazSoc: TButton;
    BuscarPorRFC: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    LabelRFCCliente: TLabel;
    LabelRazonSocialCliente: TLabel;
    PanelClietenSelect: TPanel;
    ButtonRegistrarNuevoCliente: TButton;
    ButtonEditarCliente: TButton;
    PanelMiddle: TPanel;
    StringGrid1: TStringGrid;
    PanelBottom: TPanel;
    procedure ButtonRegistrarNuevoClienteClick(Sender: TObject);
    procedure ButtonEditarClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameClients.ButtonEditarClienteClick(Sender: TObject);
var
  ClienteEditarF: TClienteEditarF;
begin
  ClienteEditarF := TClienteEditarF.Create(Application);
  try
    ClienteEditarF.ShowModal;
  finally
    ClienteEditarF.Free;
  end;
end;

procedure TFrameClients.ButtonRegistrarNuevoClienteClick(Sender: TObject);
var
  ClienteRegistraF: TClienteRegistraF;
begin
  ClienteRegistraF := TClienteRegistraF.Create(Application);
  try
    ClienteRegistraF.ShowModal;
  finally
    ClienteRegistraF.Free;
  end;

end;

end.
