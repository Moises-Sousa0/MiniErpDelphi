program PDVErp;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uDMConexao in 'uDMConexao.pas' {DmConexao: TDataModule},
  Model.Operador in 'Model.Operador.pas' {Form2},
  DAO.Operador in 'DAO.Operador.pas' {;

{$R *.res},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  Model.Produto in 'Model.Produto.pas',
  DAO.Produto in 'DAO.Produto.pas',
  uFrameProduto in 'uFrameProduto.pas' {FrameProduto: TFrame},
  Model.Caixa in 'Model.Caixa.pas',
  DAO.Caixa in 'DAO.Caixa.pas',
  uFrameCaixa in 'uFrameCaixa.pas' {FrameCaixa: TFrame},
  uSessao in 'uSessao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.Run;
end.
