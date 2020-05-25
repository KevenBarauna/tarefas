import 'package:flutter/material.dart';
import 'package:tarefas/utils/cores.util.dart';
import 'package:tarefas/utils/system.util.dart';

//INPUT - TEXTO

decoracaoInput(String texto) {
  return InputDecoration(
    labelText: texto,
    labelStyle: TextStyle(
      color: cores[5],
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
  );
}

decoracaoInputText() {
  return TextStyle(
    fontSize: 15,
    color: cores[1],
  );
}

//BOTÃO

const double alturaBotao = 35.0;

botaoMargin(dynamic context) {
  var larguraDispositivo = getLargura(context) / 3;
  return EdgeInsets.only(right: larguraDispositivo, left: larguraDispositivo);
}

botaoDecoracao() {
  return BoxDecoration(
    color: cores[2],
    borderRadius: BorderRadius.all(
      Radius.circular(25),
    ),
  );
}

botaoTextStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 18,
  );
}
