import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final FontWeight? fontWeight;
  final Color color;
  final List<BoxShadow>? boxShadow;
  final BoxConstraints constraints;
  const CustomLogo(
      {super.key,
      required this.constraints,
      this.boxShadow,
      required this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, boxShadow: boxShadow),
          child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: Image.asset('assets/logo/plus.png')),
        ),
        SizedBox(
          height: constraints.maxHeight * 0.02,
        ),
        Text(
          'Quick Medical',
          style: TextStyle(
            fontSize: constraints.maxWidth * 0.063,
            color: color,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            fontStyle: FontStyle.italic,
          ),
        )
      ],
    );
  }
}
