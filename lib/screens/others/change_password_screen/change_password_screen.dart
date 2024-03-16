import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/custom_icon_button.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 16.v,
                          width: 109.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("Current Password",
                                    style: CustomTextStyles.bodyMediumGray500)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("Current Password",
                                    style: CustomTextStyles.bodyMediumGray500))
                          ])),
                      SizedBox(height: 15.v),
                      _buildPassword(context),
                      SizedBox(height: 17.v),
                      SizedBox(
                          height: 17.v,
                          width: 90.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("New Password",
                                    style: CustomTextStyles.bodyMediumGray500)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("New Password",
                                    style: CustomTextStyles.bodyMediumGray500))
                          ])),
                      SizedBox(height: 15.v),
                      _buildNewpassword(context),
                      SizedBox(height: 17.v),
                      SizedBox(
                          height: 17.v,
                          width: 143.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("Confirm New Password",
                                    style: CustomTextStyles.bodyMediumGray500)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("Confirm New Password",
                                    style: CustomTextStyles.bodyMediumGray500))
                          ])),
                      SizedBox(height: 15.v),
                      _buildNewpassword1(context),
                      SizedBox(height: 6.v),
                      SizedBox(
                          height: 15.v,
                          width: 150.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("Both Passwords Must Match",
                                    style: CustomTextStyles.bodySmallGray500)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("Both Passwords Must Match",
                                    style: CustomTextStyles.bodySmallGray500))
                          ])),
                      Spacer(),
                      SizedBox(height: 41.v),
                      _buildChangePassword(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: Container(
            height: 42.adaptSize,
            width: 42.adaptSize,
            margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 7.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  decoration: IconButtonStyleHelper.fillGrayTL21,
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    onTapBtnArrowLeft(context);
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)),
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  decoration: IconButtonStyleHelper.fillGrayTL21,
                  alignment: Alignment.center,
                  child: CustomImageView(imagePath: ImageConstant.imgArrowLeft))
            ])),
        centerTitle: true,
        title: SizedBox(
            height: 22.v,
            width: 140.h,
            child: Stack(alignment: Alignment.center, children: [
              AppbarSubtitleNine(text: "Change Password"),
              AppbarSubtitleNine(text: "Change Password")
            ])));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        prefix: Container(
            margin: EdgeInsets.only(right: 30.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgInterfaceEssentialLockPassword,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return CustomTextFormField(
        controller: newpasswordController,
        prefix: Container(
            margin: EdgeInsets.only(right: 30.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgInterfaceEssentialLockPassword,
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
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
  }

  /// Section Widget
  Widget _buildNewpassword1(BuildContext context) {
    return CustomTextFormField(
        controller: newpasswordController1,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.only(right: 30.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgInterfaceEssentialLockPassword,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
  }

  /// Section Widget
  Widget _buildChangePassword(BuildContext context) {
    return CustomElevatedButton(text: "Change Password");
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
