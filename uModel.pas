unit uModel;

interface

type

  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  published
    property Nome: String read FNome write SetNome;
  public
    procedure Validar;

  end;

  TPessoaFisica = class(TPessoa)
  private
    FCPF: String;
    procedure SetCPF(const Value: String);
  published
    property CPF: String read FCPF write SetCPF;
  public
    procedure Validar;
  end;

  TCliente = class(TPessoaFisica)
  private
    FFLimite: Double;
    procedure SetFLimite(const Value: Double);
  published
       property FLimite : Double read FFLimite write SetFLimite;
    public
    procedure Validar;
  end;

implementation

uses
  Vcl.Dialogs;

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TPessoa.Validar;
begin
  showmessage('Validando Pessoa!');
end;

{ TPessoaFisica }

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoaFisica.Validar;
begin
 showmessage('Pessoa Fisica validada!');
end;

{ TCliente }

procedure TCliente.SetFLimite(const Value: Double);
begin
  FFLimite := Value;
end;

procedure TCliente.Validar;
begin
    showmessage('Validando cliente!');
end;

end.
