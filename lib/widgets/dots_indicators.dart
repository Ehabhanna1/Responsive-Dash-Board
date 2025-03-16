import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot_indecator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentPageIndex});

  final int currentPageIndex ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 8),
        child: CustomDotIndecator(isActive: index == currentPageIndex,),
      ),),
    );
  }
}