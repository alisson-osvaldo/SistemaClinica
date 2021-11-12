program Clinica;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadAgendamentos in 'UnitCadAgendamentos.pas' {FormCadAgendamentos},
  UnitCadPacientes in 'UnitCadPacientes.pas' {FormCadPacientes},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadAgendamentos, FormCadAgendamentos);
  Application.CreateForm(TFormCadPacientes, FormCadPacientes);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
