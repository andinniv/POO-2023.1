class Funcionario {
  String nome = "";
  String cpf = "";

  Funcionario(String nome, String cpf) {
    this.nome = nome;
    this.cpf = cpf;
  }

  double getSalario() {
    return 0;
  }
}

class Entregador extends Funcionario {
  int totalEntregas = 0;
  double valorEntrega = 0.0;

  Entregador(String nome, String cpf, int totalEntregas, double valorEntrega)
      : super(nome, cpf) {
    this.totalEntregas = totalEntregas;
    this.valorEntrega = valorEntrega;
  }

  void adicionarEntrega() {
    totalEntregas++;
  }

  @override
  double getSalario() {
    return totalEntregas * valorEntrega;
  }
}

class Vendedor extends Funcionario {
  double totalVendas = 0.0;
  double comissao = 0.0;

  Vendedor(String nome, String cpf, double totalVendas, double comissao)
      : super(nome, cpf) {
    this.totalVendas = totalVendas;
    this.comissao = comissao;
  }

  void adicionarVenda(double valor) {
    totalVendas += valor;
  }

  @override
  double getSalario() {
    return totalVendas * comissao;
  }
}

class Montador extends Funcionario {
  int totalDiarias = 0;
  double valorDiaria = 0.0;

  Montador(String nome, String cpf, int totalDiarias, double valorDiaria)
      : super(nome, cpf) {
    this.totalDiarias = totalDiarias;
    this.valorDiaria = valorDiaria;
  }

  void adicionarDiaria() {
    totalDiarias++;
  }

  double getSalario() {
    return totalDiarias * valorDiaria;
  }
}

void main() {
  Entregador ent1 = Entregador("Andre", "122.333.789-00", 7, 150);
  Vendedor vend1 = Vendedor("Ana", "455.679.123-00", 0, 20);
  Montador mont1 = Montador("Lucas", "987.555.321-88", 50, 100);

  ent1.adicionarEntrega();
  ent1.adicionarEntrega();
  ent1.adicionarEntrega();

  vend1.adicionarVenda(50.0);
  vend1.adicionarVenda(100.0);
  vend1.adicionarVenda(500);

  mont1.adicionarDiaria();
  mont1.adicionarDiaria();
  mont1.adicionarDiaria();

  print("------------------------------------------------");
  print("Levantamento do Dia :\n");
  print("Entregador(a): ${ent1.nome} - CPF: ${ent1.cpf}");
  print("Salário a pagar: R\$ ${ent1.getSalario()}\n");

  print("Vendedor(a): ${vend1.nome} - CPF: ${vend1.cpf}");
  print("Salário a pagar: R\$ ${vend1.getSalario()}\n");

  print("Montador(a): ${mont1.nome} - CPF: ${mont1.cpf}");
  print("Salário a pagar: R\$ ${mont1.getSalario()}\n");
  print("------------------------------------------------");
}
