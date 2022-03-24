import 'dart:developer';
import 'dart:ffi';
import 'package:bmi_calculator/MyCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  int weight = 70;
  int age = 25;

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
                MyCard(
                    color: kActiveCardColor,
                    child: BottomCard(
                      label: 'Weight',
                      value: weight,
                      onIncrease: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onDecrease: () {
                        setState(() {
                          weight++;
                        });
                      },
                    )),
                MyCard(
                    color: kActiveCardColor,
                    child: BottomCard(
                      label: 'Age',
                      value: age,
                      onIncrease: () {
                        setState(() {
                          age--;
                        });
                      },
                      onDecrease: () {
                        setState(() {
                          age++;
                        });
                      },
                    )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/result');
            },
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'CALCULATE',
                style: kLargeButtonTextStyle,
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 70,
            ),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final Icon icon;
  final void Function() onPressed;

  const RoundIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      child: icon,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

class BottomCard extends StatelessWidget {
  final String label;
  final int value;
  final void Function() onIncrease;
  final void Function() onDecrease;

  const BottomCard(
      {Key? key,
      required this.label,
      required this.value,
      required this.onIncrease,
      required this.onDecrease})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: kInactiveCardTextStyle),
        Text(value.toString(), style: kCardNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
                icon: Icon(FontAwesomeIcons.minus), onPressed: onDecrease),
            SizedBox(width: 10),
            RoundIconButton(
                icon: Icon(FontAwesomeIcons.plus), onPressed: onIncrease),
          ],
        )
      ],
    );
  }
}
