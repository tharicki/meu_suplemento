import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Bem vindo ao aplicativo, seu gordo do caralho!",
          style: TextStyle(fontSize: 32),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
