import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_sections.dart';

class DashBoardDestopLayout extends StatelessWidget {
  const DashBoardDestopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
        //  flex: 1,
          child: CustomDrawer()),
          SizedBox(width: 25,),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
              children: [
                Expanded(
              flex: 2,
              child: AllExpensessAndQuickInvoiceSection(),),
            
              const SizedBox(width:25),
              Expanded(
                //flex: 1,
                child: Column(
                  children: [
                   MyCardAndTransactionHistorySections(),
                   const SizedBox(height: 10),
                   Expanded(child: IncomeSection()),
                   
                   
                  ],
                )),
              ],
            ),
                ),
              ],
            ),
          ),




      ],


   
    );
  }
}

