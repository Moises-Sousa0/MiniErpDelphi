unit DAO.Produto;

interface

uses
  System.SysUtils, System.Classes, uDMConexao, Model.Produto, FireDAC.Comp.Client;

type
  TProdutoDAO = class
  public
    procedure Inserir(Produto: TProduto);
  end;

implementation

procedure TProdutoDAO.Inserir(Produto: TProduto);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := DmConexao.FDConexao;
    Query.SQL.Text := 'INSERT INTO produto (codigo, descricao, preco_venda, estoque_atual) VALUES (:codigo, :descricao, :preco_venda, :estoque_atual)';

    Query.ParamByName('codigo').AsString := Produto.Codigo;
    Query.ParamByName('descricao').AsString := Produto.Descricao;
    Query.ParamByName('preco_venda').AsCurrency := Produto.PrecoVenda;
    Query.ParamByName('estoque_atual').AsInteger := Produto.EstoqueAtual;
    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;


end.
