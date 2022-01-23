unit uClientes;

interface

type

  //classe TTelefones: deve armazenar a lista de telefone do cliente
  TTelefones = class

  end;


  //classe TCliente: armazenar todos os dados do cliente com a função salvar
  TCliente = class
  private
    FNome: String;
    FCPF: String;
    FData_Nascimento: TDateTime;
    FEmail: String;
    procedure SetCPF(const Value: String);
    procedure SetData_Nascimento(const Value: TDateTime);
    procedure SetEmail(const Value: String);
    procedure SetNome(const Value: String);



  protected

  public
    //•	cada classe deve ter um constructor
    constructor construtordaClasse;//aqui vai o codigo do cliente se for editar (0 se for cliente novo)
    //•	cada classe deve ter um destructor
    destructor destrutordaClasse;
    //a funcao pode_salvar retorna uma booleana para saber se todos os dados estão validados
    function Pode_Salvar(): Integer; //a propria classe deve saber se vai salvar ou editar o registro;
    //nao pode salvar 2 clientes ativos com o mesmo cpf: usar a função FTemCPF do bd;
    property Nome: String read FNome write SetNome;
    property CPF: String read FCPF write SetCPF;
    property Data_Nascimento: TDateTime read FData_Nascimento write SetData_Nascimento;
    property Email: String read FEmail write SetEmail;

    //implementar a classe TTelefones onde deve ficar guardados os telefones para depois serem cadastrados


  published

  end;


  TClientes = class
   //armazena a lista de clientes cadastrados
  private

  public

  published

  end;

implementation

{ TCliente }



function TCliente.Pode_Salvar: Integer;
begin
  //retorna uma booleana para saber se todos os dados estão validados
end;

procedure TCliente.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TCliente.SetData_Nascimento(const Value: TDateTime);
begin
  FData_Nascimento := Value;
end;

procedure TCliente.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure TCliente.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
