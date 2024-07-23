object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 493
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 493
    Align = alClient
    Caption = 'MainPanel'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 32
    object Panel2: TPanel
      Left = 369
      Top = 1
      Width = 131
      Height = 491
      Align = alRight
      Caption = 'RightPanel'
      Color = 4340282
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      ExplicitLeft = 375
      object delete: TButton
        Left = 32
        Top = 32
        Width = 75
        Height = 50
        Caption = 'del'
        TabOrder = 0
        OnClick = deleteClick
      end
      object divide: TButton
        Left = 32
        Top = 104
        Width = 75
        Height = 50
        Caption = '/'
        TabOrder = 1
        OnClick = setOperationClick
      end
      object multiply: TButton
        Left = 32
        Top = 176
        Width = 75
        Height = 50
        Caption = '*'
        TabOrder = 2
        OnClick = setOperationClick
      end
      object minus: TButton
        Left = 32
        Top = 248
        Width = 75
        Height = 50
        Caption = '-'
        TabOrder = 3
        OnClick = setOperationClick
      end
      object plus: TButton
        Left = 32
        Top = 320
        Width = 73
        Height = 50
        Caption = '+'
        TabOrder = 4
        OnClick = setOperationClick
      end
      object equalTo: TButton
        Left = 32
        Top = 392
        Width = 73
        Height = 50
        Caption = '='
        TabOrder = 5
        OnClick = equalToClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 368
      Height = 491
      Align = alClient
      Caption = 'LeftPanel'
      Color = 4931134
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      ExplicitLeft = 8
      object setText: TLabel
        Left = 200
        Top = 13
        Width = 155
        Height = 59
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Alignment = taRightJustify
        Caption = '0'
        Color = 16448255
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -43
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object set8: TButton
        Left = 152
        Top = 104
        Width = 75
        Height = 50
        Caption = '8'
        TabOrder = 0
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set9: TButton
        Left = 256
        Top = 104
        Width = 75
        Height = 50
        Caption = '9'
        TabOrder = 1
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set7: TButton
        Left = 48
        Top = 104
        Width = 75
        Height = 50
        Caption = '7'
        TabOrder = 2
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set4: TButton
        Left = 48
        Top = 176
        Width = 75
        Height = 50
        Caption = '4'
        TabOrder = 3
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set5: TButton
        Left = 152
        Top = 178
        Width = 75
        Height = 50
        Caption = '5'
        TabOrder = 4
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set6: TButton
        Left = 256
        Top = 178
        Width = 75
        Height = 50
        Caption = '6'
        TabOrder = 5
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set1: TButton
        Left = 48
        Top = 258
        Width = 75
        Height = 50
        Caption = '1'
        TabOrder = 6
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set3: TButton
        Left = 256
        Top = 258
        Width = 75
        Height = 50
        Caption = '3'
        TabOrder = 7
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set2: TButton
        Left = 152
        Top = 258
        Width = 75
        Height = 50
        Caption = '2'
        TabOrder = 8
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object set0: TButton
        Left = 48
        Top = 336
        Width = 75
        Height = 50
        Caption = '0'
        TabOrder = 9
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
      object setcomma: TButton
        Left = 152
        Top = 336
        Width = 75
        Height = 50
        Caption = ','
        TabOrder = 10
        StyleName = 'Windows'
        OnClick = setNumberClick
      end
    end
  end
end
