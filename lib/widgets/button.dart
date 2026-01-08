import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/constants/dimensions.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String num;
  final IconData ?icon;
  final double? iconsize;
  const Button({
    super.key,
    required this.num,
    this.icon,
    this.iconsize=24
    });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: CircleAvatar(
        radius: Dimensions.widthFactor*40,
        backgroundColor: AppColor.white,
        child: widget.icon==null?
        Text(
          widget.num,
          style: TextStyle(
            color: AppColor.lightPurple,
            fontWeight: FontWeight.w700,
            fontSize: 36
          ),
        ):Icon(
          widget.icon,
          color: AppColor.lightPurple,
          size: widget.iconsize,
        ),
      ),
    );
  }
}