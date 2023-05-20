unit ItemRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global,
  ItemSelecImpU, ItemSelecInfoAduanera;

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
    EditConceptoNoIdent: TEdit;
    EditConceptoClaveProdServ: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    EditConceptoClaveUnidad: TEdit;
    Label6: TLabel;
    EditConceptoUnidad: TEdit;
    Label7: TLabel;
    EditConceptoDesc: TEdit;
    Label3: TLabel;
    EditConceptoPrecio: TEdit;
    Label8: TLabel;
    EditConceptoObjetoImp: TEdit;
    Bevel1: TBevel;
    EditConceptoImpuesto: TEdit;
    Label9: TLabel;
    ButtonSelectImpuesto: TButton;
    ButtonRegistrar: TButton;
    Label4: TLabel;
    EditConceptoDescLarga: TEdit;
    EditConceptoInfoAduaPedimento: TEdit;
    Label10: TLabel;
    ButtonSelecInfoAduanera: TButton;
    procedure ButtonCerrarClick(Sender: TObject);
    procedure ButtonSelectImpuestoClick(Sender: TObject);
    procedure ButtonRegistrarClick(Sender: TObject);
    procedure ButtonSelecInfoAduaneraClick(Sender: TObject);
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

procedure TItemRegistraF.ButtonRegistrarClick(Sender: TObject);
begin
  Global.Item.New(EditConceptoClaveProdServ.Text, EditConceptoNoIdent.Text,
  EditConceptoClaveUnidad.Text, EditConceptoUnidad.Text,
  EditConceptoDesc.Text, EditConceptoDescLarga.Text,
  StrToFloat(EditConceptoPrecio.Text), EditConceptoObjetoImp.Text,
  Global.Item.Id_Impuesto,  Global.Item.InfoAdu_Id );




  Close;
end;

procedure TItemRegistraF.ButtonSelecInfoAduaneraClick(Sender: TObject);
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

procedure TItemRegistraF.ButtonSelectImpuestoClick(Sender: TObject);
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
