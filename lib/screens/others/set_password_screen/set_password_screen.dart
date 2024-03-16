import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SetPasswordScreen extends StatelessWidget {
  SetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(19.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("Set Password",
                              style: CustomTextStyles.headlineSmall_1))),
                  SizedBox(height: 13.v),
                  Container(
                      width: 318.h,
                      margin: EdgeInsets.only(left: 4.h, right: 13.h),
                      child: Text(
                          "We use state-of-the-art security measures to protect your information at all times",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLarge_1
                              .copyWith(height: 1.50))),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password",
                          style: CustomTextStyles.bodyMediumNunitoGray500)),
                  SizedBox(height: 13.v),
                  CustomTextFormField(
                      controller: passwordController,
                      prefix: Container(
                          margin: EdgeInsets.only(right: 30.h, bottom: 11.v),
                          child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgInterfaceEssentialLockPassword,
                              height: 22.adaptSize,
                              width: 22.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 33.v),
                      suffix: Container(
                          margin: EdgeInsets.only(left: 30.h, bottom: 11.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
                              height: 22.adaptSize,
                              width: 22.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 33.v),
                      obscureText: true,
                      borderDecoration: TextFormFieldStyleHelper.underLineGray),
                  SizedBox(height: 7.v),
                  _buildConfirmpassword(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgClock,
            margin: EdgeInsets.fromLTRB(20.h, 7.v, 313.h, 7.v),
            onTap: () {
              onTapClock(context);
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Confirm Password",
                      style: CustomTextStyles.bodyMediumPoppinsGray500),
                  SizedBox(height: 13.v),
                  CustomTextFormField(
                      controller: confirmpasswordController,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: EdgeInsets.only(right: 30.h, bottom: 11.v),
                          child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgInterfaceEssentialLockPassword,
                              height: 22.adaptSize,
                              width: 22.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 33.v),
                      obscureText: true,
                      borderDecoration: TextFormFieldStyleHelper.underLineGray)
                ])));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return SizedBox(
        height: 83.v,
        width: 336.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("Both Passwords Must Match",
                  style: CustomTextStyles.bodySmallNunitoGray500)),
          _buildPassword(context)
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "Next",
        margin: EdgeInsets.only(left: 21.h, right: 19.h, bottom: 48.v),
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Navigates to the infoFilledScreen when the action is triggered.
  onTapClock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoFilledScreen);
  }

  /// Navigates to the homeScreenOneScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
