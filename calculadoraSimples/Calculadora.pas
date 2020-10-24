unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Valor1: TEdit;
    soma: TButton;
    subtracao: TButton;
    divisao: TButton;
    multiplicacao: TButton;
    Valor2: TEdit;
    Resultado: TEdit;
    procedure somaClick(Sender: TObject);
    procedure subtracaoClick(Sender: TObject);
    procedure divisaoClick(Sender: TObject);
    procedure multiplicacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.divisaoClick(Sender: TObject);
begin
  Resultado.Text := (Valor1.Text / Valor2.Text);
end;

procedure TForm1.multiplicacaoClick(Sender: TObject);
begin
  Resultado.Text := (Valor1.Text * Valor2.Text);
end;

procedure TForm1.somaClick(Sender: TObject);
begin
  Resultado.Text := (Valor1.Text + Valor2.Text);
end;

procedure TForm1.subtracaoClick(Sender: TObject);
begin
  Resultado.Text := (Valor1.Text - Valor2.Text);
end;

end.
