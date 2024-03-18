import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:fedaafrica/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class SplashScreenOneScreen extends StatelessWidget {
  const SplashScreenOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildNine(context),
                  SizedBox(height: 55.v),
                  Text("Bit Sized Learning",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 5.v),
                  Container(
                      width: 310.h,
                      margin: EdgeInsets.only(left: 35.h, right: 28.h),
                      child: Text(
                          "professionally verified educational modules deliver information in a clear and compelling way. Organized into actionable skills, our one of a kind curriculum tests users on the spot, so they can feel confident in their newfound knowledge",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumNunitoBlack900_1
                              .copyWith(height: 1.50))),
                  SizedBox(height: 25.v),
                  CustomElevatedButton(
                      text: "Next",
                      margin: EdgeInsets.only(left: 26.h, right: 14.h),
                      onPressed: () {
                        onTapNext(context);
                      }),
                  SizedBox(height: 20.v),
                  CustomOutlinedButton(
                      text: "Skip",
                      onPressed: () {
                        onTapSkip(context);
                      },
                      margin: EdgeInsets.only(left: 26.h, right: 14.h)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 100.h, vertical: 50.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(height: 139.v),
          CustomImageView(
              imagePath: ImageConstant.imgHttpsLottief,
              height: 150.adaptSize,
              width: 150.adaptSize)
        ]));
  }

  /// Navigates to the next screen
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenTwoScreen);
  }

  /// Navigates to the usertypeScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.usertypeScreen);
  }
}
