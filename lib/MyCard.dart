import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  final void Function()? onTap;

  MyCard({required this.color, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: this.color, borderRadius: BorderRadius.circular(10)),
          child: this.child,
        ),
      ),
    );
  }
}
