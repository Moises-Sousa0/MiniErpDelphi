unit DAO.Caixa;

interface
uses
  System.SysUtils, System.Classes, Model.Caixa, uDMConexao, FireDAC.Comp.Client;

type
  TCaixaDao = class
  public
    function BuscarCaixaAberto(const Acaixa: String): TCaixa;
  end;

implementation

function TCaixaDao.BuscarCaixaAberto(const Acaixa: string): TCaixa;

var
Qry: TFDQuery;
end.
