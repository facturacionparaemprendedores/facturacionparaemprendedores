object ClienteRegistraF: TClienteRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cliente Registra'
  ClientHeight = 690
  ClientWidth = 737
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
    Width = 737
    Height = 690
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelBottom: TPanel
      Left = 0
      Top = 637
      Width = 737
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object ButtonCancelar: TButton
        Left = 606
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
      Width = 737
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 737
        Height = 100
        Align = alTop
        TabOrder = 0
        DesignSize = (
          737
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 689
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
      Top = 102
      Width = 737
      Height = 535
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object GroupBox1: TGroupBox
        Left = 24
        Top = 24
        Width = 689
        Height = 521
        Caption = 'Datos del Cliente'
        TabOrder = 0
        object Label1: TLabel
          Left = 20
          Top = 80
          Width = 41
          Height = 15
          Caption = 'R.F.C.: *'
        end
        object Label2: TLabel
          Left = 20
          Top = 113
          Width = 74
          Height = 15
          Caption = 'Razon Social:*'
        end
        object Label3: TLabel
          Left = 20
          Top = 146
          Width = 29
          Height = 15
          Caption = 'Calle:'
        end
        object Label4: TLabel
          Left = 20
          Top = 180
          Width = 54
          Height = 15
          Caption = 'Num. Ext.:'
        end
        object Label5: TLabel
          Left = 20
          Top = 214
          Width = 53
          Height = 15
          Caption = 'Num. Int.:'
        end
        object Label6: TLabel
          Left = 20
          Top = 247
          Width = 44
          Height = 15
          Caption = 'Colonia:'
        end
        object Label7: TLabel
          Left = 20
          Top = 284
          Width = 63
          Height = 15
          Caption = 'Mun/Deleg:'
        end
        object Label8: TLabel
          Left = 20
          Top = 319
          Width = 38
          Height = 15
          Caption = 'Estado:'
        end
        object Label9: TLabel
          Left = 20
          Top = 353
          Width = 24
          Height = 15
          Caption = 'Pais:'
        end
        object Label10: TLabel
          Left = 20
          Top = 388
          Width = 24
          Height = 15
          Caption = 'C.P.:'
        end
        object Label11: TLabel
          Left = 20
          Top = 421
          Width = 49
          Height = 15
          Caption = 'Telefono:'
        end
        object Label12: TLabel
          Left = 20
          Top = 454
          Width = 40
          Height = 15
          Caption = 'Celular:'
        end
        object Label13: TLabel
          Left = 20
          Top = 488
          Width = 32
          Height = 15
          Caption = 'Email:'
        end
        object Label14: TLabel
          Left = 16
          Top = 32
          Width = 169
          Height = 15
          Caption = 'Campos con * , son obligatorios'
        end
        object EditClienteRazonSocial: TEdit
          Left = 125
          Top = 105
          Width = 313
          Height = 23
          TabOrder = 1
        end
        object EditClienteRFC: TEdit
          Left = 125
          Top = 72
          Width = 257
          Height = 23
          TabOrder = 0
        end
        object EditClienteCalle: TEdit
          Left = 125
          Top = 138
          Width = 273
          Height = 23
          TabOrder = 2
        end
        object EditClienteNumExt: TEdit
          Left = 125
          Top = 172
          Width = 121
          Height = 23
          TabOrder = 3
        end
        object EditClienteNumInt: TEdit
          Left = 125
          Top = 206
          Width = 121
          Height = 23
          TabOrder = 4
        end
        object EditClienteColonia: TEdit
          Left = 125
          Top = 239
          Width = 196
          Height = 23
          TabOrder = 5
        end
        object EditClienteMun: TEdit
          Left = 125
          Top = 276
          Width = 196
          Height = 23
          TabOrder = 6
        end
        object EditClienteEstado: TEdit
          Left = 125
          Top = 311
          Width = 196
          Height = 23
          TabOrder = 7
        end
        object EditClientePais: TEdit
          Left = 125
          Top = 345
          Width = 121
          Height = 23
          TabOrder = 8
        end
        object EditClienteCP: TEdit
          Left = 125
          Top = 380
          Width = 121
          Height = 23
          TabOrder = 9
        end
        object EditClienteTelefono: TEdit
          Left = 125
          Top = 413
          Width = 244
          Height = 23
          TabOrder = 10
        end
        object EditClienteCelular: TEdit
          Left = 125
          Top = 446
          Width = 244
          Height = 23
          TabOrder = 11
        end
        object EditClienteMail: TEdit
          Left = 125
          Top = 480
          Width = 244
          Height = 23
          TabOrder = 12
        end
        object ButtonRegistrar: TButton
          Left = 503
          Top = 63
          Width = 154
          Height = 42
          Caption = 'Registrar Nuevo Cliente'
          TabOrder = 13
          OnClick = ButtonRegistrarClick
        end
      end
    end
  end
end
