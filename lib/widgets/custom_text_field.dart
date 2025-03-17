import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(

      
      
      decoration: InputDecoration(
        hintStyle: AppStyles.styleRegular13,
        hintText:hint ,
        fillColor: Color(0xffFAFAFA),
        filled: true,
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xffFAFAFA),)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xffFAFAFA),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xffFAFAFA),
          ),
        ),
        
      ),
      
    );
  }
}