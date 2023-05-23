unit Factura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TFactura = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }

    Id_Concepto: Integer;
    ClaveProdServ: string;
    Id_Impuesto: Integer;
    Concepto_Id_Informacion_Aduanera: Integer;
    Id_Empconcepto: Integer;
    Objetoimp: string;
    Precio: Currency;
    Descripcion: string;
    Desc_Larga : string;
    Unidad: string;
    ClaveUnidad: string;
    NoIdentificacion: string;
    Id_Imp: Integer;
    Impuesto: string;
    TipoFactor: string;
    TasaOCuota: Currency;
    Id_EmpImp: Integer;
    InfoAdu_Id: Integer;
    NumeroPedimento: string;
    Id_Empinfoadu: Integer;
    Nombre_Impuesto: string;


    Qry: TQry;

    procedure New(Claveprodserv: string; Noidentificacion: string; Claveunidad: string; Unidad: string;
                  Descripcion: string; Desc_Larga: string; Precio: Currency; Objetoimp: string;
                  Id_Impuesto: Integer; Id_Informacion_Aduanera: Integer);


    procedure Update(Id :Integer; Claveprodserv: string; Noidentificacion: string; Claveunidad: string; Unidad: string;
                  Descripcion: string; Desc_Larga: string; Precio: Currency; Objetoimp: string;
                  Id_Impuesto: Integer; Id_Informacion_Aduanera: Integer);

    procedure Delete(id: Integer);

    procedure Get;
    procedure GetByID(Id:Integer);
    procedure GetByClave(Clave: string);
    procedure GetByDescripcion(Descripcion: string);

    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TFactura.New(Claveprodserv: string; Noidentificacion: string; Claveunidad: string; Unidad: string;
                  Descripcion: string; Desc_Larga: string; Precio: Currency; Objetoimp: string;
                  Id_Impuesto: Integer; Id_Informacion_Aduanera: Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO CONCEPTOS ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' CLAVEPRODSERV, NOIDENTIFICACION, CLAVEUNIDAD, UNIDAD, ');
  Qry.Querry.SQL.Add(' DESCRIPCION, DESC_LARGA, PRECIO, OBJETOIMP, ID_IMPUESTO, ID_INFORMACION_ADUANERA, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :CLAVEPRODSERV, :NOIDENTIFICACION, :CLAVEUNIDAD, :UNIDAD, ');
  Qry.Querry.SQL.Add(' :DESCRIPCION, :DESC_LARGA, :PRECIO, :OBJETOIMP, :ID_IMPUESTO, :ID_INFORMACION_ADUANERA, :ID_EMP ');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('CLAVEPRODSERV').AsString := Claveprodserv;
  Qry.Querry.ParamByName('NOIDENTIFICACION').AsString := Noidentificacion;
  Qry.Querry.ParamByName('CLAVEUNIDAD').AsString := Claveunidad;
  Qry.Querry.ParamByName('UNIDAD').AsString := Unidad;
  Qry.Querry.ParamByName('DESCRIPCION').AsString := Descripcion;
  Qry.Querry.ParamByName('DESC_LARGA').AsString := Desc_Larga;
  Qry.Querry.ParamByName('PRECIO').AsCurrency := Precio;   //Descuento creo que no, sino que es calculado al procesar el concepto
  Qry.Querry.ParamByName('OBJETOIMP').AsString := Objetoimp;
  Qry.Querry.ParamByName('ID_IMPUESTO').AsInteger := Id_Impuesto;
  Qry.Querry.ParamByName('ID_INFORMACION_ADUANERA').AsInteger := Id_Informacion_Aduanera;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;

procedure TFactura.Update(Id :Integer; Claveprodserv: string; Noidentificacion: string; Claveunidad: string; Unidad: string;
                  Descripcion: string; Desc_Larga: string; Precio: Currency; Objetoimp: string;
                  Id_Impuesto: Integer; Id_Informacion_Aduanera: Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE CONCEPTOS ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add(' CLAVEPRODSERV = :CLAVEPRODSERV, NOIDENTIFICACION = :NOIDENTIFICACION, CLAVEUNIDAD = :CLAVEUNIDAD, UNIDAD = :UNIDAD, ');
  Qry.Querry.SQL.Add(' DESCRIPCION = :DESCRIPCION, DESC_LARGA = :DESC_LARGA, PRECIO = :PRECIO, OBJETOIMP = :OBJETOIMP, ');
  Qry.Querry.SQL.Add(' ID_IMPUESTO = :ID_IMPUESTO, ID_INFORMACION_ADUANERA = :ID_INFORMACION_ADUANERA, ID_EMP = :ID_EMP ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('CLAVEPRODSERV').AsString := Claveprodserv;
  Qry.Querry.ParamByName('NOIDENTIFICACION').AsString := Noidentificacion;
  Qry.Querry.ParamByName('CLAVEUNIDAD').AsString := Claveunidad;
  Qry.Querry.ParamByName('UNIDAD').AsString := Unidad;
  Qry.Querry.ParamByName('DESCRIPCION').AsString := Descripcion;
  Qry.Querry.ParamByName('DESC_LARGA').AsString := Desc_Larga;
  Qry.Querry.ParamByName('PRECIO').AsCurrency := Precio;
  Qry.Querry.ParamByName('OBJETOIMP').AsString := Objetoimp;
  Qry.Querry.ParamByName('ID_IMPUESTO').AsInteger := Id_Impuesto;
  Qry.Querry.ParamByName('ID_INFORMACION_ADUANERA').AsInteger := Id_Informacion_Aduanera;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

    Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TFactura.Delete(id: Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM CONCEPTOS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');
  Qry.Querry.ParamByName('ID').AsInteger := Id;
  Qry.Querry.ExecSQL;
end;

procedure TFactura.Get();
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT  BASE2.*, ');
  Qry.Querry.SQL.Add('  I.ID as INFOADU_ID, ');
  Qry.Querry.SQL.Add('  I.NUMEROPEDIMENTO, ');
  Qry.Querry.SQL.Add('  I.ID_EMP AS ID_EMPINFOADU ');
  Qry.Querry.SQL.Add(' FROM  (SELECT ');
  Qry.Querry.SQL.Add('  A.ID AS ID_CONCEPTO, ');
  Qry.Querry.SQL.Add('  A.CLAVEPRODSERV, ');
  Qry.Querry.SQL.Add('  A.ID_IMPUESTO, ');
  Qry.Querry.SQL.Add('  A.ID_INFORMACION_ADUANERA AS CONCEPTO_ID_INFORMACION_ADUANERA, ');
  Qry.Querry.SQL.Add('  A.ID_EMP AS ID_EMPCONCEPTO, ');
  Qry.Querry.SQL.Add('  A.OBJETOIMP, ');
  Qry.Querry.SQL.Add('  A.PRECIO, ');
  Qry.Querry.SQL.Add('  A.DESC_LARGA, ');
  Qry.Querry.SQL.Add('  A.DESCRIPCION, ');
  Qry.Querry.SQL.Add('  A.UNIDAD, ');
  Qry.Querry.SQL.Add('  A.CLAVEUNIDAD, ');
  Qry.Querry.SQL.Add('  A.NOIDENTIFICACION, ');
  Qry.Querry.SQL.Add('  B.ID AS ID_IMP, ');
  Qry.Querry.SQL.Add('  B.IMPUESTO, ');
  Qry.Querry.SQL.Add('  B.TIPOFACTOR, ');
  Qry.Querry.SQL.Add('  B.TASAOCUOTA, ');
  Qry.Querry.SQL.Add('  B.ID_EMP AS ID_EMPIMP ');
  Qry.Querry.SQL.Add(' FROM ');
  Qry.Querry.SQL.Add('  CONCEPTOS A ');
  Qry.Querry.SQL.Add('  LEFT  JOIN IMPUESTOS B ');
  Qry.Querry.SQL.Add('  ON A.ID_IMPUESTO = B.ID ');
  Qry.Querry.SQL.Add('  ) AS BASE2 ');
  Qry.Querry.SQL.Add(' LEFT JOIN INFORMACION_ADUANERA I       ');
  Qry.Querry.SQL.Add(' ON BASE2.CONCEPTO_ID_INFORMACION_ADUANERA = I.ID ');
  Qry.Querry.Open();
end;

procedure TFactura.GetByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;

  Qry.Querry.SQL.Add('SELECT  BASE2.*, ');
  Qry.Querry.SQL.Add('  I.ID as INFOADU_ID, ');
  Qry.Querry.SQL.Add('  I.NUMEROPEDIMENTO, ');
  Qry.Querry.SQL.Add('  I.ID_EMP AS ID_EMPINFOADU ');
  Qry.Querry.SQL.Add(' FROM  (SELECT ');
  Qry.Querry.SQL.Add('  A.ID AS ID_CONCEPTO, ');
  Qry.Querry.SQL.Add('  A.CLAVEPRODSERV, ');
  Qry.Querry.SQL.Add('  A.ID_IMPUESTO, ');
  Qry.Querry.SQL.Add('  A.ID_INFORMACION_ADUANERA AS CONCEPTO_ID_INFORMACION_ADUANERA, ');
  Qry.Querry.SQL.Add('  A.ID_EMP AS ID_EMPCONCEPTO, ');
  Qry.Querry.SQL.Add('  A.OBJETOIMP, ');
  Qry.Querry.SQL.Add('  A.PRECIO, ');
  Qry.Querry.SQL.Add('  A.DESC_LARGA, ');
  Qry.Querry.SQL.Add('  A.DESCRIPCION, ');
  Qry.Querry.SQL.Add('  A.UNIDAD, ');
  Qry.Querry.SQL.Add('  A.CLAVEUNIDAD, ');
  Qry.Querry.SQL.Add('  A.NOIDENTIFICACION, ');
  Qry.Querry.SQL.Add('  B.ID AS ID_IMP, ');
  Qry.Querry.SQL.Add('  B.IMPUESTO, ');
  Qry.Querry.SQL.Add('  B.TIPOFACTOR, ');
  Qry.Querry.SQL.Add('  B.TASAOCUOTA, ');
  Qry.Querry.SQL.Add('  B.ID_EMP AS ID_EMPIMP ');
  Qry.Querry.SQL.Add(' FROM ');
  Qry.Querry.SQL.Add('  CONCEPTOS A ');
  Qry.Querry.SQL.Add('  LEFT  JOIN IMPUESTOS B ');
  Qry.Querry.SQL.Add('  ON A.ID_IMPUESTO = B.ID ');
  Qry.Querry.SQL.Add('  ) AS BASE2 ');
  Qry.Querry.SQL.Add(' LEFT JOIN INFORMACION_ADUANERA I       ');
  Qry.Querry.SQL.Add(' ON BASE2.CONCEPTO_ID_INFORMACION_ADUANERA = I.ID ');
  Qry.Querry.SQL.Add(' WHERE ID_CONCEPTO = :ID_CONCEPTO');
  Qry.Querry.ParamByName('ID_CONCEPTO').AsInteger := Id;

  Qry.Querry.Open();

  Id_Concepto                        :=  Qry.Querry.FieldByName('ID_CONCEPTO').AsInteger; //integer
  ClaveProdServ                      :=  Qry.Querry.FieldByName('CLAVEPRODSERV').AsString;         //string
  Id_Impuesto                        :=  Qry.Querry.FieldByName('ID_IMPUESTO').AsInteger; // integer
  Concepto_Id_Informacion_Aduanera   :=  Qry.Querry.FieldByName('CONCEPTO_ID_INFORMACION_ADUANERA').AsInteger; // integer
  Id_Empconcepto                     :=  Qry.Querry.FieldByName('ID_EMPCONCEPTO').AsInteger; // integer
  Objetoimp                          :=  Qry.Querry.FieldByName('OBJETOIMP').AsString;
  Precio                             :=  Qry.Querry.FieldByName('PRECIO').AsCurrency;//puede ser currency
  Descripcion                        :=  Qry.Querry.FieldByName('DESCRIPCION').AsString;//string
  Desc_Larga                         :=  Qry.Querry.FieldByName('DESC_LARGA').AsString;//string
  Unidad                             :=  Qry.Querry.FieldByName('UNIDAD').AsString;//string
  ClaveUnidad                        :=  Qry.Querry.FieldByName('CLAVEUNIDAD').AsString; //string
  NoIdentificacion                   :=  Qry.Querry.FieldByName('NOIDENTIFICACION').AsString; // string
  Id_Imp                             :=  Qry.Querry.FieldByName('ID_IMP').AsInteger;  //integr
  Impuesto                           :=  Qry.Querry.FieldByName('IMPUESTO').AsString; // string nombre del impuesto
  TipoFactor                         :=  Qry.Querry.FieldByName('TIPOFACTOR').AsString;//string
  TasaOCuota                         :=  Qry.Querry.FieldByName('TASAOCUOTA').AsCurrency; //curency
  Id_EmpImp                          :=  Qry.Querry.FieldByName('ID_EMPIMP').AsInteger; // integer
  InfoAdu_Id                         :=  Qry.Querry.FieldByName('INFOADU_ID').AsInteger;//integer
  NumeroPedimento                    :=  Qry.Querry.FieldByName('NUMEROPEDIMENTO').AsString; // string
  Id_Empinfoadu                      :=  Qry.Querry.FieldByName('ID_EMPINFOADU').AsInteger;/// integer
end;

procedure TFactura.GetByClave(Clave: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;

  Qry.Querry.SQL.Add('SELECT  BASE2.*, ');
  Qry.Querry.SQL.Add('  I.ID as INFOADU_ID, ');
  Qry.Querry.SQL.Add('  I.NUMEROPEDIMENTO, ');
  Qry.Querry.SQL.Add('  I.ID_EMP AS ID_EMPINFOADU ');
  Qry.Querry.SQL.Add(' FROM  (SELECT ');
  Qry.Querry.SQL.Add('  A.ID AS ID_CONCEPTO, ');
  Qry.Querry.SQL.Add('  A.CLAVEPRODSERV, ');
  Qry.Querry.SQL.Add('  A.ID_IMPUESTO, ');
  Qry.Querry.SQL.Add('  A.ID_INFORMACION_ADUANERA AS CONCEPTO_ID_INFORMACION_ADUANERA, ');
  Qry.Querry.SQL.Add('  A.ID_EMP AS ID_EMPCONCEPTO, ');
  Qry.Querry.SQL.Add('  A.OBJETOIMP, ');
  Qry.Querry.SQL.Add('  A.PRECIO, ');
  Qry.Querry.SQL.Add('  A.DESC_LARGA, ');
  Qry.Querry.SQL.Add('  A.DESCRIPCION, ');
  Qry.Querry.SQL.Add('  A.UNIDAD, ');
  Qry.Querry.SQL.Add('  A.CLAVEUNIDAD, ');
  Qry.Querry.SQL.Add('  A.NOIDENTIFICACION, ');
  Qry.Querry.SQL.Add('  B.ID AS ID_IMP, ');
  Qry.Querry.SQL.Add('  B.IMPUESTO, ');
  Qry.Querry.SQL.Add('  B.TIPOFACTOR, ');
  Qry.Querry.SQL.Add('  B.TASAOCUOTA, ');
  Qry.Querry.SQL.Add('  B.ID_EMP AS ID_EMPIMP ');
  Qry.Querry.SQL.Add(' FROM ');
  Qry.Querry.SQL.Add('  CONCEPTOS A ');
  Qry.Querry.SQL.Add('  LEFT  JOIN IMPUESTOS B ');
  Qry.Querry.SQL.Add('  ON A.ID_IMPUESTO = B.ID ');
  Qry.Querry.SQL.Add('  ) AS BASE2 ');
  Qry.Querry.SQL.Add(' LEFT JOIN INFORMACION_ADUANERA I       ');
  Qry.Querry.SQL.Add(' ON BASE2.CONCEPTO_ID_INFORMACION_ADUANERA = I.ID ');

  Qry.Querry.SQL.Add(' WHERE CLAVEPRODSERV = :CLAVEPRODSERV');

  Qry.Querry.ParamByName('CLAVEPRODSERV').AsString := Clave;

  Qry.Querry.Open();

  Id_Concepto                        :=  Qry.Querry.FieldByName('ID_CONCEPTO').AsInteger; //integer
  ClaveProdServ                      :=  Qry.Querry.FieldByName('CLAVEPRODSERV').AsString;         //string
  Id_Impuesto                        :=  Qry.Querry.FieldByName('ID_IMPUESTO').AsInteger; // integer
  Concepto_Id_Informacion_Aduanera   :=  Qry.Querry.FieldByName('CONCEPTO_ID_INFORMACION_ADUANERA').AsInteger; // integer
  Id_Empconcepto                     :=  Qry.Querry.FieldByName('ID_EMPCONCEPTO').AsInteger; // integer
  Objetoimp                          :=  Qry.Querry.FieldByName('OBJETOIMP').AsString;
  Precio                             :=  Qry.Querry.FieldByName('PRECIO').AsCurrency;//puede ser currency
  Descripcion                        :=  Qry.Querry.FieldByName('DESCRIPCION').AsString;//string
  Desc_Larga                         :=  Qry.Querry.FieldByName('DESC_LARGA').AsString;//string
  Unidad                             :=  Qry.Querry.FieldByName('UNIDAD').AsString;//string
  ClaveUnidad                        :=  Qry.Querry.FieldByName('CLAVEUNIDAD').AsString; //string
  NoIdentificacion                   :=  Qry.Querry.FieldByName('NOIDENTIFICACION').AsString; // string
  Id_Imp                             :=  Qry.Querry.FieldByName('ID_IMP').AsInteger;  //integr
  Impuesto                           :=  Qry.Querry.FieldByName('IMPUESTO').AsString; // string nombre del impuesto
  TipoFactor                         :=  Qry.Querry.FieldByName('TIPOFACTOR').AsString;//string
  TasaOCuota                         :=  Qry.Querry.FieldByName('TASAOCUOTA').AsCurrency; //curency
  Id_EmpImp                          :=  Qry.Querry.FieldByName('ID_EMPIMP').AsInteger; // integer
  InfoAdu_Id                         :=  Qry.Querry.FieldByName('INFOADU_ID').AsInteger;//integer
  NumeroPedimento                    :=  Qry.Querry.FieldByName('NUMEROPEDIMENTO').AsString; // string
  Id_Empinfoadu                      :=  Qry.Querry.FieldByName('ID_EMPINFOADU').AsInteger;/// integer

end;

procedure TFactura.GetByDescripcion(Descripcion: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;

  Qry.Querry.SQL.Add('SELECT  BASE2.*, ');
  Qry.Querry.SQL.Add('  I.ID as INFOADU_ID, ');
  Qry.Querry.SQL.Add('  I.NUMEROPEDIMENTO, ');
  Qry.Querry.SQL.Add('  I.ID_EMP AS ID_EMPINFOADU ');
  Qry.Querry.SQL.Add(' FROM  (SELECT ');
  Qry.Querry.SQL.Add('  A.ID AS ID_CONCEPTO, ');
  Qry.Querry.SQL.Add('  A.CLAVEPRODSERV, ');
  Qry.Querry.SQL.Add('  A.ID_IMPUESTO, ');
  Qry.Querry.SQL.Add('  A.ID_INFORMACION_ADUANERA AS CONCEPTO_ID_INFORMACION_ADUANERA, ');
  Qry.Querry.SQL.Add('  A.ID_EMP AS ID_EMPCONCEPTO, ');
  Qry.Querry.SQL.Add('  A.OBJETOIMP, ');
  Qry.Querry.SQL.Add('  A.PRECIO, ');
  Qry.Querry.SQL.Add('  A.DESC_LARGA, ');
  Qry.Querry.SQL.Add('  A.DESCRIPCION, ');
  Qry.Querry.SQL.Add('  A.UNIDAD, ');
  Qry.Querry.SQL.Add('  A.CLAVEUNIDAD, ');
  Qry.Querry.SQL.Add('  A.NOIDENTIFICACION, ');
  Qry.Querry.SQL.Add('  B.ID AS ID_IMP, ');
  Qry.Querry.SQL.Add('  B.IMPUESTO, ');
  Qry.Querry.SQL.Add('  B.TIPOFACTOR, ');
  Qry.Querry.SQL.Add('  B.TASAOCUOTA, ');
  Qry.Querry.SQL.Add('  B.ID_EMP AS ID_EMPIMP ');
  Qry.Querry.SQL.Add(' FROM ');
  Qry.Querry.SQL.Add('  CONCEPTOS A ');
  Qry.Querry.SQL.Add('  LEFT  JOIN IMPUESTOS B ');
  Qry.Querry.SQL.Add('  ON A.ID_IMPUESTO = B.ID ');
  Qry.Querry.SQL.Add('  ) AS BASE2 ');
  Qry.Querry.SQL.Add(' LEFT JOIN INFORMACION_ADUANERA I       ');
  Qry.Querry.SQL.Add(' ON BASE2.CONCEPTO_ID_INFORMACION_ADUANERA = I.ID ');

  Qry.Querry.SQL.Add(' WHERE DESCRIPCION LIKE :DESCRIPCION');

  Qry.Querry.ParamByName('DESCRIPCION').AsString := '%' +  Descripcion +'%';

  Qry.Querry.Open();

  Id_Concepto                        :=  Qry.Querry.FieldByName('ID_CONCEPTO').AsInteger; //integer
  ClaveProdServ                      :=  Qry.Querry.FieldByName('CLAVEPRODSERV').AsString;         //string
  Id_Impuesto                        :=  Qry.Querry.FieldByName('ID_IMPUESTO').AsInteger; // integer
  Concepto_Id_Informacion_Aduanera   :=  Qry.Querry.FieldByName('CONCEPTO_ID_INFORMACION_ADUANERA').AsInteger; // integer
  Id_Empconcepto                     :=  Qry.Querry.FieldByName('ID_EMPCONCEPTO').AsInteger; // integer
  Objetoimp                          :=  Qry.Querry.FieldByName('OBJETOIMP').AsString;
  Precio                             :=  Qry.Querry.FieldByName('PRECIO').AsCurrency;//puede ser currency
  Descripcion                        :=  Qry.Querry.FieldByName('DESCRIPCION').AsString;//string
  Desc_Larga                         :=  Qry.Querry.FieldByName('DESC_LARGA').AsString;//string
  Unidad                             :=  Qry.Querry.FieldByName('UNIDAD').AsString;//string
  ClaveUnidad                        :=  Qry.Querry.FieldByName('CLAVEUNIDAD').AsString; //string
  NoIdentificacion                   :=  Qry.Querry.FieldByName('NOIDENTIFICACION').AsString; // string
  Id_Imp                             :=  Qry.Querry.FieldByName('ID_IMP').AsInteger;  //integr
  Impuesto                           :=  Qry.Querry.FieldByName('IMPUESTO').AsString; // string nombre del impuesto
  TipoFactor                         :=  Qry.Querry.FieldByName('TIPOFACTOR').AsString;//string
  TasaOCuota                         :=  Qry.Querry.FieldByName('TASAOCUOTA').AsCurrency; //curency
  Id_EmpImp                          :=  Qry.Querry.FieldByName('ID_EMPIMP').AsInteger; // integer
  InfoAdu_Id                         :=  Qry.Querry.FieldByName('INFOADU_ID').AsInteger;//integer
  NumeroPedimento                    :=  Qry.Querry.FieldByName('NUMEROPEDIMENTO').AsString; // string
  Id_Empinfoadu                      :=  Qry.Querry.FieldByName('ID_EMPINFOADU').AsInteger;/// integer
end;

Constructor TFactura.Create;
begin
  Inherited Create;

  Qry := TQry.Create;

end;

Destructor TFactura.Destroy;
begin
  Inherited Destroy;
   Qry.Free
end;

end.