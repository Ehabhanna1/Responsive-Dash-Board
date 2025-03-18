import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';

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
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: DashBoardMobileLayout(),
          )),
          SizedBox(width: 20,),
      ],
    );
  }
}

