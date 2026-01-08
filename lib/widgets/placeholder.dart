import 'package:bin2dec/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppPlaceholder extends StatefulWidget {
  final Color textColor;
  final TextEditingController? textEditingController;
  final bool isCovertedValuePlaceholderClicked;
  const AppPlaceholder({
    super.key,
    required this.textColor,
    this.textEditingController,
    this.isCovertedValuePlaceholderClicked = false});

  @override
  State<AppPlaceholder> createState() => _AppPlaceholderState();
}

class _AppPlaceholderState extends State<AppPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      keyboardType: TextInputType.none,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.white,
        hintText: 'Value',
        hintStyle: TextStyle(
          color: widget.textColor,
          
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