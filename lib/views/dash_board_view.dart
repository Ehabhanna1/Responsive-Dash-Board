import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => Center(child: Text('Mobile'),),
         tabletLayout: (context) => Center(child: Text('Tablet'),),
          desktopLayout: (context) => Center(child: Text('Desktop'),),
          
          )
    );
  }
}