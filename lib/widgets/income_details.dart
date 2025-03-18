import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/incom_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key,});

static const  itemDetails = [
  ItemDetailsModel(title: 'Total Inc', value: '40 %', color: Color(0xff208BC7),),
  ItemDetailsModel(title: 'Total Exp', value: '25 %', color:Color(0xff4EB7F2),),

  ItemDetailsModel(title: 'Total Prof', value: '20 %', color: Color(0xff064060),),
  ItemDetailsModel(color: Color(0xffE2DECD), title: "Others", value: "22 %",),

  
];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemDetails.map((e) => ItemDetails(itemDetailsModel: e,)).toList(),
    );
   
  }
}

