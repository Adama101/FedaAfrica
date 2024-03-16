import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_image.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'widgets/taskcompletedscreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class TaskCompletedScreen extends StatelessWidget {
  const TaskCompletedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 752.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 13.v),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildTaskcompletedscreen(context),
                  _buildSolarPanelSun(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGroupOnerrorcontainer,
            margin: EdgeInsets.only(left: 19.h, top: 4.v, bottom: 6.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Row(children: [
              AppbarSubtitleFour(
                  text: "15", margin: EdgeInsets.only(bottom: 1.v)),
              AppbarSubtitleThree(
                  text: "Task Completed",
                  margin: EdgeInsets.only(left: 31.h, top: 1.v))
            ])),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse425,
              margin: EdgeInsets.symmetric(horizontal: 21.h))
        ]);
  }

  /// Section Widget
  Widget _buildTaskcompletedscreen(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 19.h, bottom: 58.v),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 1.v);
                },
                itemCount: 14,
                itemBuilder: (context, index) {
                  return TaskcompletedscreenItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildSolarPanelSun(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Column(children: [
                    SizedBox(
                        width: 235.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgNavHome38x63,
                                  height: 29.v,
                                  width: 63.h,
                                  onTap: () {
                                    onTapImgSolarPanelSun(context);
                                  }),
                              Spacer(flex: 43),
                              CustomImageView(
                                  imagePath: ImageConstant.imgPoliceBadge,
                                  height: 27.v,
                                  width: 63.h),
                              Spacer(flex: 56),
                              Container(
                                  height: 25.v,
                                  width: 35.h,
                                  margin: EdgeInsets.only(top: 4.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgTreasure25x35),
                                          fit: BoxFit.cover)))
                            ])),
                    SizedBox(height: 9.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            width: 213.h,
                            margin: EdgeInsets.only(left: 17.h, right: 5.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Home",
                                      style: CustomTextStyles
                                          .bodyMediumNunitoBlack900),
                                  Text("Leaderboard",
                                      style: CustomTextStyles
                                          .bodyMediumNunitoBlack900),
                                  Text("Task",
                                      style: CustomTextStyles
                                          .bodyMediumNunitoBlack900)
                                ])))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 50.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapProfilePicture(context);
                            },
                            child: Container(
                                height: 41.v,
                                width: 40.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(ImageConstant
                                            .imgProfilePicture41x40),
                                        fit: BoxFit.cover)))),
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("Profile",
                                style:
                                    CustomTextStyles.bodyMediumNunitoBlack900))
                      ]))
            ])));
  }

  /// Navigates to the childWelcomeScreen when the action is triggered.
  onTapImgSolarPanelSun(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.childWelcomeScreen);
  }

  /// Navigates to the childProfileScreen when the action is triggered.
  onTapProfilePicture(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.childProfileScreen);
  }
}
