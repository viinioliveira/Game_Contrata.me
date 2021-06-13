import 'tela_nome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8c54fb),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Contrata',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'leaguespartan',
                        fontSize: 40),
                    children: const <TextSpan>[
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                            fontFamily: 'leaguespartan', color: Colors.amber),
                      ),
                      TextSpan(text: 'me'),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .6,
                child: Image.asset(
                  'imagens/feliz.png',
                  width: 380,
                  height: 380,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: SizedBox(
                  width: 300,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.deepPurple)),
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "play".toUpperCase(),
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'leaguespartan',
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaginaNome(),
                        ),
                      );
                    },
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
