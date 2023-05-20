unit InformacionAduaneraRegistra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TInformacionAduaneraRegistraF = class(TForm)
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
    ButtonRegistra: TButton;
    EditNumeroPedimento: TEdit;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonRegistraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InformacionAduaneraRegistraF: TInformacionAduaneraRegistraF;

implementation

{$R *.dfm}

procedure TInformacionAduaneraRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TInformacionAduaneraRegistraF.ButtonRegistraClick(Sender: TObject);
begin
   Global.InformacionAduanera.New(EditNumeroPedimento.Text);
  Close;
end;

end.
