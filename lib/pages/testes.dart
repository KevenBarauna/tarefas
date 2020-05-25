import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarefas/db/usuario.db.dart';

consoletesteUsuario() async {
  UsuarioDb usuario = new UsuarioDb();

  //await usuario.apagarEspecifico(2);
  //await usuario.apagarEspecifico(4);
  await usuario.getDados();
  await usuario.apagarEspecifico(1);

  print('FIM TESTE');
}

class PaginaTeste extends StatefulWidget {
  @override
  _PaginaTesteState createState() => _PaginaTesteState();
}

class _PaginaTesteState extends State<PaginaTeste> {
  @override
  Widget build(BuildContext context) {
    consoletesteUsuario();
    return Scaffold(
      body: Center(
        child: Text('Página de teste </>'),
      ),
    );
  }
}
