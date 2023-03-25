unit CertificadoEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TCertificadoEditaF = class(TForm)
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
    EditCertPass: TEdit;
    Label3: TLabel;
    OpenDialogCer: TOpenDialog;
    OpenDialogKey: TOpenDialog;
    CheckBoxActivo: TCheckBox;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonSelectCertCerClick(Sender: TObject);
    procedure ButtonSelectCertKeyClick(Sender: TObject);
    procedure ButtonGuardarCertClick(Sender: TObject);
    procedure load;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CertificadoEditaF: TCertificadoEditaF;

implementation

{$R *.dfm}

procedure TCertificadoEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TCertificadoEditaF.ButtonGuardarCertClick(Sender: TObject);
begin
  Global.CertAdmin.Update(EditCertCer.Text, EditCertKey.Text, EditCertPass.Text, CheckBoxActivo.Checked);
  Close;
end;

procedure TCertificadoEditaF.ButtonSelectCertCerClick(Sender: TObject);
begin
  if  OpenDialogCer.Execute() then
  begin
    if FileExists(OpenDialogCer.FileName) then
      begin
        EditCertCer.Text := OpenDialogCer.FileName;
      end;
  end;
end;

procedure TCertificadoEditaF.ButtonSelectCertKeyClick(Sender: TObject);
begin
  if  OpenDialogKey.Execute() then
  begin
    if FileExists(OpenDialogKey.FileName) then
      begin
        EditCertKey.Text := OpenDialogKey.FileName;
      end;
  end;
end;

procedure TCertificadoEditaF.load;
begin
  Global.CertAdmin.GetCertByID(  Global.CertAdmin.Id);

  EditCertCer.Text := Global.CertAdmin.Cert_Cer;
  EditCertKey.Text := Global.CertAdmin.Cert_Key;
  EditCertPass.Text := Global.CertAdmin.Cert_Pass;
  CheckBoxActivo.Checked := Global.CertAdmin.Cert_Activo;

end;

end.
