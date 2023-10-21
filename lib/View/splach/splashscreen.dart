import 'package:flutter/material.dart';
import 'package:projectd2/View/login/view/login_screen.dart';

import '../welcome/welcomScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const  WelcomeScreen(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color:const Color(0xffF5F5F5),
        child: Center(
          child: Image.asset('images/focalx.png'),
        ),
      ),
    );
  }
}
