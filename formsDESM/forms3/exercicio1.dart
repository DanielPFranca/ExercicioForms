class Pessoa {
  String nome;
  int idade;
  String profissao;
  double salario;
  Pessoa(this.nome, this.idade, this.profissao, this.salario);

  void exibirTrabalho(String nomeEmpresa, int tempoDeTrabalho) {
    print("Nome: $nome");
    print("Profissão: $profissao");
    print("Salário: R\$ $salario");
    print("Trabalha na empresa $nomeEmpresa há $tempoDeTrabalho anos.");
  }
}

void main() {
  Pessoa pessoa = Pessoa("Daniel", 18, "Desenvolvedor", 5000.0);
  pessoa.exibirTrabalho("DevJob", 3);
}