import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarefas/db/usuario.db.dart';
import 'package:tarefas/pages/testes.dart';
import 'package:tarefas/utils/system.util.dart';

class UsuarioController extends UsuarioDb {
  verificaLogin(String nome, String senha, dynamic context) async {
    var mensagem = 'nenhum usuário';
    var usuarios = await getDados();
    //ACHAR USUÁRIO
    usuarios.forEach((value) {
      if (value.nome == nome && value.senha == senha) {
        setIdUsuario(value.id);
        mensagem = null;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PaginaTeste()));
      } else if (value.nome == nome) {
        mensagem = 'Senha incorreta';
      } else {
        mensagem = 'Usuário não encontrado';
      }
    });
    print(mensagem);
    return mensagem;
  }
}
