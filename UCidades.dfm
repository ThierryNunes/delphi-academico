object FormCidades: TFormCidades
  Left = 0
  Top = 0
  Caption = 'FormCidades'
  ClientHeight = 343
  ClientWidth = 591
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
    Top = 298
    Width = 87
    Height = 33
    Caption = 'Novo'
    OnClick = BNovoClick
  end
  object BEditar: TSpeedButton
    Left = 105
    Top = 298
    Width = 87
    Height = 33
    Caption = 'Editar'
    OnClick = BEditarClick
  end
  object BExcluir: TSpeedButton
    Left = 203
    Top = 298
    Width = 87
    Height = 33
    Caption = 'Excluir'
    OnClick = BExcluirClick
  end
  object BConfirmar: TSpeedButton
    Left = 300
    Top = 298
    Width = 87
    Height = 33
    Caption = 'Confirmar'
    Enabled = False
    OnClick = BConfirmarClick
  end
  object BCancelar: TSpeedButton
    Left = 398
    Top = 298
    Width = 87
    Height = 33
    Caption = 'Cancelar'
    Enabled = False
    OnClick = BCancelarClick
  end
  object BSair: TSpeedButton
    Left = 496
    Top = 298
    Width = 87
    Height = 33
    Caption = 'Sair'
    OnClick = BSairClick
  end
  object GrupoLista: TGroupBox
    Left = 8
    Top = 8
    Width = 575
    Height = 193
    Caption = 'Lista de Cidades Cadastradas'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 571
      Height = 176
      Align = alClient
      DataSource = DataSourceCidades
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
          FieldName = 'CODIGOCIDADE'
          Title.Caption = 'C'#243'digo da Cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECIDADE'
          Title.Caption = 'Cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTADO'
          Title.Caption = 'Estado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 148
          Visible = True
        end>
    end
  end
  object GrupoDados: TGroupBox
    Left = 8
    Top = 207
    Width = 575
    Height = 75
    Caption = 'Dados da Cidade'
    Enabled = False
    TabOrder = 1
    object Label2: TLabel
      Left = 143
      Top = 21
      Width = 78
      Height = 13
      Caption = 'Nome da Cidade'
    end
    object Label1: TLabel
      Left = 17
      Top = 21
      Width = 84
      Height = 13
      Caption = 'C'#243'digo da Cidade'
    end
    object Label3: TLabel
      Left = 368
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object DBEditNome: TDBEdit
      Left = 143
      Top = 40
      Width = 202
      Height = 21
      DataField = 'NOMECIDADE'
      DataSource = DataSourceCidades
      TabOrder = 0
    end
    object DBEditCodigo: TDBEdit
      Left = 17
      Top = 40
      Width = 105
      Height = 21
      DataField = 'CODIGOCIDADE'
      DataSource = DataSourceCidades
      TabOrder = 1
    end
    object DBEditEstado: TDBEdit
      Left = 368
      Top = 40
      Width = 169
      Height = 21
      DataField = 'ESTADO'
      DataSource = DataSourceCidades
      TabOrder = 2
    end
  end
  object QueryCidades: TADOQuery
    Active = True
    Connection = FormPrincipal.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from academico.cidades')
    Left = 528
    Top = 56
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
  object DataSourceCidades: TDataSource
    DataSet = QueryCidades
    Left = 528
    Top = 128
  end
end
