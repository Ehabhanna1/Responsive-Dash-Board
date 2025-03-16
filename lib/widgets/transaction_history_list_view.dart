import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
   TransactionModel(title: "Cash Withdrawal", date: "17 March 2025", amount: "-\$1,000", isWithdrawal: true, ),
   TransactionModel(title: "Landing Project", date: "17 March 2025", amount: "\$2,000", isWithdrawal: false, ),
   TransactionModel(title: "junior Flutter Dev", date: "17 March 2025", amount: "\$1,000", isWithdrawal: false, ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => TransactionItem(transactionModel: items[index],), itemCount: items.length,);
  }
}