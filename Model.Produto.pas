unit Model.Produto;

interface

uses
  System.SysUtils, System.Classes;

type
  TProduto = class
  private
  FId: Integer;
  FCodigo: String;
  FDescricao: String;
  FPrecoVenda: Currency;
  FEstoqueAtual: Integer;
  public
  property Id: Integer read FId write FId;
  property Codigo: String read FCodigo write FCodigo;
  property Descricao: String read FDescricao write FDescricao;
  property PrecoVenda: Currency read FPrecoVenda write FPrecoVenda;
  property EstoqueAtual: Integer read FEstoqueAtual write FEstoqueAtual;
  end;

implementation

end.
