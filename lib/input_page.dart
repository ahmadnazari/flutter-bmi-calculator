import 'package:bmi_calculator/MyCard.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  MyCard(),
                  MyCard(),
                ],
              ),
            ),
            MyCard(),
            Expanded(
              child: Row(
                children: [
                  MyCard(),
                  MyCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

