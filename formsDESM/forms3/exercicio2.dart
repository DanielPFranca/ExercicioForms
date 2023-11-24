// Classe mãe Automovel
class Automovel {
  String cor;
  String modelo;
  String tipoComb;
  int qtdRodas;
  Automovel(this.cor, this.modelo, this.tipoComb, this.qtdRodas);

  void ligar() {
    print("O carro está ligado.");
  }

  void desligar() {
    print("O carro está desligado.");
  }

  void abrirVidro() {
    print("O vidro está aberto.");
  }

  void descerVidro() {
    print("O vidro está descido.");
  }
}

class Carro extends Automovel {
  Carro(String cor, String modelo, String tipoCombustivel, int quantidadeRodas):super(cor, modelo, tipoCombustivel, quantidadeRodas);
}

// Classe filha Moto
class Moto extends Automovel {
  // Construtor que chama o construtor da classe mãe
  Moto(String cor, String modelo, String tipoCombustivel, int quantidadeRodas):super(cor, modelo, tipoCombustivel, quantidadeRodas);
}

// Classe filha Caminhão
class Caminhao extends Automovel {
  Caminhao(String cor, String modelo, String tipoCombustivel, int quantidadeRodas):super(cor, modelo, tipoCombustivel, quantidadeRodas);
}

void main() {

  Carro meuCarro = Carro("Vermelho", "Sedan", "Gasolina", 4);
  meuCarro.ligar();

  Moto minhaMoto = Moto("Azul", "Esportiva", "Gasolina", 2);
  minhaMoto.descerVidro();

  Caminhao meuCaminhao = Caminhao("Branco", "Carga Pesada", "Diesel", 6);
  meuCaminhao.ligar();

}
