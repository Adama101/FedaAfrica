import 'package:fedaafrica/screens/child_screens/leaderboard_screen_page/leaderboard_screen_page.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_four.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:fedaafrica/widgets/custom_switch.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MoreScreen extends StatelessWidget {
  MoreScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 22.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("General",
                              style: CustomTextStyles.bodyMediumGray500)),
                      SizedBox(height: 31.v),
                      _buildLanguage(context),
                      SizedBox(height: 10.v),
                      Divider(indent: 1.h, endIndent: 27.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 27.h),
                          child: _buildContactUs(context,
                              contactUs: "My Profile")),
                      SizedBox(height: 10.v),
                      Divider(indent: 1.h, endIndent: 27.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 27.h),
                          child: _buildContactUs(context,
                              contactUs: "Contact Us")),
                      SizedBox(height: 10.v),
                      Divider(indent: 1.h, endIndent: 27.h),
                      SizedBox(height: 29.v),
                      Text("Security",
                          style: CustomTextStyles.bodyMediumGray500),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(right: 27.h),
                          child: _buildContactUs(context,
                              contactUs: "Change Password")),
                      SizedBox(height: 10.v),
                      Divider(endIndent: 27.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(right: 27.h),
                          child: _buildContactUs(context,
                              contactUs: "Privacy Policy")),
                      SizedBox(height: 10.v),
                      Divider(endIndent: 27.h),
                      SizedBox(height: 14.v),
                      Text("Choose what data you share with us",
                          style: CustomTextStyles.bodySmallGray500),
                      SizedBox(height: 24.v),
                      _buildBiometric(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbuttonFour(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleNine(text: "More"));
  }

  /// Section Widget
  Widget _buildLanguage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 27.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text("Language",
                  style: CustomTextStyles.titleSmallLatoGray90001)),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child:
                  Text("English", style: CustomTextStyles.bodyMediumGray500)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlueGray40002,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 21.h))
        ]));
  }

  /// Section Widget
  Widget _buildBiometric(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 26.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text("Biometric",
                  style: CustomTextStyles.titleSmallLatoGray90001)),
          CustomSwitch(
              value: isSelectedSwitch,
              onChange: (value) {
                isSelectedSwitch = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildContactUs(
    BuildContext context, {
    required String contactUs,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 4.v),
              child: Text(contactUs,
                  style: CustomTextStyles.titleSmallLatoGray90001
                      .copyWith(color: appTheme.gray90001))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlueGray40002,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.leaderboardScreenPage;
      case BottomBarEnum.Leaderboard:
        return "/";
      case BottomBarEnum.Task2:
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
