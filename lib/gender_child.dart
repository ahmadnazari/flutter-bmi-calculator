import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderChild extends StatefulWidget {
  final Gender gender;
  bool isActive;
  GenderChild({Key? key, required this.gender, required this.isActive}) : super(key: key);

  @override
  State<GenderChild> createState() => _GenderChildState();
}

class _GenderChildState extends State<GenderChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.gender == Gender.Male
                ? FontAwesomeIcons.mars
                : FontAwesomeIcons.venus,
            size: 80,
            color: widget.isActive ? kActiveTextColor:kInactiveTextColor,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            widget.gender == Gender.Male ? 'MALE' : 'FEMALE',
            style: widget.isActive ? kActiveCardTextStyle: kInactiveCardTextStyle,
          )
        ],
      ),
    );
  }
}

enum Gender {
  Male,
  Female,
}
