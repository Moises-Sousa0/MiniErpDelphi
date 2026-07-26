unit DAO.Operador;

interface

uses
  System.SysUtils, System.Classes, uDMConexao, Model.Operador, FireDAC.Comp.Client;

type
  TOperadorDAO = class
  public
    function Autenticar(const ALogin, ASenha: String): TOperador;
  end;


implementation

function TOperadorDAO.Autenticar(const ALogin: string; const ASenha: string): TOperador;

var
Qry: TFDQuery;

begin
  Result := Nil;

  Qry := TFDQuery.Create(nil);
  try
    Qry.Connection := DmConexao.FDConexao;
    Qry.SQL.Text := 'SELECT id, nome, login, ativo FROM operador ' + 'WHERE login = :login AND senha = :senha AND ativo = True';

    Qry.ParamByName('login').AsString := ALogin;
    Qry.ParamByName('senha').AsString := ASenha;
    Qry.Open;


    if not Qry.Eof then    //fim do arquiv
    begin
      Result := TOperador.Create;
      Result.Id := Qry.FieldByName('id').AsInteger;
      Result.Nome := Qry.FieldByName('nome').AsString;
      Result.Login := Qry.FieldByName('login').AsString;
      Result.Ativo := Qry.FieldByName('ativo').AsBoolean;
    end;

  finally
    Qry.Free;
  end;


end;

end.
