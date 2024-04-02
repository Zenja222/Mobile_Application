import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.grey.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(text: '7'),
                    CalculatorButton(text: '8'),
                    CalculatorButton(text: '9'),
                    CalculatorButton(text: '/'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(text: '4'),
                    CalculatorButton(text: '5'),
                    CalculatorButton(text: '6'),
                    CalculatorButton(text: 'x'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(text: '1'),
                    CalculatorButton(text: '2'),
                    CalculatorButton(text: '3'),
                    CalculatorButton(text: '-'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(text: '0'),
                    CalculatorButton(text: '.'),
                    CalculatorButton(text: '='),
                    CalculatorButton(text: '+'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;

  CalculatorButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () {
          // LOGIC
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          padding: MaterialStateProperty.all(EdgeInsets.all(16.0)),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
    );
  }
}