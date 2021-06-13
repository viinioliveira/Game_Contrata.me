import 'main.dart';
import 'tela_pergunta.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class NaoPassou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8c54fb),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                width: 200,
                child: Image.asset('imagens/errou.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                child: Text(
                  "Infelizmente seu desempenho foi de $percentTela%, isso e abaixo do esperado, continue estudando e se preparando para futuros processos.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'leaguespartan',
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
