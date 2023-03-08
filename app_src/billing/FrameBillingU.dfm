object FrameBilling: TFrameBilling
  Left = 0
  Top = 0
  Width = 1508
  Height = 1059
  TabOrder = 0
  PixelsPerInch = 96
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 1508
    Height = 1059
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1508
      Height = 401
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel1: TPanel
        Left = 0
        Top = 100
        Width = 1508
        Height = 201
        Align = alTop
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1175
          Height = 199
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 19
            Top = 60
            Width = 104
            Height = 25
            Caption = 'Razon Social:'
          end
          object Label4: TLabel
            Left = 19
            Top = 20
            Width = 47
            Height = 25
            Caption = 'R.F.C.:'
          end
          object EditReceptorRFC: TEdit
            Left = 155
            Top = 17
            Width = 398
            Height = 33
            TabOrder = 0
          end
          object EditReceptorRazSoc: TEdit
            Left = 155
            Top = 57
            Width = 398
            Height = 33
            TabOrder = 1
          end
          object ButtonClienteAgregar: TButton
            Left = 624
            Top = 12
            Width = 249
            Height = 35
            Caption = 'Agregar Cliente'
            TabOrder = 2
            OnClick = ButtonSelectClienteClick
          end
          object ButtonProdServAgregar: TButton
            Left = 624
            Top = 103
            Width = 249
            Height = 35
            Caption = 'Agregar Producto/Servicio'
            TabOrder = 3
            OnClick = ButtonProdServAgregarClick
          end
          object ButtonFinalizarVenta: TButton
            Left = 904
            Top = 17
            Width = 241
            Height = 25
            Caption = 'Finalizar Venta'
            TabOrder = 4
          end
          object ButtonCancelarVenta: TButton
            Left = 904
            Top = 55
            Width = 241
            Height = 33
            Caption = 'Cancelar Venta'
            TabOrder = 5
          end
          object ButtonIngresarPagos: TButton
            Left = 904
            Top = 104
            Width = 241
            Height = 25
            Caption = 'Ingresar Pagos'
            TabOrder = 6
            OnClick = ButtonIngresarPagosClick
          end
          object ButtonEliminarPago: TButton
            Left = 904
            Top = 144
            Width = 241
            Height = 25
            Caption = 'Eliminar Pago'
            TabOrder = 7
          end
          object ButtonClienteEliminar: TButton
            Left = 624
            Top = 53
            Width = 249
            Height = 35
            Caption = 'Eliminar Cliente'
            TabOrder = 8
            OnClick = ButtonClienteEliminarClick
          end
          object ButtonProdServEliminar: TButton
            Left = 624
            Top = 144
            Width = 249
            Height = 35
            Caption = 'Eliminar Producto/Servicio'
            TabOrder = 9
            OnClick = ButtonProdServEliminarClick
          end
        end
        object Panel3: TPanel
          Left = 1176
          Top = 1
          Width = 331
          Height = 199
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object LabelCambio: TLabel
            Left = 129
            Top = 81
            Width = 47
            Height = 25
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LabelPagado: TLabel
            Left = 129
            Top = 50
            Width = 47
            Height = 25
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LabelTotal: TLabel
            Left = 129
            Top = 19
            Width = 47
            Height = 25
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 19
            Top = 20
            Width = 41
            Height = 25
            Caption = 'Total:'
          end
          object Label2: TLabel
            Left = 19
            Top = 51
            Width = 64
            Height = 25
            Caption = 'Pagado:'
          end
          object Label5: TLabel
            Left = 19
            Top = 82
            Width = 66
            Height = 25
            Caption = 'Cambio:'
          end
        end
      end
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 1508
        Height = 100
        Align = alTop
        TabOrder = 1
        DesignSize = (
          1508
          100)
        object PanelMessage: TPanel
          Left = 36
          Top = 21
          Width = 1434
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          object LabelMesage: TLabel
            Left = 16
            Top = 16
            Width = 111
            Height = 25
            Caption = 'LabelMesage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 401
      Width = 1508
      Height = 617
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 1018
      Width = 1508
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
end
