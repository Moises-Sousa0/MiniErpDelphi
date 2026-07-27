program PDVErp;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uDMConexao in 'uDMConexao.pas' {DmConexao: TDataModule},
  Model.Operador in 'Model.Operador.pas' {Form2},
  DAO.Operador in 'DAO.Operador.pas' {;

{$R *.res},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  Model.Produto in 'Model.Produto.pas',
  DAO.Produto in 'DAO.Produto.pas',
  uFrmProduto in 'uFrmProduto.pas' {FrmProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFrmProduto, FrmProduto);
  Application.Run;
end.
