class PrefsModel {
  String padraoCor;
  String salvarUsuario;

  PrefsModel({this.padraoCor, this.salvarUsuario});

  PrefsModel.fromJson(Map<String, dynamic> json) {
    padraoCor = json['padraoCor'];
    salvarUsuario = json['salvarUsuario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['padraoCor'] = this.padraoCor;
    data['salvarUsuario'] = this.salvarUsuario;
    return data;
  }
}
