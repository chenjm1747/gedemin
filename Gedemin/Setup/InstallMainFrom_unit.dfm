object InstallMainFrom: TInstallMainFrom
  Left = 329
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = '��������� ������������ ���������'
  ClientHeight = 297
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  HelpFile = 'GedyminGS.chm'
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 428
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 428
      Height = 2
      Align = alTop
      Shape = bsTopLine
    end
    object btnPrior: TButton
      Left = 132
      Top = 11
      Width = 77
      Height = 21
      Action = actPrior
      TabOrder = 0
    end
    object btnNext: TButton
      Left = 220
      Top = 11
      Width = 77
      Height = 21
      Action = actNext
      Default = True
      TabOrder = 1
    end
    object btnCancel: TButton
      Left = 344
      Top = 11
      Width = 77
      Height = 21
      Caption = '������'
      TabOrder = 2
      OnClick = btnCancelClick
    end
    object btnHelp: TButton
      Left = 7
      Top = 11
      Width = 77
      Height = 21
      Caption = '�������'
      TabOrder = 3
      OnClick = btnHelpClick
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 428
    Height = 257
    ActivePage = tsActions
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    object tsActions: TTabSheet
      HelpContext = 100001
      Caption = 'tsActions'
      ImageIndex = 5
      TabVisible = False
      object Panel16: TPanel
        Left = 101
        Top = 0
        Width = 319
        Height = 247
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel16'
        Enabled = False
        TabOrder = 0
        object Memo3: TMemo
          Left = 0
          Top = 182
          Width = 313
          Height = 49
          BorderStyle = bsNone
          Ctl3D = True
          Lines.Strings = (
            '�������� ���� ������������� ����������� ���������.')
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object Memo2: TMemo
          Left = 0
          Top = 98
          Width = 313
          Height = 80
          BorderStyle = bsNone
          Ctl3D = True
          Lines.Strings = (
            '���������� ������������� ����������� ���������. ��� '
            '���������� ���������� ������ ��������, ����������� '
            '� ��������� ���������.')
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object Memo1: TMemo
          Left = 0
          Top = 13
          Width = 313
          Height = 73
          BorderStyle = bsNone
          Ctl3D = True
          Lines.Strings = (
            '����� ����������� � ��������� ��������� �� ���������. '
            '����� ������� ��������� �/��� ��������� ����� '
            '���������.')
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 101
        Height = 247
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Image6: TImage
          Left = 32
          Top = 37
          Width = 32
          Height = 32
          AutoSize = True
          Picture.Data = {
            07544269746D6170360C0000424D360C00000000000036000000280000002000
            0000200000000100180000000000000C0000C40E0000C40E0000000000000000
            0000000084000084000084000084000084000084000084000084000084000084
            0000840000840000840000840000845A5A5A5A5A5A5A5A5A3131313131313131
            3100008400008400008400008400008400008400008400008400008400008400
            0084000084000084000000000000000000000000000000000000000084000084
            0000840000840000845A5A5A5A5A5A9CCECE9CCECE9CFFFFCEFFCECECE31CE9C
            0031313131313100008400008400008400008400008400008400008400008400
            0084000084000084848484CECECEFFFFFFCECECEFFFFFF000000000000000084
            0000840000845A5A5AC6C6C6C6C6C69CCECE9CCECE9CFFFFCEFFCECECE31CE9C
            009C9C00CEFF9C31313100008400008400008400008400008400008400008400
            0084000084000084848484FFFFFFCECECEFFFFFFCECECE000000848484000000
            0000845A5A5AB5B5B5C6C6C6C6C6C6C6C6C69CCECE9CFFFFCECE31CE9C009C9C
            00CEFF9CCEFF9CCEFF9C31313100008400008400008400008400008400008400
            0084000084000084848484CECECEFFFFFFCECECEFFFFFF000000A5A5A5848484
            000000737373B5B5B5B5B5B5C6C6C6C6C6C69CCECE9CFFFFCE9C009C9C00CEFF
            9CCEFF9CE7E7E7E7E7E731313100008400008400008400008400008400008400
            0084000084000084848484FFFFFFCECECEFFFFFFCECECE000000848484A5A5A5
            5A5A5AB5B5B5B5B5B5B5B5B5B5B5B5C6C6C69CCECE9CCECE9C9C00CEFF9CE7E7
            E7E7E7E7E7E7E7E7E7E7E7E7E731313100008400008400008400008400008400
            0084000084000084848484CECECEFFFFFFCECECEFFFFFF000000A5A5A5848484
            5A5A5ACECECEB5B5B5B5B5B5B5B5B5B5B5B5C6C6C6000000000000E7E7E7E7E7
            E7E7E7E7B5B5B5B5B5B5B5B5B531313100008400008400008400008400008400
            0084000084000084848484FFFFFFCECECEFFFFFFCECECE000000848484A5A5A5
            5A5A5ACECECECECECECECECEB5B5B5B5B5B5000000FFFFFFFFFFFF0000008484
            84848484848484B5B5B5B5B5B531313100008400008400008400008400008400
            0084000084000084848484CECECEFFFFFFCECECEFFFFFF000000A5A5A5848484
            5A5A5A9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C000000FFFFFFFFFFFF000000D6D6
            D6D6D6D684848484848484848431313100008400008400008400008400008400
            0084000084000084848484FFFFFFCECECEFFFFFFCECECE000000848484A5A5A5
            5A5A5AE7E7E7E7E7E7CEFF9CCEFF9CCECE31CECE31000000000000B5B5B5A5A5
            A5FFFFFFD6D6D6B5B5B5B5B5B531313100008400008400008400008400008400
            0084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5848484
            5A5A5AE7E7E7CEFF9CCECE31CECE31CE9C319C9C639C9C6363CECEB5B5B5A5A5
            A5C6C6C6FFFFFFD6D6D6D6D6D631313100008400008400008400008400008400
            0084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000848484A5A5A5
            8484845A5A5ACECE31CECE31CE9C319C9C639CCE639CFFFF63CECEB5B5B5B5B5
            B5A5A5A5C6C6C6FFFFFF31313100000000000000000000000000000000008400
            0084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5848484
            A5A5A55A5A5ACECE31CE9C31CE9C319C9C639CFFFF9CFFFF63CECE63CECEB5B5
            B5A5A5A5A5A5A5C6C6C6313131C6C6C6C6C6C6C6C6C6C6C6C6C6C6C600000000
            0084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5A5A5A5
            A5A5A5A5A5A55A5A5ACE9C319C9C639CCE639CFFFF63CECE63CECE63CECEB5B5
            B5B5B5B5A5A5A5313131000000000000000000000000C6C6C6B5B5B584848400
            0000000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5A5A5A5
            A5A5A5A5A5A50000007373737373739CCE639CFFFF63CECE63CECE63CECEB5B5
            B5313131313131848484848484848484848484848484C6C6C6C6C6C684848400
            0000000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5A5A5A5
            A5A5A5A5A5A5000000FFFFFFFFFFFF9494949494949494949494947373737373
            73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84848400
            0000000084000084848484848484848484848484848484000000A5A5A5A5A5A5
            A5A5A5A5A5A50000008484848484848484848484848484848484848484848484
            84848484848484848484848484848484848484848484848484B5B5B584848400
            00000000840000845A5A5A5A5A5A5A5A5A5A5A5A5A5A5A000000A5A5A5A5A5A5
            A5A5A5A5A5A50000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000000B5B5B508
            0808000084848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A000000A5A5A5
            A5A5A5A5A5A5000000848484C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6
            C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C684848400000000
            00848484848484848484848484848484848484848484845A5A5A5A5A5A000000
            A5A5A5A5A5A5000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C684848400000000
            00840000840000840000840000840000848484845A5A5A5A5A5A5A5A5A5A5A5A
            000000A5A5A5000000848484FFFFFF8400008400008400008400008400008400
            00840000840000840000840000840000840000FFFFFFC6C6C684848400000000
            00840000840000840000840000840000840000848484845A5A5A5A5A5A5A5A5A
            5A5A5A000000000000848484FFFFFF840000FFFF00FFCE63FFCE63CE9C00CE9C
            00CE9C00CE9C00FF6331FF6331FF6331840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084848484FFFFFFFFFFFF
            FFFFFFFFFFFF000000848484FFFFFF840000FFFFCEFFFF31FFCE63FFCE63CE9C
            00CE9C00CE9C00CE9C00FF6331FF6331840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084848484848484
            848484848484848484000000FFFFFF840000FFFF31FFFFCEFFFF31FFCE63FFCE
            63CE9C00CE9C00CE9C00CE9C00FF6331840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFFFCEFFFF31FFFFCEFFFF31FFCE
            63FFCE63CE9C00CE9C00CE9C00CE9C00840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFFF31FFFFCEFFFF31FFFFCEFFFF
            31FFCE63FFCE63CE9C00CE9C00CE9C00840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFCE63FFFF31FFFFCEFFFF31FFFF
            CEFFFF31FFCE63FFCE63CE9C00CE9C00840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFCE63FFCE63FFFF31FFFFCEFFFF
            31FFFFCEFFFF31FFCE63FFCE63CE9C00840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFCE63FFCE63FFCE63FFFF31FFFF
            CEFFFF31FFFFCEFFFF00FFCE63FFCE63840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF8400008400008400008400008400008400
            00840000840000840000840000840000840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            0000840000840000840000847373737373737373737373737373737373737373
            7373737373737373737373737373737373737373737373737373737300008400
            0084}
          Transparent = True
        end
        object Image7: TImage
          Left = 32
          Top = 121
          Width = 32
          Height = 32
          AutoSize = True
          Picture.Data = {
            07544269746D6170360C0000424D360C00000000000036000000280000002000
            0000200000000100180000000000000C0000C40E0000C40E0000000000000000
            0000000084000084000084000084000084000084000084000084000084000084
            0000840000840000840000840000845A5A5A5A5A5A5A5A5A3131313131313131
            3100008400008400008400008400008400008400008400008400008400008400
            0084000084000084000000000000000000000000000000000000000084000084
            0000840000840000845A5A5A5A5A5A9CCECE9CCECE9CFFFFCEFFCECECE31CE9C
            0031313100000000000000000000008400008400008400008400008400008400
            0084000084000084848484CECECEFFFFFFCECECEFFFFFF000000000000000084
            0000840000845A5A5AC6C6C6C6C6C69CCECE9CCECE9CFFFFCEFFCECECE31CE9C
            0000000084820084820084820000000000008400008400008400008400008400
            0084000084000084848484FFFFFFCECECEFFFFFFCECECE000000848484000000
            0000845A5A5AB5B5B5C6C6C6C6C6C6C6C6C69CCECE9CFFFFCECE31CE9C009C9C
            0000000000FF0000FF0084820000000000008400008400008400008400008400
            0084000084000084848484CECECEFFFFFFCECECEFFFFFF000000A5A5A5848484
            000000737373B5B5B5B5B5B5C6C6C6C6C6C69CCECE9CFFFFCE9C009C9C00CEFF
            9C00000000FF0000FF0084820000000000008400008400008400008400008400
            0084000084000084848484FFFFFFCECECEFFFFFFCECECE000000848484A5A5A5
            5A5A5AB5B5B5B5B5B5B5B5B5B5B5B5C6C6C69CCECE9CCECE9C9C00CEFF9CE7E7
            E700000000FF0000FF0084820000000000008400008400008400008400008400
            0084000084000084848484CECECEFFFFFFCECECEFFFFFF000000A5A5A5848484
            5A5A5ACECECEB5B5B5B5B5B5B5B5B5B5B5B5C6C6C6000000000000E7E7E7E7E7
            E700000000FF0000FF0084820000000000008400008400008400008400008400
            0084000084000084848484FFFFFFCECECEFFFFFFCECECE000000848484A5A5A5
            5A5A5ACECECECECECECECECEB5B5B5B5B5B5000000FFFFFFFFFFFF0000008484
            8400000000FF0000FF0084820000000000008400008400008400008400008400
            0084000084000084848484CECECEFFFFFFCECECEFFFFFF000000A5A5A5848484
            5A5A5A9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C000000FFFFFFFFFFFF000000D6D6
            D600000000FF0000FF0084820000000000008400008400008400008400008400
            0084000084000084848484FFFFFFCECECEFFFFFFCECECE000000848484A5A5A5
            5A5A5AE7E7E7E7E7E7CEFF9CCEFF9CCECE31CECE31000000000000B5B5B5A5A5
            A500000000FF0000FF0084820000000000008400008400008400008400008400
            0084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5848484
            5A5A5AE7E7E7CEFF9CCECE31CECE31CE9C319C9C639C9C6363CECEB5B5B5A5A5
            A500000000FF0000FF0084820000000000008400008400008400008400008400
            0084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000848484A5A5A5
            8484845A5A5ACECE31CECE31CE9C319C9C639CCE639CFFFF63CECEB5B5B5B5B5
            B500000000FF0000FF0084820000000000000000000000000000000000008400
            0084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5848484
            A5A5A55A5A5ACECE31CE9C31CE9C319C9C639CFFFF9CFFFF63CECE63CECEB5B5
            B500000000FF0000FF00848200000000C6C6C6C6C6C6C6C6C6C6C6C600000000
            0084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5A5A5A5
            A5A5A5A5A5A55A5A5ACE9C319C9C639CCE639CFFFF63CECE63CECE63CECEB5B5
            B500000000FF0000FF00848200000000000000000000C6C6C6B5B5B584848400
            0000000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5A5A5A5
            A5A5A5A5A5A50000007373737373739CCE639CFFFF63CECE63CECE63CECEB5B5
            B500000000FF0000FF00848200000000848484848484C6C6C6C6C6C684848400
            0000000084000084848484FFFFFFFFFFFFFFFFFFFFFFFF000000A5A5A5A5A5A5
            A5A5A5A5A5A5000000FFFFFFFFFFFF9494949494949494949494947373737373
            7300000000FF0000FF0000FF00000000FFFFFFFFFFFFFFFFFFFFFFFF84848400
            0000000084000084848484848484848484848484848484000000A5A5A5A5A5A5
            A5A5A5A5A5A50000008484848484848484848484848484848484848484848484
            84000000000000848284000000000000848484848484848484B5B5B584848400
            00000000840000845A5A5A5A5A5A5A5A5A5A5A5A5A5A5A000000A5A5A5A5A5A5
            A5A5A5A5A5A50000000000000000000000000000000000000000000000000000
            00000000000000C6C3C6000000000000000000000000000000000000B5B5B508
            0808000084848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A000000A5A5A5
            A5A5A5A5A5A5000000848484C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6
            C6C6C6C6000000C6C3C6000000C6C6C6C6C6C6C6C6C6C6C6C684848400000000
            00848484848484848484848484848484848484848484845A5A5A5A5A5A000000
            A5A5A5A5A5A5000000848484FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFF
            FF000000000000C6C3C6000000000000000000FFFFFFC6C6C600000000000000
            00000000840000840000840000840000848484845A5A5A5A5A5A5A5A5A5A5A5A
            000000A5A5A5000000848484FFFFFF8400000000008482848482840000000000
            00848284848284C6C3C684828484828400000000000000000000000084828400
            00000000840000840000840000840000840000848484845A5A5A5A5A5A5A5A5A
            5A5A5A000000000000848484FFFFFF840000000000C6C3C6C6C3C68482848482
            84C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6848284848284848284848284FFFFFF00
            0000000084000084000084000084000084000084000084848484FFFFFFFFFFFF
            FFFFFFFFFFFF000000848484FFFFFF840000000000FFFFFFC6C3C6FFFFFFFFFF
            FFC6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6FFFFFF00000000
            0084000084000084000084000084000084000084000084000084848484848484
            848484848484848484000000FFFFFF840000000000FFFFFFFFFFFF0000000000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFFFCE000000000000FFFF31FFCE
            6300000000000000000000000000000000000000000000000000000000000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFFF31FFFFCEFFFF31FFFFCEFFFF
            31FFCE63FFCE63CE9C00CE9C00CE9C00840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFCE63FFFF31FFFFCEFFFF31FFFF
            CEFFFF31FFCE63FFCE63CE9C00CE9C00840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFCE63FFCE63FFFF31FFFFCEFFFF
            31FFFFCEFFFF31FFCE63FFCE63CE9C00840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF840000FFCE63FFCE63FFCE63FFFF31FFFF
            CEFFFF31FFFFCEFFFF00FFCE63FFCE63840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFF8400008400008400008400008400008400
            00840000840000840000840000840000840000FFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            000084000084000084848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C684848400000000
            0084000084000084000084000084000084000084000084000084000084000084
            0000840000840000840000847373737373737373737373737373737373737373
            7373737373737373737373737373737373737373737373737373737300008400
            0084}
          Transparent = True
        end
        object Image8: TImage
          Left = 32
          Top = 204
          Width = 32
          Height = 32
          AutoSize = True
          Picture.Data = {
            07544269746D6170360C0000424D360C00000000000036000000280000002000
            0000200000000100180000000000000C0000C40E0000C40E0000000000000000
            0000000084000084000084000084000084848284848284848284848284848284
            8482848482848482848482848400000000840000840000840000840000840000
            8400008400008400008400008400008400008400008400008400008400008400
            0084000084000084000084848284848284C6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFC6C3C6FFFFFFC6C3C68482848482848400000000840000840000
            8400008400008400008400008400008400008400008400008400008400008400
            0084000084000084848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC6C3C6FFFFFFC6C3C6FFFFFFC6C3C68482848400000000
            8400008400008400008400008400008400008400008400008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFFFFFFFFFFC6C3C6FFFFFFC6C3C6C6C3C6C6C3C6C6C3C68482
            8484000000008400008400008400008400008400008400008400008400008400
            0084000084848284848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6C6C3C6C6C3C6FFFFFFC6C3C6848200848200FF0000848284C6C3
            C6C6C3C684828484000000008400008400008400008400008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFF00848200C6C3C6848200C6C3C6848200848200848200FF00
            00848284C6C3C6C6C3C684000084000000008400008400008400008400008400
            0084000084848284848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFF00C6C3C6848200FFFF008482008482008482008482008482
            00FF0000848284C6C3C6C6C3C6C6C3C684000000008400008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFF00FFFF00FFFF00848200C6C3C6848200C6C3C6C6C3C6C6C3
            C6FF0000FF0000C6C3C6C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFF00FFFF00848200FFFF00848200C6C3C6C6C3C6FFFFFFC6C3
            C6C6C3C6FF0000848284C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFF00FFFF00FFFF00FFFF00FFFF00848200848200C6C3C6FFFF
            FFC6C3C6C6C3C6FF0000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFF00FFFF00FFFF00848200848200C6C3C6C6C3C6FFFFFFC6C3
            C6C6C3C6C6C3C6FF0000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFF00FFFF00848200C6C3C6FFFFFFC6C3C6FFFFFFC6C3C6FFFF
            FFC6C3C6C6C3C6FF0000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFF00848200C6C3C6FFFFFFC6C3C6FFFFFFC6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6848200C6C3C6FFFFFFFFFFFFFFFFFFC6C3C6C6C3C68400008400
            00840000840000840000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFC6C3C6FFFF00C6C3C6FFFFFFC6C3C6FFFFFFC6C3C6C6C3C6FF00
            00FF0000FF0000840000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFC6C3C6FFFF00C6C3C6C6C3C6FFFFFFC6C3C6C6C3C6C6C3C6C6C3
            C6FF0000FF0000840000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFFFFFFFF00FFFF00C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6FF00
            00848200FF0000840000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC6C3C6FFFF00848200FFFF00848200848200FF00008482
            00FF0000FF0000840000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284848284C6C3C6FFFFFFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC6C3C6FFFFFFFFFFFFC6C3C6FFFF00848200848200848200848200FF00
            00FF0000C6C3C6840000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC6C3C6FFFFFFC6C3C6C6C3C6848200848200FF00008482
            00C6C3C6C6C3C6840000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284848284C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6
            C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6840000C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284C6C3C6C6C3C6C6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFC6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284C6C3C6FFFFFFC6C3C6000000848284000000840084FF0000
            848284848284848284C6C3C6C6C3C6FFFFFFFFFFFFC6C3C6C6C3C6C6C3C6C6C3
            C6C6C3C6C6C3C6C6C3C6C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284FFFFFF000000000000848284848284C6C3C6C6C3C6C6C3C6
            FFFFFF848284000000848284848284848284848284C6C3C6FFFFFFFFFFFFC6C3
            C6C6C3C6848284C6C3C6C6C3C6C6C3C684828484000000008400008400008400
            0084000084848284FFFFFF000000848284848284C6C3C6C6C3C6C6C3C6C6C3C6
            00FF00000000FFFFFF000000C6C3C6C6C3C6C6C3C6848284848284848284C6C3
            C6FFFFFFC6C3C6C6C3C6848284C6C3C684828484000000008400008400008400
            0084000084848284FFFFFF000000848284848284C6C3C6C6C3C6C6C3C600FF00
            FFFF00848284000000848284C6C3C6C6C3C6C6C3C6C6C3C6C6C3C60000008482
            84848284848284FFFFFFC6C3C684828484828484000000008400008400008400
            0084000084000084848284FFFFFF848284848284C6C3C6C6C3C600FF0000FF00
            FFFF0000FFFFC6C3C6C6C3C6FFFFFFC6C3C6C6C3C6C6C3C6C6C3C60000008482
            84848284848284848284848284FFFFFF84828484000000008400008400008400
            0084000084000084000084848284C6C3C6C6C3C684828400FF0000FF00FFFF00
            00FFFF00FFFFC6C3C6C6C3C6C6C3C6FFFFFFC6C3C6C6C3C60000008482848482
            84848284848284848284848284848284C6C3C684000000008400008400008400
            008400008400008400008400008484828484828484828400FF00FFFF00FFFF00
            00FFFF00FFFFC6C3C6C6C3C6C6C3C6C6C3C6FFFFFFC6C3C60000008482848482
            84848284848284848284848284848284C6C3C684000000008400008400008400
            0084000084000084000084000084000084000084848284848284FFFF0000FFFF
            00FFFF00FFFFC6C3C6C6C3C6C6C3C6C6C3C6C6C3C6000000FF00008482848482
            00848284848200848284C6C3C684828484000000008400008400008400008400
            0084000084000084000084000084000084000084000084000084848284848284
            00FFFF00FFFFC6C3C6C6C3C6C6C3C6848284848284848284C6C3C6848284C6C3
            C6848284C6C3C684828484828484828400008400008400008400008400008400
            0084000084000084000084000084000084000084000084000084000084848284
            8482848482848482848482848482848482848482848482848482848482848482
            8484828484828484828400008400008400008400008400008400008400008400
            0084}
          Transparent = True
        end
        object rbInstall: TRadioButton
          Left = 8
          Top = 8
          Width = 88
          Height = 25
          Caption = '����������'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object rbUpdate: TRadioButton
          Left = 8
          Top = 97
          Width = 80
          Height = 17
          Caption = '��������'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          TabStop = True
        end
        object rbUninstall: TRadioButton
          Left = 8
          Top = 180
          Width = 77
          Height = 17
          Caption = '�������'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TabStop = True
        end
      end
    end
    object tsPath: TTabSheet
      HelpContext = 100001
      Caption = 'tsPath'
      TabVisible = False
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 420
        Height = 247
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel2: TBevel
          Left = 0
          Top = 202
          Width = 420
          Height = 2
          Align = alBottom
        end
        object Bevel3: TBevel
          Left = 0
          Top = 154
          Width = 420
          Height = 2
          Align = alBottom
        end
        object mmPath: TMemo
          Left = 4
          Top = 0
          Width = 410
          Height = 148
          BorderStyle = bsNone
          Lines.Strings = (
            '��� ������ ��������� �� ��� ���������, ����� ����������� '
            '������ (������) ���� ������ Yaffil � ����������� ������ '
            '��������� �������. ��� ������ ������� ��������� �� ������'
            '������� ������� ������� ��� ����� �����������.'
            ''
            '�������� ���� ��� ��������� ��������� (����������) ����� '
            '���� ������ � ����������� ������� ��������� �������.')
          ParentColor = True
          ReadOnly = True
          TabOrder = 0
        end
        object Panel5: TPanel
          Left = 0
          Top = 156
          Width = 420
          Height = 46
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object lblPathLabel: TLabel
            Left = 8
            Top = 3
            Width = 106
            Height = 13
            Caption = '���� ��� ��������� '
          end
          object eIBPath: TEdit
            Left = 8
            Top = 19
            Width = 321
            Height = 21
            TabOrder = 0
            Text = 'eIBPath'
          end
          object btnIBPath: TButton
            Left = 340
            Top = 18
            Width = 77
            Height = 21
            Caption = '�����...'
            TabOrder = 1
            OnClick = btnIBPathClick
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 204
          Width = 420
          Height = 43
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Label1: TLabel
            Left = 8
            Top = 3
            Width = 189
            Height = 13
            Caption = '���� ��������� ��������� �������:'
          end
          object eGDPath: TEdit
            Left = 8
            Top = 19
            Width = 321
            Height = 21
            TabOrder = 0
            Text = 'eIPath'
          end
          object btnGDPath: TButton
            Left = 340
            Top = 18
            Width = 77
            Height = 21
            Caption = '�����...'
            TabOrder = 1
            OnClick = btnGDPathClick
          end
        end
      end
    end
    object tsInstallType: TTabSheet
      HelpContext = 100001
      Caption = 'tsInstallType'
      ImageIndex = 1
      TabVisible = False
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 420
        Height = 247
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 420
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 3
          Caption = 'Panel9'
          TabOrder = 0
          object rgInstallType: TRadioGroup
            Left = 3
            Top = 3
            Width = 414
            Height = 51
            Align = alClient
            Caption = ' ��� ��������� '
            Items.Strings = (
              '���������'
              '���������������������')
            TabOrder = 0
          end
        end
        object mmType: TMemo
          Left = 0
          Top = 57
          Width = 420
          Height = 190
          Align = alClient
          BorderStyle = bsNone
          Lines.Strings = (
            ''
            '��������� ��������� - ������������� �� ��������� '
            '��������� � ���������� ����� ��������� �������. '
            '���� ��� ��������� ������������ ��� ��������� ������ � '
            '����������.'
            ''
            '��������������������� ��������� ���������� ������� '
            '����������� ����� ���������.')
          ParentColor = True
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object tsInstallModules: TTabSheet
      HelpContext = 100001
      Caption = 'tsInstallModules'
      ImageIndex = 2
      TabVisible = False
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 420
        Height = 247
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 420
          Height = 53
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object cbServer: TCheckBox
            Left = 8
            Top = 8
            Width = 156
            Height = 13
            Caption = '��������� �����'
            TabOrder = 0
          end
          object cbClient: TCheckBox
            Left = 8
            Top = 32
            Width = 150
            Height = 13
            Caption = '���������� �����'
            TabOrder = 1
          end
          object cbReportServer: TCheckBox
            Left = 175
            Top = 33
            Width = 124
            Height = 13
            Caption = '������ �������'
            TabOrder = 2
            Visible = False
          end
        end
        object mmModules: TMemo
          Left = 0
          Top = 53
          Width = 420
          Height = 194
          Align = alClient
          BorderStyle = bsNone
          ParentColor = True
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
    end
    object tsLog: TTabSheet
      HelpContext = 100001
      Caption = 'tsLog'
      ImageIndex = 3
      TabVisible = False
      object mmLog: TMemo
        Left = 0
        Top = 0
        Width = 420
        Height = 247
        Cursor = crArrow
        Align = alClient
        Color = clBlack
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object tsFinish: TTabSheet
      HelpContext = 100001
      Caption = 'tsFinish'
      ImageIndex = 4
      TabVisible = False
      object mmFinish: TMemo
        Left = 6
        Top = 0
        Width = 409
        Height = 217
        BorderStyle = bsNone
        ParentColor = True
        TabOrder = 0
      end
      object cbStart: TCheckBox
        Left = 7
        Top = 228
        Width = 172
        Height = 13
        Caption = '��������� ���������'
        TabOrder = 1
      end
    end
  end
  object GedeminInstall: TGedeminInstall
    ArchiveType = artFile
    InstallLog = GedeminInstallInstallLog
    InstallFinish = GedeminInstallInstallFinish
    Left = 320
    Top = 120
  end
  object ActionList: TActionList
    Left = 349
    Top = 120
    object actNext: TAction
      Caption = '������ >'
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
    object actPrior: TAction
      Caption = '< �����'
      OnExecute = actPriorExecute
      OnUpdate = actPriorUpdate
    end
    object actBreak: TAction
      Caption = 'actBreak'
      ShortCut = 27
      OnExecute = actBreakExecute
      OnUpdate = actBreakUpdate
    end
  end
end
