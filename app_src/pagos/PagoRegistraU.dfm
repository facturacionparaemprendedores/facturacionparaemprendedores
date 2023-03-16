object PagoRegistraF: TPagoRegistraF
  Left = 0
  Top = 0
  Caption = 'Pago Registra'
  ClientHeight = 538
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 538
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -133
    ExplicitTop = -267
    ExplicitWidth = 751
    ExplicitHeight = 691
    object PanelBottom: TPanel
      Left = 0
      Top = 485
      Width = 780
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 638
      ExplicitWidth = 751
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
      Width = 780
      Height = 121
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 751
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 751
        DesignSize = (
          780
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 732
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 703
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
      Top = 121
      Width = 780
      Height = 364
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 751
      ExplicitHeight = 517
      object PanelBusca: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 121
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 751
        object Label1: TLabel
          Left = 24
          Top = 47
          Width = 30
          Height = 15
          Caption = 'Pago:'
        end
        object Label2: TLabel
          Left = 24
          Top = 80
          Width = 103
          Height = 15
          Caption = 'Pago Seleccionado:'
        end
        object Label3: TLabel
          Left = 152
          Top = 80
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
        object Label4: TLabel
          Left = 40
          Top = 16
          Width = 65
          Height = 15
          Caption = 'Buscar Pago'
        end
        object ButtonBuscar: TButton
          Left = 464
          Top = 39
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 0
        end
        object EditPago: TEdit
          Left = 88
          Top = 39
          Width = 345
          Height = 23
          TabOrder = 1
        end
        object ButtonEliminarPago: TButton
          Left = 630
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Eliminar Pago'
          TabOrder = 2
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
