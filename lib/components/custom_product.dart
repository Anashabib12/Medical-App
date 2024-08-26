import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  final BoxConstraints constraints;
  const CustomProduct({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: constraints.maxHeight * 0.35,
          width: constraints.maxWidth * 0.42,
          // color: const Color(0xffFFFFFF),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffFFFFFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: constraints.maxHeight * 0.2,
                width: constraints.maxWidth * 0.43,
                decoration: BoxDecoration(
                    color: const Color(0xfff6f6f8),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/Banners/pill.png',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.015,
                    left: constraints.maxWidth * 0.02),
                child: Text(
                  'Accu-check Active',
                  style: TextStyle(
                      color: Color(0xff090F47),
                      fontWeight: FontWeight.w400,
                      fontSize: constraints.maxWidth * 0.03),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.008,
                    left: constraints.maxWidth * 0.02),
                child: Text(
                  'Test Strip',
                  style: TextStyle(
                      color: Color(0xff090F47),
                      fontWeight: FontWeight.w400,
                      fontSize: constraints.maxWidth * 0.03),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.015,
                    left: constraints.maxWidth * 0.02),
                child: Text(
                  'Rs. 112',
                  style: TextStyle(
                      color: Color(0xff090F47),
                      fontWeight: FontWeight.w600,
                      fontSize: constraints.maxWidth * 0.042),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: constraints.maxHeight * 0.35,
          width: constraints.maxWidth * 0.42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffFFFFFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: constraints.maxHeight * 0.2,
                width: constraints.maxWidth * 0.43,
                decoration: BoxDecoration(
                    color: const Color(0xfff6f6f8),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/Banners/pill.png',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.015,
                    left: constraints.maxWidth * 0.02),
                child: Text(
                  'Accu-check Active',
                  style: TextStyle(
                      color: Color(0xff090F47),
                      fontWeight: FontWeight.w400,
                      fontSize: constraints.maxWidth * 0.03),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.008,
                    left: constraints.maxWidth * 0.02),
                child: Text(
                  'Test Strip',
                  style: TextStyle(
                      color: Color(0xff090F47),
                      fontWeight: FontWeight.w400,
                      fontSize: constraints.maxWidth * 0.03),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.015,
                    left: constraints.maxWidth * 0.02),
                child: Text(
                  'Rs. 112',
                  style: TextStyle(
                      color: Color(0xff090F47),
                      fontWeight: FontWeight.w600,
                      fontSize: constraints.maxWidth * 0.042),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
