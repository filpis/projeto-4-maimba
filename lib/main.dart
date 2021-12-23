import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  void tocarSom(int som) {
    final player = AudioCache();
    player.play('nota$som.wav');
  }

  Expanded criarBotao({int numeroNota, Color cor}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: cor,
        ),
        onPressed: () {
          tocarSom(numeroNota);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(numeroNota: 1, cor: Colors.teal),
              criarBotao(numeroNota: 2, cor: Colors.yellow),
              criarBotao(numeroNota: 3, cor: Colors.red),
              criarBotao(numeroNota: 4, cor: Colors.blue),
              criarBotao(numeroNota: 5, cor: Colors.brown),
              criarBotao(numeroNota: 6, cor: Colors.orange),
              criarBotao(numeroNota: 7, cor: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
