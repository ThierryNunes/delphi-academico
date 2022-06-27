unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB;

type
  TFormPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    Academico1: TMenuItem;
    Cidades1: TMenuItem;
    Cursos1: TMenuItem;
    Alunos1: TMenuItem;
    Conexao: TADOConnection;
    procedure Cidades1Click(Sender: TObject);
    procedure Cursos1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses UAlunos, UCidades, UCursos;

{$R *.dfm}

procedure TFormPrincipal.Alunos1Click(Sender: TObject);
begin
  try
    FormAlunos := TFormAlunos.Create(application);
    FormAlunos.ShowModal;
  finally
    FormAlunos.Free;
  end;
end;

procedure TFormPrincipal.Cidades1Click(Sender: TObject);
begin
  try
    FormCidades := TFormCidades.Create(application);
    FormCidades.ShowModal;
  finally
    FormCidades.Free;
  end;
end;

procedure TFormPrincipal.Cursos1Click(Sender: TObject);
begin
  try
    FormCursos := TFormCursos.Create(application);
    FormCursos.ShowModal;
  finally
    FormCursos.Free;
  end;
end;

end.
