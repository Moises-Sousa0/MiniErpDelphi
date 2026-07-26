unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DAO.Operador, Model.Operador;

type
  TForm3 = class(TForm)
    btnEntrarAcesso: TButton;
    edtLoginUser: TEdit;
    edtSenhaUser: TEdit;
    procedure btnEntrarAcessoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnEntrarAcessoClick(Sender: TObject);
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
end.
