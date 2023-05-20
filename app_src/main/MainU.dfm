object MainF: TMainF
  Left = 0
  Top = 0
  Caption = 'Facturacion para Emprendedores'
  ClientHeight = 1282
  ClientWidth = 2031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    2031
    1282)
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 2031
    Height = 1282
    Align = alClient
    ExplicitLeft = 712
    ExplicitTop = 176
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object PanelHoldWork: TPanel
    Left = 0
    Top = 0
    Width = 2031
    Height = 1282
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 2021
    ExplicitHeight = 1264
    object Splitter1: TSplitter
      Left = 201
      Top = 42
      Height = 1239
      ExplicitLeft = 184
      ExplicitTop = 264
      ExplicitHeight = 100
    end
    object PanelWorkLeft: TPanel
      Left = 1
      Top = 42
      Width = 200
      Height = 1239
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 1221
      object PanelWorkTopButton: TPanel
        Left = 1
        Top = 1
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = '<'
        TabOrder = 0
        OnClick = PanelWorkTopButtonClick
      end
      object PanelBilling: TPanel
        Left = 1
        Top = 42
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Facturar'
        TabOrder = 1
        OnClick = PanelBillingClick
      end
      object PanelClients: TPanel
        Left = 1
        Top = 206
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Clientes'
        TabOrder = 2
        OnClick = PanelClientsClick
      end
      object PanelArticulos: TPanel
        Left = 1
        Top = 165
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Articulos'
        TabOrder = 3
        OnClick = PanelArticulosClick
      end
      object PanelConfig: TPanel
        Left = 1
        Top = 247
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Configuracion'
        TabOrder = 4
        Visible = False
        OnClick = PanelConfigClick
      end
      object PanelSalir: TPanel
        Left = 1
        Top = 780
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Salir'
        TabOrder = 5
        OnClick = PanelSalirClick
      end
      object PanelAcerca: TPanel
        Left = 1
        Top = 739
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Acerca'
        TabOrder = 6
        OnClick = PanelAcercaClick
      end
      object PanelUpdate: TPanel
        Left = 1
        Top = 698
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Actualizar'
        TabOrder = 7
        OnClick = PanelUpdateClick
      end
      object PanelEmpresa: TPanel
        Left = 1
        Top = 124
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Empresa'
        TabOrder = 8
        OnClick = PanelEmpresaClick
      end
      object PanelCertificados: TPanel
        Left = 1
        Top = 288
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Certificados'
        TabOrder = 9
        OnClick = PanelCertificadosClick
      end
      object PanelImpuestos: TPanel
        Left = 1
        Top = 329
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Impuestos'
        TabOrder = 10
        OnClick = PanelImpuestosClick
      end
      object PanelFacturas: TPanel
        Left = 1
        Top = 83
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Facturas'
        TabOrder = 11
        OnClick = PanelFacturasClick
      end
      object PanelPacs: TPanel
        Left = 1
        Top = 370
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Pacs'
        TabOrder = 12
        OnClick = PanelPacsClick
      end
      object PanelFormaPago: TPanel
        Left = 1
        Top = 452
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Forma Pago'
        TabOrder = 13
        OnClick = PanelFormaPagoClick
      end
      object PanelMetodoPago: TPanel
        Left = 1
        Top = 411
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Metodo de Pago'
        TabOrder = 14
        OnClick = PanelMetodoPagoClick
      end
      object PanelSeries: TPanel
        Left = 1
        Top = 493
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Series'
        TabOrder = 15
        OnClick = PanelSeriesClick
      end
      object PanelTimbres: TPanel
        Left = 1
        Top = 534
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Timbres'
        TabOrder = 16
        OnClick = PanelTimbresClick
      end
      object PanelMoneda: TPanel
        Left = 1
        Top = 616
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Moneda'
        TabOrder = 17
        OnClick = PanelMonedaClick
      end
      object PanelLugarExpedicion: TPanel
        Left = 1
        Top = 575
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Lugar de Expedicion'
        TabOrder = 18
        OnClick = PanelLugarExpedicionClick
      end
      object PanelInfoAduanera: TPanel
        Left = 1
        Top = 657
        Width = 198
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Informacion Aduanera'
        TabOrder = 19
        OnClick = PanelInfoAduaneraClick
      end
    end
    object PanelWorkTop: TPanel
      Left = 1
      Top = 1
      Width = 2029
      Height = 41
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 2019
    end
    object PanelWorkDer: TPanel
      Left = 204
      Top = 42
      Width = 1826
      Height = 1239
      Align = alClient
      TabOrder = 2
      ExplicitWidth = 1816
      ExplicitHeight = 1221
      object PageControlWork: TPageControl
        Left = 1
        Top = 1
        Width = 1824
        Height = 1093
        ActivePage = TabSheetItems
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1814
        ExplicitHeight = 1075
        object TabSheetBilling: TTabSheet
          Caption = 'TabSheetBilling'
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 401
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel3: TPanel
                Left = 0
                Top = 100
                Width = 1816
                Height = 201
                Align = alTop
                TabOrder = 0
                object Panel4: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 199
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label15: TLabel
                    Left = 11
                    Top = 47
                    Width = 64
                    Height = 13
                    Caption = 'Razon Social:'
                  end
                  object Label16: TLabel
                    Left = 19
                    Top = 20
                    Width = 36
                    Height = 13
                    Caption = 'R.F.C.:'
                  end
                  object EditReceptorRFC: TEdit
                    Left = 91
                    Top = 17
                    Width = 206
                    Height = 21
                    TabOrder = 0
                  end
                  object EditReceptorRazSoc: TEdit
                    Left = 91
                    Top = 44
                    Width = 206
                    Height = 21
                    TabOrder = 1
                  end
                  object ButtonClienteAgregar: TButton
                    Left = 319
                    Top = 12
                    Width = 154
                    Height = 25
                    Caption = 'Agregar Cliente'
                    TabOrder = 2
                    OnClick = ButtonClienteAgregarClick
                  end
                  object ButtonProdServAgregar: TButton
                    Left = 319
                    Top = 95
                    Width = 154
                    Height = 25
                    Caption = 'Agregar Producto/Servicio'
                    TabOrder = 3
                    OnClick = ButtonProdServAgregarClick
                  end
                  object ButtonFinalizarVenta: TButton
                    Left = 487
                    Top = 12
                    Width = 154
                    Height = 25
                    Caption = 'Finalizar Venta'
                    TabOrder = 4
                  end
                  object ButtonCancelarVenta: TButton
                    Left = 487
                    Top = 50
                    Width = 154
                    Height = 25
                    Caption = 'Cancelar Venta'
                    TabOrder = 5
                  end
                  object ButtonIngresarPagos: TButton
                    Left = 487
                    Top = 91
                    Width = 154
                    Height = 25
                    Caption = 'Ingresar Pagos'
                    TabOrder = 6
                    OnClick = ButtonIngresarPagosClick
                  end
                  object ButtonEliminarPago: TButton
                    Left = 487
                    Top = 131
                    Width = 154
                    Height = 25
                    Caption = 'Eliminar Pago'
                    TabOrder = 7
                  end
                  object ButtonClienteEliminar: TButton
                    Left = 319
                    Top = 53
                    Width = 154
                    Height = 25
                    Caption = 'Eliminar Cliente'
                    TabOrder = 8
                  end
                  object ButtonProdServEliminar: TButton
                    Left = 319
                    Top = 136
                    Width = 154
                    Height = 25
                    Caption = 'Eliminar Producto/Servicio'
                    TabOrder = 9
                  end
                end
                object Panel5: TPanel
                  Left = 1484
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
                  object Label17: TLabel
                    Left = 19
                    Top = 20
                    Width = 28
                    Height = 13
                    Caption = 'Total:'
                  end
                  object Label18: TLabel
                    Left = 19
                    Top = 51
                    Width = 40
                    Height = 13
                    Caption = 'Pagado:'
                  end
                  object Label19: TLabel
                    Left = 19
                    Top = 82
                    Width = 39
                    Height = 13
                    Caption = 'Cambio:'
                  end
                end
              end
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 100
                Align = alTop
                TabOrder = 1
                DesignSize = (
                  1816
                  100)
                object Panel7: TPanel
                  Left = 36
                  Top = 21
                  Width = 1904
                  Height = 58
                  Anchors = [akLeft, akRight]
                  BevelOuter = bvNone
                  Color = 12615680
                  ParentBackground = False
                  TabOrder = 0
                  object Label20: TLabel
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
            object Panel8: TPanel
              Left = 0
              Top = 401
              Width = 1816
              Height = 623
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
            end
            object Panel9: TPanel
              Left = 0
              Top = 1024
              Width = 1816
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetItems: TTabSheet
          Caption = 'TabSheetItems'
          ImageIndex = 1
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 1806
            ExplicitHeight = 1047
            object Panel19: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 367
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitWidth = 1806
              object PanelCliente: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 367
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1806
                object PanelClienteDatos: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 365
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ExplicitWidth = 1473
                  object Label26: TLabel
                    Left = 24
                    Top = 71
                    Width = 58
                    Height = 13
                    Caption = 'Descripcion:'
                  end
                  object Label27: TLabel
                    Left = 24
                    Top = 30
                    Width = 117
                    Height = 13
                    Caption = 'Clave Producto Servicio:'
                  end
                  object EditItemClave: TEdit
                    Left = 160
                    Top = 27
                    Width = 169
                    Height = 21
                    TabOrder = 0
                  end
                  object EditItemDescripcion: TEdit
                    Left = 160
                    Top = 68
                    Width = 169
                    Height = 21
                    TabOrder = 1
                  end
                  object ButtonItemBuscarPorDesc: TButton
                    Left = 356
                    Top = 73
                    Width = 157
                    Height = 25
                    Caption = 'Buscar Por Descripcion'
                    TabOrder = 2
                    OnClick = ButtonItemBuscarPorDescClick
                  end
                  object ButtonItemBuscarPorClave: TButton
                    Left = 356
                    Top = 25
                    Width = 157
                    Height = 26
                    Caption = 'Buscar Por Clave'
                    TabOrder = 3
                    OnClick = ButtonItemBuscarPorClaveClick
                  end
                  object GroupBox3: TGroupBox
                    Left = 24
                    Top = 121
                    Width = 537
                    Height = 141
                    Caption = 'Articulo Seleccionado'
                    TabOrder = 4
                    object Label28: TLabel
                      Left = 24
                      Top = 26
                      Width = 117
                      Height = 13
                      Caption = 'Clave Producto Servicio:'
                    end
                    object Label29: TLabel
                      Left = 24
                      Top = 49
                      Width = 58
                      Height = 13
                      Caption = 'Descripcion:'
                    end
                    object LabelProdClave: TLabel
                      Left = 160
                      Top = 26
                      Width = 40
                      Height = 13
                      Caption = '----------'
                    end
                    object LabelProdDesc: TLabel
                      Left = 160
                      Top = 49
                      Width = 32
                      Height = 13
                      Caption = '--------'
                    end
                    object Label63: TLabel
                      Left = 24
                      Top = 71
                      Width = 33
                      Height = 13
                      Caption = 'Precio:'
                    end
                    object LabelProdPrecio: TLabel
                      Left = 160
                      Top = 71
                      Width = 40
                      Height = 13
                      Caption = '----------'
                    end
                    object LabelProdUnidad: TLabel
                      Left = 160
                      Top = 96
                      Width = 40
                      Height = 13
                      Caption = '----------'
                    end
                    object Unidad: TLabel
                      Left = 24
                      Top = 96
                      Width = 33
                      Height = 13
                      Caption = 'Unidad'
                    end
                  end
                end
                object PanelClietenSelect: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 365
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  ExplicitLeft = 1474
                  object ButtonItemRegistra: TButton
                    Left = 86
                    Top = 73
                    Width = 147
                    Height = 26
                    Caption = 'Registrar Nuevo'
                    TabOrder = 0
                    OnClick = ButtonItemRegistraClick
                  end
                  object ButtonItemEdita: TButton
                    Left = 86
                    Top = 151
                    Width = 147
                    Height = 29
                    Caption = 'Editar Seleccionado'
                    TabOrder = 1
                    OnClick = ButtonItemEditaClick
                  end
                  object ButtonItemElimina: TButton
                    Left = 88
                    Top = 208
                    Width = 145
                    Height = 22
                    Caption = 'Eliminar'
                    TabOrder = 2
                    OnClick = ButtonItemEliminaClick
                  end
                end
              end
            end
            object Panel20: TPanel
              Left = 0
              Top = 367
              Width = 1816
              Height = 623
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitWidth = 1806
              ExplicitHeight = 605
              object GridItems: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 623
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridItemsClick
                ExplicitWidth = 1806
                ExplicitHeight = 605
              end
            end
            object Panel21: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitTop = 972
              ExplicitWidth = 1806
            end
          end
        end
        object TabSheetClients: TTabSheet
          Caption = 'TabSheetClients'
          ImageIndex = 2
          object Panel22: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel23: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel24: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel25: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label30: TLabel
                    Left = 48
                    Top = 85
                    Width = 64
                    Height = 13
                    Caption = 'Razon Social:'
                  end
                  object Label31: TLabel
                    Left = 48
                    Top = 38
                    Width = 36
                    Height = 13
                    Caption = 'R.F.C.:'
                  end
                  object EditClientRFC: TEdit
                    Left = 184
                    Top = 35
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object EditClientRazSoc: TEdit
                    Left = 184
                    Top = 82
                    Width = 465
                    Height = 21
                    TabOrder = 1
                  end
                  object ButtonBuscaClientePorRazSoc: TButton
                    Left = 681
                    Top = 73
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Por Razon Social'
                    TabOrder = 2
                    OnClick = ButtonBuscaClientePorRazSocClick
                  end
                  object ButtonBuscaClientePorRFC: TButton
                    Left = 681
                    Top = 25
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Por RFC'
                    TabOrder = 3
                    OnClick = ButtonBuscaClientePorRFCClick
                  end
                  object GroupBox4: TGroupBox
                    Left = 24
                    Top = 170
                    Width = 886
                    Height = 80
                    Caption = 'Cliente Seleccionado'
                    TabOrder = 4
                    object Label32: TLabel
                      Left = 24
                      Top = 23
                      Width = 36
                      Height = 13
                      Caption = 'R.F.C.:'
                    end
                    object Label33: TLabel
                      Left = 24
                      Top = 46
                      Width = 64
                      Height = 13
                      Caption = 'Razon Social:'
                    end
                    object LabelRFCCliente: TLabel
                      Left = 160
                      Top = 23
                      Width = 78
                      Height = 13
                      Caption = 'LabelRFCCliente'
                    end
                    object LabelRazonSocialCliente: TLabel
                      Left = 160
                      Top = 46
                      Width = 31
                      Height = 13
                      Caption = 'Label5'
                    end
                  end
                  object ButtonMostrarTodosLosClientes: TButton
                    Left = 681
                    Top = 126
                    Width = 241
                    Height = 42
                    Caption = 'Mostrar Todos los Clientes'
                    TabOrder = 5
                    OnClick = ButtonMostrarTodosLosClientesClick
                  end
                end
                object Panel26: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonRegistrarNuevoCliente: TButton
                    Left = 70
                    Top = 25
                    Width = 219
                    Height = 42
                    Caption = 'Registrar Nuevo Cliente'
                    TabOrder = 0
                    OnClick = ButtonRegistrarNuevoClienteClick
                  end
                  object ButtonEditarCliente: TButton
                    Left = 70
                    Top = 85
                    Width = 219
                    Height = 42
                    Caption = 'Editar Cliente'
                    TabOrder = 1
                    OnClick = ButtonEditarClienteClick
                  end
                  object ButtonEliminarCliente: TButton
                    Left = 70
                    Top = 140
                    Width = 219
                    Height = 42
                    Caption = 'Eliminar Cliente'
                    TabOrder = 2
                    OnClick = ButtonEliminarClienteClick
                  end
                end
              end
            end
            object Panel27: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridClientes: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridClientesClick
              end
            end
            object Panel28: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetConfig: TTabSheet
          Caption = 'TabSheetConfig'
          ImageIndex = 4
          object Panel29: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel30: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 97
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
            end
            object Panel31: TPanel
              Left = 0
              Top = 97
              Width = 1816
              Height = 893
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
            end
            object Panel32: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
              object ButtonCerrar: TButton
                Left = 1207
                Top = 32
                Width = 75
                Height = 25
                Caption = 'Cerrar'
                TabOrder = 0
              end
            end
          end
        end
        object TabSheetPacs: TTabSheet
          Caption = 'TabSheetPacs'
          ImageIndex = 5
          object Panel46: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel47: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 273
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel48: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 100
                Align = alTop
                TabOrder = 0
                DesignSize = (
                  1816
                  100)
                object Panel49: TPanel
                  Left = 36
                  Top = 21
                  Width = 1622
                  Height = 58
                  Anchors = [akLeft, akRight]
                  BevelOuter = bvNone
                  Color = 12615680
                  ParentBackground = False
                  TabOrder = 0
                  object Label42: TLabel
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
              object GroupBox7: TGroupBox
                Left = 36
                Top = 133
                Width = 1152
                Height = 124
                TabOrder = 1
                object Label43: TLabel
                  Left = 19
                  Top = 20
                  Width = 24
                  Height = 13
                  Caption = 'PAC:'
                end
                object EditPacNombre: TEdit
                  Left = 99
                  Top = 17
                  Width = 398
                  Height = 21
                  TabOrder = 0
                end
                object ButtonPacBuscarPorPac: TButton
                  Left = 528
                  Top = 20
                  Width = 249
                  Height = 35
                  Caption = 'Buscar'
                  TabOrder = 1
                  OnClick = ButtonPacBuscarPorPacClick
                end
                object ButtonPacEliminar: TButton
                  Left = 528
                  Top = 61
                  Width = 249
                  Height = 35
                  Caption = 'Eliminar'
                  TabOrder = 2
                  OnClick = ButtonPacEliminarClick
                end
                object ButtonPacEditar: TButton
                  Left = 808
                  Top = 63
                  Width = 241
                  Height = 33
                  Caption = 'Editar'
                  TabOrder = 3
                  OnClick = ButtonPacEditarClick
                end
                object ButtonPacNuevo: TButton
                  Left = 808
                  Top = 25
                  Width = 241
                  Height = 25
                  Caption = 'Nuevo'
                  TabOrder = 4
                  OnClick = ButtonPacNuevoClick
                end
              end
            end
            object Panel50: TPanel
              Left = 0
              Top = 273
              Width = 1816
              Height = 751
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                1816
                751)
              object GridPacs: TStringGrid
                Left = 36
                Top = 176
                Width = 1622
                Height = 423
                Anchors = [akLeft, akTop, akRight, akBottom]
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridPacsClick
              end
              object GroupBox8: TGroupBox
                Left = 36
                Top = 8
                Width = 1141
                Height = 121
                Caption = 'PAC Seleccionado'
                TabOrder = 1
                object Label44: TLabel
                  Left = 19
                  Top = 41
                  Width = 24
                  Height = 13
                  Caption = 'PAC:'
                end
                object LabelPACNombre: TLabel
                  Left = 116
                  Top = 41
                  Width = 24
                  Height = 13
                  Caption = 'PAC:'
                end
                object Label46: TLabel
                  Left = 19
                  Top = 81
                  Width = 83
                  Height = 13
                  Caption = 'WebService URL:'
                end
                object LabelPACURLWebService: TLabel
                  Left = 116
                  Top = 81
                  Width = 24
                  Height = 13
                  Caption = 'PAC:'
                end
              end
            end
            object Panel51: TPanel
              Left = 0
              Top = 1024
              Width = 1816
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetAbout: TTabSheet
          Caption = 'TabSheetAbout'
          ImageIndex = 5
          object GroupBox9: TGroupBox
            Left = 24
            Top = 32
            Width = 905
            Height = 449
            TabOrder = 0
            object Label48: TLabel
              Left = 32
              Top = 24
              Width = 207
              Height = 13
              Caption = 'Facturacion para Emprendedores Sitio Web'
            end
            object LabelWeb: TLabel
              Left = 32
              Top = 55
              Width = 416
              Height = 25
              Caption = 'http://www.facturacionparaemprendedores.com.mx/'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -18
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 32
              Top = 86
              Width = 194
              Height = 13
              Caption = 'Facturacion para Emprendedores GitHub'
            end
            object LabelGit: TLabel
              Left = 32
              Top = 117
              Width = 660
              Height = 25
              Cursor = crHandPoint
              Caption = 
                'https://github.com/facturacionparaemprendedores/facturacionparae' +
                'mprendedores'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -18
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Memo2: TMemo
              Left = 32
              Top = 192
              Width = 698
              Height = 169
              Lines.Strings = (
                
                  'Facturacion para emprendedores, es una aplicacion opensource par' +
                  'a facturar'
                
                  'de acuerdo a la legislacion mexicana, tiene soporte para factura' +
                  's CFDI 4.0'
                ''
                ''
                'Desarrollado en Delphi 11 Alexandria.')
              TabOrder = 0
            end
          end
        end
        object TabSheetUpdate: TTabSheet
          Caption = 'TabSheetUpdate'
          ImageIndex = 6
          object Panel52: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel53: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 105
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
            end
            object Panel54: TPanel
              Left = 0
              Top = 105
              Width = 1816
              Height = 885
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GroupBox10: TGroupBox
                Left = 56
                Top = 24
                Width = 905
                Height = 449
                TabOrder = 0
                object Label50: TLabel
                  Left = 32
                  Top = 24
                  Width = 159
                  Height = 13
                  Caption = 'Facturacion para Emprendedores'
                end
                object Label51: TLabel
                  Left = 32
                  Top = 128
                  Width = 159
                  Height = 13
                  Caption = 'Facturacion para Emprendedores'
                end
                object ButtonActualizar: TButton
                  Left = 360
                  Top = 152
                  Width = 145
                  Height = 25
                  Caption = 'Actualizar'
                  TabOrder = 0
                end
                object ProgressBar1: TProgressBar
                  Left = 32
                  Top = 80
                  Width = 833
                  Height = 26
                  TabOrder = 1
                end
                object Memo3: TMemo
                  Left = 32
                  Top = 208
                  Width = 833
                  Height = 193
                  TabOrder = 2
                end
              end
            end
            object Panel55: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetEmpresa: TTabSheet
          Caption = 'TabSheetEmpresa'
          ImageIndex = 7
          object PanelHoldAll: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object PanelBottom: TPanel
              Left = 0
              Top = 1012
              Width = 1816
              Height = 53
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
            end
            object PanelTop: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 102
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object PanelMessages: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 100
                Align = alTop
                TabOrder = 0
                DesignSize = (
                  1816
                  100)
                object PanelMessage: TPanel
                  Left = 24
                  Top = 21
                  Width = 1676
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
              Top = 102
              Width = 1816
              Height = 910
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object GroupBox1: TGroupBox
                Left = 24
                Top = 24
                Width = 689
                Height = 521
                Caption = 'Datos de la Empresa'
                TabOrder = 0
                object Label1: TLabel
                  Left = 20
                  Top = 80
                  Width = 45
                  Height = 13
                  Caption = 'R.F.C.: *'
                end
                object Label2: TLabel
                  Left = 20
                  Top = 113
                  Width = 70
                  Height = 13
                  Caption = 'Razon Social:*'
                end
                object Label3: TLabel
                  Left = 20
                  Top = 146
                  Width = 27
                  Height = 13
                  Caption = 'Calle:'
                end
                object Label4: TLabel
                  Left = 20
                  Top = 180
                  Width = 52
                  Height = 13
                  Caption = 'Num. Ext.:'
                end
                object Label5: TLabel
                  Left = 20
                  Top = 214
                  Width = 50
                  Height = 13
                  Caption = 'Num. Int.:'
                end
                object Label6: TLabel
                  Left = 20
                  Top = 247
                  Width = 39
                  Height = 13
                  Caption = 'Colonia:'
                end
                object Label7: TLabel
                  Left = 20
                  Top = 284
                  Width = 55
                  Height = 13
                  Caption = 'Mun/Deleg:'
                end
                object Label8: TLabel
                  Left = 20
                  Top = 319
                  Width = 37
                  Height = 13
                  Caption = 'Estado:'
                end
                object Label9: TLabel
                  Left = 20
                  Top = 353
                  Width = 23
                  Height = 13
                  Caption = 'Pais:'
                end
                object Label10: TLabel
                  Left = 20
                  Top = 388
                  Width = 25
                  Height = 13
                  Caption = 'C.P.:'
                end
                object Label11: TLabel
                  Left = 20
                  Top = 421
                  Width = 46
                  Height = 13
                  Caption = 'Telefono:'
                end
                object Label12: TLabel
                  Left = 20
                  Top = 454
                  Width = 37
                  Height = 13
                  Caption = 'Celular:'
                end
                object Label13: TLabel
                  Left = 20
                  Top = 488
                  Width = 28
                  Height = 13
                  Caption = 'Email:'
                end
                object Label14: TLabel
                  Left = 16
                  Top = 32
                  Width = 152
                  Height = 13
                  Caption = 'Campos con * , son obligatorios'
                end
                object EditEmpRazonSocial: TEdit
                  Left = 125
                  Top = 105
                  Width = 313
                  Height = 21
                  TabOrder = 1
                end
                object EditEmpRFC: TEdit
                  Left = 125
                  Top = 72
                  Width = 257
                  Height = 21
                  TabOrder = 0
                end
                object EditEmpCalle: TEdit
                  Left = 125
                  Top = 138
                  Width = 273
                  Height = 21
                  TabOrder = 2
                end
                object EditEmpNumExt: TEdit
                  Left = 125
                  Top = 172
                  Width = 121
                  Height = 21
                  TabOrder = 3
                end
                object EditEmpNumInt: TEdit
                  Left = 125
                  Top = 206
                  Width = 121
                  Height = 21
                  TabOrder = 4
                end
                object EditEmpColonia: TEdit
                  Left = 125
                  Top = 239
                  Width = 196
                  Height = 21
                  TabOrder = 5
                end
                object EditEmpMunDel: TEdit
                  Left = 125
                  Top = 276
                  Width = 196
                  Height = 21
                  TabOrder = 6
                end
                object EditEmpEstado: TEdit
                  Left = 125
                  Top = 311
                  Width = 196
                  Height = 21
                  TabOrder = 7
                end
                object EditEmpPais: TEdit
                  Left = 125
                  Top = 345
                  Width = 121
                  Height = 21
                  TabOrder = 8
                end
                object EditEmpCP: TEdit
                  Left = 125
                  Top = 380
                  Width = 121
                  Height = 21
                  TabOrder = 9
                end
                object EditEmpTelefono: TEdit
                  Left = 125
                  Top = 413
                  Width = 244
                  Height = 21
                  TabOrder = 10
                end
                object EditEmpCelular: TEdit
                  Left = 125
                  Top = 446
                  Width = 244
                  Height = 21
                  TabOrder = 11
                end
                object EditEmpMail: TEdit
                  Left = 125
                  Top = 480
                  Width = 244
                  Height = 21
                  TabOrder = 12
                end
                object ButtonEditarEmpresa: TButton
                  Left = 503
                  Top = 63
                  Width = 154
                  Height = 42
                  Caption = 'Editar '
                  TabOrder = 13
                  OnClick = ButtonEditarEmpresaClick
                end
              end
            end
          end
        end
        object TabSheetCertificados: TTabSheet
          Caption = 'TabSheetCertificados'
          ImageIndex = 8
          object Panel33: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel34: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel35: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel36: TPanel
                  Left = 1
                  Top = 1
                  Width = 1814
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object GroupBox5: TGroupBox
                    Left = 32
                    Top = 33
                    Width = 886
                    Height = 88
                    Caption = 'Certificado Seleccionado'
                    TabOrder = 0
                    object Label34: TLabel
                      Left = 24
                      Top = 25
                      Width = 21
                      Height = 13
                      Caption = 'Cer:'
                    end
                    object Label35: TLabel
                      Left = 24
                      Top = 47
                      Width = 22
                      Height = 13
                      Caption = 'Key:'
                    end
                    object LabelCer: TLabel
                      Left = 52
                      Top = 25
                      Width = 20
                      Height = 13
                      Caption = '-----'
                    end
                    object LabelKey: TLabel
                      Left = 52
                      Top = 47
                      Width = 16
                      Height = 13
                      Caption = '----'
                    end
                  end
                  object ButtonCertificadoNuevo: TButton
                    Left = 945
                    Top = 46
                    Width = 241
                    Height = 42
                    Caption = 'Registrar'
                    TabOrder = 1
                    OnClick = ButtonCertificadoNuevoClick
                  end
                  object ButtonEliminar: TButton
                    Left = 945
                    Top = 150
                    Width = 241
                    Height = 42
                    Caption = 'Eliminar'
                    TabOrder = 3
                    OnClick = ButtonEliminarClick
                  end
                  object ButtonCertificadoEdita: TButton
                    Left = 945
                    Top = 94
                    Width = 241
                    Height = 42
                    Caption = 'Editar'
                    TabOrder = 2
                    OnClick = ButtonCertificadoEditaClick
                  end
                end
              end
            end
            object Panel37: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridCertificados: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridCertificadosClick
              end
            end
            object Panel38: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetImpuestos: TTabSheet
          Caption = 'TabSheetImpuestos'
          ImageIndex = 9
          object Panel39: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel40: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel41: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel42: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label37: TLabel
                    Left = 48
                    Top = 38
                    Width = 49
                    Height = 13
                    Caption = 'Impuesto"'
                  end
                  object EditImpuestoNombre: TEdit
                    Left = 184
                    Top = 35
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object ButtonImpuestoBuscaPorImpuesto: TButton
                    Left = 681
                    Top = 25
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Por Impuesto'
                    TabOrder = 1
                    OnClick = ButtonImpuestoBuscaPorImpuestoClick
                  end
                  object GroupBox6: TGroupBox
                    Left = 36
                    Top = 73
                    Width = 886
                    Height = 88
                    Caption = 'Impuesto'
                    TabOrder = 2
                    object Label38: TLabel
                      Left = 24
                      Top = 26
                      Width = 49
                      Height = 13
                      Caption = 'Impuesto:'
                    end
                    object Label39: TLabel
                      Left = 24
                      Top = 50
                      Width = 71
                      Height = 13
                      Caption = 'Tasa o Cuota :'
                    end
                    object LabelImpuestoImpuesto: TLabel
                      Left = 160
                      Top = 26
                      Width = 20
                      Height = 13
                      Caption = '-----'
                    end
                    object LabelImpuestoTasaOCuota: TLabel
                      Left = 160
                      Top = 50
                      Width = 32
                      Height = 13
                      Caption = '--------'
                    end
                  end
                end
                object Panel43: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonImpuestoRegistra: TButton
                    Left = 86
                    Top = 79
                    Width = 219
                    Height = 42
                    Caption = 'Registrar Nuevo'
                    TabOrder = 0
                    OnClick = ButtonImpuestoRegistraClick
                  end
                  object ButtonImpuestoEdita: TButton
                    Left = 86
                    Top = 150
                    Width = 219
                    Height = 42
                    Caption = 'Editar Seleccionado'
                    TabOrder = 1
                    OnClick = ButtonImpuestoEditaClick
                  end
                  object ButtonImpuestoElimina: TButton
                    Left = 88
                    Top = 224
                    Width = 217
                    Height = 25
                    Caption = 'Impuesto Elimina'
                    TabOrder = 2
                    OnClick = ButtonImpuestoEliminaClick
                  end
                end
              end
            end
            object Panel44: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridImpuestos: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridImpuestosClick
              end
            end
            object Panel45: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetFacturas: TTabSheet
          Caption = 'TabSheetFacturas'
          ImageIndex = 10
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 401
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel12: TPanel
                Left = 0
                Top = 100
                Width = 1816
                Height = 295
                Align = alTop
                TabOrder = 0
                object Panel13: TPanel
                  Left = 1
                  Top = 1
                  Width = 1814
                  Height = 293
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label21: TLabel
                    Left = 19
                    Top = 60
                    Width = 64
                    Height = 13
                    Caption = 'Razon Social:'
                  end
                  object Label22: TLabel
                    Left = 19
                    Top = 20
                    Width = 36
                    Height = 13
                    Caption = 'R.F.C.:'
                  end
                  object Edit1: TEdit
                    Left = 155
                    Top = 17
                    Width = 398
                    Height = 21
                    TabOrder = 0
                  end
                  object Edit2: TEdit
                    Left = 155
                    Top = 57
                    Width = 398
                    Height = 21
                    TabOrder = 1
                  end
                  object ButtonBuscarPorRFC: TButton
                    Left = 624
                    Top = 12
                    Width = 249
                    Height = 35
                    Caption = 'Buscar Por R.F.C.'
                    TabOrder = 2
                  end
                  object ButtonBuscarPorRazSoc: TButton
                    Left = 624
                    Top = 53
                    Width = 249
                    Height = 35
                    Caption = 'Buscar por Razon Social'
                    TabOrder = 3
                  end
                  object ButtonVisualizar: TButton
                    Left = 624
                    Top = 120
                    Width = 249
                    Height = 25
                    Caption = 'Visualizar'
                    TabOrder = 4
                  end
                  object GroupBox2: TGroupBox
                    Left = 19
                    Top = 144
                    Width = 870
                    Height = 131
                    Caption = 'Datos de la Factura'
                    TabOrder = 5
                    object Label23: TLabel
                      Left = 81
                      Top = 33
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
                    object Label24: TLabel
                      Left = 34
                      Top = 34
                      Width = 28
                      Height = 13
                      Caption = 'Total:'
                    end
                  end
                end
              end
              object Panel14: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 100
                Align = alTop
                TabOrder = 1
                DesignSize = (
                  1816
                  100)
                object Panel15: TPanel
                  Left = 36
                  Top = 21
                  Width = 1597
                  Height = 58
                  Anchors = [akLeft, akRight]
                  BevelOuter = bvNone
                  Color = 12615680
                  ParentBackground = False
                  TabOrder = 0
                  object Label25: TLabel
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
            object Panel16: TPanel
              Left = 0
              Top = 401
              Width = 1816
              Height = 623
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                1816
                623)
              object GridFacturas: TStringGrid
                Left = 20
                Top = 6
                Width = 1627
                Height = 585
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 0
              end
            end
            object Panel17: TPanel
              Left = 0
              Top = 1024
              Width = 1816
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetMetodopago: TTabSheet
          Caption = 'TabSheetMetodopago'
          ImageIndex = 11
          object Panel56: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel57: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel58: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel59: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label53: TLabel
                    Left = 32
                    Top = 38
                    Width = 36
                    Height = 13
                    Caption = 'Metodo'
                  end
                  object EditMetodoDesc: TEdit
                    Left = 88
                    Top = 35
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object ButtonBuscaMetodoPagoPorDesc: TButton
                    Left = 577
                    Top = 25
                    Width = 160
                    Height = 42
                    Caption = 'Buscar'
                    TabOrder = 1
                    OnClick = ButtonBuscaMetodoPagoPorDescClick
                  end
                  object GroupBox11: TGroupBox
                    Left = 23
                    Top = 83
                    Width = 714
                    Height = 72
                    Caption = 'Metodo Pago Seleccionado'
                    TabOrder = 2
                    object Label54: TLabel
                      Left = 18
                      Top = 30
                      Width = 67
                      Height = 13
                      Caption = 'Metodo Pago:'
                    end
                    object LabelMetodoPagoDesc: TLabel
                      Left = 154
                      Top = 30
                      Width = 28
                      Height = 13
                      Caption = '-------'
                    end
                  end
                end
                object Panel60: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonMetodoPagoNuevo: TButton
                    Left = 86
                    Top = 83
                    Width = 219
                    Height = 42
                    Caption = 'Nuevo'
                    TabOrder = 0
                    OnClick = ButtonMetodoPagoNuevoClick
                  end
                  object ButtonMetodoPagoEditar: TButton
                    Left = 86
                    Top = 131
                    Width = 219
                    Height = 42
                    Caption = 'Editar'
                    TabOrder = 1
                    OnClick = ButtonMetodoPagoEditarClick
                  end
                  object ButtonMetodoPagoEliminar: TButton
                    Left = 87
                    Top = 179
                    Width = 219
                    Height = 42
                    Caption = 'Eliminar'
                    TabOrder = 2
                    OnClick = ButtonMetodoPagoEliminarClick
                  end
                end
              end
            end
            object Panel61: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridMetodosPago: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridMetodosPagoClick
              end
            end
            object Panel62: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetFormaPago: TTabSheet
          Caption = 'TabSheetFormaPago'
          ImageIndex = 12
          object Panel63: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel64: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel65: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel66: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label59: TLabel
                    Left = 48
                    Top = 38
                    Width = 72
                    Height = 13
                    Caption = 'Forma de Pago'
                  end
                  object EditFormaPagoDesc: TEdit
                    Left = 184
                    Top = 35
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object ButtonFormaPagoPorDesc: TButton
                    Left = 681
                    Top = 25
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Por Nombre'
                    TabOrder = 1
                    OnClick = ButtonFormaPagoPorDescClick
                  end
                  object GroupBox12: TGroupBox
                    Left = 24
                    Top = 121
                    Width = 886
                    Height = 72
                    Caption = 'Forma de Pago Seleccionado'
                    TabOrder = 2
                    object Label60: TLabel
                      Left = 24
                      Top = 42
                      Width = 61
                      Height = 13
                      Caption = 'Forma Pago:'
                    end
                    object LabelFormaPagoDesc: TLabel
                      Left = 160
                      Top = 42
                      Width = 24
                      Height = 13
                      Caption = '------'
                    end
                  end
                end
                object Panel67: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonFormaDePagoNuevo: TButton
                    Left = 86
                    Top = 79
                    Width = 219
                    Height = 42
                    Caption = 'Nuevo'
                    TabOrder = 0
                    OnClick = ButtonFormaDePagoNuevoClick
                  end
                  object ButtonFormaDePagoEditar: TButton
                    Left = 86
                    Top = 131
                    Width = 219
                    Height = 42
                    Caption = 'Editar'
                    TabOrder = 1
                    OnClick = ButtonFormaDePagoEditarClick
                  end
                  object ButtonFormaDePagoEliminar: TButton
                    Left = 87
                    Top = 181
                    Width = 219
                    Height = 42
                    Caption = 'Eliminar'
                    TabOrder = 2
                    OnClick = ButtonFormaDePagoEliminarClick
                  end
                end
              end
            end
            object Panel68: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridFormaPago: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridFormaPagoClick
              end
            end
            object Panel69: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetSeries: TTabSheet
          Caption = 'TabSheetSeries'
          ImageIndex = 14
          object Panel77: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel78: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel79: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel80: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label67: TLabel
                    Left = 48
                    Top = 38
                    Width = 28
                    Height = 13
                    Caption = 'Serie:'
                  end
                  object Label36: TLabel
                    Left = 48
                    Top = 71
                    Width = 26
                    Height = 13
                    Caption = 'Folio:'
                  end
                  object EditSerie: TEdit
                    Left = 184
                    Top = 35
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object ButtonBuscarSerie: TButton
                    Left = 681
                    Top = 25
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Serie'
                    TabOrder = 1
                    OnClick = ButtonBuscarSerieClick
                  end
                  object GroupBox14: TGroupBox
                    Left = 24
                    Top = 98
                    Width = 886
                    Height = 82
                    Caption = 'Forma de Pago Seleccionado'
                    TabOrder = 2
                    object Label68: TLabel
                      Left = 24
                      Top = 27
                      Width = 28
                      Height = 13
                      Caption = 'Serie:'
                    end
                    object LabelSerie: TLabel
                      Left = 69
                      Top = 29
                      Width = 32
                      Height = 13
                      Caption = '--------'
                    end
                    object Label40: TLabel
                      Left = 24
                      Top = 46
                      Width = 26
                      Height = 13
                      Caption = 'Folio:'
                    end
                    object LabelSerieFolio: TLabel
                      Left = 69
                      Top = 48
                      Width = 24
                      Height = 13
                      Caption = '------'
                    end
                  end
                  object EditSerieFolio: TEdit
                    Left = 184
                    Top = 71
                    Width = 465
                    Height = 21
                    TabOrder = 3
                  end
                end
                object Panel81: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonSerieNueva: TButton
                    Left = 86
                    Top = 79
                    Width = 219
                    Height = 42
                    Caption = 'Nuevo'
                    TabOrder = 0
                    OnClick = ButtonSerieNuevaClick
                  end
                  object ButtonSerieEdita: TButton
                    Left = 86
                    Top = 131
                    Width = 219
                    Height = 42
                    Caption = 'Editar'
                    TabOrder = 1
                    OnClick = ButtonSerieEditaClick
                  end
                  object ButtonSerieElimina: TButton
                    Left = 87
                    Top = 183
                    Width = 219
                    Height = 42
                    Caption = 'Eliminar'
                    TabOrder = 2
                    OnClick = ButtonSerieEliminaClick
                  end
                end
              end
            end
            object Panel82: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridSeries: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridSeriesClick
              end
            end
            object Panel83: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetTimbres: TTabSheet
          Caption = 'TabSheetTimbres'
          ImageIndex = 15
          object Panel84: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel85: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel86: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel87: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label73: TLabel
                    Left = 24
                    Top = 30
                    Width = 83
                    Height = 13
                    Caption = 'Timbres por PAC:'
                  end
                  object EditTimbresPorPAC: TEdit
                    Left = 125
                    Top = 27
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object ButtonTimbresPorPAC: TButton
                    Left = 609
                    Top = 17
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Por Folios por Serie Asignado'
                    TabOrder = 1
                    OnClick = ButtonTimbresPorPACClick
                  end
                  object GroupBox15: TGroupBox
                    Left = 24
                    Top = 65
                    Width = 886
                    Height = 142
                    Caption = 'Forma de Pago Seleccionado'
                    TabOrder = 2
                    object Label74: TLabel
                      Left = 25
                      Top = 25
                      Width = 20
                      Height = 13
                      Caption = 'PAC'
                    end
                    object Label75: TLabel
                      Left = 25
                      Top = 47
                      Width = 94
                      Height = 13
                      Caption = 'Timbres Comprados'
                    end
                    object LabelTimbresPAC: TLabel
                      Left = 173
                      Top = 25
                      Width = 32
                      Height = 13
                      Caption = '--------'
                    end
                    object LabelTimbresComprados: TLabel
                      Left = 173
                      Top = 47
                      Width = 32
                      Height = 13
                      Caption = '--------'
                    end
                    object Label47: TLabel
                      Left = 25
                      Top = 68
                      Width = 75
                      Height = 13
                      Caption = 'Timbres Usados'
                    end
                    object LabelTimbresUsados: TLabel
                      Left = 173
                      Top = 68
                      Width = 32
                      Height = 13
                      Caption = '--------'
                    end
                    object Label58: TLabel
                      Left = 25
                      Top = 90
                      Width = 89
                      Height = 13
                      Caption = 'Timbres Restantes'
                    end
                    object LabelTimbresRestantes: TLabel
                      Left = 173
                      Top = 90
                      Width = 32
                      Height = 13
                      Caption = '--------'
                    end
                    object Label56: TLabel
                      Left = 25
                      Top = 110
                      Width = 137
                      Height = 13
                      Caption = 'Avisar Si timbres menor que:'
                    end
                    object LabelTimbresAvisar: TLabel
                      Left = 173
                      Top = 110
                      Width = 32
                      Height = 13
                      Caption = '--------'
                    end
                  end
                end
                object Panel88: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonTimbreNuevo: TButton
                    Left = 86
                    Top = 79
                    Width = 219
                    Height = 42
                    Caption = 'Nuevo'
                    TabOrder = 0
                    OnClick = ButtonTimbreNuevoClick
                  end
                  object ButtonTimbreEdita: TButton
                    Left = 86
                    Top = 131
                    Width = 219
                    Height = 42
                    Caption = 'Editar'
                    TabOrder = 1
                    OnClick = ButtonTimbreEditaClick
                  end
                  object ButtonTimbreElimina: TButton
                    Left = 87
                    Top = 183
                    Width = 219
                    Height = 42
                    Caption = 'Eliminar'
                    TabOrder = 2
                    OnClick = ButtonTimbreEliminaClick
                  end
                end
              end
            end
            object Panel89: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridTimbres: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridTimbresClick
              end
            end
            object Panel90: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetLugarExpedicion: TTabSheet
          Caption = 'TabSheetLugarExpedicion'
          ImageIndex = 16
          object Panel91: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel92: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel93: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel94: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label79: TLabel
                    Left = 48
                    Top = 38
                    Width = 96
                    Height = 13
                    Caption = 'Lugar de expedicion'
                  end
                  object EditLugExp: TEdit
                    Left = 184
                    Top = 35
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object ButtonBusarLuarExp: TButton
                    Left = 681
                    Top = 25
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Lugar'
                    TabOrder = 1
                    OnClick = ButtonBusarLuarExpClick
                  end
                  object GroupBox16: TGroupBox
                    Left = 24
                    Top = 104
                    Width = 886
                    Height = 137
                    Caption = 'Lugar de Expedicion'
                    TabOrder = 2
                    object Label80: TLabel
                      Left = 25
                      Top = 30
                      Width = 58
                      Height = 13
                      Caption = 'Descripcion:'
                    end
                    object LabelLugarExpedicionDescripcion: TLabel
                      Left = 120
                      Top = 30
                      Width = 36
                      Height = 13
                      Caption = '---------'
                    end
                    object LabelLugarExpedicionUso: TLabel
                      Left = 120
                      Top = 54
                      Width = 36
                      Height = 13
                      Caption = '---------'
                    end
                    object Label45: TLabel
                      Left = 25
                      Top = 50
                      Width = 22
                      Height = 13
                      Caption = 'Uso:'
                    end
                    object LabelLugarExpedicionTipoEspecial: TLabel
                      Left = 120
                      Top = 78
                      Width = 36
                      Height = 13
                      Caption = '---------'
                    end
                    object Label52: TLabel
                      Left = 25
                      Top = 78
                      Width = 65
                      Height = 13
                      Caption = 'Tipo Especial:'
                    end
                    object Label55: TLabel
                      Left = 25
                      Top = 103
                      Width = 34
                      Height = 13
                      Caption = 'Activo:'
                    end
                    object CheckBoxLugExpActivo: TCheckBox
                      Left = 120
                      Top = 102
                      Width = 97
                      Height = 17
                      Caption = 'Activo'
                      TabOrder = 0
                    end
                  end
                end
                object Panel95: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonLugarExpedicionNuevo: TButton
                    Left = 86
                    Top = 79
                    Width = 219
                    Height = 42
                    Caption = 'Nuevo'
                    TabOrder = 0
                    OnClick = ButtonLugarExpedicionNuevoClick
                  end
                  object ButtonLugarExpedicionEdita: TButton
                    Left = 86
                    Top = 131
                    Width = 219
                    Height = 42
                    Caption = 'Editar'
                    TabOrder = 1
                    OnClick = ButtonLugarExpedicionEditaClick
                  end
                  object ButtonLugarExpedicionElimina: TButton
                    Left = 87
                    Top = 179
                    Width = 219
                    Height = 42
                    Caption = 'Eliminar'
                    TabOrder = 2
                    OnClick = ButtonLugarExpedicionEliminaClick
                  end
                end
              end
            end
            object Panel96: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridLugarExped: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridLugarExpedClick
              end
            end
            object Panel97: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetMoneda: TTabSheet
          Caption = 'TabSheetMoneda'
          ImageIndex = 17
          object Panel98: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel99: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel100: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel101: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label85: TLabel
                    Left = 48
                    Top = 38
                    Width = 42
                    Height = 13
                    Caption = 'Moneda:'
                  end
                  object Edit1MonedaDesc: TEdit
                    Left = 184
                    Top = 35
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object ButtonBuscarPorMoneda: TButton
                    Left = 681
                    Top = 25
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Por Moneda'
                    TabOrder = 1
                    OnClick = ButtonBuscarPorMonedaClick
                  end
                  object GroupBox13: TGroupBox
                    Left = 26
                    Top = 98
                    Width = 886
                    Height = 137
                    Caption = 'Moneda'
                    TabOrder = 2
                    object Label41: TLabel
                      Left = 25
                      Top = 30
                      Width = 58
                      Height = 13
                      Caption = 'Descripcion:'
                    end
                    object LabelMonedaDescripcion: TLabel
                      Left = 120
                      Top = 30
                      Width = 36
                      Height = 13
                      Caption = '---------'
                    end
                    object LabelMonedaUso: TLabel
                      Left = 120
                      Top = 54
                      Width = 36
                      Height = 13
                      Caption = '---------'
                    end
                    object Label57: TLabel
                      Left = 25
                      Top = 50
                      Width = 22
                      Height = 13
                      Caption = 'Uso:'
                    end
                    object LabelMonedaTipoEspecial: TLabel
                      Left = 120
                      Top = 78
                      Width = 36
                      Height = 13
                      Caption = '---------'
                    end
                    object Label61: TLabel
                      Left = 25
                      Top = 78
                      Width = 65
                      Height = 13
                      Caption = 'Tipo Especial:'
                    end
                    object Label62: TLabel
                      Left = 25
                      Top = 103
                      Width = 34
                      Height = 13
                      Caption = 'Activo:'
                    end
                    object CheckBoxMonedaActivo: TCheckBox
                      Left = 120
                      Top = 102
                      Width = 97
                      Height = 17
                      Caption = 'Activo'
                      TabOrder = 0
                    end
                  end
                end
                object Panel102: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonMonedaNuevo: TButton
                    Left = 86
                    Top = 79
                    Width = 219
                    Height = 42
                    Caption = 'Nuevo'
                    TabOrder = 0
                    OnClick = ButtonMonedaNuevoClick
                  end
                  object ButtonMonedaEdita: TButton
                    Left = 86
                    Top = 131
                    Width = 219
                    Height = 42
                    Caption = 'Editar'
                    TabOrder = 1
                    OnClick = ButtonMonedaEditaClick
                  end
                  object ButtonMonedaElimina: TButton
                    Left = 87
                    Top = 179
                    Width = 219
                    Height = 42
                    Caption = 'Eliminar'
                    TabOrder = 2
                    OnClick = ButtonMonedaEliminaClick
                  end
                end
              end
            end
            object Panel103: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridMoneda: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridMonedaClick
              end
            end
            object Panel104: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
        object TabSheetInformacionAduanera: TTabSheet
          Caption = 'TabSheetInformacionAduanera'
          ImageIndex = 17
          object Panel70: TPanel
            Left = 0
            Top = 0
            Width = 1816
            Height = 1065
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel71: TPanel
              Left = 0
              Top = 0
              Width = 1816
              Height = 281
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel72: TPanel
                Left = 0
                Top = 0
                Width = 1816
                Height = 281
                Align = alClient
                TabOrder = 0
                object Panel73: TPanel
                  Left = 1
                  Top = 1
                  Width = 1483
                  Height = 279
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label64: TLabel
                    Left = 48
                    Top = 38
                    Width = 105
                    Height = 13
                    Caption = 'Numero de Pedimento'
                  end
                  object EditInfoAduaneraNumPedimento: TEdit
                    Left = 184
                    Top = 35
                    Width = 465
                    Height = 21
                    TabOrder = 0
                  end
                  object ButtonBuscarPorNumeroPedimento: TButton
                    Left = 681
                    Top = 25
                    Width = 241
                    Height = 42
                    Caption = 'Buscar Por Numero de pedimento'
                    TabOrder = 1
                    OnClick = ButtonBuscarPorNumeroPedimentoClick
                  end
                  object GroupBox17: TGroupBox
                    Left = 26
                    Top = 98
                    Width = 886
                    Height = 82
                    Caption = 'Informacion Aduanera'
                    TabOrder = 2
                    object Label65: TLabel
                      Left = 25
                      Top = 30
                      Width = 109
                      Height = 13
                      Caption = 'Numero de Pedimento:'
                    end
                    object LabelNumeroPedimento: TLabel
                      Left = 145
                      Top = 30
                      Width = 36
                      Height = 13
                      Caption = '---------'
                    end
                  end
                end
                object Panel74: TPanel
                  Left = 1484
                  Top = 1
                  Width = 331
                  Height = 279
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object ButtonInfoAduaneraRegistra: TButton
                    Left = 86
                    Top = 79
                    Width = 219
                    Height = 42
                    Caption = 'Nuevo'
                    TabOrder = 0
                    OnClick = ButtonInfoAduaneraRegistraClick
                  end
                  object ButtonInfoAduaneraEdita: TButton
                    Left = 86
                    Top = 131
                    Width = 219
                    Height = 42
                    Caption = 'Editar'
                    TabOrder = 1
                    OnClick = ButtonInfoAduaneraEditaClick
                  end
                  object ButtonInfoAduaneraElimina: TButton
                    Left = 87
                    Top = 179
                    Width = 219
                    Height = 42
                    Caption = 'Eliminar'
                    TabOrder = 2
                    OnClick = ButtonInfoAduaneraEliminaClick
                  end
                end
              end
            end
            object Panel75: TPanel
              Left = 0
              Top = 281
              Width = 1816
              Height = 709
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object GridInfoAduanera: TStringGrid
                Left = 0
                Top = 0
                Width = 1816
                Height = 709
                Align = alClient
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
                TabOrder = 0
                OnClick = GridInfoAduaneraClick
              end
            end
            object Panel76: TPanel
              Left = 0
              Top = 990
              Width = 1816
              Height = 75
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
            end
          end
        end
      end
      object PanelLog: TPanel
        Left = 1
        Top = 1094
        Width = 1824
        Height = 144
        Align = alBottom
        Caption = 'PanelLog'
        TabOrder = 1
        ExplicitTop = 1076
        ExplicitWidth = 1814
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 1822
          Height = 142
          Align = alClient
          Lines.Strings = (
            'Memo1')
          ScrollBars = ssBoth
          TabOrder = 0
          ExplicitWidth = 1812
        end
      end
    end
  end
  object PanelLogin: TPanel
    Left = 819
    Top = 487
    Width = 410
    Height = 201
    Anchors = []
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 814
    ExplicitTop = 479
    object PanelUserPas: TPanel
      Left = 48
      Top = 56
      Width = 321
      Height = 137
      BevelOuter = bvNone
      TabOrder = 0
      object LabelUser: TLabel
        Left = 16
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Usuario:'
      end
      object LabelPass: TLabel
        Left = 16
        Top = 51
        Width = 60
        Height = 13
        Caption = 'Contrase'#241'a:'
      end
      object LabelLeyenda: TLabel
        Left = 16
        Top = 104
        Width = 41
        Height = 13
        Caption = 'Leyenda'
      end
      object EditUser: TEdit
        Left = 100
        Top = 16
        Width = 149
        Height = 21
        TabOrder = 0
        Text = 'admin'
      end
      object EditPass: TEdit
        Left = 100
        Top = 43
        Width = 149
        Height = 21
        TabOrder = 1
        Text = 'admin'
      end
      object ButtonLogin: TButton
        Left = 174
        Top = 78
        Width = 75
        Height = 25
        Caption = 'Ingresar'
        TabOrder = 2
        OnClick = ButtonLoginClick
      end
    end
  end
end
