import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dash_board_destop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: MediaQuery.sizeOf(context).width < 650 ? AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFAFAFA),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
      ) : null,
      backgroundColor: Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < 650 ? CustomDrawer() : null,
      body: AdaptiveLayout(
        desktopLayout: (context) => const DashBoardDestopLayout(),
        mobileLayout: (context) =>  DashBoardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
       
        
        ),
          
          
    );
  }
}