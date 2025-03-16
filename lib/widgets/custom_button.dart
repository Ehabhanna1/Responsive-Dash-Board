import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor, required this.title, });
  final Color? backgroundColor;
  final Color? textColor;
  final String title;
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
     
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: (){},
         child: Text(title,style: AppStyles.styleSemiBold18.copyWith(color: textColor ),),
         ),
    );
  }
}