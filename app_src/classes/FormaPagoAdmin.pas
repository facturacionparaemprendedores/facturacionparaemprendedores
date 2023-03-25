unit FormaPagoAdmin;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TFormaPagoAdmin = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id : Integer;
    Descripcion: string;
    Uso: string;
    TipoEspecial: string;
    Id_Emp: Integer;

    Qry: TQry;

    procedure New(Descripcion: string; Uso: string; TipoEspecial: string);
    procedure Update(Descripcion: string; Uso: string; TipoEspecial: string);
    procedure Delete;
    procedure GetAll();
    procedure GetByID(Id:Integer);
    procedure GetByDesc(Desc: string);
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TFormaPagoAdmin.New(Descripcion: string; Uso: string; TipoEspecial: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO FORMA_PAGO ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' DESCRIPCION, USO, TIPO_ESPECIAL, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :DESCRIPCION, :USO, :TIPO_ESPECIAL, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('DESCRIPCION').AsString := Descripcion;
  Qry.Querry.ParamByName('USO').AsString := Uso;
  Qry.Querry.ParamByName('TIPO_ESPECIAL').AsString := TipoEspecial;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;


procedure TFormaPagoAdmin.Update(Descripcion: string; Uso: string; TipoEspecial: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE FORMA_PAGO ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add('DESCRIPCION = :DESCRIPCION, USO = :USO, TIPO_ESPECIAL = :TIPO_ESPECIAL, ID_EMP = :ID_EMP');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('DESCRIPCION').AsString := Descripcion;
  Qry.Querry.ParamByName('USO').AsString := Uso;
  Qry.Querry.ParamByName('TIPO_ESPECIAL').AsString := TipoEspecial;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TFormaPagoAdmin.Delete;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM FORMA_PAGO ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TFormaPagoAdmin.GetAll;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, DESCRIPCION, USO, TIPO_ESPECIAL, ID_EMP ');
  Qry.Querry.SQL.Add('FROM FORMA_PAGO ');
  Qry.Querry.Open();

end;

procedure TFormaPagoAdmin.GetByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT  ID, DESCRIPCION, USO, TIPO_ESPECIAL, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM FORMA_PAGO ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Descripcion := Qry.Querry.FieldByName('DESCRIPCION').AsString;
  Uso := Qry.Querry.FieldByName('USO').AsString;
  TipoEspecial := Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

procedure TFormaPagoAdmin.GetByDesc(Desc: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, DESCRIPCION, USO, TIPO_ESPECIAL, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM FORMA_PAGO ');
  Qry.Querry.SQL.Add(' WHERE DESCRIPCION LIKE :DESCRIPCION' );

  Qry.Querry.ParamByName('DESCRIPCION').AsString :=  '%' + Desc +'%';

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Descripcion := Qry.Querry.FieldByName('DESCRIPCION').AsString;
  Uso := Qry.Querry.FieldByName('USO').AsString;
  TipoEspecial := Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;


Constructor TFormaPagoAdmin.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TFormaPagoAdmin.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.
