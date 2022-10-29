object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 535
  ClientWidth = 869
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
    Width = 869
    Height = 69
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 15.000000000000000000
      end
      item
        Value = 35.000000000000000000
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
    object Button1: TButton
      Left = 0
      Top = 46
      Width = 434
      Height = 23
      Align = alClient
      Caption = 'Clear filters'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 130
      Top = 0
      Width = 304
      Height = 23
      Align = alClient
      TabOrder = 1
      TextHint = 'Title, author, series, etc.'
      ExplicitHeight = 32
    end
    object ComboBox1: TComboBox
      Left = 130
      Top = 23
      Width = 304
      Height = 23
      Align = alClient
      AutoDropDown = True
      Sorted = True
      TabOrder = 2
      TextHint = 'Category'
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 124
      Height = 17
      Align = alClient
      Caption = 'Search'
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 26
      Width = 124
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
    Top = 516
    Width = 869
    Height = 19
    Panels = <>
  end
  object ControlList1: TControlList
    Left = 0
    Top = 69
    Width = 869
    Height = 447
    Align = alClient
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ParentColor = False
    TabOrder = 2
  end
end
