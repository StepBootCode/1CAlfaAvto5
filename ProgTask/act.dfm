object frmAct: TfrmAct
  Left = 0
  Top = 0
  Caption = #1054#1090#1084#1077#1090#1080#1090#1100
  ClientHeight = 207
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 280
    Top = 8
    Width = 89
    Height = 17
    DataField = 'date'
    DataSource = frmMain.DataSourceTask
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 408
    Top = 8
    Width = 91
    Height = 17
    DataField = 'dateto'
    DataSource = frmMain.DataSourceTask
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBTId: TDBText
    Left = 104
    Top = 8
    Width = 121
    Height = 17
    DataField = 'id'
    DataSource = frmMain.DataSourceTask
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 146
    Width = 491
    Height = 15
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 53
    Height = 16
    Caption = #1047#1072#1103#1074#1082#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 35
    Width = 61
    Height = 16
    Caption = #1055#1088#1080#1095#1080#1085#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 62
    Width = 46
    Height = 16
    Caption = #1040#1074#1090#1086#1088':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 89
    Width = 67
    Height = 16
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 375
    Top = 8
    Width = 18
    Height = 16
    Alignment = taCenter
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 179
    Width = 50
    Height = 16
    Caption = #1057#1090#1072#1090#1091#1089':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 32
    Width = 395
    Height = 21
    DataField = 'name'
    DataSource = frmMain.DataSourceTask
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 59
    Width = 395
    Height = 21
    DataField = 'user_id'
    DataSource = frmMain.DataSourceTask
    ReadOnly = True
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 104
    Top = 86
    Width = 395
    Height = 59
    DataField = 'note'
    DataSource = frmMain.DataSourceTask
    ReadOnly = True
    TabOrder = 2
  end
  object DBLCStatus: TDBLookupComboBox
    Left = 104
    Top = 175
    Width = 145
    Height = 21
    DataField = 'status_id'
    DataSource = frmMain.DataSourceTask
    KeyField = 'id'
    ListField = 'name'
    ListSource = frmMain.DataSourceStatus
    TabOrder = 3
  end
  object bOK: TBitBtn
    Left = 411
    Top = 174
    Width = 88
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bOKClick
  end
  object ADOCommand: TADOCommand
    CommandText = 
      'UPDATE [dbo].[tasks] '#13#10'SET  [status_id] = :status_id '#13#10'WHERE  ID' +
      ' = :ID'
    Connection = frmMain.ADOConnection
    Parameters = <
      item
        Name = 'status_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 304
    Top = 160
  end
end
