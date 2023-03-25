unit LugarExpedicionEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TLugarExpedicionEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    ButtonGuarda: TButton;
    CheckBoxLugExpActivo: TCheckBox;
    EditTipoEsp: TEdit;
    EditUso: TEdit;
    EditDesc: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardaClick(Sender: TObject);
    procedure Load;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LugarExpedicionEditaF: TLugarExpedicionEditaF;

implementation

{$R *.dfm}

procedure TLugarExpedicionEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TLugarExpedicionEditaF.ButtonGuardaClick(Sender: TObject);
begin
  Global.LugarExp.Update(EditDesc.Text, EditUso.Text, EditTipoEsp.Text,  CheckBoxLugExpActivo.Checked);
  Close;
end;


procedure TLugarExpedicionEditaF.Load;
begin
  Global.LugarExp.GetByID(Global.LugarExp.Id);

  EditDesc.Text := Global.LugarExp.Descripcion;
  EditUso.Text := Global.LugarExp.Uso;
  EditTipoEsp.Text := Global.LugarExp.Tipo_Especial;
  CheckBoxLugExpActivo.Checked := Global.LugarExp.Activo;
end;

end.
