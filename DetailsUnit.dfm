object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 377
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object StackPanel1: TStackPanel
    Left = 185
    Top = 0
    Width = 398
    Height = 377
    Align = alClient
    BevelOuter = bvNone
    ControlCollection = <
      item
        Control = Label1
        HorizontalPositioning = sphpFill
      end
      item
        Control = Label2
        HorizontalPositioning = sphpFill
      end
      item
        Control = GridPanel1
      end
      item
        Control = Label3
        HorizontalPositioning = sphpFill
      end>
    Padding.Left = 24
    Padding.Top = 8
    TabOrder = 0
    VerticalPositioning = spvpTop
    ExplicitWidth = 394
    ExplicitHeight = 376
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 374
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 55
      Width = 374
      Height = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object GridPanel1: TGridPanel
      AlignWithMargins = True
      Left = 24
      Top = 65
      Width = 350
      Height = 42
      Margins.Left = 0
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 0
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 50.000000000000010000
        end
        item
          Value = 49.999999999999990000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label4
          Row = 0
        end
        item
          Column = 1
          Control = Label5
          Row = 1
        end
        item
          Column = 0
          Control = Label6
          Row = 1
        end
        item
          Column = 1
          Control = Label7
          Row = 0
        end>
      RowCollection = <
        item
          SizeStyle = ssAuto
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAuto
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 175
        Height = 21
        Align = alClient
        AutoSize = False
        Caption = 'Author: n/a'
        EllipsisPosition = epEndEllipsis
        ExplicitTop = 258
        ExplicitWidth = 61
        ExplicitHeight = 15
      end
      object Label5: TLabel
        Left = 175
        Top = 21
        Width = 175
        Height = 21
        Align = alClient
        AutoSize = False
        Caption = 'Release year: n/a'
        EllipsisPosition = epEndEllipsis
        ExplicitLeft = 0
        ExplicitTop = 258
        ExplicitWidth = 94
        ExplicitHeight = 15
      end
      object Label6: TLabel
        Left = 0
        Top = 21
        Width = 175
        Height = 21
        Align = alClient
        AutoSize = False
        Caption = 'Rating: n/a'
        EllipsisPosition = epEndEllipsis
        ExplicitTop = 258
        ExplicitWidth = 65
        ExplicitHeight = 15
      end
      object Label7: TLabel
        Left = 175
        Top = 0
        Width = 175
        Height = 21
        Align = alClient
        AutoSize = False
        Caption = 'Genre: '
        EllipsisPosition = epEndEllipsis
        ExplicitWidth = 34
        ExplicitHeight = 15
      end
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 24
      Top = 117
      Width = 374
      Height = 30
      Margins.Left = 0
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'No description'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
      WordWrap = True
    end
  end
  object StackPanel2: TStackPanel
    Left = 0
    Top = 0
    Height = 377
    Align = alLeft
    BevelOuter = bvNone
    ControlCollection = <
      item
        Control = Image1
        HorizontalPositioning = sphpFill
      end>
    TabOrder = 1
    ExplicitHeight = 376
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 185
      Height = 256
      Center = True
      Picture.Data = {07544269746D617000000000}
      Proportional = True
    end
  end
  object LibraryConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=library')
    Connected = True
    LoginPrompt = False
    Left = 46
    Top = 13
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 48
    Top = 72
  end
  object FDQuery1: TFDQuery
    Active = True
    Filtered = True
    Connection = LibraryConnection
    SQL.Strings = (
      'SELECT b.*, g.name genre_name'
      'FROM book b'
      'JOIN genre g'
      '    ON b.genre = g.id;'
      '')
    Left = 16
    Top = 72
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 12
    Top = 13
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'series'
      Component = Label2
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'description'
      Component = Label3
      CustomFormat = 'IfThen(IfAny(%0:s <> ""), %0:s, "No description")'
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'author'
      Component = Label4
      CustomFormat = '"Author: " + IfThen(IfAny(%0:s <> ""), %0:s, "n/a")'
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption5: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'release_year'
      Component = Label5
      CustomFormat = '"Release year: " + IfThen(IfAny(%0:s <> ""), %0:s, "n/a")'
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption6: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'rating'
      Component = Label6
      CustomFormat = '"Rating: " + IfThen(IfAny(%0:s <> ""), %0:s + "'#11088'", "n/a")'
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'title'
      Component = Label1
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption7: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'genre_name'
      Component = Label7
      CustomFormat = '"Genre: " + %s'
      ComponentProperty = 'Caption'
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cover'
      Control = Image1
      Direction = linkDataToControl
      Track = False
    end
    object LinkPropertyToFieldVisible: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'series'
      Component = Label2
      CustomFormat = 'IfAny(%0:s <> "")'
      ComponentProperty = 'Visible'
    end
  end
end
