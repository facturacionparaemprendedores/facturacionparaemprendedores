unit FrameCertificadosU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrameCertificados = class(TFrame)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditCertCer: TEdit;
    EditCertKey: TEdit;
    ButtonGuardarCert: TButton;
    ButtonSelectCertCer: TButton;
    ButtonSelectCertKey: TButton;
    PanelBottom: TPanel;
    ButtonCerrar: TButton;
    OpenDialogCer: TOpenDialog;
    OpenDialogKey: TOpenDialog;
    procedure ButtonSelectCertCerClick(Sender: TObject);
    procedure ButtonSelectCertKeyClick(Sender: TObject);
    procedure ButtonGuardarCertClick(Sender: TObject);
  private
    { Private decl
    procedure ButtonSelectCertCerClick(Sender: TObject);arations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}




procedure TFrameCertificados.ButtonGuardarCertClick(Sender: TObject);
begin
//
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