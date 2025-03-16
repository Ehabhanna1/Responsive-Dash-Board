
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView
({super.key});

static const items = [
  UserInfoModel(image: Assets.imagesAvatar1, title: "Moular Hanna", subtitle: "moular2022@gmail.com"),
  UserInfoModel(image: Assets.imagesAvatar2, title: "Yousef Hanna", subtitle: "yousef15@gmail.com"),
  UserInfoModel(image: Assets.imagesAvatar2, title: "genral yousef ", subtitle: "yousef015@gmail.com"),
  UserInfoModel(image: Assets.imagesAvatar3, title: "Mary ", subtitle: "mary011@gmail.com"),

];

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e),),).toList(),
      ),
    );
  
  }
}