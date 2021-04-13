object Form2: TForm2
  Left = 878
  Top = 0
  Caption = 'Form2'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'fuzzylogic'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 48
    Top = 24
  end
  object input_zq: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM inputan')
    Params = <>
    Left = 48
    Top = 88
  end
  object input_ds: TDataSource
    DataSet = input_zq
    Left = 96
    Top = 88
  end
  object rule_zq: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM rules')
    Params = <>
    Left = 160
    Top = 88
  end
  object rule_ds: TDataSource
    DataSet = rule_zq
    Left = 208
    Top = 88
  end
  object var_zq: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM variabel')
    Params = <>
    Left = 272
    Top = 88
  end
  object var_ds: TDataSource
    DataSet = var_zq
    Left = 320
    Top = 88
  end
  object perm_zq: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM grafik_permintaan')
    Params = <>
    Left = 48
    Top = 144
  end
  object perm_ds: TDataSource
    DataSet = perm_zq
    Left = 96
    Top = 144
  end
  object pers_zq: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM grafik_persediaan')
    Params = <>
    Left = 160
    Top = 144
  end
  object pers_ds: TDataSource
    DataSet = pers_zq
    Left = 208
    Top = 144
  end
  object prod_zq: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM grafik_produksi')
    Params = <>
    Left = 272
    Top = 144
  end
  object prod_ds: TDataSource
    DataSet = prod_zq
    Left = 320
    Top = 144
  end
end
