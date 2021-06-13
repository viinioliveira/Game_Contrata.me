import 'tela_tuto.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: PaginaNome(),
    );
  }
}

TextEditingController nomeController = TextEditingController();
String nome = '';

class PaginaNome extends StatelessWidget {
  PaginaNome();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8c54fb),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.transparent,
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 20,
                      blurRadius: 15,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                  color: Color(0xff8c54fb),
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(60),
                    bottomRight: const Radius.circular(60),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Qual seu ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'leaguespartan',
                        fontSize: 33),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'nome',
                        style: TextStyle(
                            fontFamily: 'leaguespartan', color: Colors.amber),
                      ),
                      TextSpan(
                        text: '?',
                        style: TextStyle(
                            fontFamily: 'leaguespartan', color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.0, -0.2),
              child: Container(
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(25.0),
                  ),
                ),
                child: TextField(
                  controller: nomeController,
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                    hintText: 'nome',
                    hintStyle:
                        TextStyle(fontSize: 16, fontFamily: 'leaguespartan'),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.0, 0.8),
              child: Container(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.deepPurple)),
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Continuar",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'leaguespartan',
                    ),
                  ),
                  onPressed: () {
                    nome = nomeController.text;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (nome) => Tuto()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
