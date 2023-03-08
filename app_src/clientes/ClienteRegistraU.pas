unit ClienteRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TClienteRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditRazonSocial: TEdit;
    EditRFC: TEdit;
    EditCalle: TEdit;
    EditNumExt: TEdit;
    EditNumInt: TEdit;
    EditColonia: TEdit;
    EditMunDel: TEdit;
    EditEstado: TEdit;
    EditPais: TEdit;
    EditCP: TEdit;
    EditTelefono: TEdit;
    EditCelular: TEdit;
    Edit1Mail: TEdit;
    ButtonRegistrar: TButton;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    Label14: TLabel;
    procedure ButtonRegistrarClick(Sender: TObject);
    procedure ButtonCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteRegistraF: TClienteRegistraF;

implementation

{$R *.dfm}

procedure TClienteRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TClienteRegistraF.ButtonRegistrarClick(Sender: TObject);
begin
  ///
end;

end.
