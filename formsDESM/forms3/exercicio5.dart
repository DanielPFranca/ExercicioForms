class Maquina {
  String nomeMaquina;
  int qtdEixos;
  int rpm;
  double consEnergia;

  Maquina(
      this.nomeMaquina, this.qtdEixos, this.rpm, this.consEnergia);

  void ligar() {
    print("$nomeMaquina ligada.");
  }

  void desligar() {
    print("$nomeMaquina desligada.");
  }

  void ajustarrpm(int nVelo) {
    rpm = nVelo;
    print("$nomeMaquina ajustada para $rpm rotações por minuto.");
  }
}

class Furadeira extends Maquina {
  Furadeira(String nomeMaquina, int rotacoesPorMinuto, double consumoEnergiaEletrica)
  :super(nomeMaquina, 1, rotacoesPorMinuto, consumoEnergiaEletrica);
}

void main() {
  Furadeira minhaFuradeira = Furadeira("Furadeira", 1500, 5.0);
  minhaFuradeira.ligar();
  minhaFuradeira.ajustarrpm(2000);
  minhaFuradeira.desligar();
}
