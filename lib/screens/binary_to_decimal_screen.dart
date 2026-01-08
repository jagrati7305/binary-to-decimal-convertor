import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/constants/dimensions.dart';
import 'package:bin2dec/functions/binary_to_decimal.dart';
import 'package:bin2dec/widgets/binary_to_decimal_numpad.dart';
import 'package:bin2dec/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class BinaryToDecimalScreen extends StatefulWidget {
  const BinaryToDecimalScreen({super.key});

  @override
  State<BinaryToDecimalScreen> createState() => _BinaryToDecimalScreenState();
}

class _BinaryToDecimalScreenState extends State<BinaryToDecimalScreen> {
  final TextEditingController binaryTextEditingController = TextEditingController();
  final TextEditingController toDecimalTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFEBF2FA),
        title: Text(
          'Bin2Dec',
          style: TextStyle(
            color: AppColor.placeholderColorLight,
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),
        ),
      ),
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
                  AppPlaceholder(textColor: AppColor.lightPurple,textEditingController: binaryTextEditingController,),
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
                  AppPlaceholder(textColor: AppColor.lightPurple,textEditingController: toDecimalTextEditingController,),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.heightFactor*24,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
               if(binaryTextEditingController.text.isEmpty!=true){
                int conversionAns = binaryTodecimal(binaryTextEditingController.text);
                toDecimalTextEditingController.text = conversionAns.toString();
              }               
              });
            }, 
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
            SizedBox(
              height: Dimensions.heightFactor*24,
            ), 
            Container(
              padding: EdgeInsets.only(left: Dimensions.widthFactor*24,right: Dimensions.widthFactor*24),
              width: Dimensions.widthFactor*326,
              height: Dimensions.heightFactor*225,
              decoration: BoxDecoration(
                color: AppColor.placeholderColorLight,
                borderRadius: BorderRadius.circular(4)
              ),
              child: BinaryToDecimalNumpad(binaryTextEditingController: binaryTextEditingController,),
            )
          ],

        ),
      ),
    );
  }
}