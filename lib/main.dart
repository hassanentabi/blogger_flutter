import 'package:flutter/material.dart';
import 'package:projectd2/View/login/view/login_screen.dart';
import 'package:projectd2/View/post/view/post_screen.dart';
import 'package:projectd2/View/splach/splashscreen.dart';
import 'package:projectd2/View/welcome/welcomScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'focal X Blog',
      home: SplashScreen(),
    );
  }
}
