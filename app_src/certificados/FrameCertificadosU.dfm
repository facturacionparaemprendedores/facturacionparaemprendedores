object FrameCertificados: TFrameCertificados
  Left = 0
  Top = 0
  Width = 1333
  Height = 909
  TabOrder = 0
  PixelsPerInch = 96
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 1333
    Height = 909
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -89
    ExplicitTop = -106
    ExplicitWidth = 1422
    ExplicitHeight = 1015
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1333
      Height = 281
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1422
      object PanelCliente: TPanel
        Left = 0
        Top = 0
        Width = 1333
        Height = 281
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1422
        object PanelClienteDatos: TPanel
          Left = 1
          Top = 1
          Width = 1331
          Height = 279
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 1089
          object ButtonMostrarCertificados: TButton
            Left = 945
            Top = 50
            Width = 241
            Height = 42
            Caption = 'Mostrar Certificados'
            TabOrder = 0
          end
          object GroupBox1: TGroupBox
            Left = 32
            Top = 33
            Width = 886
            Height = 171
            Caption = 'Certificado Seleccionado'
            TabOrder = 1
            object Label4: TLabel
              Left = 24
              Top = 42
              Width = 30
              Height = 25
              Caption = 'Cer:'
            end
            object Label3: TLabel
              Left = 24
              Top = 74
              Width = 32
              Height = 25
              Caption = 'Key:'
            end
            object LabelCer: TLabel
              Left = 160
              Top = 42
              Width = 67
              Height = 25
              Caption = 'LabelCer'
            end
            object LabelKey: TLabel
              Left = 160
              Top = 74
              Width = 51
              Height = 25
              Caption = 'Label5'
            end
          end
          object ButtonRegistrar: TButton
            Left = 945
            Top = 106
            Width = 241
            Height = 42
            Caption = 'Registrar'
            TabOrder = 2
            OnClick = ButtonRegistrarClick
          end
          object ButtonEliminar: TButton
            Left = 945
            Top = 210
            Width = 241
            Height = 42
            Caption = 'Eliminar'
            TabOrder = 4
          end
          object ButtonEditar: TButton
            Left = 945
            Top = 158
            Width = 241
            Height = 42
            Caption = 'Editar'
            TabOrder = 3
            OnClick = ButtonEditarClick
          end
        end
      end
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 281
      Width = 1333
      Height = 553
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1422
      ExplicitHeight = 659
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 1333
        Height = 553
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1422
        ExplicitHeight = 659
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 834
      Width = 1333
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 940
      ExplicitWidth = 1422
    end
  end
end
