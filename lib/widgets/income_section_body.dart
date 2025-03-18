
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    double width = MediaQuery.sizeOf(context).width;
    // to decide the width of conditional widget >> 
   // log(MediaQuery.sizeOf(context).width.toString());

    return width >= SizeConfig.desktop && width < 1420 ? Expanded(child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: const DetailedIncomeChart(),
    )) :
    const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Expanded(child: IncomeChart()),
      Expanded(
        flex: 2,
        child: IncomeDetails()),
      
    ]);


 
  }
}
