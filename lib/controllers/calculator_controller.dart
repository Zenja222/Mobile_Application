import 'package:calculator/models/calculator_model.dart';

class CalculatorController {
  final CalculatorModel model = CalculatorModel();

  String get display => model.display;

  void inputNumber(String number) {
    model.inputNumber(number);
  }

  void inputOperator(String operator) {
    if (_isEqualsOperator(operator)) {
      calculateResult();
    } else {
      model.inputOperator(operator);
    }
  }

  bool _isEqualsOperator(String operator) {
    return operator == '=';
  }


  void inputDecimal() {
    model.inputDecimal();
  }

  void calculateResult() {
    model.calculateResult();
  }

  void clear() {
    model.clear();
  }
}
