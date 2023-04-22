unit ItemRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TItemRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelItemDatos: TPanel;
    PanelBottom: TPanel;
    ButtonCerrar: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    EditNoIdent: TEdit;
    EditClaveProdServ: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    EditCantidad: TEdit;
    Label5: TLabel;
    EditClaveUnidad: TEdit;
    Label6: TLabel;
    EditUnidad: TEdit;
    Label7: TLabel;
    EditDesc: TEdit;
    Label3: TLabel;
    EditValorUnitario: TEdit;
    Label8: TLabel;
    EditImporte: TEdit;
    Bevel1: TBevel;
    EditImpuesto: TEdit;
    Label9: TLabel;
    ButtonSelectImpuesto: TButton;
    ButtonRegistrar: TButton;
    procedure ButtonCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemRegistraF: TItemRegistraF;

implementation

{$R *.dfm}

procedure TItemRegistraF.ButtonCerrarClick(Sender: TObject);
begin
  Close;
end;

end.
