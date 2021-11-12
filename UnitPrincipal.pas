unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sistema2Click(Sender: TObject);
    procedure Cadastros2Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitCadPacientes, UnitCadAgendamentos;



procedure TFormPrincipal.Agendamentos1Click(Sender: TObject);
begin
  formCadAgendamentos.ShowModal;
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
     formCadAgendamentos.ShowModal;
end;

procedure TFormPrincipal.BitBtn2Click(Sender: TObject);
begin
  formCadPacientes.ShowModal;
end;

procedure TFormPrincipal.Cadastros2Click(Sender: TObject);
begin
  formCadPacientes.ShowModal;
end;

procedure TFormPrincipal.Sistema2Click(Sender: TObject);
begin
      Application.Terminate;  //função para encerrar aplicação
end;

end.
