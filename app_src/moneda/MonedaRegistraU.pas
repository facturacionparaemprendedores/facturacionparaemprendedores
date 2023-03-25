unit MonedaRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMonedaRegistraF = class(TForm)
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
    CheckBoxLugExpActivo: TCheckBox;
    EditTipoEsp: TEdit;
    EditUso: TEdit;
    EditDesc: TEdit;
    procedure ButtonCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonedaRegistraF: TMonedaRegistraF;

implementation

{$R *.dfm}

procedure TMonedaRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
