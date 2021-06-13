import 'tela_nao_passou.dart';
import 'tela_nome.dart';
import 'tela_passou.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'Dados.dart';

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

Dados dados = new Dados();
double percentual = 0.5;

double percentual2 = 50.0;
String percentTela = "50.0";

int tempo = 2000;
String imagem = "imagens/entrevistando.png";

//indices respostas

int indiceresp01 = 0;
int indiceresp02 = 1;
int indiceresp03 = 2;

//respostas
String resposta = '';
String resposta01 = dados.respostas[indiceresp01];
String resposta02 = dados.respostas[indiceresp02];
String resposta03 = dados.respostas[indiceresp03];

//pergunta
int indicepergunta = 0;

mudaResp() {
  indicepergunta = indicepergunta + 1;

  indiceresp01 = indiceresp01 + 3;
  indiceresp02 = indiceresp02 + 3;
  indiceresp03 = indiceresp03 + 3;
  resposta01 = dados.respostas[indiceresp01];
  resposta02 = dados.respostas[indiceresp02];
  resposta03 = dados.respostas[indiceresp03];
}

class TelaPergunta extends StatefulWidget {
  @override
  _TelaPerguntaState createState() => _TelaPerguntaState();
}

//pergunta
class _TelaPerguntaState extends State<TelaPergunta> {
  validaResultado() {
    if (indicepergunta == 3 && percentual >= 0.6) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (percentTela) => Passou(),
        ),
      );
    } else if (indicepergunta == 3 && percentual < 0.6) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (percentTela) => NaoPassou(),
        ),
      );
    }
  }

  validaresp() {
    if (resposta == dados.respostas[0] ||
        resposta == dados.respostas[4] ||
        resposta == dados.respostas[6]) {
      percentual = percentual + 0.1;
    } else
      percentual = percentual - 0.1;

    setState(() {
      percentual = percentual;
      dados.peguntas[indicepergunta];
      percentual2 = percentual * 100;
      percentTela = percentual2.toStringAsFixed(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8c54fb),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height * .1,
                margin: new EdgeInsets.symmetric(vertical: 35.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(25.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    dados.peguntas[indicepergunta],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontFamily: "leaguespartan"),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .6,
                child: Image.asset(
                  "$imagem",
                ),
              ),

              //respostas
              Wrap(
                direction: Axis.vertical,
                spacing: 15,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width * .8,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        resposta01,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      color: Colors.white,
                      elevation: 5.0,
                      splashColor: Colors.purple,
                      onPressed: () {
                        resposta = dados.respostas[indiceresp01];
                        mudaResp();
                        validaresp();
                        validaResultado();
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.width * .1,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        resposta02,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      color: Colors.white,
                      elevation: 5.0,
                      splashColor: Colors.purple,
                      onPressed: () {
                        resposta = dados.respostas[indiceresp02];
                        mudaResp();
                        validaresp();
                        validaResultado();
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.width * .1,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        resposta03,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      color: Colors.white,
                      elevation: 5.0,
                      splashColor: Colors.purple,
                      onPressed: () {
                        resposta = dados.respostas[indiceresp03];
                        mudaResp();
                        validaresp();
                        validaResultado();
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.width * .8,
                alignment: Alignment(0.0, 0.8),
                child: LinearPercentIndicator(
                  //leaner progress bar
                  animation: true,
                  animationDuration: tempo,
                  lineHeight: 30.0,
                  percent: percentual,
                  center: Text(
                    '$percentTela%',
                    //percent.toString() + "%",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green[400],
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
