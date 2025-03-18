import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History", style: AppStyles.styleSemiBold20(context).copyWith(fontSize: 15),),
        
        Text("See All", style: AppStyles.styleRegular16(context).copyWith(
          fontSize: 12,
          color: Color(0xff4DB7F2)),),
      ],
    );
  }
}