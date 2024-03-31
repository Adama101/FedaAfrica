import 'package:fedaafrica/screens/child_screens/leaderboard_screen_page/leaderboard_screen_page.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_three.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';
import 'widgets/parentlearningscreen_item_widget.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ParentLearningScreen extends StatelessWidget {
  ParentLearningScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 18.v),
                child: Text(
                  "Latest topics",
                  style: CustomTextStyles.bodyLargeLatoBluegray400,
                ),
              ),
              SizedBox(height: 20.v),
              _buildParentlearningscreen(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 57.h,
      leading: AppbarLeadingIconbuttonThree(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 15.h, top: 7.v, bottom: 7.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(text: "Learn"),
    );
  }

  /// Section Widget
  Widget _buildParentlearningscreen(BuildContext context) {
    return ParentlearningscreenItemWidget();
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.leaderboardScreenPage;
      case BottomBarEnum.Task:
        return "/";
      case BottomBarEnum.Analytics:
        return "/";
      case BottomBarEnum.Learn:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.leaderboardScreenPage:
        return LeaderboardScreenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
