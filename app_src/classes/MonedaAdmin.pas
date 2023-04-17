unit MonedaAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TMonedaAdmin = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id : Integer;
    Descripcion: string;
    Uso : string;
    Tipo_Especial: string;
    Activo: Boolean;
    Id_Emp: Integer;

    Qry: TQry;

    procedure New(Descripcion: string; Uso: string; Tipo_Especial: string; Activo: Boolean);
    procedure Update(Descripcion: string; Uso: string; Tipo_Especial: string; Activo: Boolean);
    procedure Delete;
    procedure GetAll();
    procedure GetByID(Id:Integer);
    procedure GetByDescripcion(Descripcion: string);
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TMonedaAdmin.New(Descripcion: string; Uso: string; Tipo_Especial: string; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO MONEDA ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' DESCRIPCION, USO, TIPO_ESPECIAL, ACTIVO, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :DESCRIPCION, :USO, :TIPO_ESPECIAL, :ACTIVO, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('DESCRIPCION').AsString := Descripcion;
  Qry.Querry.ParamByName('USO').AsString := Uso;
  Qry.Querry.ParamByName('TIPO_ESPECIAL').AsString := Tipo_Especial;
  Qry.Querry.ParamByName('ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;


procedure TMonedaAdmin.Update(Descripcion: string; Uso: string; Tipo_Especial: string; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE MONEDA ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add(' DESCRIPCION = :DESCRIPCION, USO = :USO, TIPO_ESPECIAL =:TIPO_ESPECIAL, ACTIVO = :ACTIVO, ID_EMP = :ID_EMP');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;
  Qry.Querry.ParamByName('DESCRIPCION').AsString := Descripcion;
  Qry.Querry.ParamByName('USO').AsString := Uso;
  Qry.Querry.ParamByName('TIPO_ESPECIAL').AsString := Tipo_Especial;
  Qry.Querry.ParamByName('ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;



  Qry.Querry.ExecSQL;
end;

procedure TMonedaAdmin.Delete;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM MONEDA ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TMonedaAdmin.GetAll;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, DESCRIPCION, USO, TIPO_ESPECIAL, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add('FROM MONEDA ');
  Qry.Querry.Open();

end;

procedure TMonedaAdmin.GetByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, DESCRIPCION, USO, TIPO_ESPECIAL, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM MONEDA ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Descripcion:= Qry.Querry.FieldByName('DESCRIPCION').AsString;
  Uso := Qry.Querry.FieldByName('USO').AsString;
  Tipo_Especial := Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;
  Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

procedure TMonedaAdmin.GetByDescripcion(Descripcion: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, DESCRIPCION, USO, TIPO_ESPECIAL, ACTIVO, ID_EMP  ');
  Qry.Querry.SQL.Add(' FROM MONEDA ');
  Qry.Querry.SQL.Add(' WHERE DESCRIPCION LIKE :DESCRIPCION' );

  Qry.Querry.ParamByName('DESCRIPCION').AsString :=  '%' + Descripcion +'%';

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Descripcion:= Qry.Querry.FieldByName('DESCRIPCION').AsString;
  Uso := Qry.Querry.FieldByName('USO').AsString;
  Tipo_Especial := Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;
  Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;


Constructor TMonedaAdmin.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TMonedaAdmin.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.