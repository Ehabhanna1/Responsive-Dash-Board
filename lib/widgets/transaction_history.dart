import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Transaction History", style: AppStyles.styleSemiBold20,),
            
            Text("See All", style: AppStyles.styleRegular16.copyWith(color: Color(0xff4DB7F2)),),
          ],
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}