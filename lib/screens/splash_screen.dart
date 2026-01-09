import 'dart:async';

import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/screens/binary_to_decimal_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context
      , MaterialPageRoute(builder: (context)=>BinaryToDecimalScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFFB0A0F5),Color(0xFF4632B5)],begin: AlignmentGeometry.topCenter,end: AlignmentGeometry.bottomCenter)
        ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 36,
                    color: AppColor.white,
                    fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(text: '(Dec)'),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Transform.translate(
                        offset: Offset(0, 4),
                        child: Text(
                          '10',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.white,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          )
                        ),
                      TextSpan(text: '= (Bin)'),
                      WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Transform.translate(
                        offset: Offset(0, 4),
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.white,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          )
                        ),
                  ]
              )
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Bin2Dec',
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: AppColor.darkPurple,
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                    'Made with',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.favorite,
                    color: AppColor.white,
                    size: 14,)
                ],),
                Text(
                  'Jagrati',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
      ),
    );
  }
}