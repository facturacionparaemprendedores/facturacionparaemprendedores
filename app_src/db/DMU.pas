unit DMU;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI, FireDAC.Comp.Client,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.FBDef;

type
  TDMF = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery1: TFDQuery;



  private
    { Private declarations }
  public
    { Public declarations }

    procedure CreaComps;
    function Connect(DB :string; DBHost: string; DBPort: string; DBUserName: string; DBPassword: string):Boolean;

  published
    FDBConnection: TFDConnection;
    FDTransaction: TFDTransaction;
    GUIxWaitCursor: TFDGUIxWaitCursor;
    FBDriver: TFDPhysFBDriverLink;
    FDQuery : TFDQuery;
  end;

var
  DMF: TDMF;





implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMF.CreaComps;
begin
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


function TDMF.Connect(DB :string; DBHost: string; DBPort: string; DBUserName: string; DBPassword: string):Boolean;
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


end.
