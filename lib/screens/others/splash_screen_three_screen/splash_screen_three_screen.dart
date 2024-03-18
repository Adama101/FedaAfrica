import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:fedaafrica/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildOne(context),
                  SizedBox(height: 27.v),
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
                  SizedBox(height: 21.v),
                  Text("Money Adventures",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 5.v),
                  Container(
                      width: 270.h,
                      margin: EdgeInsets.only(left: 55.h, right: 49.h),
                      child: Text(
                          " you can learn and plan your savings. Your parents can help set task. Let's start saving together!",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumNunitoBlack900_1
                              .copyWith(height: 1.50))),
                  SizedBox(height: 51.v),
                  _buildNext(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 52.h, vertical: 86.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 20.v),
              CustomImageView(
                  imagePath: ImageConstant.imgHttpsLottief183x250,
                  height: 180.v,
                  width: 250.h)
            ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapNext(context);
        },
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, right: 16.h),
            child: Column(children: [
              CustomElevatedButton(
                  text: "Next",
                  onPressed: () {
                    onTapNext(context);
                  }),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                text: "Skip",
                onPressed: () {
                  onTapSkip(context);
                },
              )
            ])));
  }

  /// Navigates to the usertypeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.usertypeScreen);
  }

  /// Navigates to the usertypeScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.usertypeScreen);
  }
}
