import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          children: [
            Text("Monthly", style: AppStyles.styleMedium16.copyWith(fontSize: 13),),
            SizedBox(width: 8,),
            Transform.rotate(
              angle: -3.14 / 2,
              child: Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xff064061),size: 17,))
          ],
        ),
    );
  }
}