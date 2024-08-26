import 'package:flutter/material.dart';

class CustomDots extends StatelessWidget {
  final Color color;
  const CustomDots({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
    );
  }
}
