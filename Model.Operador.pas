unit Model.Operador;

interface

uses
  System.SysUtils, System.Classes;

type
  TOperador = class
  private
    FId: Integer;
    FNome: String;
  public
    property Id: Integer read FId write FId;
    property Nome: String read FNome write FNome;
  end;

implementation

end.
