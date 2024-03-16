import 'package:fedaafrica/screens/child_screens/leaderboard_screen_page/leaderboard_screen_page.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_four.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse42483x80,
                                height: 83.v,
                                width: 80.h,
                                radius: BorderRadius.circular(41.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 17.h, top: 26.v, bottom: 30.v),
                                child: Text("Afi Ohua",
                                    style: CustomTextStyles
                                        .titleMediumPoppinsGray90001))
                          ]),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: _buildPaymentsFinan(context,
                              paymentsFinan: ImageConstant.imgLock,
                              paymentPreferences: "Personal Information",
                              onTapPaymentsFinan: () {
                            onTapLock(context);
                          })),
                      SizedBox(height: 10.v),
                      Divider(indent: 4.h, endIndent: 4.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: _buildPaymentsFinan(context,
                              paymentsFinan: ImageConstant.imgPaymentsFinan,
                              paymentPreferences: "Upgrade")),
                      SizedBox(height: 10.v),
                      Divider(indent: 4.h, endIndent: 4.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: _buildPaymentsFinan(context,
                              paymentsFinan:
                                  ImageConstant.imgPaymentsFinanceCredit,
                              paymentPreferences: "All Cards")),
                      SizedBox(height: 10.v),
                      Divider(indent: 4.h, endIndent: 4.h),
                      SizedBox(height: 21.v),
                      _buildNotifications(context),
                      SizedBox(height: 10.v),
                      Divider(indent: 4.h, endIndent: 4.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: _buildPaymentsFinan(context,
                              paymentsFinan:
                                  ImageConstant.imgInterfaceEssentialChat,
                              paymentPreferences: "Message Center")),
                      SizedBox(height: 10.v),
                      Divider(indent: 4.h, endIndent: 4.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: _buildPaymentsFinan(context,
                              paymentsFinan: ImageConstant.imgLinkedin,
                              paymentPreferences: "Address")),
                      SizedBox(height: 10.v),
                      Divider(indent: 4.h, endIndent: 4.h),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: _buildPaymentsFinan(context,
                              paymentsFinan: ImageConstant.imgSearch,
                              paymentPreferences: "Settings")),
                      SizedBox(height: 10.v),
                      Divider(indent: 4.h, endIndent: 4.h),
                      SizedBox(height: 12.v),
                      _buildClose(context),
                      SizedBox(height: 10.v),
                      Divider(endIndent: 8.h),
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
        title: AppbarSubtitleNine(text: "Profile"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUserSingleUserEditPen,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 7.v),
              onTap: () {
                onTapIconButton(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 8.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgInterfaceEssentialBell,
              height: 22.adaptSize,
              width: 22.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, bottom: 3.v),
              child: Text("Notifications", style: theme.textTheme.bodyMedium)),
          Spacer(),
          Container(
              width: 18.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 1.v),
              decoration: AppDecoration.fillErrorContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child:
                  Text("2", style: CustomTextStyles.bodySmallOnErrorContainer))
        ]));
  }

  /// Section Widget
  Widget _buildClose(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 8.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgClose22x21,
              height: 22.v,
              width: 21.h),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 3.v, bottom: 3.v),
              child: Text("Log Out", style: theme.textTheme.bodyMedium)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlueGray40002,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildPaymentsFinan(
    BuildContext context, {
    required String paymentsFinan,
    required String paymentPreferences,
    Function? onTapPaymentsFinan,
  }) {
    return GestureDetector(
        onTap: () {
          onTapPaymentsFinan!.call();
        },
        child: Row(children: [
          CustomImageView(
              imagePath: paymentsFinan,
              height: 22.adaptSize,
              width: 22.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 3.v),
              child: Text(paymentPreferences,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: appTheme.gray90001))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlueGray40002,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
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
      case BottomBarEnum.Profile:
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

  /// Navigates to the viewProfileScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.viewProfileScreen);
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }
}
