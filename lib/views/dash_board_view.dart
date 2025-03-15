import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dash_board_destop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (context) => const DashBoardDestopLayout(),
        mobileLayout: (context) => Container(color: Colors.red,),
        tabletLayout: (context) => Container(color: Colors.green,),
       
        
        ),
          
          
    );
  }
}