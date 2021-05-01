import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiceAppState();
  }
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    int x = Random().nextInt(6) + 1;

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xFF272643),

        appBar: AppBar(
          title: Text(
            "Dice Game",
            style: TextStyle(color: Colors.black),
          ),

          backgroundColor: Color(0xFFdcdcdc),
        ),

        body: GestureDetector(
          onTap: () {
            setState(() {
              x = Random().nextInt(6) + 1;
            });
          },
          child: Container(
            padding: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/$x.png"),
            )),
          ),
        ),
      ),
    );
  }
}
