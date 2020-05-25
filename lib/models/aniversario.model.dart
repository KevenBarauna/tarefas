class AniversarioModel {
  int id;
  String nome;
  String data;
  String descricao;
  int idUsuario;

  AniversarioModel(
      {this.id, this.nome, this.data, this.descricao, this.idUsuario});

  AniversarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    data = json['data'];
    descricao = json['descricao'];
    idUsuario = json['id_usuario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['data'] = this.data;
    data['descricao'] = this.descricao;
    data['id_usuario'] = this.idUsuario;
    return data;
  }
}
