unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModel, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    P: TPessoa;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  P.Validar;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  P := TPessoa.Create;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  P := TPessoaFisica.Create;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  P := Tcliente.Create;

end;

end.
