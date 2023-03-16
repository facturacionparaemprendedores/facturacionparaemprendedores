unit ClienteEditarU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TClienteEditarF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
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
    Label14: TLabel;
    ButtonGuardar: TButton;
    ButtonCancelar: TButton;
    EditClienteRFC: TEdit;
    EditClienteRazonSocial: TEdit;
    EditClienteCalle: TEdit;
    EditClienteNumExt: TEdit;
    EditClienteNumInt: TEdit;
    EditClienteColonia: TEdit;
    EditClienteMun: TEdit;
    EditClienteEstado: TEdit;
    EditClientePais: TEdit;
    EditClienteCP: TEdit;
    EditClienteTelefono: TEdit;
    EditClienteCelular: TEdit;
    EditClienteMail: TEdit;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteEditarF: TClienteEditarF;

implementation

{$R *.dfm}

procedure TClienteEditarF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TClienteEditarF.ButtonGuardarClick(Sender: TObject);
begin
//todo este id es dinamico y corresponde a el cliente seleccionado
  Global.Client.Update( 1,
    EditClienteRazonSocial.Text,
    EditClienteRFC.Text,
    EditClienteCalle.Text,
    EditClienteNumExt.Text,
    EditClienteNumInt.Text,
    EditClienteColonia.Text,
    EditClienteMun.Text,
    EditClienteEstado.Text,
    EditClientePais.Text,
    EditClienteCP.Text,
    EditClienteTelefono.Text,
    EditClienteCelular.Text,
    EditClienteMail.Text

  );

  Close;
end;

end.
