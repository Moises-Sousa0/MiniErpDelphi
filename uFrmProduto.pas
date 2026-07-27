unit uFrmProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DAO.Produto, Model.Produto;

type
  TFrmProduto = class(TForm)
    lblCodigoProd: TLabel;
    edtCodigoProd: TEdit;
    lblDescricaoProd: TLabel;
    edtDescricaoProd: TEdit;
    lblPrecVendaProd: TLabel;
    edtPrecVendaProd: TEdit;
    lblEstoqueProd: TLabel;
    edtEstoqueProd: TEdit;
    btnSalvarProd: TButton;
    procedure btnSalvarProdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

procedure TFrmProduto.btnSalvarProdClick(Sender: TObject);
var
  Produto: TProduto;
  DAO: TProdutoDAO;

begin
  Produto := TProduto.Create;
  DAO := TProdutoDAO.Create;
  try
    Produto.Codigo := edtCodigoProd.Text;
    Produto.Descricao := edtDescricaoProd.Text;
    Produto.PrecoVenda := StrToCurr(edtPrecVendaProd.Text);
    Produto.EstoqueAtual := StrToInt(edtEstoqueProd.Text);

    DAO.Inserir(Produto);

    ShowMessage('Produto salvo com sucesso!');
  finally
    Produto.Free;
    DAO.Free;
  end;

end;

end.
