inherited frEntryEditFrame: TfrEntryEditFrame
  Width = 442
  Height = 360
  Constraints.MaxHeight = 360
  Constraints.MinHeight = 360
  Font.Name = 'Tahoma'
  ParentFont = False
  inherited PageControl: TPageControl
    Width = 442
    Height = 360
    MultiLine = True
    inherited tsGeneral: TTabSheet
      inherited Label1: TLabel
        Width = 77
      end
      inherited Label2: TLabel
        Top = 171
      end
      inherited lLocalName: TLabel
        Top = 26
      end
      object Label3: TLabel [3]
        Left = 4
        Top = 56
        Width = 88
        Height = 13
        Caption = '��������� ����:'
      end
      object Label4: TLabel [4]
        Left = 4
        Top = 80
        Width = 94
        Height = 13
        Caption = '���������� ����:'
      end
      object Label7: TLabel [5]
        Left = 4
        Top = 104
        Width = 35
        Height = 13
        Caption = '�����:'
      end
      object Label8: TLabel [6]
        Left = 4
        Top = 127
        Width = 43
        Height = 13
        Caption = '������:'
      end
      object Label9: TLabel [7]
        Left = 4
        Top = 152
        Width = 86
        Height = 13
        Caption = '����� � ������:'
      end
      inherited cbName: TComboBox
        Left = 126
        Width = 287
      end
      inherited mDescription: TMemo
        Left = 126
        Top = 171
        Width = 287
        TabOrder = 6
      end
      object beDebit: TBtnEdit [10]
        Left = 126
        Top = 51
        Width = 287
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beDebitBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 2
        OnChange = beDebitChange
        OnExit = beDebitExit
      end
      object beCredit: TBtnEdit [11]
        Left = 126
        Top = 75
        Width = 287
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beDebitBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 3
        OnChange = beCreditChange
        OnExit = beCreditExit
      end
      object beSum: TBtnEdit [12]
        Left = 126
        Top = 99
        Width = 287
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beSumBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 4
      end
      object beSumCurr: TBtnEdit [13]
        Left = 126
        Top = 147
        Width = 287
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beSumBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 5
      end
      inherited eLocalName: TEdit
        Left = 126
        Width = 287
      end
      object cbSaveEmpty: TCheckBox
        Left = 8
        Top = 312
        Width = 169
        Height = 17
        Caption = '��������� ������� ��������'
        TabOrder = 7
      end
      object beCurr: TBtnEdit
        Left = 126
        Top = 123
        Width = 287
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beCurrBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 8
        OnChange = beCurrChange
      end
    end
    object tsDAnalytics: TTabSheet
      BorderWidth = 3
      Caption = '��������� �� ������'
      ImageIndex = 2
      inline frDAnalytics: TfrAnalytics
        Width = 428
        Height = 308
        Align = alClient
        inherited Panel: TPanel
          Width = 428
          Height = 308
          inherited sbAnalytics: TScrollBox
            Width = 426
            Height = 306
          end
        end
      end
    end
    object tsCAnalytics: TTabSheet
      BorderWidth = 3
      Caption = '��������� �� �������'
      ImageIndex = 3
      inline frCAnalytics: TfrAnalytics
        Width = 428
        Height = 308
        Align = alClient
        inherited Panel: TPanel
          Width = 428
          Height = 308
          inherited sbAnalytics: TScrollBox
            Width = 426
            Height = 306
          end
        end
      end
    end
    object tsAddiditional: TTabSheet
      Caption = '�������������'
      ImageIndex = 1
      object Label10: TLabel
        Left = 8
        Top = 10
        Width = 87
        Height = 13
        Caption = '������ �������:'
      end
      object Label11: TLabel
        Left = 8
        Top = 34
        Width = 81
        Height = 13
        Caption = '����� �������:'
      end
      object Label12: TLabel
        Left = 8
        Top = 58
        Width = 82
        Height = 13
        Caption = '���� ��������:'
      end
      object Label5: TLabel
        Left = 8
        Top = 75
        Width = 53
        Height = 26
        Caption = '�������� ��������:'
        WordWrap = True
      end
      object beBeginDate: TBtnEdit
        Left = 98
        Top = 5
        Width = 315
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beSumBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 0
      end
      object beEndDate: TBtnEdit
        Left = 98
        Top = 29
        Width = 315
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beSumBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 1
      end
      object beEntryDate: TBtnEdit
        Left = 98
        Top = 53
        Width = 315
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beSumBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 2
      end
      object beEntryDescription: TBtnEdit
        Left = 98
        Top = 77
        Width = 315
        Height = 22
        BtnCaption = '��������'
        BtnCursor = crArrow
        BtnGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF9933000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF9933FF99330000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF9933FFCC33FF9933FF9933FF
          9933FF9933FF9933FF9933FF9933FF9933000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF6633FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FFFF99FF99
          33000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633FFFF99FFFF99000000FF
          6633FF6633FF6633FF6633FF6633FF6633000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6633FFFF99000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6633000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        BtnShowHint = False
        BtnWidth = 80
        BtnOnClick = beSumBtnOnClick
        Anchors = [akLeft, akTop, akRight]
        Enabled = True
        TabOrder = 3
      end
    end
    object tsDebitQuantity: TTabSheet
      Caption = '�������������� ���������� �� ������'
      ImageIndex = 5
      inline frQuantityDebit: TfrQuantity
        Width = 434
        Height = 314
        Align = alClient
        inherited TBDock1: TTBDock
          Width = 434
        end
        inherited lvQuantity: TListView
          Width = 434
          Height = 286
        end
      end
    end
    object tsCreditQuantity: TTabSheet
      Caption = '�������������� ���������� �� �������'
      ImageIndex = 5
      inline frQuantityCredit: TfrQuantity
        Width = 434
        Height = 314
        Align = alClient
        inherited TBDock1: TTBDock
          Width = 434
        end
        inherited lvQuantity: TListView
          Width = 434
          Height = 286
        end
      end
    end
  end
  object ActionList: TActionList
    Images = dmImages.il16x16
    Left = 176
    Top = 208
    object actAddQuantityD: TAction
      Caption = 'actAddQuantity'
      ImageIndex = 179
    end
    object actDeleteQuantityD: TAction
      Caption = 'actDelteQuantity'
      ImageIndex = 178
    end
    object actEditQuantityD: TAction
      Caption = 'actEditQuantity'
      ImageIndex = 177
    end
  end
  object pmCurr: TPopupMenu
    OnPopup = pmCurrPopup
    Left = 64
    Top = 264
  end
end
