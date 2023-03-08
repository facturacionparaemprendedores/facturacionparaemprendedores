unit Global;

interface

uses

App, Config, DBC, User, Client,Item;

  procedure Initialize;// este es para inicializar la unidad es decir se llama siempre que se carge launidad
  procedure DeInitialize;

var

  Initialized : Boolean = False;
  App : Tapp;

    User : TUser;
    Client : TClient;
    Item :TItem;
    //DB: TDBC;

implementation


procedure Initialize;
begin
  Initialized := False;
  App := Tapp.Create;




  User := TUser.Create;
  Client := TClient.Create;
  Item := TItem.Create;

  Initialized := True;
end;



procedure DeInitialize;
begin
  App.Free;


  User.Free;
  Client.Free;
  Item.Free;

end;



end.
