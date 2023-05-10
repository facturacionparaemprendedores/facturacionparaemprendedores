object ItemRegistraF: TItemRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Item Registra'
  ClientHeight = 553
  ClientWidth = 623
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
    Width = 623
    Height = 553
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 769
    ExplicitHeight = 790
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 623
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = -6
      ExplicitWidth = 775
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 49
      Width = 623
      Height = 429
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 769
      ExplicitHeight = 666
      object PanelItemDatos: TPanel
        Left = 0
        Top = 0
        Width = 623
        Height = 429
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 769
        ExplicitHeight = 666
        object GroupBox1: TGroupBox
          Left = 16
          Top = 25
          Width = 577
          Height = 432
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
            Width = 128
            Height = 15
            Caption = 'Clave Producto Servixio:'
          end
          object Label4: TLabel
            Left = 20
            Top = 102
            Width = 51
            Height = 15
            Caption = 'Cantidad:'
          end
          object Label5: TLabel
            Left = 20
            Top = 138
            Width = 73
            Height = 15
            Caption = 'Clave Unidad:'
          end
          object Label6: TLabel
            Left = 20
            Top = 174
            Width = 41
            Height = 15
            Caption = 'Unidad:'
          end
          object Label7: TLabel
            Left = 20
            Top = 207
            Width = 65
            Height = 15
            Caption = 'Descripcion:'
          end
          object Label3: TLabel
            Left = 20
            Top = 240
            Width = 74
            Height = 15
            Caption = 'Valor Unitario:'
          end
          object Label8: TLabel
            Left = 20
            Top = 275
            Width = 45
            Height = 15
            Caption = 'Importe:'
          end
          object Bevel1: TBevel
            Left = 24
            Top = 328
            Width = 409
            Height = 1
          end
          object Label9: TLabel
            Left = 28
            Top = 361
            Width = 50
            Height = 15
            Caption = 'Impuesto'
          end
          object EditNoIdent: TEdit
            Left = 168
            Top = 62
            Width = 200
            Height = 23
            TabOrder = 0
          end
          object EditClaveProdServ: TEdit
            Left = 168
            Top = 25
            Width = 200
            Height = 23
            TabOrder = 1
          end
          object EditCantidad: TEdit
            Left = 168
            Top = 99
            Width = 200
            Height = 23
            TabOrder = 2
          end
          object EditClaveUnidad: TEdit
            Left = 168
            Top = 135
            Width = 200
            Height = 23
            TabOrder = 3
          end
          object EditUnidad: TEdit
            Left = 168
            Top = 171
            Width = 200
            Height = 23
            TabOrder = 4
          end
          object EditDesc: TEdit
            Left = 168
            Top = 204
            Width = 200
            Height = 23
            TabOrder = 5
          end
          object EditValorUnitario: TEdit
            Left = 168
            Top = 237
            Width = 200
            Height = 23
            TabOrder = 6
          end
          object EditImporte: TEdit
            Left = 168
            Top = 272
            Width = 200
            Height = 23
            TabOrder = 7
          end
          object EditImpuesto: TEdit
            Left = 176
            Top = 353
            Width = 200
            Height = 23
            TabOrder = 8
          end
          object ButtonSelectImpuesto: TButton
            Left = 400
            Top = 352
            Width = 137
            Height = 25
            Caption = 'Selecciona Impuesto'
            TabOrder = 9
            OnClick = ButtonSelectImpuestoClick
          end
          object ButtonRegistrar: TButton
            Left = 416
            Top = 24
            Width = 105
            Height = 25
            Caption = 'Registrar'
            TabOrder = 10
          end
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 478
      Width = 623
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 715
      ExplicitWidth = 769
      object ButtonCerrar: TButton
        Left = 510
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 0
        OnClick = ButtonCerrarClick
      end
    end
  end
end
