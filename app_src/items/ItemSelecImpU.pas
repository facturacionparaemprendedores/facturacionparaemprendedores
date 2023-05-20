unit ItemSelecImpU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Global;

type
  TItemSelecImpF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    GroupBox6: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    LabelImpuestoImpuesto: TLabel;
    LabelImpuestoTasaOCuota: TLabel;
    EditImpuestoNombre: TEdit;
    Label37: TLabel;
    ButtonImpuestoBusca: TButton;
    GridImpuestos: TStringGrid;
    ButtonImpuestoUsar: TButton;
    procedure ImpuestosShow;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure GridImpuestosClick(Sender: TObject);
    procedure ButtonImpuestoBuscaClick(Sender: TObject);
    procedure ButtonImpuestoUsarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemSelecImpF: TItemSelecImpF;

implementation

{$R *.dfm}

procedure TItemSelecImpF.ButtonImpuestoBuscaClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridImpuestos.ColCount := 5;
                       //columna
  GridImpuestos.ColWidths[0] := 30;
  GridImpuestos.ColWidths[1] := 30;
  GridImpuestos.ColWidths[2] := 80;
  GridImpuestos.ColWidths[3] := 80;
  GridImpuestos.ColWidths[4] := 80;


                 //columna  , fila
  GridImpuestos.Cells[0,0] := 'Num';
  GridImpuestos.Cells[1,0] := 'ID';
  GridImpuestos.Cells[2,0] := 'Impuesto';
  GridImpuestos.Cells[3,0] := 'Tipo o Factor';
  GridImpuestos.Cells[4,0] := 'Tasa o Cuota';

  Global.ImpuestosAdmin.GetByImpuesto(EditImpuestoNombre.Text);

  for i := 0 to Global.ImpuestosAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridImpuestos.RowCount := iNumero + 1;
    GridImpuestos.Cells[0, iNumero] := IntToStr(iNumero);
    GridImpuestos.Cells[1, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridImpuestos.Cells[2, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('IMPUESTO').AsString;
    GridImpuestos.Cells[3, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('TIPOFACTOR').AsString;
    GridImpuestos.Cells[4, iNumero] := FloatToStr(Global.ImpuestosAdmin.Qry.Querry.FieldByName('TASAOCUOTA').AsFloat);

    Global.ImpuestosAdmin.Qry.Querry.Next;
  end;

end;

procedure TItemSelecImpF.ButtonImpuestoUsarClick(Sender: TObject);
begin
  if     Global.Item.Id_Impuesto  <> 0 then
  begin             //revisar aqui
    //obtener el nombre del impuesto para mostrarlo
    try
      Global.Item.Nombre_Impuesto := '';
      Global.ImpuestosAdmin.GetByID(Global.Item.Id_Impuesto);
      Global.Item.Nombre_Impuesto := Global.ImpuestosAdmin.Impuesto;
    finally
      Close;
    end;
  end
  else
  begin
      ShowMessage('Selecciona Impuesto a Agregar');
  end;
end;

procedure TItemSelecImpF.GridImpuestosClick(Sender: TObject);
begin
  Global.Item.Id_Impuesto := StrToInt(GridImpuestos.Cells[1, GridImpuestos.Row]);

  LabelImpuestoImpuesto.Caption := GridImpuestos.Cells[2, GridImpuestos.Row];
  LabelImpuestoTasaOCuota.Caption := GridImpuestos.Cells[4, GridImpuestos.Row];
end;

procedure TItemSelecImpF.ImpuestosShow;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridImpuestos.ColCount := 5;
                       //columna
  GridImpuestos.ColWidths[0] := 30;
  GridImpuestos.ColWidths[1] := 30;
  GridImpuestos.ColWidths[2] := 80;
  GridImpuestos.ColWidths[3] := 80;
  GridImpuestos.ColWidths[4] := 80;

                 //columna  , fila
  GridImpuestos.Cells[0,0] := 'Num';
  GridImpuestos.Cells[1,0] := 'ID';
  GridImpuestos.Cells[2,0] := 'Impuesto';
  GridImpuestos.Cells[3,0] := 'Tipo o Factor';
  GridImpuestos.Cells[4,0] := 'Tasa o Cuota';


  for i := 0 to Global.ImpuestosAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridImpuestos.RowCount := iNumero + 1;
    GridImpuestos.Cells[0, iNumero] := IntToStr(iNumero);
    GridImpuestos.Cells[1, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridImpuestos.Cells[2, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('IMPUESTO').AsString;
    GridImpuestos.Cells[3, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('TIPOFACTOR').AsString;
    GridImpuestos.Cells[4, iNumero] := FloatToStr(Global.ImpuestosAdmin.Qry.Querry.FieldByName('TASAOCUOTA').AsFloat);


    Global.ImpuestosAdmin.Qry.Querry.Next;
  end;

end;


procedure TItemSelecImpF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
