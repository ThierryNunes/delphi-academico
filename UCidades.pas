unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons;

type
  TFormCidades = class(TForm)
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
    QueryCidades: TADOQuery;
    DataSourceCidades: TDataSource;
    DBEditEstado: TDBEdit;
    Label3: TLabel;
    QueryCidadesCODIGOCIDADE: TIntegerField;
    QueryCidadesNOMECIDADE: TStringField;
    QueryCidadesESTADO: TStringField;
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
    procedure Botoes(acao: Boolean);
  end;

var
  FormCidades: TFormCidades;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFormCidades.BCancelarClick(Sender: TObject);
begin
  Botoes(true);
  QueryCidades.Cancel;
  QueryCidades.Close;
  QueryCidades.Open;
end;

procedure TFormCidades.BConfirmarClick(Sender: TObject);
begin
  if (DBEditCodigo.Text = '') then
  begin
    MessageDlg('Informe o Código', mtInformation, [mbok],0);
    DBEditCodigo.SetFocus;
  end;
  if (DBEditNome.Text = '') then
  begin
    MessageDlg('Informe o Nome da Cidade', mtInformation, [mbok],0);
    DBEditNome.SetFocus;
  end;
  if (DBEditEstado.Text = '') then
  begin
    MessageDlg('Informe o Estado', mtInformation, [mbok],0);
    DBEditEstado.SetFocus;
  end;
  Botoes(true);
  QueryCidades.Post;
  QueryCidades.Close;
  QueryCidades.Open;
end;

procedure TFormCidades.BEditarClick(Sender: TObject);
begin
  Botoes(false);
  QueryCidades.Edit;
  DBEditCodigo.SetFocus;
end;

procedure TFormCidades.BExcluirClick(Sender: TObject);
begin
  if (messagedlg('Confirma a exclusão',mtConfirmation,[mbYes,mbNo],0)=mryes) then
  begin
    QueryCidades.Delete;
    QueryCidades.Close;
    QueryCidades.Open;
  end;
end;

procedure TFormCidades.BNovoClick(Sender: TObject);
begin
  Botoes(false);
  QueryCidades.Append;
  DBEditCodigo.SetFocus;
end;

procedure TFormCidades.Botoes(acao: Boolean);
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

procedure TFormCidades.BSairClick(Sender: TObject);
begin
  close;
end;

end.
