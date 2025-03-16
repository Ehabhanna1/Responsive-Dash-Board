import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(child: TitleTextField(title: 'Customer Name', hint: 'type customer name',)),
          const SizedBox(width: 20,),
          Expanded(child: TitleTextField(title: 'Cusromer Email', hint: '...@gmail.com',)),
        ],),
        const SizedBox(height: 15,),
          Row(children: [
          Expanded(child: TitleTextField(title: 'Item Count', hint: 'type customer name',)),
          const SizedBox(width:20,),
          Expanded(child: TitleTextField(title: 'Item Price', hint: 'USD',)),
        ],),
        const SizedBox(height: 15,),

        Row(
          children: [
            Expanded(child: CustomButton(
              title: "Create Invoice",
              backgroundColor: Colors.white,
              textColor: Color(0xff4EB7F2),
            )),
            const SizedBox(width: 20,),
            Expanded(child: CustomButton(
              title: "Send Mony",
            )),

          ],
        ),

        
      ],
    );
  }
}