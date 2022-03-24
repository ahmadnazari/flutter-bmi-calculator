import 'package:bmi_calculator/MyCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String resultValue;
  final String resultText;
  final String resultDescription;

  const ResultPage(
      {Key? key,
      required this.resultValue,
      required this.resultText,
      required this.resultDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xff0A0D22),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Your Result",
              style: kTitleTextStyle,
            ),
          ),
          MyCard(
            color: kActiveCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(resultText, style: kResultPageStatusTextStyle),
                Text(resultValue, style: kResultPageBMIValueStyle),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(resultDescription, style: kResultPageBMIDescriptionStyle, textAlign: TextAlign.center,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
