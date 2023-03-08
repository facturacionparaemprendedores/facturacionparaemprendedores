unit FrameCertificadosU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, CertificadoRegistraU, CertificadoEditaU;

type
  TFrameCertificados = class(TFrame)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelCliente: TPanel;
    PanelClienteDatos: TPanel;
    ButtonMostrarCertificados: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    LabelCer: TLabel;
    LabelKey: TLabel;
    PanelMiddle: TPanel;
    StringGrid1: TStringGrid;
    PanelBottom: TPanel;
    ButtonRegistrar: TButton;
    ButtonEliminar: TButton;
    ButtonEditar: TButton;
    procedure ButtonSelectCertCerClick(Sender: TObject);
    procedure ButtonSelectCertKeyClick(Sender: TObject);
    procedure ButtonGuardarCertClick(Sender: TObject);
    procedure ButtonRegistrarClick(Sender: TObject);
    procedure ButtonEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameCertificados.ButtonEditarClick(Sender: TObject);
var
  CertificadoEditaF: TCertificadoEditaF;
begin
  CertificadoEditaF := TCertificadoEditaF.Create(Application);
  try
    CertificadoEditaF.ShowModal;
  finally
    CertificadoEditaF.Free;
  end;
end;

procedure TFrameCertificados.ButtonGuardarCertClick(Sender: TObject);
begin
//
end;

procedure TFrameCertificados.ButtonRegistrarClick(Sender: TObject);
var
  CertificadoRegistraF: TCertificadoRegistraF;
begin
  CertificadoRegistraF := TCertificadoRegistraF.Create(Application);
  try
    CertificadoRegistraF.ShowModal;
  finally
    CertificadoRegistraF.Free;
  end;
end;

procedure TFrameCertificados.ButtonSelectCertCerClick(Sender: TObject);
begin
//
end;

procedure TFrameCertificados.ButtonSelectCertKeyClick(Sender: TObject);
begin
//
end;

end.
