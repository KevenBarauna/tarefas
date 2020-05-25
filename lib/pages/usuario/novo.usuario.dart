import 'package:flutter/material.dart';
import 'package:tarefas/utils/cores.util.dart';
import 'package:tarefas/widget/decoration.dart';

var nome = TextEditingController();
var senha = TextEditingController();
var senhaConf = TextEditingController();
var email = TextEditingController();
String mensagem = '';

class NovoUsuario extends StatefulWidget {
  @override
  _NovoUsuarioState createState() => _NovoUsuarioState();
}

class _NovoUsuarioState extends State<NovoUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: ListTile(
              title: Text(
                'Novo usuário',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: cores[1],
                ),
              ),
              trailing: Image.asset('assets/Logo.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Center(
              child: Text(
                'Dados pessoais',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: cores[2],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: TextFormField(
              controller: nome,
              keyboardType: TextInputType.text,
              decoration: decoracaoInput('Nome'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: TextFormField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: decoracaoInput('E-mail'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: TextFormField(
              obscureText: true,
              controller: senha,
              keyboardType: TextInputType.number,
              decoration: decoracaoInput('Senha'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 50),
            child: TextFormField(
              obscureText: true,
              controller: senhaConf,
              keyboardType: TextInputType.number,
              decoration: decoracaoInput('Confirme sua senha'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 50),
            child: Center(
              child: Text(
                mensagem,
                style: TextStyle(
                  color: cores[4],
                ),
              ),
            ),
          ),
          Container(
            height: alturaBotao,
            margin: botaoMargin(context),
            decoration: botaoDecoracao(),
            child: SizedBox(
              child: FlatButton(
                onPressed: () {
                  //fazerLogin();
                },
                child: Text(
                  'Salvar',
                  style: botaoTextStyle(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
