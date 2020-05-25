import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
