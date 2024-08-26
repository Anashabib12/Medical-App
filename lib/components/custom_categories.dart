import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCategories extends StatelessWidget {
  final BoxConstraints constraints;
  final Color color1;
  final Color color2;
  final String text;
  const CustomCategories(
      {super.key,
      required this.constraints,
      required this.text,
      required this.color1,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: constraints.maxHeight * 0.2,
        width: constraints.maxWidth * 0.2,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(70),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.13), // Shadow color
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 8)),
          ],
        ),
      ),
      Positioned(
        top: constraints.maxHeight * 0.013,
        left: constraints.maxWidth * 0.02,
        child: Column(
          children: [
            Container(
              height: constraints.maxHeight * 0.1,
              width: constraints.maxWidth * 0.16,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [color1, color2]),
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(300)
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.013,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Color(0xff090F47),
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
