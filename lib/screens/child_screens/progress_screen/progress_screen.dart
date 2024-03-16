import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                  height: 493.v,
                                  width: 353.h,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 54.h),
                                                child: Text("Lessons Completed",
                                                    style: CustomTextStyles
                                                        .headlineSmallPrimary))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgHttpsLottief466x339,
                                            height: 466.v,
                                            width: 339.h,
                                            alignment: Alignment.topCenter),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 50.v),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCloseDeepPurpleA100,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      onTap: () {
                                                        onTapImgClose(context);
                                                      }),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.h, top: 4.v),
                                                      child: Text("Level 1",
                                                          style: CustomTextStyles
                                                              .titleSmallDeeppurpleA100))
                                                ])))
                                      ]))),
                          SizedBox(height: 49.v),
                          _buildTotalPoints(context)
                        ])))),
            bottomNavigationBar: _buildContinue(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 25.v,
        leadingWidth: 52.h,
        leading: Container(
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.only(left: 29.h, top: 2.v),
            child: Stack(alignment: Alignment.centerLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup1000000996,
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup1000000995,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 2.v, right: 3.h, bottom: 1.v))
            ])),
        title: Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Container(
                height: 20.v,
                width: 234.h,
                decoration: BoxDecoration(
                    color: appTheme.gray30005,
                    borderRadius: BorderRadius.circular(10.h)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.h),
                    child: LinearProgressIndicator(
                        value: 0.96,
                        backgroundColor: appTheme.gray30005,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            appTheme.blueA200))))),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFavorite,
              margin: EdgeInsets.only(left: 22.h, right: 38.h, bottom: 4.v))
        ]);
  }

  /// Section Widget
  Widget _buildTotalPoints(BuildContext context) {
    return SizedBox(
        height: 100.v,
        width: 355.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 14.h),
                        padding: EdgeInsets.symmetric(horizontal: 2.h),
                        decoration: AppDecoration.fillAmber.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Total points",
                                  style: CustomTextStyles
                                      .titleSmallOnErrorContainerBold),
                              SizedBox(height: 2.v),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 22.h, vertical: 14.v),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgTelevision,
                                            height: 50.v,
                                            width: 28.h,
                                            margin: EdgeInsets.only(top: 1.v)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 14.h, bottom: 6.v),
                                            child: Text("15",
                                                style: theme
                                                    .textTheme.headlineLarge))
                                      ]))
                            ]))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 14.h),
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.fillCyan.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 17.v),
                          Container(
                              width: 159.h,
                              padding: EdgeInsets.symmetric(vertical: 14.v),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgThumbsUpCyan400,
                                        height: 50.v,
                                        width: 51.h,
                                        margin: EdgeInsets.only(top: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 1.v, bottom: 4.v),
                                        child: Text("100%",
                                            style: CustomTextStyles
                                                .headlineLargeCyan600))
                                  ]))
                        ])))
              ])),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 55.h),
                  child: Text("Great!",
                      style: CustomTextStyles.titleSmallOnErrorContainerBold)))
        ]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 42.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the stagesScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.stagesScreen);
  }
}
