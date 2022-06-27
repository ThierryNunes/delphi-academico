object FormAlunos: TFormAlunos
  Left = 0
  Top = 0
  Caption = 'FormAlunos'
  ClientHeight = 404
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BNovo: TSpeedButton
    Left = 8
    Top = 363
    Width = 87
    Height = 33
    Caption = 'Novo'
    OnClick = BNovoClick
  end
  object BEditar: TSpeedButton
    Left = 132
    Top = 363
    Width = 87
    Height = 33
    Caption = 'Editar'
    OnClick = BEditarClick
  end
  object BExcluir: TSpeedButton
    Left = 257
    Top = 363
    Width = 87
    Height = 33
    Caption = 'Excluir'
    OnClick = BExcluirClick
  end
  object BConfirmar: TSpeedButton
    Left = 382
    Top = 363
    Width = 87
    Height = 33
    Caption = 'Confirmar'
    Enabled = False
    OnClick = BConfirmarClick
  end
  object BCancelar: TSpeedButton
    Left = 507
    Top = 363
    Width = 87
    Height = 33
    Caption = 'Cancelar'
    Enabled = False
    OnClick = BCancelarClick
  end
  object BSair: TSpeedButton
    Left = 632
    Top = 363
    Width = 87
    Height = 33
    Caption = 'Sair'
    OnClick = BSairClick
  end
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 711
    Height = 193
    Caption = 'Lista de Alunos Cadastrados'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 707
      Height = 176
      Align = alClient
      DataSource = DataSourceAlunos
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'MATRICULA'
          Title.Caption = 'Matr'#237'cula'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEALUNO'
          Title.Caption = 'Aluno'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'look_cursos'
          Title.Caption = 'Curso'
          Width = 196
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'look_cidades'
          Title.Caption = 'Cidade'
          Visible = True
        end>
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 207
    Width = 711
    Height = 138
    Caption = 'Dados da Cidade'
    Enabled = False
    TabOrder = 1
    object Label2: TLabel
      Left = 356
      Top = 21
      Width = 72
      Height = 13
      Caption = 'Nome do Aluno'
    end
    object Label1: TLabel
      Left = 89
      Top = 21
      Width = 43
      Height = 13
      Caption = 'Matr'#237'cula'
    end
    object Label4: TLabel
      Left = 89
      Top = 77
      Width = 33
      Height = 13
      Caption = 'Cursos'
      FocusControl = DBLookupCursos
    end
    object Label5: TLabel
      Left = 356
      Top = 77
      Width = 38
      Height = 13
      Caption = 'Cidades'
      FocusControl = DBLookupCidades
    end
    object DBEditNome: TDBEdit
      Left = 356
      Top = 40
      Width = 202
      Height = 21
      DataField = 'NOMEALUNO'
      DataSource = DataSourceAlunos
      TabOrder = 0
    end
    object DBEditCodigo: TDBEdit
      Left = 89
      Top = 40
      Width = 105
      Height = 21
      DataField = 'MATRICULA'
      DataSource = DataSourceAlunos
      TabOrder = 1
    end
    object DBLookupCursos: TDBLookupComboBox
      Left = 89
      Top = 96
      Width = 240
      Height = 21
      DataField = 'look_cursos'
      DataSource = DataSourceAlunos
      TabOrder = 2
    end
    object DBLookupCidades: TDBLookupComboBox
      Left = 356
      Top = 96
      Width = 253
      Height = 21
      DataField = 'look_cidades'
      DataSource = DataSourceAlunos
      TabOrder = 3
    end
  end
  object QueryAlunos: TADOQuery
    Active = True
    Connection = FormPrincipal.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from academico.alunos')
    Left = 680
    Top = 80
    object QueryAlunosMATRICULA: TIntegerField
      FieldName = 'MATRICULA'
    end
    object QueryAlunosNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Size = 60
    end
    object QueryAlunosCODIGOCIDADE: TIntegerField
      FieldName = 'CODIGOCIDADE'
    end
    object QueryAlunosCODIGOCURSO: TIntegerField
      FieldName = 'CODIGOCURSO'
    end
    object QueryAlunoslook_cursos: TStringField
      FieldKind = fkLookup
      FieldName = 'look_cursos'
      LookupDataSet = QueryCursos
      LookupKeyFields = 'CODIGOCURSO'
      LookupResultField = 'NOMECURSO'
      KeyFields = 'CODIGOCURSO'
      Size = 40
      Lookup = True
    end
    object QueryAlunoslook_cidades: TStringField
      FieldKind = fkLookup
      FieldName = 'look_cidades'
      LookupDataSet = QueryCidades
      LookupKeyFields = 'CODIGOCIDADE'
      LookupResultField = 'NOMECIDADE'
      KeyFields = 'CODIGOCIDADE'
      Size = 40
      Lookup = True
    end
  end
  object DataSourceAlunos: TDataSource
    DataSet = QueryAlunos
    Left = 680
    Top = 136
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FormPrincipal.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from academico.cidades')
    Left = 536
    Top = 160
    object QueryCidadesCODIGOCIDADE: TIntegerField
      FieldName = 'CODIGOCIDADE'
    end
    object QueryCidadesNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 50
    end
    object QueryCidadesESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
  end
  object QueryCursos: TADOQuery
    Active = True
    Connection = FormPrincipal.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from academico.cursos')
    Left = 608
    Top = 160
    object QueryCursosCODIGOCURSO: TIntegerField
      FieldName = 'CODIGOCURSO'
    end
    object QueryCursosNOMECURSO: TStringField
      FieldName = 'NOMECURSO'
      Size = 70
    end
  end
end
