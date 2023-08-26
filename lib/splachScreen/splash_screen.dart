import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ride_sharing_app/assistants/assistant_methods.dart';
import 'package:ride_sharing_app/global/global.dart';
import 'package:ride_sharing_app/screens/login_screen.dart';
import 'package:ride_sharing_app/screens/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(Duration(seconds: 5), () async {
      if (await firebaseAuth.currentUser != null) {
        firebaseAuth.currentUser != null
            ? AssistantMethods.readCurrentOnlineUserInfo()
            : null;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => LoginScreen(),
          ),
        );
      } else {
        MaterialPageRoute(
          builder: (c) => MainPage(),
        );
      }
    });
  }

  @override
  void initState() {
    startTimer();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Text(
          //   "Calao App",
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 40,
          //   ),
          // ),
          Lottie.asset("assets/animations/splash.json")
        ],
      ),
    );
  }
}
