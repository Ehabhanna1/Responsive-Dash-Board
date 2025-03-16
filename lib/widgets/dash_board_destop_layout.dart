import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashBoardDestopLayout extends StatelessWidget {
  const DashBoardDestopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          
          child: CustomDrawer()),
          SizedBox(width: 3,),
          Expanded(
            flex: 2,
            child: AllExpensessAndQuickInvoiceSection(),),
      ],
   
    );
  }
}

