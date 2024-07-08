object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 291
  Width = 409
  object dsKustomer: TDataSource
    DataSet = zqryKustomer
    Left = 48
    Top = 120
  end
  object zqryKustomer: TZQuery
    Connection = conKustomer
    Active = True
    SQL.Strings = (
      'SELECT * FROM kustomer')
    Params = <>
    Left = 48
    Top = 72
  end
  object conKustomer: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'penjualan_uas'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\xampp\mysql\lib\libmysql.dll'
    Left = 48
    Top = 24
  end
end
