unit DBC;

interface


uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI, FireDAC.Comp.Client,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDBC = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    function Connect(DB :string; DBHost: string; DBPort: string; DBUserName: string; DBPassword: string):Boolean;
    Constructor Create; virtual;
    Destructor Destroy; override;
  published
    FDBConnection: TFDConnection;
    FDTransaction: TFDTransaction;
    GUIxWaitCursor: TFDGUIxWaitCursor;
    FBDriver: TFDPhysFBDriverLink;
    FDQuery : TFDQuery;
  end;


implementation


function TDBC.Connect(DB :string; DBHost: string; DBPort: string; DBUserName: string; DBPassword: string):Boolean;
begin

  with FDBConnection do begin
    Close;
    with Params do begin
      Clear;
      Add('DriverID=FB');
      Add('Server='+ DBHost);
      Add('Database='+DB);
      Add('User_Name=' + DBUserName);
      Add('Password='+DBPassword);
    end;
    Open;
  end;


  Result :=  FDBConnection.Connected;
end;


Constructor TDBC.Create;
begin
  Inherited Create;

    FDBConnection := TFDConnection.Create(nil);

    FDTransaction := TFDTransaction.Create(nil);

    FDTransaction.Connection  := FDBConnection;

    FDBConnection.Transaction := FDTransaction;

    GUIxWaitCursor := TFDGUIxWaitCursor.Create(nil);

    FBDriver := TFDPhysFBDriverLink.Create(nil);

    FDQuery := TFDQuery.Create(nil);

    FDQuery.Connection:= FDBConnection;
    FDQuery.Transaction := FDTransaction;
end;

Destructor TDBC.Destroy;
begin
  Inherited Destroy;
end;



end.