import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../controllers/calculator_controller.dart';
import '../widgets/calculator_button.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({super.key});
  _ConverterScreenState createState() => _ConverterScreenState();
}
  class _ConverterScreenState extends State<ConverterScreen> {
    CalculatorController controller = CalculatorController();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              child: StreamBuilder<String>(
                stream: controller.displayStream,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data ?? '0',
                    style: TextStyle(fontSize: 40.0),
                  );
                },
              ),
            ),
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
                        CalculatorButton(
                          text: '7',
                          onPressed: () => controller.inputNumber('7'),
                        ),
                        CalculatorButton(
                          text: '8',
                          onPressed: () => controller.inputNumber('8'),
                        ),
                        CalculatorButton(
                          text: '9',
                          onPressed: () => controller.inputNumber('9'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CalculatorButton(
                          text: '4',
                          onPressed: () => controller.inputNumber('4'),
                        ),
                        CalculatorButton(
                          text: '5',
                          onPressed: () => controller.inputNumber('5'),
                        ),
                        CalculatorButton(
                          text: '6',
                          onPressed: () => controller.inputNumber('6'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CalculatorButton(
                          text: '1',
                          onPressed: () => controller.inputNumber('1'),
                        ),
                        CalculatorButton(
                          text: '2',
                          onPressed: () => controller.inputNumber('2'),
                        ),
                        CalculatorButton(
                          text: '3',
                          onPressed: () => controller.inputNumber('3'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CalculatorButton(
                          text: '0',
                          onPressed: () => controller.inputNumber('0'),
                        ),
                        CalculatorButton(
                          text: '.',
                          onPressed: () => controller.inputDecimal(),
                        ),
                        CalculatorButton(
                          text: 'C',
                          onPressed: () => controller.clear(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CalculatorButton(
                          text: '=',
                          onPressed: () => controller.inputEquals(),
                        ),
                        CalculatorButton(
                          text: 'km/mi',
                          onPressed: () => controller.converterKmMi(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }