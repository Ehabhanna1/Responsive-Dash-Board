import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dash_board_destop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        desktopLayout: (context) => const DashBoardDestopLayout(),
        mobileLayout: (context) =>  Container(color: Colors.blue,),
        tabletLayout: (context) => DashboardTabletLayout(),
       
        
        ),
          
          
    );
  }
}