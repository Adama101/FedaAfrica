import 'package:fedaafrica/screens/child_screens/leaderboard_screen_page/leaderboard_screen_page.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/ninetytwo_item_widget.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 3.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildNinetyTwo(context),
                                    SizedBox(height: 7.v),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgTelevisionPrimary,
                                        height: 7.v,
                                        width: 26.h,
                                        alignment: Alignment.center),
                                    SizedBox(height: 18.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 13.h),
                                        child: Container(
                                            height: 6.v,
                                            width: 200.h,
                                            decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(3.h)),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(3.h),
                                                child: LinearProgressIndicator(
                                                    value: 0.4,
                                                    backgroundColor: theme
                                                        .colorScheme.primary,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            appTheme
                                                                .gray50002))))),
                                    SizedBox(height: 4.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 9.h, right: 123.h),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: 4.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      top: 4.v, bottom: 7.v),
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h),
                                                  child: Text("Quizzes",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900)),
                                              Spacer(),
                                              Container(
                                                  height: 4.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      top: 4.v, bottom: 7.v),
                                                  decoration: BoxDecoration(
                                                      color: appTheme.orange600
                                                          .withOpacity(0.74),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text("Task done",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900)),
                                              Container(
                                                  height: 4.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h,
                                                      top: 4.v,
                                                      bottom: 7.v),
                                                  decoration: BoxDecoration(
                                                      color: appTheme.gray50002,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text("To-do",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900))
                                            ])),
                                    SizedBox(height: 23.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 9.h, right: 89.h),
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.v),
                                              child: Text("Monthly Allowances",
                                                  style: CustomTextStyles
                                                      .titleSmallLatoBold)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 72.h),
                                              child: Text("₦ 0.00",
                                                  style: CustomTextStyles
                                                      .titleSmallLato))
                                        ])),
                                    SizedBox(height: 48.v),
                                    _buildClock(context),
                                    SizedBox(height: 11.v),
                                    _buildView(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 317.h, 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 141.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex = index;
                }),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return NinetytwoItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildClock(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, right: 19.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgClockOnprimary,
                  height: 16.adaptSize,
                  width: 16.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 2.v),
                  child: Text("Monday, 26 February",
                      style: CustomTextStyles.bodyMediumOnPrimary)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text("Mark all done task",
                      style: CustomTextStyles.titleSmallLatoPrimary))
            ])));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
        height: 488.v,
        width: 338.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 67.v,
                            width: 329.h,
                            decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(12.h),
                                border: Border.all(
                                    color: appTheme.black900, width: 1.h))),
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgClockOnprimary,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(bottom: 3.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("Tuesday, 27 February",
                                      style: CustomTextStyles
                                          .bodyMediumNunitoOnPrimary))
                            ])),
                        SizedBox(height: 9.v),
                        Container(
                            height: 67.v,
                            width: 329.h,
                            decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(12.h),
                                border: Border.all(
                                    color: appTheme.black900, width: 1.h))),
                        SizedBox(height: 38.v),
                        Container(
                            height: 67.v,
                            width: 329.h,
                            decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(12.h),
                                border: Border.all(
                                    color: appTheme.black900, width: 1.h)))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 67.v,
                  width: 329.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12.h),
                      border:
                          Border.all(color: appTheme.black900, width: 1.h)))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 67.v,
                  width: 329.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12.h),
                      border:
                          Border.all(color: appTheme.black900, width: 1.h)))),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 44.h, right: 119.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Put the garbage away",
                            style: CustomTextStyles.titleMediumLatoBlack900),
                        SizedBox(height: 2.v),
                        Text("₦200",
                            style: CustomTextStyles.bodySmallNunitoBlack900),
                        SizedBox(height: 55.v),
                        Text("watch French Lessons",
                            style: CustomTextStyles.titleMediumBlack900Bold_1),
                        SizedBox(height: 2.v),
                        Text("₦400",
                            style: CustomTextStyles.bodySmallNunitoBlack900),
                        SizedBox(height: 74.v),
                        Text("Do Math Assignment",
                            style: CustomTextStyles.titleMediumBlack900Bold_1),
                        SizedBox(height: 1.v),
                        Text("₦400",
                            style: CustomTextStyles.bodySmallNunitoBlack900),
                        SizedBox(height: 63.v),
                        Text("Wash the dishes",
                            style: CustomTextStyles.titleMediumBlack900Bold_1),
                        SizedBox(height: 2.v),
                        Text("₦400",
                            style: CustomTextStyles.bodySmallNunitoBlack900),
                        SizedBox(height: 61.v),
                        Text("Clean your room",
                            style: CustomTextStyles.titleMediumBlack900Bold_1),
                        SizedBox(height: 1.v),
                        Text("₦200",
                            style: CustomTextStyles.bodySmallNunitoBlack900)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgCheckedCheckbox,
              height: 36.v,
              width: 47.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 8.v))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
}
