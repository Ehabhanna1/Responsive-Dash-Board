import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_sections.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          const SizedBox(height: 25,),
          MyCardAndTransactionHistorySections(),
          const SizedBox(height: 25,),
          IncomeSection(),
        ],
      ),
    );
  }
}