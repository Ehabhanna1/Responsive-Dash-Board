import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dash_board_destop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MediaQuery.sizeOf(context).width < 650 ? AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFAFAFA),
        leading: Icon(Icons.menu),
      ) : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        desktopLayout: (context) => const DashBoardDestopLayout(),
        mobileLayout: (context) =>  DashBoardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
       
        
        ),
          
          
    );
  }
}