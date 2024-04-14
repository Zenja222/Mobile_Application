import 'package:flutter/material.dart';
import 'package:calculator/screens/calculator_screen.dart';
import 'package:calculator/controllers/calculator_controller.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CalculatorController controller = CalculatorController();


    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(controller),
    );
  }
}
