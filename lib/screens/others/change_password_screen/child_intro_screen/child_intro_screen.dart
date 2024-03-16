import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:fedaafrica/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class ChildIntroScreen extends StatelessWidget {
  const ChildIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup162333,
                          height: 216.v,
                          width: 200.h,
                          margin: EdgeInsets.only(left: 47.h)),
                      SizedBox(height: 79.v),
                      Container(
                          width: 279.h,
                          margin: EdgeInsets.only(left: 23.h, right: 41.h),
                          child: Text(
                              "Fun, way to learn,\nabout finances effectively \nas a family!",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.headlineSmallSemiBold
                                  .copyWith(height: 1.20))),
                      SizedBox(height: 98.v),
                      _buildGetStarted(context),
                      SizedBox(height: 6.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildGetStarted(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Column(children: [
          CustomElevatedButton(
              text: "Get Started",
              onPressed: () {
                onTapGetStarted(context);
              }),
          SizedBox(height: 20.v),
          CustomOutlinedButton(text: "I already have an account")
        ]));
  }

  /// Navigates to the childLoginScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.childLoginScreen);
  }
}
