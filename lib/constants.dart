import 'package:flutter/material.dart';

const TextStyle kActiveCardTextStyle = TextStyle(fontSize: 18);
const TextStyle kInactiveCardTextStyle = TextStyle(
    fontSize: 18, color: kInactiveTextColor);
const TextStyle kCardNumberTextStyle = TextStyle(
    fontSize: 50, fontWeight: FontWeight.w900);
const kInactiveCardColor = Color(0xff1D1E33);
const kInactiveTextColor = Color(0xff8D8E98);
const kActiveTextColor = Color(0xffffffff);
const kActiveCardColor = Color(0xff111429);

// Slider Theme
const kSliderInactiveTrackColor = Color(0xFF8D8E98);
const kSliderActiveTrackColor = Colors.white;
const kSliderThumbColor =  Color(0xFFEB1555);
const kSliderOverlayColor = Color(0x29EB1555);
const kSliderThumbShape = RoundSliderThumbShape(enabledThumbRadius: 15);
const kSliderOverlayShape = RoundSliderOverlayShape(overlayRadius: 30);
