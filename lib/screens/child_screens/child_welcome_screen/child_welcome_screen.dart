import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'widgets/childwelcomescreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class ChildWelcomeScreen extends StatelessWidget {
  const ChildWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: _buildChildwelcomescreen(context))),
            bottomNavigationBar: _buildSolarPanelSun(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 43.v,
        title: Container(
            height: 22.v,
            width: 123.h,
            margin: EdgeInsets.only(left: 24.h, top: 21.v),
            child: Stack(alignment: Alignment.center, children: [
              AppbarSubtitleSix(text: "Hello, Praise 👋🏿"),
              AppbarSubtitleSix(text: "Hello, Praise 👋🏿")
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClose,
              margin: EdgeInsets.only(left: 21.h, right: 3.h, bottom: 12.v)),
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse425,
              margin: EdgeInsets.only(left: 15.h, right: 24.h))
        ]);
  }

  /// Section Widget
  Widget _buildChildwelcomescreen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.v);
            },
            itemCount: 14,
            itemBuilder: (context, index) {
              return ChildwelcomescreenItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildSolarPanelSun(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 20.h, bottom: 15.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSolarPanelSun,
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
                            width: 63.h,
                            onTap: () {
                              onTapImgPoliceBadge(context);
                            }),
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
                        imagePath: ImageConstant.imgTreasure,
                        height: 33.v,
                        width: 35.h),
                    Container(
                        height: 18.v,
                        width: 25.h,
                        margin: EdgeInsets.only(top: 12.v),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text("Task",
                                  style: CustomTextStyles
                                      .bodyMediumNunitoBlack900)),
                          Align(
                              alignment: Alignment.center,
                              child: Text("Task",
                                  style: CustomTextStyles
                                      .bodyMediumNunitoBlack900))
                        ]))
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

  /// Navigates to the leaderboardScreenContainerScreen when the action is triggered.
  onTapImgPoliceBadge(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.leaderboardScreenContainerScreen);
  }
}
