object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 467
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 69
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 125.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        ColumnSpan = 2
        Control = Button1
        Row = 2
      end
      item
        Column = 1
        Control = Edit1
        Row = 0
      end
      item
        Column = 1
        Control = ComboBox1
        Row = 1
      end
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 0
        Control = Label2
        Row = 1
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 23.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 23.000000000000000000
      end
      item
        SizeStyle = ssAuto
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 566
    object Button1: TButton
      Left = 0
      Top = 46
      Width = 347
      Height = 23
      Align = alClient
      Caption = 'Clear filters'
      TabOrder = 0
      ExplicitWidth = 345
    end
    object Edit1: TEdit
      Left = 125
      Top = 0
      Width = 222
      Height = 23
      Align = alClient
      TabOrder = 1
      TextHint = 'Title, author, series, etc.'
      ExplicitWidth = 220
    end
    object ComboBox1: TComboBox
      Left = 125
      Top = 23
      Width = 222
      Height = 23
      Align = alClient
      AutoDropDown = True
      Sorted = True
      TabOrder = 2
      TextHint = 'Category'
      ExplicitWidth = 220
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 119
      Height = 17
      Align = alClient
      Caption = 'Search'
      ExplicitWidth = 35
      ExplicitHeight = 15
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 26
      Width = 119
      Height = 17
      Align = alClient
      Caption = 'Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 48
      ExplicitHeight = 15
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 448
    Width = 570
    Height = 19
    Panels = <>
    ExplicitTop = 447
    ExplicitWidth = 566
  end
  object ControlList1: TControlList
    Left = 0
    Top = 69
    Width = 570
    Height = 379
    Align = alClient
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ItemSelectionOptions.HotColorAlpha = 50
    ItemSelectionOptions.SelectedColorAlpha = 70
    ItemSelectionOptions.FocusedColorAlpha = 80
    ParentColor = False
    TabOrder = 2
    OnBeforeDrawItem = ControlList1BeforeDrawItem
    object Label3: TLabel
      AlignWithMargins = True
      Left = 76
      Top = 24
      Width = 396
      Height = 38
      Margins.Left = 10
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      Caption = 
        'This is example of item with multi-line text. You can put any TG' +
        'raphicControl on it and adjust properties.'
      EllipsisPosition = epEndEllipsis
      ShowAccelChar = False
      Transparent = True
      WordWrap = True
      ExplicitWidth = 269
    end
    object Label4: TLabel
      Left = 76
      Top = 6
      Width = 25
      Height = 13
      Caption = 'Title'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ControlListButton1: TControlListButton
      AlignWithMargins = True
      Left = 532
      Top = 20
      Width = 30
      Height = 30
      Margins.Left = 2
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 20
      Align = alRight
      LinkHotColor = clHighlight
      Style = clbkToolButton
      ExplicitLeft = 382
      ExplicitTop = 21
    end
    object ControlListButton2: TControlListButton
      AlignWithMargins = True
      Left = 498
      Top = 20
      Width = 30
      Height = 30
      Margins.Left = 2
      Margins.Top = 20
      Margins.Right = 2
      Margins.Bottom = 20
      Align = alRight
      LinkHotColor = clHighlight
      Style = clbkToolButton
      ExplicitLeft = 346
    end
    object Image1: TImage
      Left = 4
      Top = 4
      Width = 60
      Height = 60
      Proportional = True
    end
  end
end
