unit TimbresAdmin;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TTimbresAdmin = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id: Integer;
    Id_Pac: Integer;
    Pac: string;
    Comprados: Integer;
    Usados: Integer;
    Restantes: Integer;
    Avisar: Integer;
    Activo: Boolean;
    Id_Emp: Integer;

    Qry: TQry;

    procedure New(Id_Pac: Integer; Pac: string; Comprados: Integer; Avisar: Integer; Activo: Boolean);
    procedure Update(Id_Pac: Integer; Pac: string; Comprados: Integer; Avisar: Integer; Activo: Boolean);
    procedure Delete;
    procedure GetAll();
    procedure GetByID(Id:Integer);
    procedure GetByPAC(Pac_Nombre: string);
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TTimbresAdmin.New(Id_Pac: Integer; Pac: string; Comprados: Integer; Avisar: Integer; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO TIMBRES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' ID_PAC, PAC, COMPRADOS, AVISAR, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :ID_PAC, :PAC, :COMPRADOS, :AVISAR, :ACTIVO, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('ID_PAC').AsInteger := Id_Pac;
  Qry.Querry.ParamByName('PAC').AsString := Pac;
  Qry.Querry.ParamByName('COMPRADOS').AsInteger := Comprados;
  Qry.Querry.ParamByName('AVISAR').AsInteger := Avisar;
  Qry.Querry.ParamByName('ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;


procedure TTimbresAdmin.Update(Id_Pac: Integer; Pac: string; Comprados: Integer; Avisar: Integer; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE TIMBRES ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add(' ID_PAC = :ID_PAC, PAC = :PAC, COMPRADOS = :COMPRADOS, AVISAR = :AVISAR, ACTIVO = :ACTIVO, ID_EMP = :ID_EMP');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;
  Qry.Querry.ParamByName('ID_PAC').AsInteger := Id_Pac;
  Qry.Querry.ParamByName('PAC').AsString := Pac;
  Qry.Querry.ParamByName('COMPRADOS').AsInteger := Comprados;
  Qry.Querry.ParamByName('AVISAR').AsInteger := Avisar;
  Qry.Querry.ParamByName('ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;



  Qry.Querry.ExecSQL;
end;

procedure TTimbresAdmin.Delete;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM TIMBRES ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TTimbresAdmin.GetAll;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, ID_PAC, PAC, COMPRADOS, USADOS, RESTANTES, AVISAR, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add('FROM TIMBRES ');
  Qry.Querry.Open();

end;

procedure TTimbresAdmin.GetByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, ID_PAC, PAC, COMPRADOS, USADOS, RESTANTES, AVISAR, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM TIMBRES ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();


  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Id_Pac := Qry.Querry.FieldByName('ID_PAC').AsInteger;
  Pac:= Qry.Querry.FieldByName('PAC').AsString;
  Comprados := Qry.Querry.FieldByName('COMPRADOS').AsInteger;
  Usados := Qry.Querry.FieldByName('USADOS').AsInteger;
  Restantes := Qry.Querry.FieldByName('RESTANTES').AsInteger;
  Avisar := Qry.Querry.FieldByName('AVISAR').AsInteger;
  Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

procedure TTimbresAdmin.GetByPAC(Pac_Nombre: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, ID_PAC, PAC, COMPRADOS, USADOS, RESTANTES, AVISAR, ACTIVO, ID_EMP  ');
  Qry.Querry.SQL.Add(' FROM TIMBRES ');
  Qry.Querry.SQL.Add(' WHERE PAC LIKE :PAC' );

  Qry.Querry.ParamByName('PAC').AsString :=  '%' + Pac_Nombre +'%';

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Id_Pac := Qry.Querry.FieldByName('ID_PAC').AsInteger;
  Pac:= Qry.Querry.FieldByName('PAC').AsString;
  Comprados := Qry.Querry.FieldByName('COMPRADOS').AsInteger;
  Usados := Qry.Querry.FieldByName('USADOS').AsInteger;
  Restantes := Qry.Querry.FieldByName('RESTANTES').AsInteger;
  Avisar := Qry.Querry.FieldByName('AVISAR').AsInteger;
  Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;


Constructor TTimbresAdmin.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TTimbresAdmin.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.
