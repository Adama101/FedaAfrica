import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/custom_icon_button.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 21.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Enter Email",
                                          style: CustomTextStyles
                                              .bodyMediumNunitoGray500)),
                                  SizedBox(height: 14.v),
                                  _buildEmail(context),
                                  SizedBox(height: 17.v),
                                  Container(
                                      height: 17.v,
                                      width: 90.h,
                                      margin: EdgeInsets.only(left: 1.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("New Password",
                                                    style: CustomTextStyles
                                                        .bodyMediumGray500)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("New Password",
                                                    style: CustomTextStyles
                                                        .bodyMediumGray500))
                                          ])),
                                  SizedBox(height: 15.v),
                                  _buildNewpassword(context),
                                  SizedBox(height: 16.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Confirm New Password",
                                          style: CustomTextStyles
                                              .bodyMediumNunitoGray500)),
                                  SizedBox(height: 13.v),
                                  _buildNewpassword1(context),
                                  SizedBox(height: 4.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Both Passwords Must Match",
                                          style: CustomTextStyles
                                              .bodySmallNunitoGray500)),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildSave(context)));
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
            width: 124.00001.h,
            child: Stack(alignment: Alignment.center, children: [
              AppbarSubtitleNine(text: "Reset Password"),
              AppbarSubtitleNine(text: "Reset Password")
            ])));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Ohua.afi@gmail.com",
        hintStyle: CustomTextStyles.bodyLargeGray90003,
        textInputType: TextInputType.emailAddress,
        prefix: Padding(
            padding: EdgeInsets.only(right: 30.h, bottom: 9.v),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEnvelopeGray400,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(right: 18.h, bottom: 9.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgEnvelopeGray400,
                  height: 24.adaptSize,
                  width: 24.adaptSize)
            ])),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        contentPadding: EdgeInsets.only(top: 2.v, right: 30.h, bottom: 2.v),
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
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
            borderDecoration: TextFormFieldStyleHelper.underLineGray));
  }

  /// Section Widget
  Widget _buildNewpassword1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
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
            borderDecoration: TextFormFieldStyleHelper.underLineGray));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 51.v),
        onPressed: () {
          onTapSave(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the infoFilledScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoFilledScreen);
  }
}
