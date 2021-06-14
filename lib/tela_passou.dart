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

class Passou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8c54fb),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                width: 200,
                child: Image.asset('imagens/check.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                width: MediaQuery.of(context).size.width * 6,
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
                    "Parabéns seu desempenho foi $percentTela%, você está preparado para o mercado de trabalho!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'leaguespartan',
                        fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
