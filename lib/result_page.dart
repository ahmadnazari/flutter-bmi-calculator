import 'package:bmi_calculator/MyCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
                Text('Normal', style: kResultPageStatusTextStyle),
                Text('18.3', style: kResultPageBMIValueStyle),
                Text('Your BMI result is quite low, you should eat more!',
                    style: kResultPageBMIDescriptionStyle)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
