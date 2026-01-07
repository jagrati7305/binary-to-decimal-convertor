import 'package:bin2dec/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppPlaceholder extends StatefulWidget {
  
  const AppPlaceholder({
    super.key,});

  @override
  State<AppPlaceholder> createState() => _AppPlaceholderState();
}

class _AppPlaceholderState extends State<AppPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.none,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.white,
        hintText: 'Value',
        hintStyle: TextStyle(
          color: AppColor.lightPurple,
          
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