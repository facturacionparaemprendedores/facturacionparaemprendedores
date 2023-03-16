unit PacRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TPacRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    ButtonProbar: TButton;
    ButtonGuardar: TButton;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    CheckBoxPacActivo: TCheckBox;
    Label1: TLabel;
    EditPacWebService: TEdit;
    EditPacNombre: TEdit;
    Label4: TLabel;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardarClick(Sender: TObject);
    procedure ButtonProbarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PacRegistraF: TPacRegistraF;

implementation

{$R *.dfm}

procedure TPacRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TPacRegistraF.ButtonGuardarClick(Sender: TObject);
begin
  Global.PacAdmin.CreateNew(EditPacNombre.Text, EditPacWebService.Text, CheckBoxPacActivo.Checked);
  Close;
end;

procedure TPacRegistraF.ButtonProbarClick(Sender: TObject);
begin
//
end;

end.
