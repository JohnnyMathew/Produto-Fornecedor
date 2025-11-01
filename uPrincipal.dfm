object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClick = btnExibirClick
  TextHeight = 15
  object lblDescricao: TLabel
    Left = 8
    Top = 16
    Width = 54
    Height = 15
    Caption = 'Descri'#231#227'o:'
  end
  object lblPreco: TLabel
    Left = 216
    Top = 16
    Width = 33
    Height = 15
    Caption = 'Pre'#231'o:'
  end
  object lblNomeFornecedor: TLabel
    Left = 432
    Top = 16
    Width = 99
    Height = 15
    Caption = 'Nome Fornecedor:'
  end
  object lblCNPJ: TLabel
    Left = 112
    Top = 96
    Width = 30
    Height = 15
    Caption = 'CNPJ:'
  end
  object lblEmail: TLabel
    Left = 320
    Top = 96
    Width = 32
    Height = 15
    Caption = 'Email:'
  end
  object edtDescricao: TEdit
    Left = 8
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtPreco: TEdit
    Left = 216
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtNomeFornecedor: TEdit
    Left = 432
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object edtCNPJ: TEdit
    Left = 112
    Top = 117
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object edtEmail: TEdit
    Left = 320
    Top = 117
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object btnSalvar: TButton
    Left = 184
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object btnExibir: TButton
    Left = 304
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Exibir'
    TabOrder = 6
    OnClick = btnExibirClick
  end
end
