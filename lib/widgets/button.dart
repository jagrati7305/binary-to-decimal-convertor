import 'package:bin2dec/constants/app_color.dart';
import 'package:bin2dec/constants/dimensions.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String num;
  final IconData ?icon;
  final double? iconsize;
  final double? numsize;
  final Color? numcolor;
  const Button({
    super.key,
    required this.num,
    this.icon,
    this.iconsize=24,
    this.numcolor,
    this.numsize=36
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