import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarefas/utils/cores.util.dart';
import 'package:tarefas/widget/decoration.dart';

var nome = TextEditingController();
var senha = TextEditingController();
var mensagem = 'usuário não encotrado';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cores[0],
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 50),
            child: SizedBox(
              height: 200,
              child: Image.asset('assets/Logo.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25, left: 25, bottom: 15),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: decoracaoInput('Nome'),
              style: decoracaoInputText(),
              controller: nome,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25, left: 25),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: decoracaoInput('Senha'),
              style: decoracaoInputText(),
              controller: nome,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Esqueci minha senha',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: cores[1],
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 80),
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
                onPressed: () {},
                child: Text(
                  'Entrar',
                  style: botaoTextStyle(),
                ),
              ),
            ),
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(top: 30, right: 0, left: 0, bottom: 0),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Ainda não tem conta?',
                style: TextStyle(
                  color: cores[1],
                ),
              ),
            ),
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 10),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Criar conta',
                style: TextStyle(
                  color: cores[2],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
