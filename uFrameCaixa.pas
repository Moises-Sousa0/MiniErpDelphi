unit uFrameCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DAO.Caixa, Model.Caixa,
  Vcl.StdCtrls, uSessao;

type
  TFrameCaixa = class(TFrame)
    lblStatusCaixa: TLabel;
    EdtValorAbertura: TEdit;
    btnAbrirCaixa: TButton;
    btnFecharCaixa: TButton;
    lblCaixaInfo: TLabel;
    procedure btnAbrirCaixaClick(Sender: TObject);
    procedure btnFecharCaixaClick(Sender: TObject);
  private
    { Private declarations }
    FCaixaDao: TCaixaDao;
    FCaixaAtual: TCaixa;
    procedure AtualizarTela;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;


implementation

{$R *.dfm}



constructor TFrameCaixa.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCaixaDao := TCaixaDao.Create;
  AtualizarTela;
end;


destructor TFrameCaixa.Destroy;
begin
  FCaixaDao.Free;
  inherited Destroy;
end;


procedure TFrameCaixa.AtualizarTela;
begin
  FCaixaAtual := FCaixaDao.BuscarCaixaAberto;
  if FCaixaAtual = nil then
  begin
    lblStatusCaixa.Visible := True;
    btnAbrirCaixa.Visible := True;
    btnFecharCaixa.Visible := False;
    lblCaixaInfo.Visible := False;
    EdtValorAbertura.Visible := True;
    lblStatusCaixa.Caption := 'Fechado';
  end

  else
  begin
    lblStatusCaixa.Visible := True;
    btnFecharCaixa.Visible := True;
    lblCaixaInfo.Visible := True;
    btnAbrirCaixa.Visible := False;
    EdtValorAbertura.Visible := False;
    lblStatusCaixa.Caption := 'Aberto';
    lblCaixaInfo.Caption := IntToStr(FCaixaAtual.OperadorId);
  end;
end;

procedure TFrameCaixa.btnAbrirCaixaClick(Sender: TObject);
var
  Caixa: TCaixa;
begin
  Caixa := TCaixa.Create;
  try
    Caixa.OperadorId :=  uSessao.OperadorLogado.Id;
    Caixa.DataAbertura := Now;
    Caixa.ValorAbertura := StrToCurrDef(EdtValorAbertura.Text, 0);
    FCaixaDao.AbrirCaixa(Caixa);
    AtualizarTela;
  finally
    Caixa.Free;
  end;

end;

procedure TFrameCaixa.btnFecharCaixaClick(Sender: TObject);

begin
  FCaixaAtual.DataFechamento := Now;
  FCaixaAtual.ValorFechamento := 0;
  FCaixaDao.FecharCaixa(FCaixaAtual);
  AtualizarTela;
end;

end.
