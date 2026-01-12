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
  bool _dec2binvisible = false;
  double _bin2decopacity = 1.0;
  double _dec2binopacity = 0.0;


  @override
  void initState(){
    super.initState();
    // wait for first frame, then fade out
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
         _bin2decopacity = 0.0;

        Future.delayed(const Duration(seconds: 2),(){
          setState(() {
             _dec2binvisible=true;
             _dec2binopacity = 1.0;
          });
        });
      });
    });
    
    Timer(Duration(seconds: 5), (){
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
              SizedBox(
                child:_dec2binvisible==false?AnimatedOpacity(
                  opacity: _bin2decopacity,
                  duration: Duration(seconds: 1),
                  child:Text(
                    'Bin2Dec',
                    style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  )
                ):AnimatedOpacity(
                  opacity: _dec2binopacity, 
                  duration: Duration(seconds: 1),
                  child: Text(
                    'Dec2Bin',
                    style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24)
                  ),
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