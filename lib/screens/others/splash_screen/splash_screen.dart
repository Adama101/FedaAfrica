import 'dart:async';
import 'package:fedaafrica/screens/others/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //Splash screen timer
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: ((context) => SplashScreenOneScreen()))));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 219.v),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1000000958,
                height: 167.v,
                width: 186.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
