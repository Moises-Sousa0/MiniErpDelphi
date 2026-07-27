unit uFrmProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmProduto = class(TForm)
    lblCodigoProd: TLabel;
    editCodigoProd: TEdit;
    lblDescricaoProd: TLabel;
    edtDescricaoProd: TEdit;
    lblPrecVendaProd: TLabel;
    edtPrecVendaProd: TEdit;
    lblEstoqueProd: TLabel;
    edtEstoqueProd: TEdit;
    btnSalvarProd: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

end.
