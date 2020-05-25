import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarefas/db/usuario.db.dart';

consoleteste() {
  print('Inicio');
  UsuarioDb usuario = new UsuarioDb();
  usuario.getDados();
  print('Fim');
}

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    consoleteste();
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Center(
              child: Text('Olá'),
            ),
          ),
        ],
      ),
    );
  }
}
