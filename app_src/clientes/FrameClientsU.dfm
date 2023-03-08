object FrameClients: TFrameClients
  Left = 0
  Top = 0
  Width = 1422
  Height = 1015
  TabOrder = 0
  PixelsPerInch = 96
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 1422
    Height = 1015
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1422
      Height = 281
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object PanelCliente: TPanel
        Left = 0
        Top = 0
        Width = 1422
        Height = 281
        Align = alClient
        TabOrder = 0
        object PanelClienteDatos: TPanel
          Left = 1
          Top = 1
          Width = 1089
          Height = 279
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label2: TLabel
            Left = 48
            Top = 85
            Width = 104
            Height = 25
            Caption = 'Razon Social:'
          end
          object Label1: TLabel
            Left = 48
            Top = 38
            Width = 47
            Height = 25
            Caption = 'R.F.C.:'
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
            Caption = 'Buscar Por Razon Social'
            TabOrder = 2
          end
          object BuscarPorRFC: TButton
            Left = 681
            Top = 25
            Width = 241
            Height = 42
            Caption = 'Buscar Por RFC'
            TabOrder = 3
          end
          object GroupBox1: TGroupBox
            Left = 24
            Top = 121
            Width = 886
            Height = 129
            Caption = 'Cliente Seleccionado'
            TabOrder = 4
            object Label4: TLabel
              Left = 24
              Top = 42
              Width = 47
              Height = 25
              Caption = 'R.F.C.:'
            end
            object Label3: TLabel
              Left = 24
              Top = 74
              Width = 104
              Height = 25
              Caption = 'Razon Social:'
            end
            object LabelRFCCliente: TLabel
              Left = 160
              Top = 42
              Width = 125
              Height = 25
              Caption = 'LabelRFCCliente'
            end
            object LabelRazonSocialCliente: TLabel
              Left = 160
              Top = 74
              Width = 51
              Height = 25
              Caption = 'Label5'
            end
          end
        end
        object PanelClietenSelect: TPanel
          Left = 1090
          Top = 1
          Width = 331
          Height = 279
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object ButtonRegistrarNuevoCliente: TButton
            Left = 86
            Top = 79
            Width = 219
            Height = 42
            Caption = 'Registrar Nuevo Cliente'
            TabOrder = 0
            OnClick = ButtonRegistrarNuevoClienteClick
          end
          object ButtonEditarCliente: TButton
            Left = 86
            Top = 151
            Width = 219
            Height = 42
            Caption = 'Editar Cliente'
            TabOrder = 1
            OnClick = ButtonEditarClienteClick
          end
        end
      end
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 281
      Width = 1422
      Height = 659
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 1422
        Height = 659
        Align = alClient
        TabOrder = 0
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 940
      Width = 1422
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
end
