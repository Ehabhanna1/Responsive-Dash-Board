import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class DashBoardDestopLayout extends StatelessWidget {
  const DashBoardDestopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer()),
          SizedBox(width: 30,),
          Expanded(
            flex: 2,
            child: AllExpensessAndQuickInvoiceSection(),),

            const SizedBox(width: 24,),
            Expanded(
              flex: 1,
              child: TransactionHistory()),




      ],


   
    );
  }
}

