program PrjFundamentosPOOO;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uModel in 'uModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
