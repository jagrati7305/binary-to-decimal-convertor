import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/widgets/button.dart';
import 'package:flutter/material.dart';

class DecimalToBinaryNumpad extends StatefulWidget {
  final TextEditingController decimalTextEditingController;
  const DecimalToBinaryNumpad({
    super.key,
    required this.decimalTextEditingController});

  @override
  State<DecimalToBinaryNumpad> createState() => _DecimalToBinaryNumpadState();
}

class _DecimalToBinaryNumpadState extends State<DecimalToBinaryNumpad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(num: '1',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
            Button(num: '2',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
            Button(num: '3',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(num: '4',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
            Button(num: '5',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
            Button(num: '6',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
          ],
        ),  
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(num: '7',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
            Button(num: '8',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
            Button(num: '9',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
          ],
        ), 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(num: 'Switch',icon: Icons.swap_vert_rounded,iconsize: 36,numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,onBin2dec: false,),
            Button(num: '0',numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
            Button(num: 'Delete',icon: Icons.backspace,numcolor: AppColor.darkPurple,numsize: 28,textEditingController: widget.decimalTextEditingController,),
          ],
        ),       
      ],
    );
  }
}