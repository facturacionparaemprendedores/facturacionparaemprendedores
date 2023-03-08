unit CFDI;


interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Comprobante;


type
  TCFDI = class(TComprobante)
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation

Constructor TCFDI.Create;
begin
  Inherited Create;
end;

Destructor TCFDI.Destroy;
begin
  Inherited Destroy;
end;

end.
