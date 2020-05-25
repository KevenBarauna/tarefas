class UsuarioModel {
  int id;
  String nome;
  String email;
  String senha;

  UsuarioModel({this.id, this.nome, this.email, this.senha});

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['senha'] = this.senha;
    return data;
  }
}
