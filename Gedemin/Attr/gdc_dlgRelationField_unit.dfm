inherited gdc_dlgRelationField: Tgdc_dlgRelationField
  Left = 419
  Top = 196
  HelpContext = 86
  Caption = '�������������� ����'
  ClientHeight = 435
  ClientWidth = 471
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnAccess: TButton
    Left = 4
    Top = 407
    TabOrder = 3
  end
  inherited btnNew: TButton
    Left = 76
    Top = 407
    TabOrder = 4
  end
  inherited btnHelp: TButton
    Left = 148
    Top = 407
    TabOrder = 5
  end
  inherited btnOK: TButton
    Left = 326
    Top = 407
    TabOrder = 1
  end
  inherited btnCancel: TButton
    Left = 399
    Top = 407
    TabOrder = 2
  end
  object pcRelationField: TPageControl [5]
    Left = 4
    Top = 4
    Width = 463
    Height = 397
    ActivePage = tsCommon
    TabOrder = 0
    OnChange = pcRelationFieldChange
    object tsCommon: TTabSheet
      Caption = '�����'
      object Label1: TLabel
        Left = 12
        Top = 69
        Width = 126
        Height = 13
        Caption = '�������� ���� �������:'
      end
      object lblTableName: TLabel
        Left = 12
        Top = 39
        Width = 46
        Height = 13
        Caption = '�������:'
      end
      object dbtRelationName: TDBText
        Left = 250
        Top = 39
        Width = 80
        Height = 14
        AutoSize = True
        DataField = 'RELATIONNAME'
        DataSource = dsgdcBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 12
        Top = 99
        Width = 138
        Height = 13
        Caption = '�������������� ��������:'
      end
      object Label4: TLabel
        Left = 12
        Top = 129
        Width = 183
        Height = 13
        Caption = '������� �������������� ��������:'
      end
      object Label5: TLabel
        Left = 12
        Top = 161
        Width = 80
        Height = 13
        Caption = '�������� ����:'
      end
      object Label6: TLabel
        Left = 12
        Top = 224
        Width = 49
        Height = 13
        Caption = '��� ����:'
      end
      object Label7: TLabel
        Left = 7
        Top = 10
        Width = 444
        Height = 17
        AutoSize = False
        Caption = '  ������������ ����'
        Color = clHighlight
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object lblDefaultValue: TLabel
        Left = 12
        Top = 254
        Width = 127
        Height = 13
        Caption = '�������� �� ���������:'
      end
      object lComputed: TLabel
        Left = 12
        Top = 309
        Width = 260
        Height = 13
        Caption = '���������  ��� ������������ ���� �� ����� SQL:'
        Visible = False
      end
      object lblRuleDelete: TLabel
        Left = 12
        Top = 285
        Width = 99
        Height = 13
        Caption = '������� ��������:'
        Visible = False
      end
      object dbedRelationFieldName: TDBEdit
        Left = 250
        Top = 65
        Width = 201
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FIELDNAME'
        DataSource = dsgdcBase
        MaxLength = 31
        TabOrder = 0
        OnEnter = dbedRelationFieldNameEnter
        OnKeyDown = dbedRelationFieldNameKeyDown
        OnKeyPress = dbedRelationFieldNameKeyPress
      end
      object dbedRelationFieldLName: TDBEdit
        Left = 250
        Top = 95
        Width = 201
        Height = 21
        DataField = 'LNAME'
        DataSource = dsgdcBase
        TabOrder = 1
      end
      object dbedRelationFieldShortLName: TDBEdit
        Left = 250
        Top = 125
        Width = 201
        Height = 21
        DataField = 'LSHORTNAME'
        DataSource = dsgdcBase
        TabOrder = 2
      end
      object luFieldType: TgsIBLookupComboBox
        Left = 250
        Top = 220
        Width = 201
        Height = 21
        HelpContext = 1
        Database = dmDatabase.ibdbGAdmin
        Transaction = ibtrCommon
        DataSource = dsgdcBase
        DataField = 'FIELDSOURCEKEY'
        Fields = 'fieldname'
        ListTable = 'at_fields'
        ListField = 'lname'
        KeyField = 'id'
        SortOrder = soAsc
        gdClassName = 'TgdcField'
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnChange = luFieldTypeChange
      end
      object edDefaultValue: TDBMemo
        Left = 250
        Top = 250
        Width = 201
        Height = 21
        DataField = 'defsource'
        DataSource = dsgdcBase
        TabOrder = 7
        WordWrap = False
      end
      object dbedRelationFieldDescription: TDBMemo
        Left = 250
        Top = 156
        Width = 201
        Height = 54
        DataField = 'DESCRIPTION'
        DataSource = dsgdcBase
        TabOrder = 3
      end
      object dbmComputed: TDBMemo
        Left = 12
        Top = 325
        Width = 437
        Height = 38
        DataField = 'COMPUTED_VALUE'
        DataSource = dsgdcBase
        TabOrder = 9
        Visible = False
        OnChange = dbmComputedChange
      end
      object cbCalculated: TCheckBox
        Left = 149
        Top = 224
        Width = 97
        Height = 17
        Caption = '�����������'
        TabOrder = 5
        OnClick = cbCalculatedClick
      end
      object cmbRuleDelete: TComboBox
        Left = 250
        Top = 281
        Width = 201
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Visible = False
        Items.Strings = (
          'RESTRICT'
          'NO ACTION'
          'CASCADE'
          'SET NULL'
          'SET DEFAULT')
      end
      object dbcbNotNull: TDBCheckBox
        Left = 76
        Top = 224
        Width = 57
        Height = 17
        Caption = 'Not Null'
        DataField = 'nullflag'
        DataSource = dsgdcBase
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object tsVisualSettings: TTabSheet
      Caption = '����������'
      ImageIndex = 1
      object Label8: TLabel
        Left = 7
        Top = 10
        Width = 443
        Height = 17
        AutoSize = False
        Caption = '  ���������� ���������'
        Color = clHighlight
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object Label14: TLabel
        Left = 12
        Top = 37
        Width = 163
        Height = 13
        Caption = '������ ���� ��� �����������:'
      end
      object lblFormat: TLabel
        Left = 12
        Top = 112
        Width = 84
        Height = 13
        Caption = '������ ������:'
      end
      object dbrgAligment: TDBRadioGroup
        Left = 6
        Top = 136
        Width = 444
        Height = 45
        Caption = ' ������������: '
        Columns = 3
        DataField = 'ALIGNMENT'
        DataSource = dsgdcBase
        Items.Strings = (
          '�� ������ ����'
          '�� ������� ����'
          '�� ������')
        TabOrder = 4
        Values.Strings = (
          'L'
          'R'
          'C')
      end
      object dbedColWidth: TDBEdit
        Left = 182
        Top = 34
        Width = 155
        Height = 21
        DataField = 'COLWIDTH'
        DataSource = dsgdcBase
        TabOrder = 0
      end
      object dbcbVisible: TDBCheckBox
        Left = 10
        Top = 62
        Width = 327
        Height = 17
        Alignment = taLeftJustify
        Caption = '���� �������� ������� �� ���������'
        DataField = 'VISIBLE'
        DataSource = dsgdcBase
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dbedFormat: TDBEdit
        Left = 182
        Top = 109
        Width = 155
        Height = 21
        DataField = 'FORMAT'
        DataSource = dsgdcBase
        TabOrder = 3
      end
      object dbcbReadOnly: TDBCheckBox
        Left = 10
        Top = 85
        Width = 327
        Height = 17
        Alignment = taLeftJustify
        Caption = '��������� �������������� ����'
        DataField = 'READONLY'
        DataSource = dsgdcBase
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object pnlBC: TPanel
        Left = 6
        Top = 189
        Width = 444
        Height = 95
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 5
        object lblBusinessClass: TLabel
          Left = 12
          Top = 11
          Width = 70
          Height = 13
          Caption = '������-�����:'
        end
        object Label9: TLabel
          Left = 12
          Top = 40
          Width = 42
          Height = 13
          Caption = '������:'
        end
        object dbedBusinessClass: TDBEdit
          Left = 170
          Top = 10
          Width = 157
          Height = 21
          DataField = 'GDCLASSNAME'
          DataSource = dsgdcBase
          TabOrder = 0
        end
        object dbedSubType: TDBEdit
          Left = 170
          Top = 37
          Width = 157
          Height = 21
          DataField = 'GDSUBTYPE'
          DataSource = dsgdcBase
          TabOrder = 1
        end
        object btnSelectBC: TButton
          Left = 169
          Top = 64
          Width = 75
          Height = 21
          Action = actSelectBC
          TabOrder = 2
        end
        object btnDelBC: TButton
          Left = 251
          Top = 64
          Width = 75
          Height = 21
          Action = actDelBC
          TabOrder = 3
        end
      end
    end
    object tsObjects: TTabSheet
      Caption = '�������'
      ImageIndex = 2
      object Bevel1: TBevel
        Left = 6
        Top = 6
        Width = 443
        Height = 307
        Shape = bsFrame
      end
      object Label2: TLabel
        Left = 0
        Top = 351
        Width = 455
        Height = 18
        Align = alBottom
        AutoSize = False
        Caption = ' ��������� ������� � ���� ����� ������������ ��������.'
        Layout = tlCenter
      end
      object DBText1: TDBText
        Left = 14
        Top = 12
        Width = 427
        Height = 294
        DataField = 'OBJECTS'
        DataSource = dsgdcBase
        WordWrap = True
      end
      object btnAddObjects: TButton
        Left = 291
        Top = 318
        Width = 75
        Height = 21
        Action = actAddObject
        TabOrder = 0
      end
      object btnDelObject: TButton
        Left = 373
        Top = 318
        Width = 75
        Height = 21
        Action = actDelObject
        TabOrder = 1
      end
    end
  end
  inherited alBase: TActionList
    Left = 82
    Top = 359
    object actAddObject: TAction
      Caption = '��������...'
    end
    object actDelObject: TAction
      Caption = '�������...'
    end
    object actSelectBC: TAction
      Caption = '�������...'
      OnExecute = actSelectBCExecute
      OnUpdate = actSelectBCUpdate
    end
    object actDelBC: TAction
      Caption = '��������'
      OnExecute = actDelBCExecute
      OnUpdate = actDelBCUpdate
    end
  end
  inherited dsgdcBase: TDataSource
    Left = 36
    Top = 359
  end
  inherited pm_dlgG: TPopupMenu
    Left = 120
    Top = 360
  end
  inherited ibtrCommon: TIBTransaction
    Left = 216
    Top = 360
  end
end
