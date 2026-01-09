import 'package:bin2dec/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppPlaceholder extends StatefulWidget {
  final Color textColor;
  final TextEditingController textEditingController;
  final bool readonly;
  final String hinttext;
  const AppPlaceholder({
    super.key,
    required this.textColor,
    required this.textEditingController,
    this.readonly=false,
    required this.hinttext
    });

  @override
  State<AppPlaceholder> createState() => _AppPlaceholderState();
}

class _AppPlaceholderState extends State<AppPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: widget.readonly,
      controller: widget.textEditingController,
      keyboardType: TextInputType.none,
      style: TextStyle(
        color: widget.textColor,
        fontWeight: FontWeight.w700,
        fontSize: 16
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.white,
        hintText: widget.hinttext,
        hintStyle: TextStyle(
          color: widget.textColor,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.white
          )          
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.white
          )
        )
        
      ),
    );
  }
}