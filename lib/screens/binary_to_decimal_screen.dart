import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/constants/dimensions.dart';
import 'package:bin2dec/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class BinaryToDecimalScreen extends StatefulWidget {
  const BinaryToDecimalScreen({super.key});

  @override
  State<BinaryToDecimalScreen> createState() => _BinaryToDecimalScreenState();
}

class _BinaryToDecimalScreenState extends State<BinaryToDecimalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        padding: EdgeInsets.only(left: Dimensions.widthFactor*32,right: Dimensions.widthFactor*32),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFFEBF2FA),AppColor.lightPurple],begin: AlignmentGeometry.topCenter,end: AlignmentGeometry.bottomCenter)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [      
            Container(
              width:Dimensions.widthFactor*326,
              height:Dimensions.heightFactor*210,
              padding: EdgeInsets.only(left: Dimensions.widthFactor*16,right: Dimensions.widthFactor*16,top: Dimensions.heightFactor*8,bottom: Dimensions.heightFactor*8),
              decoration: BoxDecoration(
                color: AppColor.placeholderColorLight,
                borderRadius: BorderRadius.circular(4)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Binary',
                    style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  AppPlaceholder(),
                  SizedBox(
                    height: Dimensions.heightFactor*24,
                  ),
                  Text(
                    'Decimal',
                    style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  AppPlaceholder(),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.heightFactor*24,
            ),
            ElevatedButton(onPressed: (){}, 
              style:ElevatedButton.styleFrom(
                backgroundColor: AppColor.placeholderColorLight,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(4)
                ),
                fixedSize: Size.fromWidth(Dimensions.widthFactor*326)
              ),
              
              child: Text(
                "Convert",
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              ),
            
          ],

        ),
      ),
    );
  }
}