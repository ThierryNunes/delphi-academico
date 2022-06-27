program FrontEnd_Academico;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FormPrincipal},
  UAlunos in 'UAlunos.pas' {FormAlunos},
  UCidades in 'UCidades.pas' {FormCidades},
  UCursos in 'UCursos.pas' {FormCursos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
