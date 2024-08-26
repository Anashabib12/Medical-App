import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medical_app/components/custom_dots.dart';
import 'package:medical_app/screens/login_screen.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.1,
              ),
              Center(
                child: Image.asset('assets/logo/OnBoarding.png'),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              Text(
                'View and buy',
                style: TextStyle(
                  color: Color(0xFF090F47),
                  fontSize: constraints.maxWidth * 0.06,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Medicine online',
                style: TextStyle(
                  color: Color(0xFF090F47),
                  fontSize: constraints.maxWidth * 0.06,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Text(
                'Etiam mollis metus non purus',
                style: TextStyle(
                  color: Color(0xFF090F47).withOpacity(0.5),
                  fontSize: constraints.maxWidth * 0.043,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.005,
              ),
              Text(
                'faucibus sollicitudin. Pellentesque',
                style: TextStyle(
                  color: Color(0xFF090F47).withOpacity(0.5),
                  fontSize: constraints.maxWidth * 0.043,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.005,
              ),
              Text(
                'sagittis mi.integer.',
                style: TextStyle(
                  color: Color(0xFF090F47).withOpacity(0.5),
                  fontSize: constraints.maxWidth * 0.043,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.09,
                    right: constraints.maxWidth * 0.08,
                    top: constraints.maxHeight * 0.13),
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        color: const Color(0xFF090F47).withOpacity(0.5),
                        fontSize: constraints.maxWidth * 0.045,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.26,
                    ),
                    const CustomDots(color: Color(0xFF4157FF)),
                    SizedBox(width: constraints.maxWidth * 0.025),
                    const CustomDots(color: Color(0xFFC4C4C4)),
                    SizedBox(width: constraints.maxWidth * 0.025),
                    const CustomDots(color: Color(0xFFC4C4C4)),
                    SizedBox(width: constraints.maxWidth * 0.025),
                    const CustomDots(color: Color(0xFFC4C4C4)),
                    SizedBox(width: constraints.maxWidth * 0.025),
                    SizedBox(
                      width: constraints.maxWidth * 0.2,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: const Color(0xFF4157FF),
                          fontSize: constraints.maxWidth * 0.045,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
