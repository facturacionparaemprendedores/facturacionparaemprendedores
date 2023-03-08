object FrameEmpresaAdmin: TFrameEmpresaAdmin
  Left = 0
  Top = 0
  Width = 738
  Height = 778
  TabOrder = 0
  PixelsPerInch = 96
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 778
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 737
    ExplicitHeight = 690
    object PanelBottom: TPanel
      Left = 0
      Top = 725
      Width = 738
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 637
      ExplicitWidth = 737
    end
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 738
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 737
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 100
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 737
        DesignSize = (
          738
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 690
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
      Top = 102
      Width = 738
      Height = 623
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 737
      ExplicitHeight = 535
      object GroupBox1: TGroupBox
        Left = 24
        Top = 24
        Width = 689
        Height = 521
        Caption = 'Datos de la Empresa'
        TabOrder = 0
        object Label1: TLabel
          Left = 20
          Top = 80
          Width = 60
          Height = 25
          Caption = 'R.F.C.: *'
        end
        object Label2: TLabel
          Left = 20
          Top = 113
          Width = 112
          Height = 25
          Caption = 'Razon Social:*'
        end
        object Label3: TLabel
          Left = 20
          Top = 146
          Width = 41
          Height = 25
          Caption = 'Calle:'
        end
        object Label4: TLabel
          Left = 20
          Top = 180
          Width = 79
          Height = 25
          Caption = 'Num. Ext.:'
        end
        object Label5: TLabel
          Left = 20
          Top = 214
          Width = 77
          Height = 25
          Caption = 'Num. Int.:'
        end
        object Label6: TLabel
          Left = 20
          Top = 247
          Width = 64
          Height = 25
          Caption = 'Colonia:'
        end
        object Label7: TLabel
          Left = 20
          Top = 284
          Width = 93
          Height = 25
          Caption = 'Mun/Deleg:'
        end
        object Label8: TLabel
          Left = 20
          Top = 319
          Width = 58
          Height = 25
          Caption = 'Estado:'
        end
        object Label9: TLabel
          Left = 20
          Top = 353
          Width = 34
          Height = 25
          Caption = 'Pais:'
        end
        object Label10: TLabel
          Left = 20
          Top = 388
          Width = 33
          Height = 25
          Caption = 'C.P.:'
        end
        object Label11: TLabel
          Left = 20
          Top = 421
          Width = 71
          Height = 25
          Caption = 'Telefono:'
        end
        object Label12: TLabel
          Left = 20
          Top = 454
          Width = 57
          Height = 25
          Caption = 'Celular:'
        end
        object Label13: TLabel
          Left = 20
          Top = 488
          Width = 46
          Height = 25
          Caption = 'Email:'
        end
        object Label14: TLabel
          Left = 16
          Top = 32
          Width = 257
          Height = 25
          Caption = 'Campos con * , son obligatorios'
        end
        object EditRazonSocial: TEdit
          Left = 125
          Top = 105
          Width = 313
          Height = 33
          TabOrder = 1
        end
        object EditRFC: TEdit
          Left = 125
          Top = 72
          Width = 257
          Height = 33
          TabOrder = 0
        end
        object EditCalle: TEdit
          Left = 125
          Top = 138
          Width = 273
          Height = 33
          TabOrder = 2
        end
        object EditNumExt: TEdit
          Left = 125
          Top = 172
          Width = 121
          Height = 33
          TabOrder = 3
        end
        object EditNumInt: TEdit
          Left = 125
          Top = 206
          Width = 121
          Height = 33
          TabOrder = 4
        end
        object EditColonia: TEdit
          Left = 125
          Top = 239
          Width = 196
          Height = 33
          TabOrder = 5
        end
        object EditMunDel: TEdit
          Left = 125
          Top = 276
          Width = 196
          Height = 33
          TabOrder = 6
        end
        object EditEstado: TEdit
          Left = 125
          Top = 311
          Width = 196
          Height = 33
          TabOrder = 7
        end
        object EditPais: TEdit
          Left = 125
          Top = 345
          Width = 121
          Height = 33
          TabOrder = 8
        end
        object EditCP: TEdit
          Left = 125
          Top = 380
          Width = 121
          Height = 33
          TabOrder = 9
        end
        object EditTelefono: TEdit
          Left = 125
          Top = 413
          Width = 244
          Height = 33
          TabOrder = 10
        end
        object EditCelular: TEdit
          Left = 125
          Top = 446
          Width = 244
          Height = 33
          TabOrder = 11
        end
        object Edit1Mail: TEdit
          Left = 125
          Top = 480
          Width = 244
          Height = 33
          TabOrder = 12
        end
        object ButtonEditarEmpresa: TButton
          Left = 503
          Top = 63
          Width = 154
          Height = 42
          Caption = 'Editar '
          TabOrder = 13
          OnClick = ButtonEditarEmpresaClick
        end
      end
    end
  end
end
