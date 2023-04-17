unit LugarExpedicionRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TLugarExpedicionRegistraF = class(TForm)
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
    EditDesc: TEdit;
    ButtonRegistra: TButton;
    CheckBoxLugExpActivo: TCheckBox;
    EditUso: TEdit;
    EditTipoEsp: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonRegistraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LugarExpedicionRegistraF: TLugarExpedicionRegistraF;

implementation

{$R *.dfm}

procedure TLugarExpedicionRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TLugarExpedicionRegistraF.ButtonRegistraClick(Sender: TObject);
begin
  Global.LugarExpAdmin.New(EditDesc.Text, EditUso.Text, EditTipoEsp.Text,  CheckBoxLugExpActivo.Checked);
  Close;
end;

end.
