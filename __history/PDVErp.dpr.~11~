program PDVErp;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDMConexao in 'uDMConexao.pas' {DmConexao: TDataModule},
  Model.Operador in 'Model.Operador.pas' {Form2},
  DAO.Operador in 'DAO.Operador.pas' {;

{$R *.res},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.Run;
end.
