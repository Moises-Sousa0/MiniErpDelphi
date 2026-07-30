unit Model.Caixa;

interface

uses
  System.SysUtils, System.Classes;

type
  TCaixa = class
  private
    FId: Integer;
    FOperadorId: Integer;
    FDataAbertura: TDateTime;
    FValorAbertura: Currency;
    FDataFechamento: TDateTime;
    FValorFechamento: Currency;
    FStatus: Boolean;
  public
    property Id: Integer read FId write FId;
    property OperadorId: Integer read FOperadorId write FOperadorId;
    property DataAbertura: TDateTime read FDataAbertura write FDataAbertura;
    property ValorAbertura: Currency read FValorAbertura write FValorAbertura;
    property DataFechamento: TDateTime read FDataFechamento write FDataFechamento;
    property ValorFechamento: Currency read FValorFechamento write FValorFechamento;
    property Status: Boolean read FStatus write FStatus;
  end;

implementation

end.
