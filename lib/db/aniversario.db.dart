import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarefas/models/aniversario.model.dart';
import 'package:tarefas/utils/console.util.dart';
import 'package:tarefas/utils/db.util.dart';
import 'package:tarefas/utils/system.util.dart';

List<AniversarioModel> aniversarios = [];

class AniversarioDb {
  //..
  novoAniversario(
      String nomeInfo, String dataInfo, String descricaoInfo) async {
    try {
      await getDados();
      int idAniversario = setNovoId(aniversarios);
      int idUsuarioInfo = getIdUsuario();
      aniversarios.add(AniversarioModel(
          id: idAniversario,
          nome: nomeInfo,
          data: dataInfo,
          descricao: descricaoInfo,
          idUsuario: idUsuarioInfo));
      salvar();
    } catch (erro) {
      exibirErro(erro, 'ERRO AO ADICIONAR ANINERSÁRIO');
    }
  }

  //..
  getDados() async {
    try {
      var dados = await getJosn(aniversaioJson);

      if (dados != null) {
        Iterable decoded = jsonDecode(dados);
        aniversarios =
            decoded.map((x) => AniversarioModel.fromJson(x)).toList();
      }
      exibirListaAniversaro(aniversarios, 'ANIVERSÁRIOS');
    } catch (erro) {
      exibirErro(erro, 'ERRO AO LISTAR ANIVERSÁRIOS');
    }
    return aniversarios;
  }

  //--
  salvar() async {
    try {
      var prefs = await SharedPreferences.getInstance();
      await prefs.setString(aniversaioJson, jsonEncode(aniversarios));
      exibirSucesso('ALTERAÇÕES SALVAS');
    } catch (erro) {
      exibirErro(erro, 'ERRO AO ALTERAR ANIVERSÁRIOS');
    }
  }

  //--remover
  apagarTodos() async {
    try {
      var prefs = await SharedPreferences.getInstance();
      prefs.remove(aniversaioJson);
      aniversarios.removeWhere((item) => item.id != null);
      exibirSucesso('TODOS OS ANIVERSÁRIOS FORAM REMOVIDOS');
    } catch (erro) {
      exibirErro(erro, 'ERRO AO APAGAR TODOS OS ANIVERSÁRIOS');
    }
  }

  apagarEspecifico(int id) async {
    await getDados();
    try {
      aniversarios.removeWhere((item) => item.id == id);
      await salvar();
      await getDados();
      exibirSucesso('ANIVERSÁRIO DE ID: $id REMOVIDO COM SUCESSO');
    } catch (erro) {
      exibirErro(erro, 'ERRO AO APAGAR ANIVERSÁRIO PELO ID $id');
    }
  }
}
