import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 20,),
        Expanded(
          flex: 3,
          child: AllExpensessAndQuickInvoiceSection()),
          SizedBox(width: 20,),
      ],
    );
  }
}