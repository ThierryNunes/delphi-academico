object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MenuPrincipal: TMainMenu
    Left = 8
    Top = 8
    object Academico1: TMenuItem
      Caption = 'Acad'#234'mico'
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
      object Cursos1: TMenuItem
        Caption = 'Cursos'
        OnClick = Cursos1Click
      end
      object Alunos1: TMenuItem
        Caption = 'Alunos'
        OnClick = Alunos1Click
      end
    end
  end
  object Conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDAORA.1;Password=abc;User ID=academico;Data Source=xe' +
      ';Persist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 88
    Top = 8
  end
end
