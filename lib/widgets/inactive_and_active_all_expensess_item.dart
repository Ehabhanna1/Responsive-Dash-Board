import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expensses_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpenssesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 1, color: Color(0xfff1f1f1)),
          ),
    
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           AllExpenssesItemHeader(image: itemModel.image,),
           SizedBox(height: 28,),
           Text(itemModel.title, style: AppStyles.styleMedium16,),
           SizedBox(height: 8,),
           Text(itemModel.date, style: AppStyles.styleRegular13,),
           SizedBox(height: 12,),
           Text(itemModel.price, style: AppStyles.styleSemiBold24,),
    
          ],
        ),
    
    );
  }
}



class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpenssesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          //side: BorderSide(width: 1, color: Color(0xfff1f1f1)),
          ),
    
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           AllExpenssesItemHeader(
            imageColor:  Colors.white,
            imageBackground:  Colors.white.withOpacity(0.10000000149011612),
            
            image: itemModel.image,),
           SizedBox(height: 28,),
           Text(itemModel.title, style: AppStyles.styleMedium16.copyWith(color: Colors.white),),
           SizedBox(height: 8,),
           Text(itemModel.date, style: AppStyles.styleRegular13.copyWith(color: Color(0xFFFAFAFA)),),
           SizedBox(height: 12,),
           Text(itemModel.price, style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),),
    
          ],
        ),
    
    );
  }
}