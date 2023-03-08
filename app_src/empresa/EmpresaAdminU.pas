unit EmpresaAdminU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEmpresaAdminF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    ButtonCerrar: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    LabelRFCCliente: TLabel;
    LabelRazonSocialCliente: TLabel;
    ButtonEditarEmpresa: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpresaAdminF: TEmpresaAdminF;

implementation

{$R *.dfm}

end.
