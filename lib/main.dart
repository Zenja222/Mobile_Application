import 'package:calculator/screens/converter_screen.dart';
import 'package:flutter/material.dart';
import 'package:calculator/screens/calculator_screen.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      routes: {
        '/': (context) => CalculatorScreen(),
        '/converter': (context) => ConverterScreen()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}