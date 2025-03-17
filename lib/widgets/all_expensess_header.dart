import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    
      children: [
        Text("All Expensess", style: AppStyles.styleSemiBold20.copyWith(fontSize: 18),),
        Expanded(child: SizedBox()),
        RangeOptions(),
        
      ],
    );
  }
}

