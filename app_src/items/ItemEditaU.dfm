object ItemEditaF: TItemEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Item Edita'
  ClientHeight = 598
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 598
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 711
    ExplicitHeight = 580
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 721
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 711
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 49
      Width = 721
      Height = 494
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 711
      ExplicitHeight = 476
      object PanelItemDatos: TPanel
        Left = 0
        Top = 0
        Width = 721
        Height = 494
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 711
        ExplicitHeight = 476
        object GroupBox1: TGroupBox
          Left = 24
          Top = 25
          Width = 665
          Height = 384
          TabOrder = 0
          object Label2: TLabel
            Left = 20
            Top = 65
            Width = 91
            Height = 15
            Caption = 'NoIdentificacion:'
          end
          object Label1: TLabel
            Left = 20
            Top = 28
            Width = 127
            Height = 15
            Caption = 'Clave Producto Servixio:'
          end
          object Label5: TLabel
            Left = 20
            Top = 94
            Width = 73
            Height = 15
            Caption = 'Clave Unidad:'
          end
          object Label6: TLabel
            Left = 20
            Top = 127
            Width = 41
            Height = 15
            Caption = 'Unidad:'
          end
          object Label7: TLabel
            Left = 20
            Top = 160
            Width = 65
            Height = 15
            Caption = 'Descripcion:'
          end
          object Label3: TLabel
            Left = 20
            Top = 224
            Width = 36
            Height = 15
            Caption = 'Precio:'
          end
          object Label8: TLabel
            Left = 20
            Top = 255
            Width = 92
            Height = 15
            Caption = 'Objeto Impuesto:'
          end
          object Bevel1: TBevel
            Left = 24
            Top = 290
            Width = 513
            Height = 1
          end
          object Label9: TLabel
            Left = 20
            Top = 306
            Width = 53
            Height = 15
            Caption = 'Impuesto:'
          end
          object Label4: TLabel
            Left = 20
            Top = 191
            Width = 94
            Height = 15
            Caption = 'Descripcion Larga'
          end
          object Label10: TLabel
            Left = 20
            Top = 338
            Width = 119
            Height = 15
            Caption = 'Informacion Aduanera'
          end
          object EditConceptoNoIdent: TEdit
            Left = 175
            Top = 62
            Width = 200
            Height = 23
            TabOrder = 1
          end
          object EditConceptoClaveProdServ: TEdit
            Left = 175
            Top = 25
            Width = 200
            Height = 23
            TabOrder = 0
          end
          object EditConceptoClaveUnidad: TEdit
            Left = 175
            Top = 91
            Width = 200
            Height = 23
            TabOrder = 2
          end
          object EditConceptoUnidad: TEdit
            Left = 175
            Top = 124
            Width = 200
            Height = 23
            TabOrder = 3
          end
          object EditConceptoDesc: TEdit
            Left = 175
            Top = 157
            Width = 200
            Height = 23
            TabOrder = 4
          end
          object EditConceptoPrecio: TEdit
            Left = 175
            Top = 221
            Width = 200
            Height = 23
            TabOrder = 6
          end
          object EditConceptoObjetoImp: TEdit
            Left = 175
            Top = 252
            Width = 200
            Height = 23
            TabOrder = 7
          end
          object EditConceptoImpuesto: TEdit
            Left = 175
            Top = 303
            Width = 200
            Height = 23
            TabOrder = 8
          end
          object ButtonSelectImpuesto: TButton
            Left = 400
            Top = 302
            Width = 233
            Height = 25
            Caption = 'Selecciona Impuesto'
            TabOrder = 9
            OnClick = ButtonSelectImpuestoClick
          end
          object ButtonGuardar: TButton
            Left = 416
            Top = 24
            Width = 105
            Height = 25
            Caption = 'Guardar'
            TabOrder = 12
            OnClick = ButtonGuardarClick
          end
          object EditConceptoDescLarga: TEdit
            Left = 175
            Top = 188
            Width = 265
            Height = 23
            TabOrder = 5
          end
          object EditConceptoInfoAduaPedimento: TEdit
            Left = 175
            Top = 335
            Width = 200
            Height = 23
            TabOrder = 10
          end
          object ButtonSelecInfoAduanera: TButton
            Left = 400
            Top = 333
            Width = 233
            Height = 25
            Caption = 'Selecciona Informacion Aduanera'
            TabOrder = 11
            OnClick = ButtonSelecInfoAduaneraClick
          end
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 543
      Width = 721
      Height = 55
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 525
      ExplicitWidth = 711
      object ButtonCerrar: TButton
        Left = 614
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 0
        OnClick = ButtonCerrarClick
      end
    end
  end
end
