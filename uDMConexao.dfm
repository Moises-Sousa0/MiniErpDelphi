object DmConexao: TDmConexao
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=MiniErp'
      'User_Name=postgres'
      'Password=peixegamer123'
      'Server=127.0.0.1'
      'DriverID=PG')
    LoginPrompt = False
    Left = 304
    Top = 224
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 464
    Top = 224
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 384
    Top = 224
  end
end
