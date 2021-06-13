import 'Dados.dart';
import 'tela_pergunta.dart';
import 'package:flutter/material.dart';

class Tuto extends StatefulWidget {
  @override
  _TutoState createState() => _TutoState();
}

Dados tuto = new Dados();

String frase = tuto.tutorial[0];

bool btn = false;
int control = 0;
String textobtn = 'Próximo';

initState() {}

class _TutoState extends State<Tuto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8c54fb),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0.0, -0.8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Como funciona",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'leaguespartan',
                        fontSize: 32),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1.0, 0.1),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Image.asset('imagens/em_pe_zoom.png'),
                  decoration: BoxDecoration(),
                ),
              ),
              Align(
                alignment: Alignment(0.8, 0.2),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.height * .2,
                  decoration: BoxDecoration(
                    color: Colors.purple[300],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 15,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        frase,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'leaguespartan',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0, 0.8),
                child: Container(
                  child: Visibility(
                    visible: true,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.deepPurple)),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        '$textobtn',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'leaguespartan',
                        ),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            control++;
                            frase = tuto.tutorial[control];
                            if (control == 3) {
                              textobtn = 'Vamos lá';
                            }
                            if (control == 4) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TelaPergunta(),
                                ),
                              );
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
