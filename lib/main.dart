import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff090D23),
        scaffoldBackgroundColor: const Color(0xff090D23),
      ),
      home: InputPage(),
    );
  }
}


