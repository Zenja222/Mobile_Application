import 'dart:async';

class CalculatorController {
  String _display = '0';
  double _num1 = 0;
  double _num2 = 0;
  String _operand = '';
  bool _isOperandPressed = false;
  bool _shouldResetDisplay = false;
  bool _isCalculating = false;

  final _displayController = StreamController<String>.broadcast();
  Stream<String> get displayStream => _displayController.stream;
  String get display => _display;

  void _updateDisplay() {
    if (!_isCalculating) {
      _displayController.add(_display);
    }
  }

  void inputNumber(String number) {
    if (_display == '0' || _isOperandPressed || _shouldResetDisplay) {
      _display = number;
      _isOperandPressed = false;
      _shouldResetDisplay = false;
    } else {
      _display += number;
    }
    _updateDisplay();
  }

  void inputOperator(String operator) {
    if (_operand.isEmpty) {
      _num1 = double.parse(_display);
      _operand = operator;
      _shouldResetDisplay = true;
    } else if (!_isOperandPressed) {
      _num2 = double.parse(_display);
      calculateResult();
      _operand = operator;
      _isOperandPressed = true;
    } else {
      _operand = operator;
    }
  }

  void inputEquals() {
    if (_operand.isNotEmpty && !_isOperandPressed) {
      _num2 = double.parse(_display); // Assign _num2 before calculation
      calculateResult();
      _operand = '';
      _isOperandPressed = false;
      _shouldResetDisplay = true; // Set to true to reset display after calculation
    }
  }

  void inputDecimal() {
    if (!_display.contains('.')) {
      _display += '.';
      _updateDisplay();
    }
  }

  void clear() {
    _display = '0';
    _num1 = 0;
    _num2 = 0;
    _operand = '';
    _isOperandPressed = false;
    _shouldResetDisplay = false;
    _isCalculating = false;
    _updateDisplay();
  }

  void converterKmMi() {
    _num1 = double.parse(_display);
    _display = (_num1 * 0.6214).toString();
    _updateDisplay();
  }

  void calculateResult() {
    switch (_operand) {
      case '+':
        _display = (_num1 + _num2).toString();
        break;
      case '-':
        _display = (_num1 - _num2).toString();
        break;
      case 'x':
        _display = (_num1 * _num2).toString();
        break;
      case '/':
        if (_num2 != 0) {
          _display = (_num1 / _num2).toString();
        } else {
          _display = 'Error';
        }
        break;
    }
    _updateDisplay();
  }

  void dispose() {
    _displayController.close();
  }
}
