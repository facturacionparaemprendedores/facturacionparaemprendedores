object ImpuestoRegistraF: TImpuestoRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impuesto Registra'
  ClientHeight = 310
  ClientWidth = 974
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
    Width = 974
    Height = 310
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 1308
    ExplicitHeight = 759
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 974
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1330
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 57
      Width = 974
      Height = 178
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 281
      ExplicitWidth = 1308
      ExplicitHeight = 403
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
      Top = 235
      Width = 974
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 684
      ExplicitWidth = 1308
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
