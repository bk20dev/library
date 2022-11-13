object Form2: TForm2
  Left = 0
  Top = 0
  ActiveControl = Edit1
  Caption = 'Form2'
  ClientHeight = 464
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Padding.Left = 12
  Padding.Top = 8
  Padding.Right = 12
  Padding.Bottom = 8
  TextHeight = 15
  object GridPanel1: TGridPanel
    Left = 12
    Top = 8
    Width = 720
    Height = 448
    Align = alClient
    BevelOuter = bvNone
    ColumnCollection = <
      item
        SizeStyle = ssAuto
      end
      item
        SizeStyle = ssAbsolute
        Value = 12.000000000000000000
      end
      item
        SizeStyle = ssAuto
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 12.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    ControlCollection = <
      item
        Column = 0
        Control = StackPanel1
        Row = 0
      end
      item
        Column = 2
        Control = StackPanel4
        Row = 0
      end
      item
        Column = 4
        Control = StackPanel2
        Row = 0
      end>
    ParentBackground = False
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 716
    ExplicitHeight = 447
    object StackPanel1: TStackPanel
      Left = 0
      Top = 0
      Width = 250
      Height = 232
      AutoSize = True
      BevelOuter = bvNone
      ControlCollection = <
        item
          Control = Label1
        end
        item
          Control = Edit1
        end
        item
          Control = Label6
        end
        item
          Control = ComboBox4
        end
        item
          Control = Label7
        end
        item
          Control = Memo2
        end
        item
          Control = Label5
        end
        item
          Control = NumberBox1
        end>
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 22
        Height = 15
        Caption = 'Title'
      end
      object Edit1: TEdit
        Left = 0
        Top = 17
        Width = 250
        Height = 23
        TabOrder = 0
        TextHint = 'Romeo and Juliet'
      end
      object Label6: TLabel
        Left = 0
        Top = 42
        Width = 30
        Height = 15
        Caption = 'Series'
      end
      object ComboBox4: TComboBox
        Left = 0
        Top = 59
        Width = 200
        Height = 23
        ItemIndex = 1
        TabOrder = 1
        TextHint = 'First Quatro'
        Items.Strings = (
          'asdf'
          ''
          'asdf')
      end
      object Label7: TLabel
        Left = 0
        Top = 84
        Width = 60
        Height = 15
        Caption = 'Description'
      end
      object Memo2: TMemo
        Left = 0
        Top = 101
        Width = 250
        Height = 89
        Hint = 'Romeo falls in love with Ju...'
        TabOrder = 2
      end
      object Label5: TLabel
        Left = 0
        Top = 192
        Width = 34
        Height = 15
        Caption = 'Rating'
      end
      object NumberBox1: TNumberBox
        Left = 0
        Top = 209
        Width = 121
        Height = 23
        Mode = nbmFloat
        MinValue = 1.000000000000000000
        MaxValue = 5.000000000000000000
        SmallStep = 0.500000000000000000
        TabOrder = 3
        Value = 1.000000000000000000
        SpinButtonOptions.Placement = nbspCompact
      end
    end
    object StackPanel4: TStackPanel
      Left = 262
      Top = 0
      Width = 250
      Height = 436
      BevelOuter = bvNone
      ControlCollection = <
        item
          Control = Label4
        end
        item
          Control = ComboBox2
        end
        item
          Control = Label3
        end
        item
          Control = Edit2
        end
        item
          Control = Label8
        end
        item
          Control = ComboBox3
        end
        item
          Control = Label2
        end
        item
          Control = Button1
        end
        item
          Control = Button3
        end
        item
          Control = Image1
        end>
      TabOrder = 1
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 37
        Height = 15
        Caption = 'Author'
      end
      object ComboBox2: TComboBox
        Left = 0
        Top = 17
        Width = 200
        Height = 23
        ItemIndex = 1
        TabOrder = 0
        TextHint = 'William Shakespeare'
        Items.Strings = (
          'aaa'
          ''
          'aaa')
      end
      object Label3: TLabel
        Left = 0
        Top = 42
        Width = 64
        Height = 15
        Caption = 'Publish year'
      end
      object Edit2: TEdit
        Left = 0
        Top = 59
        Width = 121
        Height = 23
        NumbersOnly = True
        TabOrder = 1
        TextHint = '1597'
      end
      object Label8: TLabel
        Left = 0
        Top = 84
        Width = 31
        Height = 15
        Caption = 'Genre'
      end
      object ComboBox3: TComboBox
        Left = 0
        Top = 101
        Width = 145
        Height = 23
        ItemIndex = 0
        TabOrder = 2
        Text = 'fantasy'
        Items.Strings = (
          'fantasy'
          'adventure'
          'romance'
          'contemporary'
          'dystopian'
          'mystery'
          'horror'
          'thriller'
          'paranormal'
          'historical fiction'
          'science fiction'
          'children'#39's'
          'memoir'
          'cookbook'
          'art'
          'self-help'
          'development'
          'motivational'
          'health'
          'history'
          'travel'
          'guide'
          'families & relationships'
          'humor'
          'other')
      end
      object Label2: TLabel
        Left = 0
        Top = 126
        Width = 31
        Height = 15
        Caption = 'Cover'
      end
      object Button1: TButton
        Left = 0
        Top = 143
        Width = 145
        Height = 25
        Caption = 'Pick image'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 0
        Top = 170
        Width = 145
        Height = 25
        Caption = 'Remove cover'
        Enabled = False
        TabOrder = 4
        OnClick = Button3Click
      end
      object Image1: TImage
        AlignWithMargins = True
        Left = 3
        Top = 200
        Width = 200
        Height = 260
        Proportional = True
      end
    end
    object StackPanel2: TStackPanel
      Left = 524
      Top = 0
      Height = 69
      AutoSize = True
      BevelOuter = bvNone
      ControlCollection = <
        item
          Control = Actions
        end
        item
          Control = Save
          HorizontalPositioning = sphpFill
        end
        item
          Control = Button2
          HorizontalPositioning = sphpFill
        end>
      TabOrder = 2
      object Actions: TLabel
        Left = 0
        Top = 0
        Width = 40
        Height = 15
        Caption = 'Actions'
      end
      object Save: TButton
        Left = 0
        Top = 17
        Width = 185
        Height = 25
        Caption = 'Save'
        TabOrder = 0
        OnClick = SaveClick
      end
      object Button2: TButton
        Left = 0
        Top = 44
        Width = 185
        Height = 25
        Caption = 'Delete'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
  object LibraryConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=library')
    Connected = True
    LoginPrompt = False
    Left = 644
    Top = 137
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = LibraryConnection
    FetchOptions.AssignedValues = [evItems]
    FetchOptions.Items = [fiBlobs, fiDetails]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    TableName = 'book'
    Left = 588
    Top = 216
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDTable1
    ScopeMappings = <>
    Left = 624
    Top = 216
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 596
    Top = 141
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'series'
      Control = ComboBox4
      Direction = linkControlToData
      Track = True
      FillDataSource = BindSourceDB2
      FillDisplayFieldName = 'series'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'description'
      Control = Memo2
      Track = False
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'title'
      Control = Edit1
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'rating'
      Control = NumberBox1
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'release_year'
      Control = Edit2
      Track = True
    end
    object LinkFillControlToField3: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'genre'
      Control = ComboBox3
      Track = True
      CustomFormat = 'IfThen(IfAny(%0:s <> nil), %0:s, 1)'
      FillDataSource = BindSourceDB3
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'name'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'author'
      Control = ComboBox2
      Direction = linkControlToData
      Track = True
      FillDataSource = BindSourceDB2
      FillDisplayFieldName = 'author'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cover'
      Control = Image1
      Track = False
    end
    object LinkPropertyToFieldEnabled: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cover'
      Component = Button3
      CustomFormat = 'ToStr(Value) <> ""'
      ComponentProperty = 'Enabled'
    end
  end
  object FDTable2: TFDTable
    Active = True
    AfterEdit = FDTable2AfterEdit
    Filtered = True
    IndexFieldNames = 'id'
    Connection = LibraryConnection
    TableName = 'book'
    Left = 588
    Top = 272
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDTable2
    ScopeMappings = <>
    Left = 624
    Top = 272
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = LibraryConnection
    SQL.Strings = (
      'SELECT id, name FROM genre')
    Left = 588
    Top = 328
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 624
    Top = 328
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 556
    Top = 88
  end
end
