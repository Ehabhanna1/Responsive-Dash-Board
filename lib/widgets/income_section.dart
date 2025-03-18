

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/incom_section_header.dart';
import 'package:responsive_dash_board/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
   
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          const SizedBox(height: 15,),
          IncomeSectionBody(),
        ],
      ),
      );
  }
}


