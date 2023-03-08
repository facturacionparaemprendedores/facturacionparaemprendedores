unit ClientsBuscaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  ClienteRegistraU, ClienteEditarU;

type
  TClientsBuscaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelCliente: TPanel;
    PanelClienteDatos: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    EditRFC: TEdit;
    EditRazonSocial: TEdit;
    PanelClietenSelect: TPanel;
    ButtonClienteUser: TButton;
    ButtonRegistrarNuevoCliente: TButton;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    ButtonBuscarPorRazSoc: TButton;
    BuscarPorRFC: TButton;
    ButtonCancelar: TButton;
    StringGrid1: TStringGrid;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    LabelRFCCliente: TLabel;
    LabelRazonSocialCliente: TLabel;
    ButtonEditarCliente: TButton;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonRegistrarNuevoClienteClick(Sender: TObject);
    procedure ButtonEditarClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientsBuscaF: TClientsBuscaF;

implementation

{$R *.dfm}

procedure TClientsBuscaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TClientsBuscaF.ButtonEditarClienteClick(Sender: TObject);
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

procedure TClientsBuscaF.ButtonRegistrarNuevoClienteClick(Sender: TObject);
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
