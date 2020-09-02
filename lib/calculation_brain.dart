import 'dart:math';


class CalculateBrain{
  CalculateBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBmi(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

    String getResult(){
    if (_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18.5)
      {
        return 'Normal';
      }
    else{
      return'Underweight';
    }
    }
  String getInterpretation(){
    if (_bmi>=25){
      return 'You have higher than normal body weight .Try to exercise more.';
    }
    else if(_bmi>18.5)
    {
      return 'you have normal body weight good job.';
    }
    else{
      return'you have lower than normal body weight you can eat bit more.';
    }
  }
}