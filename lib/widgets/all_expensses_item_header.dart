import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpenssesItemHeader extends StatelessWidget {
  const AllExpenssesItemHeader({super.key, required this.image, this.imageBackground,  this.imageColor});

  final String image;
  final Color? imageBackground , imageColor;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
              
                decoration: ShapeDecoration(
                  color:imageBackground ?? Color(0xfffAFAFA),
                  shape:OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(image,
                  colorFilter: ColorFilter.mode(imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn), 
                  
                  ),
                ),
              ),
            ),
          ),
        ),
        Spacer(),

        Transform.rotate(angle: -1.57079633 * 2,
        
         child: Icon(Icons.arrow_back_ios_new_outlined, 
         color: imageColor == null ? Color(0xff064061) : Colors.white,),
         ),
      ],
    );
  }
}