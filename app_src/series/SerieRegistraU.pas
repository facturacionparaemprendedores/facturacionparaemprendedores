unit SerieRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TSerieRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    ButtonRegistraSerie: TButton;
    Label1: TLabel;
    EditSerie: TEdit;
    EditSerieFolio: TEdit;
    Label2: TLabel;
    CheckBoxSerieActiva: TCheckBox;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonRegistraSerieClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SerieRegistraF: TSerieRegistraF;

implementation

{$R *.dfm}

procedure TSerieRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TSerieRegistraF.ButtonRegistraSerieClick(Sender: TObject);
begin
  Global.SeriesAdmin.New(EditSerie.Text, StrToInt(EditSerieFolio.Text), CheckBoxSerieActiva.Checked);
  Close;
end;

end.
