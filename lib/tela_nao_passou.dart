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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                width: 250,
                child: Image.asset('imagens/errou.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .3,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 20,
                      blurRadius: 15,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                  color: Color(0xff8c54fb),
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Infelizmente seu desempenho \n foi de $percentTela%, isso e abaixo do esperado, continue estudando \n e se preparando para futuros processos.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'leaguespartan',
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
