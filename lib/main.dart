import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xff090D23),
          scaffoldBackgroundColor: const Color(0xff090D23),
          appBarTheme: AppBarTheme.of(context).copyWith(
            backgroundColor: kAppBarBackgroundColor
          ),
          sliderTheme: SliderTheme.of(context).copyWith(
            inactiveTrackColor: kSliderInactiveTrackColor,
            activeTrackColor: kSliderActiveTrackColor,
            thumbColor: kSliderThumbColor,
            overlayColor: kSliderOverlayColor,
            thumbShape: kSliderThumbShape,
            overlayShape: kSliderOverlayShape,
          )),
      initialRoute: '/',
      routes: {
        "/": (context) => const InputPage(),
        "/result": (context) => const ResultPage(),
      },
    );
  }
}
