unit Model.VendaItem;

interface

uses
  System.SysUtils, System.Classes;

type
  TVendaItem = class
  private
    FId: Integer;
    FVendaId: Integer;
    FProdutoId: Integer;
    FQuantidade: Integer;
    FPrecoUnitario: Currency;
    FSubtotal: Currency;
  public
    property Id: Integer read FId write FId;
    property VendaId: Integer read FVendaId write FVendaId;
    property ProdutoId: Integer read FProdutoId write FProdutoId;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property PrecoUnitario: Currency read FPrecoUnitario write FPrecoUnitario;
    property SubTotal: Currency read FSubtotal write FSubtotal;
  end;

implementation

end.
