object FormaPagoRegistraF: TFormaPagoRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Forma Pago Registra'
  ClientHeight = 273
  ClientWidth = 519
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
    Width = 519
    Height = 273
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 964
    ExplicitHeight = 292
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 519
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 498
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 57
      Width = 519
      Height = 160
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 498
      ExplicitHeight = 179
      object GroupBoxImpuestos: TGroupBox
        Left = 15
        Top = 19
        Width = 473
        Height = 131
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 35
          Width = 65
          Height = 15
          Caption = 'Descripcion:'
        end
        object Label3: TLabel
          Left = 24
          Top = 64
          Width = 23
          Height = 15
          Caption = 'Uso:'
        end
        object Label1: TLabel
          Left = 24
          Top = 98
          Width = 72
          Height = 15
          Caption = 'Tipo Especial:'
        end
        object ButtonRegistra: TButton
          Left = 325
          Top = 26
          Width = 132
          Height = 25
          Caption = 'Registra'
          TabOrder = 3
          OnClick = ButtonRegistraClick
        end
        object EditFormaPagoUso: TEdit
          Left = 120
          Top = 61
          Width = 161
          Height = 23
          TabOrder = 1
        end
        object EditFormaPagoDesc: TEdit
          Left = 120
          Top = 27
          Width = 161
          Height = 23
          TabOrder = 0
        end
        object EditFormaPagoTipoEspecial: TEdit
          Left = 120
          Top = 95
          Width = 161
          Height = 23
          TabOrder = 2
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 217
      Width = 519
      Height = 56
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 236
      ExplicitWidth = 498
      object ButtonCancelar: TButton
        Left = 405
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
  end
end
