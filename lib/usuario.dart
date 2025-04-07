class Usuario {
  late String nome;
  late String email;

  Usuario({required this.nome, required this.email});

  get getNome => nome;
  get getEmail => email;

  set setNome(String nome) => this.nome = nome;
  set setEmail(String email) => this.email = email;
}