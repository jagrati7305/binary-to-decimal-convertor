import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/constants/dimensions.dart';
import 'package:bin2dec/screens/binary_to_decimal_screen.dart';
import 'package:bin2dec/screens/decimal_to_binary_screen.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String num;
  final IconData ?icon;
  final double? iconsize;
  final double? numsize;
  final Color? numcolor;
  final TextEditingController textEditingController;
  final bool onBin2dec;
  const Button({
    super.key,
    required this.num,
    this.icon,
    this.iconsize=24,
    this.numcolor,
    this.numsize=36,
    required this.textEditingController,
    this.onBin2dec=true
    });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  void _onNumberTap(String num,TextEditingController textEditingController,bool onBin2dec){
    setState(() {
      if(textEditingController.text.length<8){

        if(num == 'Delete'){
          if(textEditingController.text.isEmpty!=true){
            textEditingController.text=textEditingController.text.substring(0,textEditingController.text.length-1);
          }
        }else if(num == 'Switch'){
          //switch the page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context)=> onBin2dec==true?DecimalToBinaryScreen():BinaryToDecimalScreen())
            );
        }else{
          textEditingController.text +=num;
        }
      }else{
        if(num == 'Delete'){
          if(textEditingController.text.isEmpty!=true){
            textEditingController.text=textEditingController.text.substring(0,textEditingController.text.length-1);
          }
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        _onNumberTap(widget.num, widget.textEditingController,widget.onBin2dec);
      },
      child: CircleAvatar(
        radius: Dimensions.widthFactor*40,
        backgroundColor: AppColor.white,
        child: widget.icon==null?
        Text(
          widget.num,
          style: TextStyle(
            color: widget.numcolor,
            fontWeight: FontWeight.w700,
            fontSize: widget.numsize
          ),
        ):Icon(
          widget.icon,
          color: widget.numcolor,
          size: widget.iconsize,
        ),
      ),
    );
  }
}