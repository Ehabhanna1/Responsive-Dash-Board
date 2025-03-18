import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {

  int activeIndex = -1;



  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      
        child: PieChart(
          getChartData(),
        ),
     
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          activeIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {
            
          });

        }),

      
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.4: null,
         title: activeIndex == 0 ? "Total Income": "40%",
          titleStyle: AppStyles.styleMedium16.copyWith(color:activeIndex == 0 ? null : Colors.white),
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          color: Color(0xff208BC7),
          
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.1 : null,
          title: activeIndex == 1? "Total Expense":"25%",
          titleStyle: AppStyles.styleMedium16.copyWith(color: activeIndex == 1 ? null : Colors.white),
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: Color(0xff4EB7F2),
          
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.45: null,
          title: activeIndex == 2? "Total Profit": "20%",
          titleStyle: AppStyles.styleMedium16.copyWith(color: activeIndex == 2 ? null : Colors.white),
          radius: activeIndex == 2 ? 60: 50,
         value: 20,
          color: Color(0xff064060),
         
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.45: null,
          title: activeIndex == 3 ? "Others": "22%",
          titleStyle: AppStyles.styleMedium16.copyWith(color: activeIndex == 3? null : Colors.white),
          radius: activeIndex == 3 ? 60 : 50,
           value: 22,
          color: Color(0xffE2DECD),
          
        ),
      ],
    );
  }
}