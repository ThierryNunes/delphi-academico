unit UAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons;

type
  TFormAlunos = class(TForm)
    BNovo: TSpeedButton;
    BEditar: TSpeedButton;
    BExcluir: TSpeedButton;
    BConfirmar: TSpeedButton;
    BCancelar: TSpeedButton;
    BSair: TSpeedButton;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    GrupoDados: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DBEditNome: TDBEdit;
    DBEditCodigo: TDBEdit;
    QueryAlunos: TADOQuery;
    DataSourceAlunos: TDataSource;
    QueryAlunosMATRICULA: TIntegerField;
    QueryAlunosNOMEALUNO: TStringField;
    QueryAlunosCODIGOCIDADE: TIntegerField;
    QueryAlunosCODIGOCURSO: TIntegerField;
    QueryCidades: TADOQuery;
    QueryCursos: TADOQuery;
    QueryCursosCODIGOCURSO: TIntegerField;
    QueryCursosNOMECURSO: TStringField;
    QueryAlunoslook_cursos: TStringField;
    Label4: TLabel;
    DBLookupCursos: TDBLookupComboBox;
    QueryCidadesCODIGOCIDADE: TIntegerField;
    QueryCidadesNOMECIDADE: TStringField;
    QueryCidadesESTADO: TStringField;
    QueryAlunoslook_cidades: TStringField;
    Label5: TLabel;
    DBLookupCidades: TDBLookupComboBox;
    procedure BNovoClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Botoes(acao: Boolean);
  end;

var
  FormAlunos: TFormAlunos;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFormAlunos.BCancelarClick(Sender: TObject);
begin
  Botoes(true);
  QueryAlunos.Cancel;
  QueryAlunos.Close;
  QueryAlunos.Open;
end;

procedure TFormAlunos.BConfirmarClick(Sender: TObject);
begin
  if (DBEditCodigo.Text = '') then
  begin
    MessageDlg('Informe o Código', mtInformation, [mbok],0);
    DBEditCodigo.SetFocus;
    exit;
  end;
  if (DBEditNome.Text = '') then
  begin
    MessageDlg('Informe o Nome da Cidade', mtInformation, [mbok],0);
    DBEditNome.SetFocus;
    exit;
  end;
  if (DBLookupCursos.Text = '') then
  begin
    MessageDlg('Informe o Curso', mtInformation, [mbok],0);
    DBLookupCursos.SetFocus;
    exit;
  end;
  if (DBLookupCidades.Text = '') then
  begin
    MessageDlg('Informe a Cidade', mtInformation, [mbok],0);
    DBLookupCidades.SetFocus;
    exit;
  end;

  Botoes(true);
  QueryAlunos.Post;
  QueryAlunos.Close;
  QueryAlunos.Open;
end;

procedure TFormAlunos.BEditarClick(Sender: TObject);
begin
  Botoes(false);
  QueryAlunos.Edit;
  DBEditCodigo.SetFocus;
end;

procedure TFormAlunos.BExcluirClick(Sender: TObject);
begin
  if (messagedlg('Confirma a exclusão',mtConfirmation,[mbYes,mbNo],0)=mryes) then
  begin
    QueryAlunos.Delete;
    QueryAlunos.Close;
    QueryAlunos.Open;
  end;
end;

procedure TFormAlunos.BNovoClick(Sender: TObject);
begin
  Botoes(false);
  QueryAlunos.Append;
  DBEditCodigo.SetFocus;
end;

procedure TFormAlunos.Botoes(acao: Boolean);
begin
  BNovo     .Enabled:=acao;
  BEditar   .Enabled:=acao;
  BExcluir  .Enabled:=acao;
  BConfirmar.Enabled:=not acao;
  BCancelar .Enabled:=not acao;
  BSair     .Enabled:=acao;
  GrupoDados.Enabled:=not acao;
  GrupoLista.Enabled:=acao;
end;

procedure TFormAlunos.BSairClick(Sender: TObject);
begin
  close;
end;

end.
