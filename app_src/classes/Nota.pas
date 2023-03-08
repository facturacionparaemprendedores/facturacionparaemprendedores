unit Nota;


interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Comprobante;


type
  TNota = class(TComprobante)
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation

Constructor TNota.Create;
begin
  Inherited Create;
end;

Destructor TNota.Destroy;
begin
  Inherited Destroy;
end;

end.
