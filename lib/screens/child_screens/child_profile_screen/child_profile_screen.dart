import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'widgets/childprofilescreen_item_widget.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class ChildProfileScreen extends StatelessWidget {
  const ChildProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text("Praise Ohua",
                              style: CustomTextStyles.titleMediumGray90004)),
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text("Praiseohua1",
                              style:
                                  CustomTextStyles.bodyMediumNunitoGray90004)),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgClockOnprimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(top: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("Joined March 2023",
                                    style: CustomTextStyles
                                        .bodyMediumNunitoOnPrimary13))
                          ])),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text("Statistics",
                              style: CustomTextStyles.titleMediumGray90004)),
                      SizedBox(height: 2.v),
                      Container(
                          height: 925.v,
                          width: 346.h,
                          margin: EdgeInsets.only(left: 5.h),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 3.h, bottom: 210.v),
                                    child: Text("Achievements",
                                        style: CustomTextStyles
                                            .titleMediumPrimary))),
                            _buildChildprofilescreen(context),
                            _buildInviteFriends(context)
                          ]))
                    ])),
            bottomNavigationBar: _buildSolarPanelSun(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 58.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, bottom: 1.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleThree(text: "Profile "),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse425,
              margin: EdgeInsets.symmetric(horizontal: 21.h))
        ]);
  }

  /// Section Widget
  Widget _buildChildprofilescreen(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 25.v,
                    crossAxisCount: 3,
                    mainAxisSpacing: 1.h,
                    crossAxisSpacing: 1.h),
                physics: BouncingScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ChildprofilescreenItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildInviteFriends(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 2.h, bottom: 248.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text("Invite Friends",
                          style: CustomTextStyles.titleMediumPrimary)),
                  SizedBox(
                      height: 96.v,
                      width: 344.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 96.v,
                                width: 344.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onErrorContainer,
                                    borderRadius: BorderRadius.circular(10.h),
                                    border: Border.all(
                                        color: appTheme.gray60001,
                                        width: 1.h)))),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.only(left: 5.h, right: 4.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                          "Tell your friends about feda, fun way to learn about finances",
                                          style: CustomTextStyles
                                              .labelLargeBlack900),
                                      SizedBox(height: 11.v),
                                      CustomElevatedButton(
                                          text: "Invite friends")
                                    ])))
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildSolarPanelSun(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 4.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: 38.v,
                        width: 63.h),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(top: 13.v, right: 12.h),
                            child: Text("Home",
                                style:
                                    CustomTextStyles.bodyMediumNunitoBlack900)))
                  ])),
              Spacer(flex: 27),
              Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPoliceBadge,
                            height: 36.v,
                            width: 63.h),
                        Padding(
                            padding: EdgeInsets.only(top: 13.v),
                            child: Text("Leaderboard",
                                style:
                                    CustomTextStyles.bodyMediumNunitoBlack900))
                      ])),
              Spacer(flex: 30),
              Padding(
                  padding: EdgeInsets.only(top: 14.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTreasure33x35,
                        height: 33.v,
                        width: 35.h),
                    Padding(
                        padding: EdgeInsets.only(top: 12.v),
                        child: Text("Task",
                            style: CustomTextStyles.bodyMediumNunitoBlack900))
                  ])),
              Spacer(flex: 42),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgProfilePicture,
                        height: 54.v,
                        width: 40.h),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text("Profile",
                                style:
                                    CustomTextStyles.bodyMediumNunitoBlack900)))
                  ])
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
