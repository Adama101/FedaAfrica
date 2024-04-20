import 'package:fedaafrica/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/image_constant.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShopAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 120,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        child: Text(
          'Money earned by task',
          style: GoogleFonts.abel(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color:Colors.grey
        ),
        ),
      ),
    );
  }

  lingot(int lingot) {
    return [
      Row(
        children: [
          CustomImageView(
          imagePath: ImageConstant.lingotImage,
          height: 10,
          width: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(2),
          ),
          Text(
            '$lingot',
            style: const TextStyle(
                color: Color(0xFFFF4B4B),
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(5),
          ),
        ],
      )
    ];
  }
}
