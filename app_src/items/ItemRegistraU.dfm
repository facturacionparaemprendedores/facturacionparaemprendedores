object ItemRegistraF: TItemRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Item Registra'
  ClientHeight = 799
  ClientWidth = 1128
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
    Width = 1128
    Height = 799
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 947
    ExplicitHeight = 211
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1128
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 947
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 49
      Width = 1128
      Height = 675
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 947
      ExplicitHeight = 87
      object PanelItemDatos: TPanel
        Left = 0
        Top = 0
        Width = 1128
        Height = 675
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 947
        ExplicitHeight = 87
        object GroupBox1: TGroupBox
          Left = 24
          Top = 73
          Width = 697
          Height = 536
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
            Width = 75
            Height = 15
            Caption = 'Impuestos IVA'
          end
          object Label10: TLabel
            Left = 28
            Top = 401
            Width = 99
            Height = 15
            Caption = 'A Cuenta Terceros:'
          end
          object Label11: TLabel
            Left = 28
            Top = 432
            Width = 83
            Height = 15
            Caption = 'Cuenta Prediall:'
          end
          object Label12: TLabel
            Left = 28
            Top = 463
            Width = 135
            Height = 15
            Caption = 'Complemento Concepto:'
          end
          object Label13: TLabel
            Left = 28
            Top = 496
            Width = 27
            Height = 15
            Caption = 'Parte'
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
            Width = 75
            Height = 25
            Caption = 'ButtonSelectImpuesto'
            TabOrder = 9
          end
          object Edit2: TEdit
            Left = 176
            Top = 393
            Width = 200
            Height = 23
            TabOrder = 10
          end
          object Button2: TButton
            Left = 400
            Top = 392
            Width = 75
            Height = 25
            Caption = 'ButtonSelectImpuesto'
            TabOrder = 11
          end
          object Button3: TButton
            Left = 400
            Top = 423
            Width = 75
            Height = 25
            Caption = 'ButtonSelectImpuesto'
            TabOrder = 12
          end
          object Edit3: TEdit
            Left = 176
            Top = 424
            Width = 200
            Height = 23
            TabOrder = 13
          end
          object Button4: TButton
            Left = 400
            Top = 454
            Width = 75
            Height = 25
            Caption = 'ButtonSelectImpuesto'
            TabOrder = 14
          end
          object Edit4: TEdit
            Left = 176
            Top = 455
            Width = 200
            Height = 23
            TabOrder = 15
          end
          object ButtonRegistrar: TButton
            Left = 432
            Top = 28
            Width = 105
            Height = 25
            Caption = 'Registrar'
            TabOrder = 16
          end
          object Edit5: TEdit
            Left = 176
            Top = 488
            Width = 200
            Height = 23
            TabOrder = 17
          end
          object Button1: TButton
            Left = 400
            Top = 487
            Width = 75
            Height = 25
            Caption = 'ButtonSelectImpuesto'
            TabOrder = 18
          end
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 724
      Width = 1128
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 136
      ExplicitWidth = 947
      object ButtonCerrar: TButton
        Left = 847
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 0
        OnClick = ButtonCerrarClick
      end
    end
  end
end
