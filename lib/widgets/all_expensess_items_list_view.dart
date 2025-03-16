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
     // children: items.map((e) => AllExpensessItem(itemModel: e,)).toList(),
     children: items.asMap().entries.map((e){

      int index = e.key;
      var item = e.value;

      if(index ==1){
        return Expanded(
          child: GestureDetector(
            onTap: () {
          
              updatIndex(index);
              
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensessItem(itemModel: item,
              isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }else{
        return Expanded(
          child: GestureDetector(
            onTap: () {
          
              updatIndex(index);
              
            },
            child: AllExpensessItem(itemModel: item,isSelected: selectedIndex == index,),
          ),
        );
      }
     }).toList(),
    );
  
  }
  
  void updatIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}