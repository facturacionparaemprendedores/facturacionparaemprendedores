object FrameUpdate: TFrameUpdate
  Left = 0
  Top = 0
  Width = 1135
  Height = 723
  TabOrder = 0
  PixelsPerInch = 96
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 1135
    Height = 723
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -174
    ExplicitWidth = 1309
    ExplicitHeight = 623
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1135
      Height = 105
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 105
      Width = 1135
      Height = 543
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 281
      ExplicitWidth = 1309
      ExplicitHeight = 267
      object GroupBox1: TGroupBox
        Left = 56
        Top = 24
        Width = 905
        Height = 449
        TabOrder = 0
        object Label1: TLabel
          Left = 32
          Top = 24
          Width = 260
          Height = 25
          Caption = 'Facturacion para Emprendedores'
        end
        object Label2: TLabel
          Left = 32
          Top = 128
          Width = 260
          Height = 25
          Caption = 'Facturacion para Emprendedores'
        end
        object ButtonActualizar: TButton
          Left = 360
          Top = 152
          Width = 145
          Height = 25
          Caption = 'Actualizar'
          TabOrder = 0
          OnClick = ButtonActualizarClick
        end
        object ProgressBar1: TProgressBar
          Left = 32
          Top = 80
          Width = 833
          Height = 26
          TabOrder = 1
        end
        object Memo1: TMemo
          Left = 32
          Top = 208
          Width = 833
          Height = 193
          TabOrder = 2
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 648
      Width = 1135
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 548
      ExplicitWidth = 1309
    end
  end
end
