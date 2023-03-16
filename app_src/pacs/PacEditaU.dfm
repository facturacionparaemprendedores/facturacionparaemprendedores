object PacEditaF: TPacEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PAC Edita'
  ClientHeight = 321
  ClientWidth = 873
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
    Width = 873
    Height = 321
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 873
      Height = 105
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 873
        Height = 100
        Align = alTop
        TabOrder = 0
        DesignSize = (
          873
          100)
        object PanelMessage: TPanel
          Left = 36
          Top = 21
          Width = 799
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
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
      Top = 105
      Width = 873
      Height = 175
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 36
        Top = 21
        Width = 1152
        Height = 124
        TabOrder = 0
        object Label4: TLabel
          Left = 19
          Top = 20
          Width = 25
          Height = 15
          Caption = 'PAC:'
        end
        object Label1: TLabel
          Left = 19
          Top = 58
          Width = 64
          Height = 15
          Caption = 'WebService:'
        end
        object EditPacNombre: TEdit
          Left = 99
          Top = 17
          Width = 398
          Height = 23
          TabOrder = 0
        end
        object ButtonProbar: TButton
          Left = 550
          Top = 20
          Width = 249
          Height = 35
          Caption = 'Probar'
          TabOrder = 1
          OnClick = ButtonProbarClick
        end
        object ButtonGuardar: TButton
          Left = 550
          Top = 61
          Width = 249
          Height = 35
          Caption = 'Guardar'
          TabOrder = 3
          OnClick = ButtonGuardarClick
        end
        object EditPacWebService: TEdit
          Left = 99
          Top = 55
          Width = 398
          Height = 23
          TabOrder = 2
        end
        object CheckBoxPacActivo: TCheckBox
          Left = 19
          Top = 92
          Width = 97
          Height = 17
          Caption = 'Pac Activo'
          TabOrder = 4
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 280
      Width = 873
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object ButtonCancelar: TButton
        Left = 760
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
  end
end
