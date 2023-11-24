class Produto {
  String nomeProduto;
  int qtd;
  double preco;
  String tipoComunicacao;
  double consEnergia;
  Produto(this.nomeProduto, this.qtd, this.preco, this.tipoComunicacao, this.consEnergia);

  void ligar() {
    print("$nomeProduto ligado.");
  }

  void desligar() {
    print("$nomeProduto desligado.");
  }
}

class Fritadeira extends Produto {
  Fritadeira(String nomeProduto, int quantidade, double preco, double consumoEnergiaEletrica)
  :super(nomeProduto, quantidade, preco, "WiFi", consumoEnergiaEletrica);

  void ajusteTemperatura(double setpoint) {
    print("$nomeProduto: Ajustando temperatura para $setpoint graus.");
  }
}

class Televisao extends Produto {
  Televisao(String nomeProduto, int quantidade, double preco, double consumoEnergiaEletrica)
      : super(nomeProduto, quantidade, preco, "Controle Remoto", consumoEnergiaEletrica);

  void ajusteVolume(int volume) {
    print("$nomeProduto: Ajustando volume para $volume.");
  }
}

class ArCondicionado extends Produto {
  ArCondicionado(String nomeProduto, int quantidade, double preco, double consumoEnergiaEletrica)
      : super(nomeProduto, quantidade, preco, "Controle Remoto", consumoEnergiaEletrica);

  void ajusteTemperatura(double setpoint) {
    print("$nomeProduto: Temperatura ajustada para $setpoint graus.");
  }
}

void main() {
  // Exemplo de uso
  Fritadeira minhaFritadeira = Fritadeira("Fritadeira", 1, 250.50, 1000.0);
  Televisao minhaTelevisao = Televisao("Televisão LG", 2, 600.50, 150.0);
  ArCondicionado meuArCondicionado = ArCondicionado("Ar Condicionado", 1, 1500.00, 1400.0);

  minhaFritadeira.ligar();
  minhaFritadeira.ajusteTemperatura(180);
  minhaFritadeira.desligar();

  minhaTelevisao.ligar();
  minhaTelevisao.ajusteVolume(20);
  minhaTelevisao.desligar();

  meuArCondicionado.ligar();
  meuArCondicionado.ajusteTemperatura(22);
  meuArCondicionado.desligar();
}
