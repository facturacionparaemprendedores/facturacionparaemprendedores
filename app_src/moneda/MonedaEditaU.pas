unit MonedaEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TMonedaEditaF = class(TForm)
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
    Label3: TLabel;
    ButtonGuarda: TButton;
    CheckBoxMonedaExpActivo: TCheckBox;
    EditTipoEsp: TEdit;
    EditUso: TEdit;
    EditDesc: TEdit;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardaClick(Sender: TObject);
    procedure Load;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonedaEditaF: TMonedaEditaF;

implementation

{$R *.dfm}

procedure TMonedaEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TMonedaEditaF.ButtonGuardaClick(Sender: TObject);
begin
  Global.MonedaAdmin.Update(EditDesc.Text, EditUso.Text, EditTipoEsp.Text, CheckBoxMonedaExpActivo.Checked);
  Close;

end;

procedure TMonedaEditaF.Load;
begin
  Global.MonedaAdmin.GetByID(Global.MonedaAdmin.Id);

  EditDesc.Text := Global.MonedaAdmin.Descripcion;
  EditUso.Text := Global.MonedaAdmin.Uso;
  EditTipoEsp.Text := Global.MonedaAdmin.Tipo_Especial;
  CheckBoxMonedaExpActivo.Checked := Global.MonedaAdmin.Activo;
end;

end.
