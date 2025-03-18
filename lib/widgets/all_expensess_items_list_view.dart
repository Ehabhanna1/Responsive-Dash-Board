import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  

  @override
  State<AllExpensessItemsListView> createState() => _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {


  final items =[
    AllExpenssesItemModel(title: "Balance", date: "March 2025", image: Assets.imagesBalance, price: r"$ 120.029"),
    AllExpenssesItemModel(title: "Income", date: "March 2025", image: Assets.imagesIncome, price: r"$ 120.029"),
    AllExpenssesItemModel(title: "Expenses", date: "March 2025", image: Assets.imagesExpenses, price: r"$ 120.029"),
  ];

  int selectedIndex = 0;






  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
          
              updatIndex(0);
              
            },
            child: AllExpensessItem(itemModel: items[0],
            isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: () {
          
              updatIndex(1);
              
            },
            child: AllExpensessItem(itemModel: items[1],
            isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: () {
          
              updatIndex(2);
              
            },
            child: AllExpensessItem(itemModel: items[2],
            isSelected: selectedIndex == 2,
            ),
          ),
        ),

      ],
    );

 
  
  }
  
  void updatIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}