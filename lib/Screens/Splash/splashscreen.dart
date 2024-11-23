import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/OnBoarding/onboardingscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {


  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset("assets/images/whatsapp 1.png"),
              SizedBox(height: 10,),
              UiHelper.CustomText(text: "Whatsapp", height: 18, fontweight: FontWeight.bold)
          ],),
        ),
    );
  }
}
