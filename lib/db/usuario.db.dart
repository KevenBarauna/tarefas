import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarefas/models/usuario.model.dart';
import 'package:tarefas/utils/console.util.dart';
import 'package:tarefas/utils/db.util.dart';

List<UsuarioModel> usuarios = [];

class UsuarioDb {
  //..
  novoUsuario(String nomeInfo, String senhaInfo, String emailInfo) async {
    try {
      await getDados();
      int idInfo = setNovoId(usuarios);
      usuarios.add(UsuarioModel(
          id: idInfo, nome: nomeInfo, senha: senhaInfo, email: emailInfo));
      salvar();
    } catch (erro) {
      exibirErro(erro, 'ERRO AO ADICIONAR USUÁRIO');
    }
  }

  //..
  getDados() async {
    try {
      var dados = await getJosn(usuarioJson);

      if (dados != null) {
        Iterable decoded = jsonDecode(dados);
        usuarios = decoded.map((x) => UsuarioModel.fromJson(x)).toList();
      }
      exibirListaUsuario(usuarios, 'USUÁRIOS');
    } catch (erro) {
      exibirErro(erro, 'ERRO AO LISTAR USUÁRIOS');
    }
    return usuarios;
  }

  //--
  salvar() async {
    try {
      var prefs = await SharedPreferences.getInstance();
      await prefs.setString(usuarioJson, jsonEncode(usuarios));
      exibirSucesso('ALTERAÇÕES SALVAS');
    } catch (erro) {
      exibirErro(erro, 'ERRO AO ALTERAR USUÁRIOS');
    }
  }

  //--remover
  apagarTodos() async {
    try {
      var prefs = await SharedPreferences.getInstance();
      prefs.remove(usuarioJson);
      usuarios.removeWhere((item) => item.id != null);
      salvar();
      exibirSucesso('TODOS OS USUÁRIOS FORAM REMOVIDOS');
    } catch (erro) {
      exibirErro(erro, 'ERRO AO APAGAR TODOS OS USUÁRIOS');
    }
  }

  apagarEspecifico(int id) async {
    await getDados();
    try {
      usuarios.removeWhere((item) => item.id == id);
      await salvar();
      await getDados();
      exibirSucesso('USUÁRIO DE ID: $id REMOVIDO COM SUCESSO');
    } catch (erro) {
      exibirErro(erro, 'ERRO AO APAGAR USUÁRIO PELO ID $id');
    }
  }
}
