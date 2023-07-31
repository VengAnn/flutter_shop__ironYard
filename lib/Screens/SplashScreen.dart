import 'dart:async';

import 'package:flutter/material.dart';

import 'BoardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    durationNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assest/images/bg.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assest/images/logo.png"),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToBoardingScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BoardingScreen()));
  }

  void durationNavigate() {
    Timer(Duration(seconds: 2), navigateToBoardingScreen);
  }
}
