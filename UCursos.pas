unit UCursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFormCursos = class(TForm)
    QueryCursos: TADOQuery;
    QueryCursosCODIGOCURSO: TIntegerField;
    QueryCursosNOMECURSO: TStringField;
    DataSourceCursos: TDataSource;
    BNovo: TSpeedButton;
    BEditar: TSpeedButton;
    BExcluir: TSpeedButton;
    BConfirmar: TSpeedButton;
    BCancelar: TSpeedButton;
    BSair: TSpeedButton;
    GrupoDados: TGroupBox;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    procedure BNovoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Botoes(acao:boolean);
  end;

var
  FormCursos: TFormCursos;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFormCursos.BCancelarClick(Sender: TObject);
begin
  Botoes(true);
  QueryCursos.Cancel;
  QueryCursos.Close;
  QueryCursos.Open;
end;

procedure TFormCursos.BConfirmarClick(Sender: TObject);
begin
  if (DBEditCodigo.Text = '') then
  begin
    MessageDlg('Informe o Código', mtInformation, [mbok],0);
    DBEditCodigo.SetFocus;
  end;
  if (DBEditNome.Text = '') then
  begin
    MessageDlg('Informe o Nome do Curso', mtInformation, [mbok],0);
    DBEditNome.SetFocus;
  end;
  Botoes(true);
  QueryCursos.Post;
  QueryCursos.Close;
  QueryCursos.Open;
end;

procedure TFormCursos.BEditarClick(Sender: TObject);
begin
  Botoes(false);
  QueryCursos.Append;
  DBEditCodigo.SetFocus;
end;

procedure TFormCursos.BExcluirClick(Sender: TObject);
begin
  if (messagedlg('Confirma a exclusão',mtConfirmation,[mbYes,mbNo],0)=mryes) then
  begin
    QueryCursos.Delete;
    QueryCursos.Close;
    QueryCursos.Open;
  end;
end;

procedure TFormCursos.BNovoClick(Sender: TObject);
begin
  Botoes(false);
  QueryCursos.Append;
  DBEditCodigo.SetFocus;
end;

procedure TFormCursos.Botoes(acao: Boolean);
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

procedure TFormCursos.BSairClick(Sender: TObject);
begin
  close;
end;

end.
