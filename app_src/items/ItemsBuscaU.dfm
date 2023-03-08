object ItemsBuscaF: TItemsBuscaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Items Busca'
  ClientHeight = 623
  ClientWidth = 1309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 1309
    Height = 623
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1309
      Height = 281
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object PanelCliente: TPanel
        Left = 0
        Top = 0
        Width = 1309
        Height = 281
        Align = alClient
        TabOrder = 0
        object PanelClienteDatos: TPanel
          Left = 1
          Top = 1
          Width = 976
          Height = 279
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label2: TLabel
            Left = 48
            Top = 85
            Width = 65
            Height = 15
            Caption = 'Descripcion:'
          end
          object Label1: TLabel
            Left = 48
            Top = 38
            Width = 32
            Height = 15
            Caption = 'Clave:'
          end
          object EditRFC: TEdit
            Left = 184
            Top = 35
            Width = 465
            Height = 23
            TabOrder = 0
          end
          object EditRazonSocial: TEdit
            Left = 184
            Top = 82
            Width = 465
            Height = 23
            TabOrder = 1
          end
          object ButtonBuscarPorRazSoc: TButton
            Left = 681
            Top = 73
            Width = 241
            Height = 42
            Caption = 'Buscar Por Descripcion'
            TabOrder = 2
          end
          object BuscarPorRFC: TButton
            Left = 681
            Top = 25
            Width = 241
            Height = 42
            Caption = 'Buscar Por Clave'
            TabOrder = 3
          end
          object GroupBox1: TGroupBox
            Left = 24
            Top = 121
            Width = 886
            Height = 129
            Caption = 'Articulo Seleccionado'
            TabOrder = 4
            object Label4: TLabel
              Left = 24
              Top = 42
              Width = 32
              Height = 15
              Caption = 'Clave:'
            end
            object Label3: TLabel
              Left = 24
              Top = 74
              Width = 65
              Height = 15
              Caption = 'Descripcion:'
            end
            object LabelProdClave: TLabel
              Left = 160
              Top = 42
              Width = 57
              Height = 15
              Caption = 'LabelClave'
            end
            object LabelProdDesc: TLabel
              Left = 160
              Top = 74
              Width = 87
              Height = 15
              Caption = 'LabelDescrpcion'
            end
          end
        end
        object PanelClietenSelect: TPanel
          Left = 977
          Top = 1
          Width = 331
          Height = 279
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object ButtonSelectCliente: TButton
            Left = 86
            Top = 25
            Width = 219
            Height = 42
            Caption = 'Seleccionar'
            TabOrder = 0
          end
          object ButtonRegistrarNuevoCliente: TButton
            Left = 86
            Top = 79
            Width = 219
            Height = 42
            Caption = 'Registrar Nuevo'
            TabOrder = 1
            OnClick = ButtonRegistrarNuevoClienteClick
          end
          object ButtonEditarSeleccionado: TButton
            Left = 86
            Top = 151
            Width = 219
            Height = 42
            Caption = 'Editar Seleccionado'
            TabOrder = 2
            OnClick = ButtonEditarSeleccionadoClick
          end
        end
      end
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 281
      Width = 1309
      Height = 267
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 1309
        Height = 267
        Align = alClient
        TabOrder = 0
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 548
      Width = 1309
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
        OnClick = ButtonCerrarClick
      end
    end
  end
end
