import 'package:flutter/material.dart';

const TextStyle kActiveCardTextStyle = TextStyle(fontSize: 18);
const TextStyle kInactiveCardTextStyle =
    TextStyle(fontSize: 18, color: kInactiveTextColor);
const TextStyle kCardNumberTextStyle =
    TextStyle(fontSize: 50, fontWeight: FontWeight.w900);
const kInactiveCardColor = Color(0xff1D1E33);
const kInactiveTextColor = Color(0xff8D8E98);
const kActiveTextColor = Color(0xffffffff);
const kActiveCardColor = Color(0xff111429);

// Slider Theme
const kSliderInactiveTrackColor = Color(0xFF8D8E98);
const kSliderActiveTrackColor = Colors.white;
const kSliderThumbColor = Color(0xFFEB1555);
const kSliderOverlayColor = Color(0x29EB1555);
const kSliderThumbShape = RoundSliderThumbShape(enabledThumbRadius: 15);
const kSliderOverlayShape = RoundSliderOverlayShape(overlayRadius: 30);

const kBottomContainerColor = Color(0xFFEB1555);
const kAppBarBackgroundColor = Color(0xff0A0D22);

const kLargeButtonTextStyle =
    TextStyle(fontWeight: FontWeight.w900, fontSize: 25);

// Result page styles:
const kTitleTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.w900);
const kResultPageStatusTextStyle =
    TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20);
const kResultPageBMIValueStyle = TextStyle(fontWeight: FontWeight.w900, fontSize: 100);
const kResultPageBMIDescriptionStyle = TextStyle(fontWeight: FontWeight.w200, fontSize: 20);
