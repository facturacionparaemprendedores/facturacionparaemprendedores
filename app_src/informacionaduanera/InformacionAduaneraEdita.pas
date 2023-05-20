unit InformacionAduaneraEdita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TInformacionAduaneraEditaF = class(TForm)
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
    ButtonGuarda: TButton;
    EditNumeroPedimento: TEdit;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure Load;
    procedure ButtonGuardaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InformacionAduaneraEditaF: TInformacionAduaneraEditaF;

implementation

{$R *.dfm}

procedure TInformacionAduaneraEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;


procedure TInformacionAduaneraEditaF.ButtonGuardaClick(Sender: TObject);
begin
  Global.InformacionAduanera.Update(EditNumeroPedimento.Text);
  Close;

end;

procedure TInformacionAduaneraEditaF.Load;
begin
  Global.InformacionAduanera.GetByID(Global.InformacionAduanera.Id);

  EditNumeroPedimento.Text := Global.InformacionAduanera.NumeroPedimento;

end;


end.
