import 'package:flutter/material.dart';
import 'package:medical_app/components/custom_logo.dart';
import 'package:medical_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.24,
              ),
              Center(
                child: CustomLogo(
                  constraints: constraints,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w800,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.13), // Shadow color
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 15)),
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.15,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.08,
                  right: constraints.maxWidth * 0.08,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Please Enter your Mobile Number\nto Login/Sign Up',
                      style: TextStyle(
                        color: const Color(0xFF090F47).withOpacity(0.5),
                        fontSize: constraints.maxWidth * 0.045,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.05,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: '+92 3236936862',
                          hintStyle: TextStyle(
                              color: Color(0xFF090F47).withOpacity(0.42),
                              fontSize: constraints.maxWidth * 0.055),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 1.2)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 1.2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 1.2,
                            ),
                          ),
                          contentPadding: EdgeInsets.all(8)),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.05,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: constraints.maxHeight * 0.07,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4157FF)),
                          child: Text(
                            'CONTINUE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: constraints.maxWidth * 0.045,
                                fontWeight: FontWeight.w600),
                          )),
                    )
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
