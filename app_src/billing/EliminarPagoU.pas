unit EliminarPagoU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEliminarPagoF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    PanelBusca: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ButtonBuscar: TButton;
    EditPago: TEdit;
    ButtonEliminarPago: TButton;
    StringGrid1: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EliminarPagoF: TEliminarPagoF;

implementation

{$R *.dfm}

end.
