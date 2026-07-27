unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DAO.Operador, Model.Operador;

type
  TFrmLogin = class(TForm)
    btnEntrarAcesso: TButton;
    edtLoginUser: TEdit;
    edtSenhaUser: TEdit;
    procedure btnEntrarAcessoClick(Sender: TObject);
    procedure edtLoginUserKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses uFrmProduto;

procedure TFrmLogin.btnEntrarAcessoClick(Sender: TObject);
var
  DAO: TOperadorDAO;
  OperadorLogado: TOperador;

begin
  DAO := TOperadorDAO.Create;
  try
    OperadorLogado := DAO.Autenticar(edtLoginUser.Text, edtSenhaUser.Text);
    try
      if Assigned(OperadorLogado) then
      begin
        ShowMessage('Bem vindo, ' + OperadorLogado.Nome);
      end
      else
        ShowMessage('Login ou senha inválidos');
    finally
    OperadorLogado.Free;
    end;
  finally
    DAO.Free;
  end;
end;
procedure TFrmLogin.edtLoginUserKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;



end.
