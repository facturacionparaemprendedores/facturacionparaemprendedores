unit BdCnectionU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TBdConectionF = class(TForm)
    BtnConectar: TButton;
    Label1: TLabel;
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDQuery1: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label2: TLabel;
    procedure BtnConectarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ConectaInter(sServer, sDatabase, sUser, sPass: String):boolean;
    procedure DesconectaInter;
  end;

var
  BdConectionF: TBdConectionF;

implementation

{$R *.dfm}


// ------------------------------------------------------------------
// Funcion: ConectaInter
// Objetivo: Conectar a la base de datos con los parametros recibidos
// Parámetros: sServer: el nombre o dirección IP del servidor
//             sDatabase: la ruta y nombre de la base de datos
//             sUser: el nombre del usuario para la base de datos
//             sPass: la contraseña del usuario para la base de datos
// Regresa: bRegreso (falso o verdadero)
//          falso: si no se conectó a la base de datos
//          verdadero: si se conectó a la base de datos
// ------------------------------------------------------------------
procedure TBdConectionF.Button1Click(Sender: TObject);
begin
 //crear por tiempo de ejecucion el componente  FDConnection1    FDTransaction1 FDPhysFBDriverLink1  FDGUIxWaitCursor1
end;

function TBdConectionF.ConectaInter(sServer, sDatabase, sUser, sPass: String):boolean;
var
    bRegreso : boolean;
begin
    bRegreso := true;

    FDConnection1.Connected := false;
    FDConnection1.Params.Clear;

    //FDConnection1.DriverName := 'Firebird';
    FDConnection1.ConnectionName := 'Ventas';
    FDConnection1.Params.Values['Database'] := sServer + ':' + sDatabase;
    FDConnection1.Params.Values['User_Name'] := sUser;
    FDConnection1.Params.Values['Password'] := sPass;
    FDConnection1.Params.Values['SQLDialect'] := '3';
    FDConnection1.Params.Values['DriverId'] := 'FB';
    FDConnection1.Params.Values['Protocol'] := 'TCP/IP';
//    FDConnection1.Params.Values['ServerCharSet'] := 'UTF8';
//    FDConnection1.Params.Values['BlobSize'] := '-1';
//    FDConnection1.Params.Values['CommitRetain'] := 'False';
//    FDConnection1.Params.Values['Interbase TransIsolation'] := 'ReadCommited';
//    FDConnection1.Params.Values['WaitOnLocks'] := 'True';
//    FDConnection1.Params.Values['EnableBCD'] := '0';

    FDConnection1.LoginPrompt := False;
  //  FDConnection1.Username := sUser;
//    FDConnection1.Password := sPass;
//    FDConnection1.ClientLibrary := 'fbclient.dll';
//    FDConnection1.Database      :=    sServer + ':' + sDatabase;
//    FDConnection1.Options.UseUnicode := True;

    try
        FDConnection1.Connected := true;

//       FDConnection1.Connect;
  //     FDConnection1.LoginPrompt := False;
       FDTransaction1.Active;
//       IBCTransaction2.Active := true;
       FDQuery1.Active := True;
    except
        bRegreso := false;

    end;
    Result := bRegreso;
end;

procedure TBdConectionF.DesconectaInter;
begin
    FDConnection1.Connected := false;
end;


procedure TBdConectionF.BtnConectarClick(Sender: TObject);
begin
 if ConectaInter('localhost','C:\dev\delphixe6\facturacionparaemprendedores\database\FACTEMPRENDE.FDB','sysdba','masterkey') = True
 then
 begin
   label1.Caption := 'Si conectado';
 end
 else
 begin
   label1.Caption := 'No conectado';
 end;
end;

end.
