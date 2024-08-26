import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medical_app/components/custom_logo.dart';
import 'package:medical_app/screens/walkthrough_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WalkthroughScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFF2D9CDB),
                Color(0xFF2F80ED),
              ])),
              child: Image.asset(
                'assets/logo/splash_background.png',
                fit: BoxFit.fill,
              ),
            ),
            Center(
                child: CustomLogo(
              constraints: constraints,
              color: Colors.white,
            ))
          ],
        );
      }),
    );
  }
}
