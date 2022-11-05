object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 434
  ClientWidth = 677
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
    Width = 492
    Height = 434
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
        Control = Label3
        HorizontalPositioning = sphpFill
      end>
    Padding.Left = 24
    Padding.Top = 8
    TabOrder = 0
    VerticalPositioning = spvpTop
    ExplicitLeft = 265
    ExplicitTop = 88
    ExplicitWidth = 524
    ExplicitHeight = 501
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 468
      Height = 45
      Caption = 'Abc'
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
      Width = 468
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 24
      Top = 97
      Width = 468
      Height = 15
      Margins.Left = 0
      Margins.Top = 8
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Learn first three letters'
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
    Height = 434
    Align = alLeft
    BevelOuter = bvNone
    ControlCollection = <
      item
        Control = Image1
        HorizontalPositioning = sphpFill
      end
      item
        Control = Label4
      end
      item
        Control = Label5
      end
      item
        Control = Label6
      end>
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitHeight = 425
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 185
      Height = 256
    end
    object Label4: TLabel
      Left = 0
      Top = 258
      Width = 3
      Height = 15
    end
    object Label5: TLabel
      Left = 0
      Top = 275
      Width = 24
      Height = 15
      Caption = '1579'
    end
    object Label6: TLabel
      Left = 0
      Top = 292
      Width = 15
      Height = 15
      Caption = '4.5'
    end
  end
  object LibraryConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=library')
    Connected = True
    LoginPrompt = False
    Left = 46
    Top = 53
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 48
    Top = 16
  end
  object FDQuery1: TFDQuery
    Active = True
    Filtered = True
    Connection = LibraryConnection
    SQL.Strings = (
      'SELECT * FROM book')
    Left = 16
    Top = 16
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 12
    Top = 53
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'title'
      Component = Label1
      ComponentProperty = 'Caption'
    end
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
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'author'
      Component = Label4
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption5: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'release_year'
      Component = Label5
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption6: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'rating'
      Component = Label6
      ComponentProperty = 'Caption'
    end
  end
end
