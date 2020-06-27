import 'dart:io';

import 'package:calculator/processor.dart';
import 'package:flutter/material.dart';
import 'package:calculator/display.dart';
import 'package:calculator/key-controller.dart';
import 'package:calculator/key-pad.dart';

class Calculator extends StatefulWidget{
  Calculator({ Key key}) : super (key:key);
  @override
  _CalculatorState createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator>{
  String _output;

  @override
  void intance(){
    KeyController.listen((event)=> Processor.process(event));
    Processor.listen((data) => setState((){_output =data;}));
    Processor.refresh();
    super.initState();
  }

  @override
  void dispose(){
    KeyController.dispose();
    Processor.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    double buttonsize = screen.width / 4;
    double displayHeight = screen.height - (buttonsize * 5) - (buttonsize);
    return Scaffold(
      backgroundColor: Color.fromARGB(196, 32, 64, 96),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Display(value: _output,height:displayHeight),
          KeyPad()
        ],
      ),
    );
  }
  
}