import 'package:shared_preferences/shared_preferences.dart';
import 'package:tarefas/utils/console.util.dart';

const String usuarioJson = 'dadosUsuario';
const String aniversaioJson = 'dadosAniversario';

setNovoId(List<dynamic> lista) {
  try {
    if (lista.length == 0) {
      return 1;
    }
    return lista.last.id + 1;
  } catch (erro) {
    exibirErro(erro, 'ERRO AO CRIAR ID');
  }
}

getJosn(String json) async {
  try {
    var prefs = await SharedPreferences.getInstance();
    var dados = prefs.getString(json);
    return dados;
  } catch (erro) {
    exibirErro(erro, 'GET JOSN');
  }
}
