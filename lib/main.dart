import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const home1());
}

// ignore: camel_case_types
class home1 extends StatelessWidget {
  const home1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Dicee'),
          ),
           body: const DicePage(),
           backgroundColor: Colors.black12,
        )
       ));
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void dicee() {
    setState(
      () {
        rightDiceNumber = Random().nextInt(6) + 1;
        leftDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                dicee();
              },
              child: Image.asset('../images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                dicee();
              },
              child: Image.asset('../images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}



