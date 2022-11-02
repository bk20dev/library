object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 466
  ClientWidth = 566
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
    Width = 566
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
    ExplicitWidth = 562
    object Button1: TButton
      Left = 0
      Top = 46
      Width = 345
      Height = 23
      Align = alClient
      Caption = 'Clear filters'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitWidth = 343
    end
    object Edit1: TEdit
      Left = 125
      Top = 0
      Width = 220
      Height = 23
      Align = alClient
      TabOrder = 1
      TextHint = 'Title, author, series, etc.'
      OnChange = Edit1Change
      ExplicitWidth = 218
    end
    object ComboBox1: TComboBox
      Left = 125
      Top = 23
      Width = 220
      Height = 23
      Align = alClient
      AutoDropDown = True
      Sorted = True
      TabOrder = 2
      TextHint = 'Category'
      OnChange = ComboBox1Change
      ExplicitWidth = 218
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
    Top = 447
    Width = 566
    Height = 19
    Panels = <>
    ExplicitTop = 446
    ExplicitWidth = 562
  end
  object ControlList1: TControlList
    Left = 0
    Top = 69
    Width = 566
    Height = 378
    Align = alClient
    ItemCount = 1
    ItemIndex = 0
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ItemSelectionOptions.HotColorAlpha = 50
    ItemSelectionOptions.SelectedColorAlpha = 70
    ItemSelectionOptions.FocusedColorAlpha = 80
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 562
    ExplicitHeight = 377
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
      EllipsisPosition = epEndEllipsis
      ShowAccelChar = False
      Transparent = True
      WordWrap = True
      ExplicitWidth = 269
    end
    object Label4: TLabel
      Left = 76
      Top = 6
      Width = 66
      Height = 13
      Caption = 'Cien Smoka'
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
      Left = 528
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
      Left = 494
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
  object BindSourcebook: TBindSourceDB
    DataSet = FDTablebook
    ScopeMappings = <>
    Left = 272
    Top = 240
  end
  object FDTablebook: TFDTable
    Active = True
    Connection = LibraryConnection
    TableName = 'book'
    Left = 392
    Top = 232
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 156
    Top = 245
    object LinkGridToDataSourceBindSourcebook: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourcebook
      GridControl = ControlList1
      Columns = <>
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourcebook
      FieldName = 'title'
      Component = Label4
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourcebook
      FieldName = 'description'
      Component = Label3
      ComponentProperty = 'Caption'
    end
  end
  object LibraryConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=library')
    Connected = True
    LoginPrompt = False
    Left = 527
    Top = 12
  end
end
