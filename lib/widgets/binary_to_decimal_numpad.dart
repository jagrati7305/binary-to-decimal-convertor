import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/widgets/button.dart';
import 'package:flutter/material.dart';

class BinaryToDecimalNumpad extends StatefulWidget {
  const BinaryToDecimalNumpad({super.key});

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
            Button(num: '0',numcolor: AppColor.lightPurple,),
            Button(num: '1',numcolor: AppColor.lightPurple)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(num: 'Switch',icon: Icons.swap_vert_rounded,iconsize: 36,numcolor: AppColor.lightPurple),
            Button(num: 'Delete',icon: Icons.backspace,numcolor: AppColor.lightPurple),
            
          ],
        )
      ],
    );
  }
}