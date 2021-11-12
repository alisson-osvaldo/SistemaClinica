object DM: TDM
  OldCreateOrder = False
  Height = 351
  Width = 511
  object conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'Server=127.0.0.1'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 72
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'clinica.paciente'
    Left = 184
    Top = 72
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbPacientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbPacientecelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##) #.####-####;1;_'
      Size = 16
    end
    object tbPacientedata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object tbPacientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;'
      Size = 14
    end
  end
  object tbAgenda: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'clinica.agendamento'
    Left = 272
    Top = 72
    object tbAgendaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbAgendaid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tbAgendadata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbAgendahora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      EditMask = '##:##;1;_'
      Size = 8
    end
    object tbAgendaespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
    object tbAgendamedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 184
    Top = 152
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgenda
    Left = 272
    Top = 152
  end
end
