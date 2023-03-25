object TimbreEditaF: TTimbreEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Timbre Edita'
  ClientHeight = 519
  ClientWidth = 892
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
    Width = 892
    Height = 519
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -265
    ExplicitTop = -80
    ExplicitWidth = 883
    ExplicitHeight = 504
    object PanelBottom: TPanel
      Left = 0
      Top = 466
      Width = 892
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 451
      ExplicitWidth = 883
      object ButtonCancelar: TButton
        Left = 784
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
      Width = 892
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 883
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 892
        Height = 100
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 883
        DesignSize = (
          892
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 844
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 835
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
      Top = 102
      Width = 892
      Height = 364
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 883
      ExplicitHeight = 349
      object GroupBox1: TGroupBox
        Left = 8
        Top = 22
        Width = 897
        Height = 361
        Caption = 'Certificados SAT'
        TabOrder = 0
        object Label1: TLabel
          Left = 40
          Top = 48
          Width = 80
          Height = 15
          Caption = 'Certificado .cer'
        end
        object Label2: TLabel
          Left = 40
          Top = 144
          Width = 82
          Height = 15
          Caption = 'Certificado .key'
        end
        object EditCertCer: TEdit
          Left = 40
          Top = 85
          Width = 537
          Height = 23
          TabOrder = 0
          Text = 'EditCertCer'
        end
        object EditCertKey: TEdit
          Left = 40
          Top = 175
          Width = 545
          Height = 23
          TabOrder = 2
          Text = 'EditCertKey'
        end
        object ButtonGuardarCert: TButton
          Left = 608
          Top = 248
          Width = 180
          Height = 25
          Caption = 'Guardar'
          TabOrder = 4
        end
        object ButtonSelectCertCer: TButton
          Left = 608
          Top = 89
          Width = 180
          Height = 25
          Caption = 'Selecciona Cer'
          TabOrder = 1
        end
        object ButtonSelectCertKey: TButton
          Left = 608
          Top = 175
          Width = 180
          Height = 25
          Caption = 'Selecciona Key'
          TabOrder = 3
        end
      end
    end
  end
end
