import 'package:flutter/material.dart';
import '../constant.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style: KResultTitleStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colaru: KActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Text(resultText.toUpperCase(),style: KResultStyle,),
                Text(bmiResult.toUpperCase(),style: KBmiStyle,),
                Text(interpretation.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: KBmiBodyStyle,),
              ],
            ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',
          onTap: (){
            Navigator.pop(context);
          },
          ),
        ],
      ),
    );
  }
}
