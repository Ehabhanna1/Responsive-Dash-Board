import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  
  });

  

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {

  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: "Dashboard",
       image: Assets.imagesDashboard),
    DrawerItemModel(
      title: 'My Transactions',
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Accounts',
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];

int activeIndex = 0;





  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount:drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(drawerItemModel: drawerItems[index], isActive: activeIndex == index,),
          ),
        );
      },
      
      );
  }
}