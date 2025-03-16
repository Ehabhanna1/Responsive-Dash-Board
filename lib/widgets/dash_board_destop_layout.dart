import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashBoardDestopLayout extends StatelessWidget {
  const DashBoardDestopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          
          child: CustomDrawer()),
          SizedBox(width: 32,),
          Expanded(
            flex: 2,
            child: Column(
            children: [
              Expanded(child: AllExpensess(),),
            ],
          ),),
      ],
   
    );
  }
}