import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicators.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController =PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
      
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text("My Card", style: AppStyles.styleSemiBold20.copyWith(fontSize: 18),),),
        const SizedBox(height: 12,),
        MyCardPageView(pageController: pageController,),
        const SizedBox(height: 10,),
        DotsIndicators(currentPageIndex: currentPage,),

      ],
    );
  }
}