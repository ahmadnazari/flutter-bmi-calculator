import 'dart:developer';
import 'package:bmi_calculator/MyCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'gender_child.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                MyCard(
                  color: selectedGender == Gender.Male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: GenderChild(
                      gender: Gender.Male,
                      isActive: selectedGender == Gender.Male),
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  },
                ),
                MyCard(
                    color: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: GenderChild(
                        gender: Gender.Female,
                        isActive: selectedGender == Gender.Female),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    }),
              ],
            ),
          ),
          MyCard(
            color: kActiveCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height', style: kInactiveCardTextStyle),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kCardNumberTextStyle),
                      Text(
                        'cm',
                        style: kInactiveCardTextStyle,
                      ),
                    ]),
                Slider(
                  value: height.toDouble(),
                  onChanged: (newHeight) {
                    setState(() {
                      height = newHeight.round();
                    });
                  },
                  min: 120,
                  max: 220,

                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MyCard(color: kActiveCardColor),
                MyCard(color: kActiveCardColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
