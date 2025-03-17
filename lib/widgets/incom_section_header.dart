import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income", style: AppStyles.styleSemiBold20.copyWith(fontSize: 17)),
    
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: ShapeDecoration(
            color: Colors.white,
            
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xfff1f1f1)),
              
              borderRadius: BorderRadius.circular(12)),
            ),
            child: Row(
             
              children: [
                Text("Monthly", style: AppStyles.styleMedium16.copyWith(fontSize: 13),),
                SizedBox(width: 8,),
                Transform.rotate(angle: -3.14 / 2, child: Icon(Icons.arrow_back_ios_new,
                 color: Color(0xff064061,),size: 18,))
            ]),
        ),
      ],
    );
  }
}