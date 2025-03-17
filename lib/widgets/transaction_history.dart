import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transaction_header.dart';
import 'package:responsive_dash_board/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),

        const SizedBox(height:4,),

        Text("17 March 2025", style: AppStyles.styleRegular16.copyWith(fontSize: 12),),

     

        TransactionHistoryListView(),

       
      ],
    );
  }
}

