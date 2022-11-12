object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  TextHeight = 15
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 543
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
    object Button1: TButton
      Left = 0
      Top = 46
      Width = 336
      Height = 23
      Align = alClient
      Caption = 'Clear filters'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 125
      Top = 0
      Width = 211
      Height = 23
      Align = alClient
      TabOrder = 1
      TextHint = 'Title, author, series, etc.'
      OnChange = Edit1Change
    end
    object ComboBox1: TComboBox
      Left = 125
      Top = 23
      Width = 211
      Height = 23
      Align = alClient
      AutoDropDown = True
      Sorted = True
      TabOrder = 2
      TextHint = 'Category'
      OnChange = ComboBox1Change
      Items.Strings = (
        'adventure'
        'art'
        'children'#39's'
        'contemporary'
        'cookbook'
        'development'
        'dystopian'
        'families & relationships'
        'fantasy'
        'guide'
        'health'
        'historical fiction'
        'history'
        'horror'
        'humor'
        'memoir'
        'motivational'
        'mystery'
        'other'
        'paranormal'
        'romance'
        'science fiction'
        'self-help'
        'thriller'
        'travel')
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
  object ControlList1: TControlList
    Left = 0
    Top = 69
    Width = 543
    Height = 373
    Align = alClient
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ItemSelectionOptions.HotColorAlpha = 50
    ItemSelectionOptions.SelectedColorAlpha = 70
    ItemSelectionOptions.FocusedColorAlpha = 80
    ParentColor = False
    TabOrder = 1
    OnItemDblClick = ControlList1ItemDblClick
    object Label3: TLabel
      AlignWithMargins = True
      Left = 83
      Top = 24
      Width = 374
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
    end
    object Label4: TLabel
      Left = 83
      Top = 6
      Width = 374
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Image1: TImage
      Left = 10
      Top = 4
      Width = 60
      Height = 60
      Center = True
      Proportional = True
    end
    object ControlListButton1: TControlListButton
      Left = 469
      Top = 25
      Width = 62
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Edit'
      LinkHotColor = clHighlight
      OnClick = ControlListButton1Click
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 60
    Top = 149
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = ComboBox1
      Track = True
      FillDataSource = BindSourceDB1
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'name'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'title'
      Component = Label4
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'description'
      Component = Label3
      CustomFormat = 'IfThen(IfAny(%0:s <> ""), %0:s, "No description")'
      ComponentProperty = 'Caption'
    end
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      GridControl = ControlList1
      Columns = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cover'
      Control = Image1
      Direction = linkDataToControl
      Track = False
    end
  end
  object S: TFDConnection
    Params.Strings = (
      'ConnectionDef=library')
    Connected = True
    LoginPrompt = False
    Left = 7
    Top = 148
  end
  object MainMenu1: TMainMenu
    Left = 152
    Top = 152
    object File1: TMenuItem
      Caption = 'File'
      object Newbook1: TMenuItem
        Caption = 'New book'
        OnClick = Newbook1Click
      end
    end
    object Backup1: TMenuItem
      Caption = 'Backup'
      object Export1: TMenuItem
        Caption = 'Export'
        OnClick = Export1Click
      end
      object Import1: TMenuItem
        Caption = 'Import'
        OnClick = Import1Click
      end
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = S
    SQL.Strings = (
      'SELECT id, name FROM genre')
    Left = 40
    Top = 272
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 8
    Top = 264
  end
  object FDQuery2: TFDQuery
    Active = True
    Filtered = True
    Connection = S
    SQL.Strings = (
      'SELECT'
      '    b.id, b.title, b.series, b.description, b.author, b.cover,'
      '    g.name genre_name'
      'FROM book b'
      'JOIN genre g'
      '    ON b.genre = g.id')
    Left = 40
    Top = 224
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDQuery2
    ScopeMappings = <>
    Left = 8
    Top = 224
  end
  object FileSaveDialog1: TFileSaveDialog
    DefaultExtension = 'books'
    FavoriteLinks = <>
    FileName = 'library'
    FileTypes = <>
    Options = [fdoOverWritePrompt, fdoStrictFileTypes, fdoPathMustExist]
    Title = 'Export as'
    Left = 184
    Top = 152
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Library File|*.books'
    Left = 216
    Top = 152
  end
end
