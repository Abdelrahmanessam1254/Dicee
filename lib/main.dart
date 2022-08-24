// ignore_for_file: unnecessary_statements, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RigthDiceNumber = 1;

  void pressbutton() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RigthDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              pressbutton();
            },
            child: Image.asset('images/dice$LeftDiceNumber.png'),
          )),
          Expanded(
            child: FlatButton(
              onPressed: () {
                pressbutton();
              },
              child: Image.asset('images/dice$RigthDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
