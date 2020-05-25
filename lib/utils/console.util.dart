exibirErro(erro, String titulo) {
  print('[ $titulo ]');
  print('✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖');
  print('ERRO: ${erro.toString()}');
  print('✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖ ✖');
  print('\n');
}

exibirSucesso(String mensagem) {
  print('☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑');
  print('[ $mensagem ]');
  print('☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑ ☑');
  print('\n');
}

exibirListaUsuario(List<dynamic> lista, String titulo) {
  print('[ $titulo ]');
  lista.forEach((value) {
    print(
        'USUÁRIO ➠  ID: [${value.id}]  NOME: [${value.nome}] SENHA: [${value.senha}]  EMAIL: [${value.email}]');
  });
  print('\n');
}

exibirListaAniversaro(List<dynamic> lista, String titulo) {
  print('[ $titulo ]');
  lista.forEach((value) {
    print(
        'ANIVERSÁRIO ➠  ID: [${value.id}]  NOME: [${value.nome}] DATA: [${value.data}]  DESCRIÇÃO: [${value.descricao}] ID USUÁRIO: [${value.idUsuario}]');
  });
  print('\n');
}
