import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:fedaafrica/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTwo(context),
                      SizedBox(height: 62.v),
                      Padding(
                          padding: EdgeInsets.only(left: 135.h),
                          child: Text("Gamified Design",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 5.v),
                      Container(
                          width: 310.h,
                          margin: EdgeInsets.only(left: 35.h, right: 28.h),
                          child: Text(
                              "By earning badges, battling it out for the top spot on the leaderboard, exploring our interactive toolkit, and joining our daily trivia party, users are encouraged to play while they learn",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyMediumNunitoBlack900_1
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 39.v),
                      _buildNext(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 95.h, vertical: 29.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(children: [
          SizedBox(height: 148.v),
          CustomImageView(
              imagePath: ImageConstant.imgHttpsLottief195x178,
              height: 150.v,
              width: 100.h)
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: GestureDetector(
            onTap: () {
              onTapNext(context);
            },
            child: Padding(
                padding: EdgeInsets.only(left: 25.h, right: 14.h),
                child: Column(children: [
                  CustomElevatedButton(
                    text: "Next",
                    onPressed: () {
                      onTapNext(context);
                    },
                  ),
                  SizedBox(height: 20.v),
                  CustomOutlinedButton(
                    text: "Skip",
                    onPressed: () {
                      onTapSkip(context);
                    },
                  )
                ]))));
  }

  /// Navigates to the next screen
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenThreeScreen);
  }

  /// Navigates to the usertypeScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.usertypeScreen);
  }
}
