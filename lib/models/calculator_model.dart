class CalculatorModel {
  String _inputExpression = '';
  double _num1 = 0;
  double _num2 = 0;
  String _operand = '';
  String _result = '';


  String get display {
    if (_result.isNotEmpty) {
      return _result;
    } else {
      return _inputExpression.isEmpty ? '0' : _inputExpression;
    }
  }

  void inputNumber(String number) {
    _inputExpression += number;
  }

  void inputOperator(String operator) {
    if (_inputExpression.isNotEmpty) {
      _operand = operator;
      _num1 = double.parse(_inputExpression);
      _inputExpression = '';
    }
  }

  void inputDecimal() {
    if (!_inputExpression.contains('.')) {
      _inputExpression += '.';
    }
  }

  void calculateResult() {
    if (_inputExpression.isNotEmpty && _operand.isNotEmpty) {
      _num2 = double.parse(_inputExpression);
      switch (_operand) {
        case '+':
          _result = (_num1 + _num2).toString();
          break;
        case '-':
          _result = (_num1 - _num2).toString();
          break;
        case 'x':
          _result = (_num1 * _num2).toString();
          break;
        case '/':
          if (_num2 != 0) {
            _result = (_num1 / _num2).toString();
          } else {
            _result = 'Error';
          }
          break;
      }
      _inputExpression = '';
      _operand = '';
    }
  }


  void clear() {
    _inputExpression = '';
    _num1 = 0;
    _num2 = 0;
    _operand = '';
  }
}
