import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
    final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
     
      leading: Container(
        width: 10,
        height: 10,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: OvalBorder(),
        ),
        
      ),
      title: Text(itemDetailsModel.title, style: AppStyles.styleRegular16.copyWith(fontSize: 12)),
      trailing: Text(itemDetailsModel.value, style: AppStyles.styleMedium16.copyWith(fontSize: 14))
    );
  }
}