import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarefas/utils/system.util.dart';

consoletesteUsuario() async {
  getData();
  setIdUsuario(3);
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
