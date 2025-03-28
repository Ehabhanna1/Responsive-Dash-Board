import 'package:flutter/material.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.isActive});

final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:  Duration(milliseconds: 5),
      height:  8,
      width: isActive ? 30 :  8,
      decoration: ShapeDecoration(
        color: isActive ? Color(0xff4EB7F2) : Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),),
      
    );
  }
}