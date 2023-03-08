object ImpuestoEditaF: TImpuestoEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impuesto Edita'
  ClientHeight = 296
  ClientWidth = 945
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
    Width = 945
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -356
    ExplicitWidth = 974
    ExplicitHeight = 310
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 945
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 974
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 57
      Width = 945
      Height = 164
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 974
      ExplicitHeight = 178
      object GroupBox1: TGroupBox
        Left = 24
        Top = 41
        Width = 929
        Height = 129
        Caption = 'Impuesto'
        TabOrder = 0
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
        object BuscarRegistra: TButton
          Left = 645
          Top = 25
          Width = 241
          Height = 25
          Caption = 'Registra'
          TabOrder = 0
        end
        object EditRazonSocial: TEdit
          Left = 120
          Top = 74
          Width = 465
          Height = 23
          TabOrder = 1
        end
        object EditRFC: TEdit
          Left = 120
          Top = 27
          Width = 465
          Height = 23
          TabOrder = 2
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 221
      Width = 945
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 235
      ExplicitWidth = 974
      object ButtonCancelar: TButton
        Left = 824
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
  end
end
