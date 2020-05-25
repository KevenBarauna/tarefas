import 'package:flutter/cupertino.dart';

int idUsuario;

setIdUsuario(int id) {
  idUsuario = id;
}

getIdUsuario() {
  return idUsuario;
}

getData() {
  DateTime data = new DateTime.now();
  String dataFormatada =
      "${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year.toString()}";
  return dataFormatada;
}

getLargura(dynamic context) {
  return MediaQuery.of(context).size.width;
}
