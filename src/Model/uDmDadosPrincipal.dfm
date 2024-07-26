object dmDadosPrincipal: TdmDadosPrincipal
  Height = 158
  Width = 398
  object fdConnectionPrincipal: TFDConnection
    Params.Strings = (
      'Server='
      'Port='
      'DriverID=PG')
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    Left = 80
    Top = 56
  end
  object fdPgLink: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\AVELL\Documents\delphiCurso\SistemaControleEstoque\proj' +
      'eto\exe'
    Left = 192
    Top = 56
  end
  object fdTransaction: TFDTransaction
    Connection = fdConnectionPrincipal
    Left = 272
    Top = 56
  end
end
