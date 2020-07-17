object frmFinish: TfrmFinish
  Left = 0
  Top = 0
  Caption = #1048#1089#1087#1086#1083#1085#1077#1085#1099#1077
  ClientHeight = 602
  ClientWidth = 1182
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1182
    Height = 602
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = #8470
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1055#1088#1080#1095#1080#1085#1072
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'note'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 507
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date'
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateto'
        Title.Caption = #1057#1088#1086#1082
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_id'
        Title.Caption = #1040#1074#1090#1086#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'userto_id'
        Visible = False
      end>
  end
  object ADOQuery: TADOQuery
    Active = True
    Connection = frmMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tasks '
      'where userto_id=2 and status_id  = 5 '
      'order by dateto')
    Left = 360
    Top = 304
    object ADOQueryid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQueryname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object ADOQuerydate: TDateTimeField
      FieldName = 'date'
    end
    object ADOQuerynote: TStringField
      FieldName = 'note'
      Size = 255
    end
    object ADOQueryuser_id: TStringField
      FieldName = 'user_id'
      Size = 50
    end
    object ADOQuerystatus_id: TIntegerField
      FieldName = 'status_id'
    end
    object ADOQuerydateto: TDateTimeField
      FieldName = 'dateto'
    end
    object ADOQueryuserto_id: TIntegerField
      FieldName = 'userto_id'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery
    Left = 488
    Top = 320
  end
end
