unit Qry;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI, FireDAC.Comp.Client,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Winapi.Windows, Winapi.Messages,  System.Variants,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBC, Config;


type
  TQry = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create; virtual;  // This constructor uses defaults
    Destructor Destroy; override;
  published
    Querry : TFDQuery;
    DB: TDBC;
    Cfg: TConfig;
  end;

implementation


Constructor TQry.Create;
begin
  Inherited Create;
  Cfg:= TConfig.Create;
  DB := TDBC.Create;
  DB.Connect(Cfg.FDB, Cfg.FDBHost, Cfg.FDBPort, Cfg.FDBUserName, Cfg.FDBPassword) ;

  Querry := TFDQuery.Create(nil);

  Querry.Connection := DB.FDBConnection;
  Querry.Transaction := DB.FDTransaction;

end;

Destructor TQry.Destroy;
begin
  Inherited Destroy;
  DB.Free;
  Querry.Free;
  Cfg.Free;
end;

end.
