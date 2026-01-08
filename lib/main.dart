import 'package:bin2dec/constants/dimensions.dart';
import 'package:bin2dec/screens/binary_to_decimal_screen.dart';
import 'package:bin2dec/screens/decimal_to_binary_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Dimensions.screenWidth = MediaQuery.of(context).size.width;
    Dimensions.screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bin2Dec',
      home: DecimalToBinaryScreen(),
    );
  }
}