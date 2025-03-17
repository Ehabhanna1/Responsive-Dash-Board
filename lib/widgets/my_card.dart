import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420/215,
      child: Container(
       
        decoration: ShapeDecoration(
          image: DecorationImage(image: AssetImage(Assets.imagesCardBackground,), fit: BoxFit.fill),
          color: Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
           children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 25, right: 33, top: 8,),
              title: Text("Name Card", style: AppStyles.styleRegular16.copyWith(
                fontSize: 13,
                color: Colors.white),),
              subtitle: Text("Ehab Hanna", style: AppStyles.styleMedium20.copyWith(fontSize: 15)),
              trailing: SvgPicture.asset(Assets.imagesGallery),

            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("0918 1234 5678 1234", style: AppStyles.styleSemiBold20.copyWith(
                    fontSize: 15,
                    color: Colors.white),),
              
                         Text("Expiry Date 12/27", style: AppStyles.styleRegular13.copyWith(color: Colors.white),),
                ],
              ),
            ),

            SizedBox(height: 25,),


           ],
          ),
         
      ),
      
      );
  }
}