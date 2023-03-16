unit PacEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TPacEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label1: TLabel;
    EditPacNombre: TEdit;
    ButtonProbar: TButton;
    ButtonGuardar: TButton;
    EditPacWebService: TEdit;
    CheckBoxPacActivo: TCheckBox;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardarClick(Sender: TObject);
    procedure ButtonProbarClick(Sender: TObject);
    procedure FillPac();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PacEditaF: TPacEditaF;


implementation

{$R *.dfm}

procedure TPacEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TPacEditaF.ButtonGuardarClick(Sender: TObject);
begin
  Global.PacAdmin.Update(EditPacNombre.Text, EditPacWebService.Text, CheckBoxPacActivo.Checked);
  Close;
end;

procedure TPacEditaF.ButtonProbarClick(Sender: TObject);
begin
//
end;

procedure TPacEditaF.FillPac();
begin
    Global.PacAdmin.GetPacByID( Global.PacAdmin.Id);

    EditPacNombre.Text := Global.PacAdmin.Qry.Querry.FieldByName('NOMBRE').AsString;
    EditPacWebService.Text := Global.PacAdmin.Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;
    CheckBoxPacActivo.Checked := Global.PacAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean;

end;

end.
