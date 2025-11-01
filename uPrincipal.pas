unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClasses;

type
  TForm1 = class(TForm)
    lblDescricao: TLabel;
    edtDescricao: TEdit;
    lblPreco: TLabel;
    edtPreco: TEdit;
    lblNomeFornecedor: TLabel;
    edtNomeFornecedor: TEdit;
    lblCNPJ: TLabel;
    edtCNPJ: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    btnSalvar: TButton;
    btnExibir: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);
  private
    { Private declarations }
    Produto: TProduto;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSalvarClick(Sender: TObject);
begin
  Produto := TProduto.Create;
  try
    Produto.Descricao := edtDescricao.Text;
    Produto.Preco := StrToFloatDef(edtPreco.Text, 0);

    Produto.Fornecedor.Nome := edtNomeFornecedor.Text;
    Produto.Fornecedor.CNPJ := edtCNPJ.Text;
    Produto.Fornecedor.Email := edtEmail.Text;

    ShowMessage('Dados armazenados com sucesso!');
  except
    on E: Exception do
      ShowMessage('Erro ao salvar: ' + E.Message);
  end;
end;

procedure TForm1.btnExibirClick(Sender: TObject);
begin
  if Assigned(Produto) then
  begin
    ShowMessage(
      'Produto: ' + Produto.Descricao + sLineBreak +
      'Preço: R$ ' + FormatFloat('0.00', Produto.Preco) + sLineBreak + sLineBreak +
      'Fornecedor:' + sLineBreak +
      'Nome: ' + Produto.Fornecedor.Nome + sLineBreak +
      'CNPJ: ' + Produto.Fornecedor.CNPJ + sLineBreak +
      'E-mail: ' + Produto.Fornecedor.Email
    );
  end
  else
    ShowMessage('Nenhum produto foi salvo ainda.');
end;

end.
