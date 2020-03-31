import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
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
  int ldiceno=1;
  int rdiceno=2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed:(){
                  setState(() {
                    ldiceno=Random().nextInt(6)+1;

                  });

                },
                child: Image.asset('images/dice$ldiceno.png'),
              )),
          Expanded(
              child: FlatButton(
                onPressed:(){
                  setState(() {
                    rdiceno=Random().nextInt(6)+1;

                  });

                },
                child: Image.asset('images/dice$rdiceno.png'),
              )),
        ],
      ),
    );
  }
}


