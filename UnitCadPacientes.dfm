object FormCadPacientes: TFormCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 548
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 93
    Width = 10
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 184
    Top = 93
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 40
    Top = 141
    Width = 74
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 40
    Top = 195
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 184
    Top = 195
    Width = 70
    Height = 13
    Caption = 'Data Cadastro'
  end
  object Label7: TLabel
    Left = 380
    Top = 93
    Width = 76
    Height = 13
    Caption = 'Buscar Paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 233
      Height = 25
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 339
      Top = 20
      Width = 350
      Height = 25
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object gridPacientes: TDBGrid
    Left = 380
    Top = 139
    Width = 300
    Height = 316
    DataSource = DM.dsPaciente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pacientes Cadastrados'
        Visible = True
      end>
  end
  object txtDataCadastro: TDBEdit
    Left = 184
    Top = 214
    Width = 121
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 5
  end
  object txtCelular: TDBEdit
    Left = 40
    Top = 214
    Width = 121
    Height = 21
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 16
    TabOrder = 4
  end
  object txtNome: TDBEdit
    Left = 40
    Top = 160
    Width = 264
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 3
  end
  object txtCpf: TDBEdit
    Left = 184
    Top = 112
    Width = 121
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object txtId: TDBEdit
    Left = 40
    Top = 112
    Width = 120
    Height = 21
    DataField = 'id'
    DataSource = DM.dsPaciente
    TabOrder = 1
  end
  object txtBusca: TEdit
    Left = 380
    Top = 112
    Width = 309
    Height = 21
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
