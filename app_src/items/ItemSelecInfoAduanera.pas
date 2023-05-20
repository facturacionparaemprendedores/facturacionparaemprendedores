unit ItemSelecInfoAduanera;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,  Global;

type
  TItemSelecInfoAduaneraF = class(TForm)
    Panel70: TPanel;
    Panel71: TPanel;
    Panel72: TPanel;
    Panel73: TPanel;
    GroupBox17: TGroupBox;
    Label65: TLabel;
    LabelNumeroPedimento: TLabel;
    Panel75: TPanel;
    GridInfoAduanera: TStringGrid;
    Panel76: TPanel;
    Label64: TLabel;
    EditInfoAduaneraNumPedimento: TEdit;
    ButtonBuscar: TButton;
    ButtonUsar: TButton;
    ButtonCancelar: TButton;
    procedure InfoAduaneraShow;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonBuscarClick(Sender: TObject);
    procedure GridInfoAduaneraClick(Sender: TObject);
    procedure ButtonUsarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  ItemSelecInfoAduaneraF: TItemSelecInfoAduaneraF;

implementation

{$R *.dfm}


procedure TItemSelecInfoAduaneraF.ButtonBuscarClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
   iNumero := 0;

  GridInfoAduanera.ColCount := 6;
                       //columna
  GridInfoAduanera.ColWidths[0] := 30;
  GridInfoAduanera.ColWidths[1] := 20;
  GridInfoAduanera.ColWidths[2] := 300;

                 //columna  , fila
  GridInfoAduanera.Cells[0,0] := 'Num';
  GridInfoAduanera.Cells[1,0] := 'ID';
  GridInfoAduanera.Cells[2,0] := 'Numero de Pedimento';


  Global.InformacionAduanera.GetByNumeroPedimento(EditInfoAduaneraNumPedimento.Text);

  for i := 0 to Global.InformacionAduanera.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridInfoAduanera.RowCount := iNumero + 1;
    GridInfoAduanera.Cells[0, iNumero] := IntToStr(iNumero);
    GridInfoAduanera.Cells[1, iNumero] := Global.InformacionAduanera.Qry.Querry.FieldByName('ID').AsString;
    GridInfoAduanera.Cells[2, iNumero] := Global.InformacionAduanera.Qry.Querry.FieldByName('NUMEROPEDIMENTO').AsString;


    Global.InformacionAduanera.Qry.Querry.Next;
  end;

end;

procedure TItemSelecInfoAduaneraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TItemSelecInfoAduaneraF.ButtonUsarClick(Sender: TObject);
begin
  if    Global.Item.InfoAdu_Id  <> 0 then
  begin
    try
      Global.Item.NumeroPedimento := '';
      Global.InformacionAduanera.GetByID(Global.Item.InfoAdu_Id);
      Global.Item.NumeroPedimento := Global.InformacionAduanera.NumeroPedimento;
    finally
      Close;
    end;

      Close;
  end
  else
  begin
      ShowMessage('Selecciona Informacion Aduanera Numero de Pedimento a Agregar');
  end;

end;

procedure TItemSelecInfoAduaneraF.GridInfoAduaneraClick(Sender: TObject);
begin

  Global.Item.InfoAdu_Id := StrToInt(GridInfoAduanera.Cells[1, GridInfoAduanera.Row]);

  Global.InformacionAduanera.NumeroPedimento := GridInfoAduanera.Cells[2, GridInfoAduanera.Row];
  LabelNumeroPedimento.Caption  :=     Global.InformacionAduanera.NumeroPedimento;

end;

procedure TItemSelecInfoAduaneraF.InfoAduaneraShow;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridInfoAduanera.ColCount := 5;
                       //columna
  GridInfoAduanera.ColWidths[0] := 30;
  GridInfoAduanera.ColWidths[1] := 20;
  GridInfoAduanera.ColWidths[2] := 300;

                 //columna  , fila
  GridInfoAduanera.Cells[0,0] := 'Num';
  GridInfoAduanera.Cells[1,0] := 'ID';
  GridInfoAduanera.Cells[2,0] := 'Informacion Aduanera';


  for i := 0 to Global.InformacionAduanera.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridInfoAduanera.RowCount := iNumero + 1;
    GridInfoAduanera.Cells[0, iNumero] := IntToStr(iNumero);
    GridInfoAduanera.Cells[1, iNumero] := Global.InformacionAduanera.Qry.Querry.FieldByName('ID').AsString;
    GridInfoAduanera.Cells[2, iNumero] := Global.InformacionAduanera.Qry.Querry.FieldByName('NUMEROPEDIMENTO').AsString;

    Global.InformacionAduanera.Qry.Querry.Next;
  end;
end;


end.
