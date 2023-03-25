object CertificadoEditaF: TCertificadoEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Certificado Edita'
  ClientHeight = 439
  ClientWidth = 868
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
    Width = 868
    Height = 439
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 873
    ExplicitHeight = 486
    object PanelBottom: TPanel
      Left = 0
      Top = 416
      Width = 878
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object ButtonCancelar: TButton
        Left = 775
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
      Width = 878
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 873
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 878
        Height = 100
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 873
        DesignSize = (
          868
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 820
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 825
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
      Width = 868
      Height = 296
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 878
      ExplicitHeight = 283
      object GroupBox1: TGroupBox
        Left = 24
        Top = 22
        Width = 826
        Height = 267
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
          Top = 108
          Width = 82
          Height = 15
          Caption = 'Certificado .key'
        end
        object Label3: TLabel
          Left = 40
          Top = 169
          Width = 124
          Height = 15
          Caption = 'Certificado Contrasena:'
        end
        object EditCertCer: TEdit
          Left = 40
          Top = 73
          Width = 537
          Height = 23
          TabOrder = 0
        end
        object EditCertKey: TEdit
          Left = 40
          Top = 133
          Width = 545
          Height = 23
          TabOrder = 2
        end
        object ButtonGuardarCert: TButton
          Left = 608
          Top = 190
          Width = 180
          Height = 25
          Caption = 'Guardar'
          TabOrder = 4
          OnClick = ButtonGuardarCertClick
        end
        object ButtonSelectCertCer: TButton
          Left = 608
          Top = 73
          Width = 180
          Height = 25
          Caption = 'Selecciona Cer'
          TabOrder = 1
          OnClick = ButtonSelectCertCerClick
        end
        object ButtonSelectCertKey: TButton
          Left = 608
          Top = 134
          Width = 180
          Height = 25
          Caption = 'Selecciona Key'
          TabOrder = 3
          OnClick = ButtonSelectCertKeyClick
        end
        object EditCertPass: TEdit
          Left = 40
          Top = 190
          Width = 545
          Height = 23
          TabOrder = 5
        end
        object CheckBoxActivo: TCheckBox
          Left = 40
          Top = 226
          Width = 97
          Height = 17
          Caption = 'Activo'
          TabOrder = 6
        end
      end
    end
  end
  object OpenDialogCer: TOpenDialog
    Filter = 'Archivos Cer|*.cer|Todos los Archivos|*.*'
    Left = 808
    Top = 144
  end
  object OpenDialogKey: TOpenDialog
    Filter = 'Archivos Key|*.key|Todos los Archivos|*.*'
    Left = 802
    Top = 225
  end
end
