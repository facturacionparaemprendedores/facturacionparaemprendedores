unit ItemEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls, Global,
    ItemSelecImpU, ItemSelecInfoAduanera ;

type
  TItemEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelItemDatos: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    EditConceptoNoIdent: TEdit;
    EditConceptoClaveProdServ: TEdit;
    EditConceptoClaveUnidad: TEdit;
    EditConceptoUnidad: TEdit;
    EditConceptoDesc: TEdit;
    EditConceptoPrecio: TEdit;
    EditConceptoObjetoImp: TEdit;
    EditConceptoImpuesto: TEdit;
    ButtonSelectImpuesto: TButton;
    ButtonGuardar: TButton;
    EditConceptoDescLarga: TEdit;
    EditConceptoInfoAduaPedimento: TEdit;
    ButtonSelecInfoAduanera: TButton;
    PanelBottom: TPanel;
    ButtonCerrar: TButton;
    procedure ButtonCerrarClick(Sender: TObject);
    procedure ButtonSelectImpuestoClick(Sender: TObject);
    procedure ButtonSelecInfoAduaneraClick(Sender: TObject);
    procedure ButtonGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemEditaF: TItemEditaF;

implementation

{$R *.dfm}

procedure TItemEditaF.ButtonCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TItemEditaF.ButtonGuardarClick(Sender: TObject);
begin
  Global.Item.Update(Global.Item.Id_Concepto, EditConceptoClaveProdServ.Text,
   EditConceptoNoIdent.Text, EditConceptoClaveUnidad.Text, EditConceptoUnidad.Text,
  EditConceptoDesc.Text, EditConceptoDescLarga.Text,
  StrToFloat(EditConceptoPrecio.Text), EditConceptoObjetoImp.Text,
  Global.Item.Id_Impuesto,  Global.Item.InfoAdu_Id);

  Close;
end;

procedure TItemEditaF.ButtonSelecInfoAduaneraClick(Sender: TObject);
var
  ItemSelecInfoAduaneraF: TItemSelecInfoAduaneraF;
begin
  Global.InformacionAduanera.Get;
  ItemSelecInfoAduaneraF := TItemSelecInfoAduaneraF.Create(Application);
  ItemSelecInfoAduaneraF.InfoAduaneraShow;

  try
    ItemSelecInfoAduaneraF.ShowModal;
  finally
    ItemSelecInfoAduaneraF.Free;
  end;

  EditConceptoInfoAduaPedimento.Text := Global.InformacionAduanera.NumeroPedimento;
end;

procedure TItemEditaF.ButtonSelectImpuestoClick(Sender: TObject);
var
  ItemSelecImpF: TItemSelecImpF;
begin
  Global.ImpuestosAdmin.GetAll;
  ItemSelecImpF := TItemSelecImpF.Create(Application);
  ItemSelecImpF.ImpuestosShow;

  try
    ItemSelecImpF.ShowModal;
  finally
    ItemSelecImpF.Free;
  end;

  EditConceptoImpuesto.Text := Global.Item.Nombre_Impuesto;
end;

end.
