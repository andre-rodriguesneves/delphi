unit uModel;

interface

type

  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  published
    property Nome: String read FNome write SetNome;

  end;

  TPessoaFisica = class(TPessoa)
  private
    FCPF: String;
    procedure SetCPF(const Value: String);
  published
    property CPF: String read FCPF write SetCPF;
  end;

  TCliente = class(TPessoaFisica)
  end;

implementation

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TPessoaFisica }

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

end.
