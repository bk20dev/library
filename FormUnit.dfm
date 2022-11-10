object Form2: TForm2
  Left = 0
  Top = 0
  ActiveControl = Edit1
  Caption = 'Form2'
  ClientHeight = 464
  ClientWidth = 725
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
    Width = 701
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
    ExplicitWidth = 697
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
        TabOrder = 1
        TextHint = 'First Quatro'
        Items.Strings = (
          'a')
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
        TabOrder = 0
        TextHint = 'William Shakespeare'
        Items.Strings = (
          'a')
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
        Text = 'unknown'
        Items.Strings = (
          'unknown'
          'sci-fi'
          'fantasy')
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
      end
      object Image1: TImage
        AlignWithMargins = True
        Left = 3
        Top = 173
        Width = 200
        Height = 260
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000001040000
          0102080200000097333E40000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000009
          424944415478DAEDDD3D6C95D71DC7F1C702E3176C83AF8D5FB0C176C04484C6
          8928958730B030A44316062A354B860CADD40C0CED40072F19DA01A9AD942543
          3B3094C14BA436030B030B6A6311B7C40D2F01C736F805DBD8F80563103DE1F9
          E9EA9E3A24297E39CFFF3CDF8FA2E8249192BF7DCFF73EF73CF7DA29FBDBDD7D
          09802429230620450C80100320C400083100420C80100320C400083100420C80
          100320C400083100420C80100320C400083100420C80100320C400083100420C
          80100320C400083100420C80100320C400083100420C80100320C40008310042
          0C80100320C400083100420C80100320C400083100420C80100320C400083100
          420C80100320C400083100420C80100320C400083100420C80100320C4000831
          00420C80100320C400083100420C80100320C400083100420C80100320C40008
          3100420C80100320C400083100420C80100320C400083100420C80100320C400
          083100420C80100320C400083100420C80100320C400083100420C80100320C4
          0008317886E66A2F8E37F516667BF7CC849E055B8D183C67AF1E995FDD5E5EF6
          ECDCB1C1D0B360AB1183E757FF78235DFCE9279F879EE585D2CBD7D1FA07C79B
          A643CF121562F09888A16FF0B5E99572B778A7FDDEC9D6C9D0E3C483183C2662
          E81F69BB34DEE816BC9CDB58C4E03111C3EAB3B233FFECC9FE9CE61083C7440C
          86E6B485183C56369995396D21068F954D66654E5B88C1636593B933833B39B8
          C5876F5EAB2B7F127A9C481083C74A0C1F5D7F6568AED62D4E778CF26EC34621
          068F9518AE4C15CEDFF9E681EBAE5BF8E0D55BA1C789043178ACC4B0FC74DBAF
          077E6462544388C16325065BA35A410C1E433BCCD0A8561083C7D00E3334AA15
          C4E031B4C38A77577F7FF4DF55DB9E861E2706C4E03114C3B9A183B71776BAC5
          99C337BB6A16438F130362F0188AE1C270FBE5C98684B71A360E31780CC57069
          BCB17FA4CD2D4EB4DC3FB56F2CF4383120068FA11886E66A3FBAFE8A5B1CDEF5
          F09787BE0A3D4E0C88C1632886F9D5ED67AF1E718BBAF2271FBE792DF4383120
          068FA11892921B4A26A6CD3E62F0D88AC1D6B4D9470C1E5BDBCBD6B4D9470C1E
          5BDBCBD6B4D9470C1E5BDBCBD6B4D9470C1E5BDBCBD6B4D9470C1E5BDBCBD6B4
          D9470C1E5BDBCBD6B4D9470C1E5BDBCBD6B4D9470C1E5BDBCBD6B4D9470C1E5B
          DBCBD6B4D9470C1E5BDBCBD6B4D9470C1E5BDBCBD6B4D9470C1E5BDBCBD6B4D9
          470C1E5BDBCBD6B4D9470C1E5BDBCBD6B4D9470C1E5BDBCBD6B4D9470C1E5BDB
          CBD6B4D9470C1E5BDBCBD6B4D9470C1E5BDB8B1FFBDC58C4E0B115C3C57B4D9F
          8CB61E6F9A3EDD311A7A9618108387E7DA3C23060FCFB579460C80100320C400
          083100420C80100320C400083100622086A1B9DA8BE34DBD85D9DE3D33A16741
          CC0CC470F6EA91F9D5EDE565CFCE1D1B0C3D0B62662086E2E7857E73E47A7BF5
          72E871102D0331FCF956C7C0CC6EB7E8A99F7BFFE09DD0E3205A0662185DAAFA
          DDB543E99A0F9362F31888212979A5D4D733D450F138F4387917EB2D0D1B31FC
          F1CB0337E66BDCE2DDCE91C81E008B62BDA5612386BFDF6DFE74ACC52D7AF7CC
          BEDBF975E871F2CED6CF03FE703662B8395FF3872F0FB84543C56A5FCF17A1C7
          C93B6208C91D18DCB1215D47F6009853BC4A27D13D16366248E27D36B2E5F264
          C385E1F6747DB4F0E0BD03C3A127DA486662E0ADB72C488FCE6E7178D7C3F7BB
          6FBB3374E8893692991878EB2D0B8AD7E773C706232B21311443E95B6F5C1C82
          88F8B490321383F3F1CDCEC1D95D09178710E23E2DA42CC5C0E732028AFBB490
          B21443C23DA5405C062E86741DE56921652C86E23DA5DFBEFE9FE6CA95D0E3E4
          45FF48DBA5F146B770473577600B3DCE66311643F1D870A2E5FEA97D63A1C7C9
          8BE26B2477547307B6D0E36C166331B8125C0F6E5157FEA4EF8D2F62BD5E674A
          7E3E0B632C86A4E459EABD03C3470B0F428F13BF0BC3ED97271BDCE264EBE43B
          EDF7428FB389ECC550BCDBDD5DB7F0C1ABB7428F1339F7BCD3F7F96BE939EDCC
          E19B5D358BA127DA44F66228BDB3C13DA5CD9693A373CA5E0C093758B74AE965
          21EEA3738A18F042B9BA2C244663E0DD86AD91933BAA452663E0DD86AD91B72B
          B0C91878B7610B44FF19D5B54CC690F06EC3262B2D21D6CFA8AE653586E2A3E5
          CE76BF38F495BB44849E281EA52544FC19D5B5ACC650FA6E837BA84E778CF2FB
          9436446E4B48ECC690F80F5BC29DA58D90E71212D33124CF4FD29F8CB64E3CAA
          48B8B3B46E392F21B11E43C29DA50D420949043124DC595A377775BD78AF295D
          E7B684248E18F81CEB4BBB395FF3D7E1F6F4756692EF1292386228BDB3F476DB
          F84FF74E849EC800F74DEBFFBA2DFD5554A99C9790C4118373FECEFE2B53F5E9
          FA78D3F4DB7BC779E7A1D4F4CA0E7711B8B158E3FE3CBD52FE3FFFB46ADBD393
          AD93EE8FD0630616490CABCFCA3EBED13534579BFEA57B7A7BAB79FA64CB44CE
          9370AF7F2E4F35FE6B76D7DA008ADC29EBD4FEB19C7FA35291C4903CEFE12FB7
          3AD20FF0A5729B847B093430BDDB65503C0C7CABE6CA959F758C1EAC5B083D6F
          56C41343CAC5F0E9DDE6D1A5AAE2DFC94F12EEE960E07EFD67B3BB8B57C8D26F
          82DBF4DDB50B076B17E3FED1CDF5882D86D4B72671A265CA1DAFA33C20BADDFF
          D96CFDC0FDDDE98F79947ED5AFD7CFFDB8F0200F3F8DB07E71C6905A9B847B61
          F0F3AE118B4F8DEEAB9859D931BA5C39B65435B654FD1D67805477DD426F61B6
          A730E70EC7A1673723E618526B93701BA573E792DB255D3B976A77AC66E4134D
          2FDAEE6ECEE5A7DB7EE0BFC47D2DBD8D33EE4CCCFF13F525C41F43EACA54A17F
          64EF8B76957B39517C81D150B1DA54F9A8B366B1A572A57EC7EA265D464AB7FE
          378B92565F823B0EB917426FED99E637F5AF475E62489EDF63397F7BFFDAC3E5
          F72A4D65FDFEAF67FA22B7CB0B158FDBAA97DBAB1EB9059B7E33E42886D4C4A3
          8A878FCB6F2F56BB1D7967B17AFE71F977DF7FDC326CF7E07217C3F7726DB8D7
          2DAE9689E5CA5997CDC2CECDF8AFB0F533881800210640880110620084180021
          0640880110620084180021064088011062008418002106408801106200841800
          2106408801106200841800210640880110620084180021064088011062008418
          0021064088011062008418002106408801106200841800210640880110620084
          1800210640880110620084180021064088011062008418002106408801106200
          8418002106408801106200841800210640880110620084180021064088011062
          00E4BF61A98BBEF32473A90000000049454E44AE426082}
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
end
