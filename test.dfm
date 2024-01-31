object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 463
  ClientWidth = 845
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMenuHighlight
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 560
    Top = 304
    Width = 137
    Height = 33
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 280
    Top = 256
    Width = 161
    Height = 57
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 80
    Top = 88
    Width = 161
    Height = 57
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object MyConnection1: TMyConnection
    Database = 'sys'
    Username = 'root'
    Connected = True
    Left = 464
    Top = 112
    EncryptedPassword = 'CEFFCDFFCCFFCBFF'
  end
  object MyQuery1: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO kunal'
      '  (id)'
      'VALUES'
      '  (:id)')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM kunal')
    Connection = MyConnection1
    SQL.Strings = (
      'select id from kunal;')
    Left = 640
    Top = 232
  end
end
