import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
            userInfoModel: UserInfoModel(image: Assets.imagesAvatar1,title: "Ehab Hanna", subtitle: "Admin",),
          ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10,),),
            DrawerItemsListView(),
            
           SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20,)),
                 InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Settings', image: Assets.imagesSettings,),),
           
            InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Logout', image: Assets.imagesLogout,),),
            SizedBox(height: 40,),
              ],
            ),
           )


        ],
      ),
    );
  }
}

