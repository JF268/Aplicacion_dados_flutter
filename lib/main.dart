import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int DadoIzquierdo = Random().nextInt(6) + 1;
  int DadoDerecho = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text("¡Tira los dados!"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          elevation: 10.0,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(child: TextButton(onPressed: () {
                
                DadoIzquierdo =Random().nextInt(6) + 1;  // de 0 - 5
                setState(() {    
                });
                },
                child: Image.asset("assets/images/dice$DadoIzquierdo.png",),),
              ),
              Expanded(child: TextButton(onPressed: () {
                DadoDerecho =Random().nextInt(6)+1;
                setState(() {
                  
                });
                },
                child: Image.asset("assets/images/dice$DadoDerecho.png",),),
              ),
              //Expanded(child: Image.asset("assets/images/dice4.png")),
            ],
          ),
        ),
    );
  }
}
















