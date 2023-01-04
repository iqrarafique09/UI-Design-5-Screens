import 'dart:math';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/screens/login.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/splashh.jpg"),
           const Text("Property Trade App",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black) )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      nextScreen : login(),
      splashIconSize: 250,
      splashTransition: SplashTransition.sizeTransition,
      animationDuration: const Duration(seconds: 1),
    );
  }
}


