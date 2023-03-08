unit CertificadoRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCertificadoRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditCertCer: TEdit;
    EditCertKey: TEdit;
    ButtonGuardarCert: TButton;
    ButtonSelectCertCer: TButton;
    ButtonSelectCertKey: TButton;
    OpenDialogCer: TOpenDialog;
    OpenDialogKey: TOpenDialog;
    procedure ButtonCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CertificadoRegistraF: TCertificadoRegistraF;

implementation

{$R *.dfm}

procedure TCertificadoRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  close;
end;

end.
