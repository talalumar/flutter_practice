import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: Text('Dicee'), backgroundColor: Colors.red),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 4;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              changeDiceFace();
            },
          ),
        ),
        Expanded(child: TextButton(
          onPressed: () {
            changeDiceFace();
          },
          child: Image.asset('images/dice$rightDiceNumber.png'),
        ),
        ),
      ]
      ),
    );
  }
}

