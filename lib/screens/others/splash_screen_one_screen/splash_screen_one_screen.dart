import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
                  _buildHttpsLottief(context),
                  SizedBox(height: 30.v),
                  SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 12,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.gray40001,
                              dotHeight: 8.v,
                              dotWidth: 8.h))),
                  SizedBox(height: 17.v),
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
                      margin: EdgeInsets.only(left: 26.h, right: 14.h),
                      onPressed: () {
                        onTapSkip(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildHttpsLottief(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 90.h, vertical: 56.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 100.v),
          CustomImageView(
              imagePath: ImageConstant.imgHttpsLottief,
              height: 150.v,
              width: 100.h,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the splashScreenTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenTwoScreen);
  }

  /// Navigates to the usertypeScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.usertypeScreen);
  }
}
