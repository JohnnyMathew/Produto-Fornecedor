unit uClasses;

interface

type
  TFornecedor = class
  private
    FNome: string;
    FCNPJ: string;
    FEmail: string;
  public
    property Nome: string read FNome write FNome;
    property CNPJ: string read FCNPJ write FCNPJ;
    property Email: string read FEmail write FEmail;
  end;

  TProduto = class
  private
    FDescricao: string;
    FPreco: Double;
    FFornecedor: TFornecedor;
  public
    constructor Create;
    destructor Destroy; override;
    property Descricao: string read FDescricao write FDescricao;
    property Preco: Double read FPreco write FPreco;
    property Fornecedor: TFornecedor read FFornecedor write FFornecedor;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
  FFornecedor := TFornecedor.Create;
end;

destructor TProduto.Destroy;
begin
  FFornecedor.Free;
  inherited;
end;

end.
