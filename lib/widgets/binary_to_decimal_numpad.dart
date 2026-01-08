import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/widgets/button.dart';
import 'package:flutter/material.dart';

class BinaryToDecimalNumpad extends StatefulWidget {
  final TextEditingController binaryTextEditingController;
  const BinaryToDecimalNumpad({super.key,
  required this.binaryTextEditingController});

  @override
  State<BinaryToDecimalNumpad> createState() => _BinaryToDecimalNumpadState();
}

class _BinaryToDecimalNumpadState extends State<BinaryToDecimalNumpad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(num: '0',numcolor: AppColor.lightPurple,textEditingController: widget.binaryTextEditingController,),
            Button(num: '1',numcolor: AppColor.lightPurple,textEditingController: widget.binaryTextEditingController,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(num: 'Switch',icon: Icons.swap_vert_rounded,iconsize: 36,numcolor: AppColor.lightPurple,textEditingController: widget.binaryTextEditingController,),
            Button(num: 'Delete',icon: Icons.backspace,numcolor: AppColor.lightPurple,textEditingController: widget.binaryTextEditingController,),
            
          ],
        )
      ],
    );
  }
}