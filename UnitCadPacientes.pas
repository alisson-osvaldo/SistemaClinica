unit UnitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFormCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    gridPacientes: TDBGrid;
    DBNavigator1: TDBNavigator;
    txtDataCadastro: TDBEdit;
    txtCelular: TDBEdit;
    txtNome: TDBEdit;
    txtCpf: TDBEdit;
    txtId: TDBEdit;
    txtBusca: TEdit;
    Label7: TLabel;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadPacientes: TFormCadPacientes;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormCadPacientes.txtBuscaChange(Sender: TObject);
begin
    //[loPartialKey]: fazer a busca pelo nome do paciente por partes
   DM.tbPaciente.Locate('nome', txtBusca.Text,[loPartialKey]);
end;

end.
