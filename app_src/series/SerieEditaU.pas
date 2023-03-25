unit SerieEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TSerieEditaF = class(TForm)
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
    EditSerie: TEdit;
    ButtonGuardarSerie: TButton;
    CheckBoxSerieActiva: TCheckBox;
    EditSerieFolio: TEdit;
    Label2: TLabel;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardarSerieClick(Sender: TObject);
    procedure Load;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SerieEditaF: TSerieEditaF;

implementation

{$R *.dfm}

procedure TSerieEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TSerieEditaF.ButtonGuardarSerieClick(Sender: TObject);
begin
  Global.SeriesAdmin.Update(EditSerie.Text, StrToInt(EditSerieFolio.Text), CheckBoxSerieActiva.Checked);
  Close;
end;

procedure TSerieEditaF.Load;
begin
  Global.SeriesAdmin.GetByID(Global.SeriesAdmin.Id);

  EditSerie.Text := Global.SeriesAdmin.Serie;
  CheckBoxSerieActiva.checked  := Global.SeriesAdmin.Activo;
  Close;
end;

end.
