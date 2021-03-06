object DMConexaoBD: TDMConexaoBD
  OldCreateOrder = False
  Height = 158
  Width = 379
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=ajx'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    LoginPrompt = False
    BeforeConnect = FDConnectionBeforeConnect
    Left = 40
    Top = 24
  end
  object MySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 160
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 296
    Top = 24
  end
  object QryOperadora: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM ajx.operadora;')
    Left = 40
    Top = 88
    object QryOperadoraData_Hora: TDateTimeField
      FieldName = 'Data_Hora'
      Origin = 'Data_Hora'
      Required = True
    end
    object QryOperadoraOperadora: TStringField
      FieldName = 'Operadora'
      Origin = 'Operadora'
      Required = True
      Size = 45
    end
  end
  object QryCliente: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM ajx.cliente')
    Left = 160
    Top = 88
    object QryClienteData_Hora: TDateTimeField
      FieldName = 'Data_Hora'
      Origin = 'Data_Hora'
      Required = True
    end
    object QryClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 45
    end
    object QryClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 11
    end
    object QryClienteData_Nascimento: TDateField
      FieldName = 'Data_Nascimento'
      Origin = 'Data_Nascimento'
      Required = True
    end
    object QryClienteEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      Required = True
      Size = 100
    end
    object QryClienteRemovido: TStringField
      FieldName = 'Removido'
      Origin = 'Removido'
      Required = True
      Size = 3
    end
  end
  object QryCliente_Telefone: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM ajx.cliente_telefone')
    Left = 296
    Top = 88
    object QryCliente_TelefoneData_Hora: TDateTimeField
      FieldName = 'Data_Hora'
      Origin = 'Data_Hora'
      Required = True
    end
    object QryCliente_TelefoneClienteID: TIntegerField
      FieldName = 'ClienteID'
      Origin = 'ClienteID'
      Required = True
    end
    object QryCliente_TelefoneOperadoraID: TIntegerField
      FieldName = 'OperadoraID'
      Origin = 'OperadoraID'
      Required = True
    end
    object QryCliente_TelefoneTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'Telefone'
      Required = True
      Size = 11
    end
    object QryCliente_TelefoneRemovido: TStringField
      FieldName = 'Removido'
      Origin = 'Removido'
      Required = True
      Size = 3
    end
  end
end
