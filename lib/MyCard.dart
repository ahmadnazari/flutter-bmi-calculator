import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xff1E1F32),
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
