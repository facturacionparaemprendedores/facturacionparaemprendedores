object FrameItems: TFrameItems
  Left = 0
  Top = 0
  Width = 1352
  Height = 925
  TabOrder = 0
  PixelsPerInch = 96
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 1352
    Height = 925
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -408
    ExplicitWidth = 1309
    ExplicitHeight = 623
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1352
      Height = 281
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1309
      object PanelCliente: TPanel
        Left = 0
        Top = 0
        Width = 1352
        Height = 281
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1309
        object PanelClienteDatos: TPanel
          Left = 1
          Top = 1
          Width = 1019
          Height = 279
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 976
          object Label2: TLabel
            Left = 48
            Top = 85
            Width = 96
            Height = 25
            Caption = 'Descripcion:'
          end
          object Label1: TLabel
            Left = 48
            Top = 38
            Width = 46
            Height = 25
            Caption = 'Clave:'
          end
          object EditRFC: TEdit
            Left = 184
            Top = 35
            Width = 465
            Height = 33
            TabOrder = 0
          end
          object EditRazonSocial: TEdit
            Left = 184
            Top = 82
            Width = 465
            Height = 33
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
              Width = 46
              Height = 25
              Caption = 'Clave:'
            end
            object Label3: TLabel
              Left = 24
              Top = 74
              Width = 96
              Height = 25
              Caption = 'Descripcion:'
            end
            object LabelProdClave: TLabel
              Left = 160
              Top = 42
              Width = 83
              Height = 25
              Caption = 'LabelClave'
            end
            object LabelProdDesc: TLabel
              Left = 160
              Top = 74
              Width = 129
              Height = 25
              Caption = 'LabelDescrpcion'
            end
          end
        end
        object PanelClietenSelect: TPanel
          Left = 1020
          Top = 1
          Width = 331
          Height = 279
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 977
          object ButtonRegistra: TButton
            Left = 86
            Top = 79
            Width = 219
            Height = 42
            Caption = 'Registrar Nuevo'
            TabOrder = 0
            OnClick = ButtonRegistraClick
          end
          object ButtonEditar: TButton
            Left = 86
            Top = 151
            Width = 219
            Height = 42
            Caption = 'Editar Seleccionado'
            TabOrder = 1
            OnClick = ButtonEditarClick
          end
        end
      end
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 281
      Width = 1352
      Height = 569
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1309
      ExplicitHeight = 267
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 1352
        Height = 569
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1309
        ExplicitHeight = 267
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 850
      Width = 1352
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 548
      ExplicitWidth = 1309
    end
  end
end
