import 'dart:io';

class Usuario {
  String login;
  String senha;

  Usuario(this.login, this.senha);

  bool autenticar(String loginDig, String senhaDig) {
    return login == loginDig && senha == senhaDig;
  }
}

void main() {
  Usuario usuarioExemplo = Usuario("daniel", "123");

  print("Digite seu login:");
  String loginDig = stdin.readLineSync()!;
  print("Digite sua senha:");
  String senhaDig = stdin.readLineSync()!;

  if (usuarioExemplo.autenticar(loginDig, senhaDig)) {
    print("Login feito");
  } else {
    print("Login falhou!");
  }
}
