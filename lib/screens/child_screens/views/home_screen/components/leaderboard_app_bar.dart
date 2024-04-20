import 'package:fedaafrica/core/app_export.dart';
import 'package:flutter/material.dart';

class LeaderboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LeaderboardAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(250);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        elevation: 1.5,
        centerTitle: true,
        title: const Text(
          'Leaderboard',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        //actions: lingot(1795),
      ) /* AppBar(
        toolbarHeight: 250,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 2.0,
        title: Column(
          children: [
            leagues(),
            bigTitle('Amethyst League'),
            message('Top 10 advance to the next league'),
            remainingDay('2 days'),
          ],
        ),
      ) */
      ,
    );
  }

  leagues() {
    ScrollController _controller =
        ScrollController(initialScrollOffset: 89.8 * 4.4);

    return SizedBox(
      height: 100,
      child: ListView(
        // itemExtent: 80,
        controller: _controller,
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          CustomImageView(
            imagePath: ImageConstant.badgeBronzeImage,
            height: 10,
            width: 10,
          ),
          CustomImageView(
            imagePath: ImageConstant.badgeSilverImage,
            height: 10,
            width: 10,
          ),
          CustomImageView(
            imagePath: ImageConstant.badgeGoldImage,
            height: 10,
            width: 10,
          ),
          CustomImageView(
            imagePath: ImageConstant.badgeDiamondImage,
            height: 10,
            width: 10,
          ),
          CustomImageView(
            imagePath: ImageConstant.badgeRubyImage,
            height: 10,
            width: 10,
          ),
          CustomImageView(
            imagePath: ImageConstant.badgeEmaraldImage,
            height: 10,
            width: 10,
          ),
          Container(
            child: CustomImageView(
              margin: const EdgeInsets.only(left: 12, right: 8),
              imagePath: ImageConstant.badgeAmethystImage,
              height: 10,
              width: 10,
            ),
            
          ),
          CustomImageView(
            imagePath: ImageConstant.badgeLockedImage,
            height: 10,
            width: 10,
          ),
        ],
      ),
    );
  }

  remainingDay(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFC800),
        ),
      ),
    );
  }

  message(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          color: Color(0xFFAFAFAF),
        ),
      ),
    );
  }

  bigTitle(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4B4B4B),
        ),
      ),
    );
  }
}
