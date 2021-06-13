import 'tela_nome.dart';

class Dados {
  //DadosTuto(this.tutorial);

  List<String> tutorial = [
    "Boas vindas $nome, me chamo Milena e serei a sua recrutadora virtual!",
    "Nossa entrevista será bem simples, apenas toque na resposta em que você acredita estar correta",
    "Abaixo você verá uma barra de progresso que indicará seu desempenho ao longo do processo",
    "Vou realizar algumas perguntas e avaliar como voce irá se sair, vamos lá?",
    "..."
  ];

  List<String> peguntas = [
    "Como você reage às críticas?",
    "Você sabe trabalhar em equipe?",
    "Se a empresa lhe passar um problema para resolver, e você não souber resolver?",
    "",
  ];

  List<String> respostas = [
    //respostas pergunta 1
    "Aceito bem as críticas", //[0] certo
    "Não gosto de ser criticado", //[1] errado
    "Não faz diferença para mim", //[2] errado
    //respostas pergunta 2
    "Acho desnecessário ", //[3] errado
    "Sim, me dou bem trabalhando em equipe", //[4] certo
    "Não. Gosto de trabalhar sozinho.", //[5] errado
    //resposta pergunta 3
    "Tento resolver o problema", //[6] certo
    "Deixo o problema de lado", //[7] errado
    "Passo o problema para outra pessoa resolver",
    "",
    "",
    "" //[8], errado
  ];
}
