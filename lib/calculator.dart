import 'dart:math';

class Calculator{
  late double _bmi;

  Calculator(int weight, int height){
    _bmi = weight/pow(height/100,2);
  }

  String getResultValue(){
    return _bmi.toStringAsFixed(1);
  }

  String getResultText(){
    if(_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription(){
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }


}