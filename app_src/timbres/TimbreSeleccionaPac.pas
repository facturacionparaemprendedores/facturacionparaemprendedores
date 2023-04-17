unit TimbreSeleccionaPac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,    Global,
   PacAdmin;


type
  TTimbreSeleccionaPacF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    GroupBox7: TGroupBox;
    Label43: TLabel;
    EditPacNombre: TEdit;
    ButtonPacBuscarPorPac: TButton;
    GroupBox8: TGroupBox;
    Label44: TLabel;
    LabelPACNombre: TLabel;
    Label46: TLabel;
    LabelPACURLWebService: TLabel;
    GridPacs: TStringGrid;
    ButtonPacUsar: TButton;
    procedure LoadPacs;
    procedure Clean;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure GridPacsClick(Sender: TObject);
    procedure ButtonPacUsarClick(Sender: TObject);
    procedure ButtonPacBuscarPorPacClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimbreSeleccionaPacF: TTimbreSeleccionaPacF;

implementation

{$R *.dfm}

procedure TTimbreSeleccionaPacF.ButtonPacBuscarPorPacClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
  PacAdmin : TPacAdmin;
begin

  iNumero := 0;



  GridPacs.ColCount := 5;
                       //columna
  GridPacs.ColWidths[0] := 30;
  GridPacs.ColWidths[1] := 20;
  GridPacs.ColWidths[2] := 300;
  GridPacs.ColWidths[3] := 350;

                 //columna  , fila
  GridPacs.Cells[0,0] := 'Num';
  GridPacs.Cells[1,0] := 'ID';
  GridPacs.Cells[2,0] := 'Nombre';
  GridPacs.Cells[3,0] := 'Url Webservice';

  PacAdmin := TPacAdmin.Create;
  PacAdmin.GetPacByName(EditPacNombre.Text);

  for i := 0 to PacAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridPacs.RowCount := iNumero + 1;
    GridPacs.Cells[0, iNumero] := IntToStr(iNumero);
    GridPacs.Cells[1, iNumero] := PacAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridPacs.Cells[2, iNumero] := PacAdmin.Qry.Querry.FieldByName('NOMBRE').AsString;
    GridPacs.Cells[3, iNumero] := PacAdmin.Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;


    if ((PacAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridPacs.Cells[4, iNumero] :=    'SI';
    end
    else
    begin
      GridPacs.Cells[4, iNumero] := '';
    end;


    PacAdmin.Qry.Querry.Next;
  end;
  PacAdmin.Free;

end;

procedure TTimbreSeleccionaPacF.ButtonPacUsarClick(Sender: TObject);
begin
  Global.TimbresAdmin.Id_Pac := StrToInt(GridPacs.Cells[1, GridPacs.Row]);
  Global.TimbresAdmin.Pac := GridPacs.Cells[2, GridPacs.Row];
  Close;
end;

procedure TTimbreSeleccionaPacF.GridPacsClick(Sender: TObject);
begin
//  Global.TimbresAdmin.Id_Pac := StrToInt(GridPacs.Cells[1, GridPacs.Row]);
//  Global.TimbresAdmin.Pac := GridPacs.Cells[2, GridPacs.Row];

  LabelPACNombre.Caption := GridPacs.Cells[2, GridPacs.Row];
  LabelPACURLWebService.Caption  := GridPacs.Cells[3, GridPacs.Row];
end;

procedure TTimbreSeleccionaPacF.LoadPacs;
var
  iNumero : Integer;
  i: Integer;
  PacAdmin : TPacAdmin;
begin

  iNumero := 0;



  GridPacs.ColCount := 5;
                       //columna
  GridPacs.ColWidths[0] := 30;
  GridPacs.ColWidths[1] := 20;
  GridPacs.ColWidths[2] := 300;
  GridPacs.ColWidths[3] := 350;

                 //columna  , fila
  GridPacs.Cells[0,0] := 'Num';
  GridPacs.Cells[1,0] := 'ID';
  GridPacs.Cells[2,0] := 'Nombre';
  GridPacs.Cells[3,0] := 'Url Webservice';

  PacAdmin := TPacAdmin.Create;
  PacAdmin.GetPacs;

  for i := 0 to PacAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridPacs.RowCount := iNumero + 1;
    GridPacs.Cells[0, iNumero] := IntToStr(iNumero);
    GridPacs.Cells[1, iNumero] := PacAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridPacs.Cells[2, iNumero] := PacAdmin.Qry.Querry.FieldByName('NOMBRE').AsString;
    GridPacs.Cells[3, iNumero] := PacAdmin.Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;


    if ((PacAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridPacs.Cells[4, iNumero] :=    'SI';
    end
    else
    begin
      GridPacs.Cells[4, iNumero] := '';
    end;


    PacAdmin.Qry.Querry.Next;
  end;
  PacAdmin.Free;
end;

procedure TTimbreSeleccionaPacF.Clean;
begin
Global.TimbresAdmin.Id:= 0;
Global.TimbresAdmin.Id_Pac:= 0;
Global.TimbresAdmin.Pac:= '';
Global.TimbresAdmin.Comprados:= 0;
Global.TimbresAdmin.Usados:= 0;
Global.TimbresAdmin.Restantes:= 0;
Global.TimbresAdmin.Avisar:= 0;
Global.TimbresAdmin.Activo:= False;
Global.TimbresAdmin.Id_Emp:= 0;
end;


procedure TTimbreSeleccionaPacF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
