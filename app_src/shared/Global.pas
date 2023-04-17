unit Global;

interface

uses

App, Config, DBC, User, Client,Item,
Empresa, PacAdmin, CertAdmin, ImpuestosAdmin, MetodoPagoAdmin, FormaPagoAdmin,
SeriesAdmin, LugarEexpAdmin, MonedaAdmin, TimbresAdmin;

  procedure Initialize;// este es para inicializar la unidad es decir se llama siempre que se carge launidad
  procedure DeInitialize;

var

  Initialized : Boolean = False;

  App : Tapp;

  User : TUser;
  Client : TClient;
  Item :TItem;
  Emp : TEmpresa;
  PacAdmin : TPacAdmin;
  CertAdmin : TCertAdmin;
  ImpuestosAdmin : TImpuestosAdmin;
  MetodoPagoAdmin: TMetodoPagoAdmin;
  FormaPagoAdmin: TFormaPagoAdmin;
  SeriesAdmin : TSeriesAdmin;
  LugarExpAdmin : TLugarExpAdmin;
  MonedaAdmin : TMonedaAdmin;
  TimbresAdmin : TTimbresAdmin;


implementation


procedure Initialize;
begin
  Initialized := False;
  App := Tapp.Create;

  User := TUser.Create;
  Client := TClient.Create;
  Item := TItem.Create;

  Emp := TEmpresa.Create;
  PacAdmin := TPacAdmin.Create;
  CertAdmin := TCertAdmin.Create;
  ImpuestosAdmin := TImpuestosAdmin.Create;
  MetodoPagoAdmin := TMetodoPagoAdmin.Create;
  FormaPagoAdmin := TFormaPagoAdmin.Create;
  SeriesAdmin := TSeriesAdmin.Create;
  LugarExpAdmin := TLugarExpAdmin.Create;
  MonedaAdmin := TMonedaAdmin.Create;
  TimbresAdmin := TTimbresAdmin.Create;

  Initialized := True;
end;



procedure DeInitialize;
begin
  App.Free;


  User.Free;
  Client.Free;
  Item.Free;
  Emp.Free;
  PacAdmin.Free;
  CertAdmin.Free;
  ImpuestosAdmin.Free;
  MetodoPagoAdmin.Free;
  FormaPagoAdmin.Free;
  SeriesAdmin.Free;
  LugarExpAdmin.Free;
  MonedaAdmin.Free;
  TimbresAdmin.Free;

end;



end.
