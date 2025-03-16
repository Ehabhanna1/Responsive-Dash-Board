import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuiclInvoiceHeader(),
       
          LatestTransaction(),

          Divider(height: 20,
          color: Color(0xfff1f1f1),
          ),
          QuickInvoiceForm(),
          //TitleTextField(title: 'Custom Name', hint: 'type customer name',),


        
        ],
      ),
    );
  }
}



