
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calculator/Calculator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Calculator(),
    );
  }
  
}