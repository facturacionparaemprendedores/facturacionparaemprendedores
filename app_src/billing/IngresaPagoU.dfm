object IngresaPagoF: TIngresaPagoF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ingresa Pago'
  ClientHeight = 566
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 566
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -119
    ExplicitTop = -266
    ExplicitWidth = 737
    ExplicitHeight = 690
    object PanelBottom: TPanel
      Left = 0
      Top = 513
      Width = 729
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 637
      ExplicitWidth = 737
      object ButtonCancelar: TButton
        Left = 646
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 729
      Height = 97
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 737
        DesignSize = (
          729
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 681
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 689
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
      Top = 97
      Width = 729
      Height = 416
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 102
      ExplicitWidth = 737
      ExplicitHeight = 535
      object PanelBusca: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 121
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 757
        object Label2: TLabel
          Left = 24
          Top = 6
          Width = 103
          Height = 15
          Caption = 'Pago Seleccionado:'
        end
        object Label3: TLabel
          Left = 152
          Top = 6
          Width = 30
          Height = 15
          Caption = 'Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 24
          Top = 42
          Width = 42
          Height = 15
          Caption = 'Monto: '
        end
        object ButtonUsarPago: TButton
          Left = 582
          Top = 38
          Width = 75
          Height = 25
          Caption = 'Usar Pago'
          TabOrder = 1
        end
        object EditMontoPago: TEdit
          Left = 152
          Top = 40
          Width = 121
          Height = 23
          TabOrder = 0
        end
        object GroupBox1: TGroupBox
          Left = 24
          Top = 69
          Width = 600
          Height = 54
          Caption = 'Buscar Pago'
          TabOrder = 2
          object Label1: TLabel
            Left = 16
            Top = 28
            Width = 30
            Height = 15
            Caption = 'Pago:'
          end
          object EditPago: TEdit
            Left = 67
            Top = 23
            Width = 345
            Height = 23
            TabOrder = 0
          end
          object ButtonBuscar: TButton
            Left = 448
            Top = 26
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 1
          end
        end
      end
      object StringGrid1: TStringGrid
        Left = 24
        Top = 144
        Width = 697
        Height = 257
        TabOrder = 1
      end
    end
  end
end
