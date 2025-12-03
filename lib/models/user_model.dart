class UserModel {
  final String email;
  final String nome;
  final String senha;

  UserModel({
    required this.email,
    required this.nome,
    required this.senha,
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'name': nome,
        'password': senha,
      };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json['email'],
        nome: json['name'],
        senha: json['password'],
      );
}
