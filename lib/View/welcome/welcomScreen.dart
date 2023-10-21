import 'package:flutter/material.dart';
import 'package:projectd2/View/login/view/login_screen.dart';

import '../home/view/homescreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height * 0.15),
                child: Image.asset('images/focalx.png'),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.01,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('images/OrangeCircle.png'),
                    Positioned(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 35.23,
                            fontFamily: 'Lora',
                            color: Color(0xff181717),
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: 'Tell your ',
                            ),
                            TextSpan(
                              text: 'story',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' with us.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //------------------
              // login
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).width * 0.03,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xff181717),
                      width: 1.0,
                    ),
                    backgroundColor: const Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(
                      MediaQuery.sizeOf(context).width * 0.65,
                      MediaQuery.sizeOf(context).width * 0.15,
                    ),
                  ),
                  onPressed: () {
                    // go to home screen
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff181717),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              //------------------
              // New here

              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).width * 0.07,
                ),
                child: const Text(
                  'New here?',
                  style: TextStyle(
                    color: Color(0xff3C3939),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),

              //------------------
              // Register
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).width * 0.03,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff181717),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(
                      MediaQuery.sizeOf(context).width * 0.65,
                      MediaQuery.sizeOf(context).width * 0.15,
                    ),
                  ),
                  onPressed: () {
                    // go to home screen
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
