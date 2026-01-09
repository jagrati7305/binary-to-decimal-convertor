import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/constants/dimensions.dart';
import 'package:bin2dec/functions/decimal_to_binary.dart';
import 'package:bin2dec/widgets/decimal_to_binary_numpad.dart';
import 'package:bin2dec/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class DecimalToBinaryScreen extends StatefulWidget {
  const DecimalToBinaryScreen({super.key});

  @override
  State<DecimalToBinaryScreen> createState() => _DecimalToBinaryScreenState();
}

class _DecimalToBinaryScreenState extends State<DecimalToBinaryScreen> {
  final TextEditingController decimalTextEditingController = TextEditingController();
  final TextEditingController toBinaryTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFCFCAFA),
        title: Text(
          'Dec2Bin',
          style: TextStyle(
            color: AppColor.placeholderColorDark,
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: Dimensions.widthFactor*32,right: Dimensions.widthFactor*32),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFFCFCAFA),Color(0xFF4632B5)],begin: AlignmentGeometry.topCenter,end: AlignmentGeometry.bottomCenter)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width:Dimensions.widthFactor*326,
              height:Dimensions.heightFactor*210,
              padding: EdgeInsets.only(left: Dimensions.widthFactor*16,right: Dimensions.widthFactor*16,top: Dimensions.heightFactor*8,bottom: Dimensions.heightFactor*8),
              decoration: BoxDecoration(
                color: AppColor.placeholderColorDark,
                borderRadius: BorderRadius.circular(4)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Decimal',
                    style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  AppPlaceholder(textColor: AppColor.darkPurple,textEditingController: decimalTextEditingController,hinttext: 'Enter Decimal Value',),
                  SizedBox(
                    height: Dimensions.heightFactor*24,
                  ),
                  Text(
                    'Binary',
                    style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  AppPlaceholder(textColor: AppColor.darkPurple,textEditingController: toBinaryTextEditingController,readonly: true,hinttext: 'Answer',),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.heightFactor*24,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
               if(decimalTextEditingController.text.isEmpty!=true){
                int conversionAns = decimalTobinary(decimalTextEditingController.text);
                toBinaryTextEditingController.text = conversionAns.toString();
              }else{
                toBinaryTextEditingController.text='';
              }               
              });
            }, 
              style:ElevatedButton.styleFrom(
                backgroundColor: AppColor.placeholderColorDark,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(4)
                ),
                fixedSize: Size.fromWidth(Dimensions.widthFactor*326),
                elevation: 0
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
              width: Dimensions.widthFactor*326,
              height: Dimensions.heightFactor*410,
              decoration: BoxDecoration(
                color: AppColor.placeholderColorDark,
                borderRadius: BorderRadius.circular(4)
              ),
              child: DecimalToBinaryNumpad(decimalTextEditingController: decimalTextEditingController,),
            )
          ],
        ),
      ),
    );
  }
}