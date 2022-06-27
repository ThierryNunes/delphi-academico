object FormCursos: TFormCursos
  Left = 0
  Top = 0
  Caption = 'Cursos'
  ClientHeight = 338
  ClientWidth = 584
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
    Top = 296
    Width = 87
    Height = 33
    Caption = 'Novo'
    OnClick = BNovoClick
  end
  object BEditar: TSpeedButton
    Left = 104
    Top = 296
    Width = 87
    Height = 33
    Caption = 'Editar'
    OnClick = BEditarClick
  end
  object BExcluir: TSpeedButton
    Left = 197
    Top = 296
    Width = 87
    Height = 33
    Caption = 'Excluir'
    OnClick = BExcluirClick
  end
  object BConfirmar: TSpeedButton
    Left = 296
    Top = 296
    Width = 87
    Height = 33
    Caption = 'Confirmar'
    Enabled = False
    OnClick = BConfirmarClick
  end
  object BCancelar: TSpeedButton
    Left = 392
    Top = 296
    Width = 87
    Height = 33
    Caption = 'Cancelar'
    Enabled = False
    OnClick = BCancelarClick
  end
  object BSair: TSpeedButton
    Left = 488
    Top = 296
    Width = 87
    Height = 33
    Caption = 'Sair'
    OnClick = BSairClick
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 207
    Width = 567
    Height = 75
    Caption = 'Dados do Curso'
    Enabled = False
    TabOrder = 0
    object Label2: TLabel
      Left = 215
      Top = 21
      Width = 73
      Height = 13
      Caption = 'Nome do Curso'
    end
    object Label1: TLabel
      Left = 17
      Top = 21
      Width = 79
      Height = 13
      Caption = 'C'#243'digo do Curso'
    end
    object DBEditNome: TDBEdit
      Left = 215
      Top = 40
      Width = 225
      Height = 21
      DataField = 'NOMECURSO'
      DataSource = DataSourceCursos
      TabOrder = 0
    end
    object DBEditCodigo: TDBEdit
      Left = 17
      Top = 40
      Width = 105
      Height = 21
      DataField = 'CODIGOCURSO'
      DataSource = DataSourceCursos
      TabOrder = 1
    end
  end
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 569
    Height = 193
    Caption = 'Lista de Cursos Cadastrados'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 565
      Height = 176
      Align = alClient
      DataSource = DataSourceCursos
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
          FieldName = 'CODIGOCURSO'
          Title.Caption = 'C'#243'digo do Curso'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECURSO'
          Title.Caption = 'Nome do Curso'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object QueryCursos: TADOQuery
    Active = True
    Connection = FormPrincipal.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from academico.cursos')
    Left = 520
    Top = 104
    object QueryCursosCODIGOCURSO: TIntegerField
      FieldName = 'CODIGOCURSO'
    end
    object QueryCursosNOMECURSO: TStringField
      FieldName = 'NOMECURSO'
      Size = 70
    end
  end
  object DataSourceCursos: TDataSource
    DataSet = QueryCursos
    Left = 520
    Top = 160
  end
end
