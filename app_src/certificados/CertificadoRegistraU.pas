unit CertificadoRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

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
    OpenDialogCer: TOpenDialog;
    OpenDialogKey: TOpenDialog;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditCertCer: TEdit;
    EditCertKey: TEdit;
    ButtonGuardarCert: TButton;
    ButtonSelectCertCer: TButton;
    ButtonSelectCertKey: TButton;
    EditCertPass: TEdit;
    CheckBoxActivo: TCheckBox;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonSelectCertCerClick(Sender: TObject);
    procedure ButtonSelectCertKeyClick(Sender: TObject);
    procedure ButtonGuardarCertClick(Sender: TObject);
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

procedure TCertificadoRegistraF.ButtonGuardarCertClick(Sender: TObject);
begin
  Global.CertAdmin.CreateNew(EditCertCer.Text, EditCertKey.Text, EditCertPass.Text, CheckBoxActivo.Checked);
  Close;
end;

procedure TCertificadoRegistraF.ButtonSelectCertCerClick(Sender: TObject);
begin
  if  OpenDialogCer.Execute() then
  begin
    if FileExists(OpenDialogCer.FileName) then
      begin
        EditCertCer.Text := OpenDialogCer.FileName;
      end;
  end;
end;

procedure TCertificadoRegistraF.ButtonSelectCertKeyClick(Sender: TObject);
begin
  if  OpenDialogKey.Execute() then
  begin
    if FileExists(OpenDialogKey.FileName) then
      begin
        EditCertKey.Text := OpenDialogKey.FileName;
      end;
  end;
end;

end.
