import 'package:flutter/material.dart';
import 'package:tarefas/pages/usuario/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lembretes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //fontFamily: 'Renogare',
      ),
      home: Login(),
    );
  }
}
