import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/custom_icon_button.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_ten.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ParentLoginScreen extends StatelessWidget {
  ParentLoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 24.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildContentConatiner(context),
                                  SizedBox(height: 18.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.h, right: 6.h),
                                      child: CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "Password",
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  12.h, 13.v, 8.h, 13.v),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgLockBlack900,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 50.v),
                                          obscureText: true)),
                                  SizedBox(height: 8.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: 15.v,
                                          width: 93.h,
                                          margin: EdgeInsets.only(right: 12.h),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          onTapTxtForgotpassword(
                                                              context);
                                                        },
                                                        child: Text(
                                                            "Forgot password?",
                                                            style: CustomTextStyles
                                                                .bodySmallOrange600))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        "Forgot password?",
                                                        style: CustomTextStyles
                                                            .bodySmallOrange600))
                                              ]))),
                                  SizedBox(height: 39.v),
                                  CustomElevatedButton(
                                      text: "Sign in",
                                      margin: EdgeInsets.only(
                                          left: 5.h, right: 3.h),
                                      onPressed: () {
                                        onTapSignIn(context);
                                      }),
                                  SizedBox(height: 95.v),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: " or connect with",
                                            style: CustomTextStyles
                                                .bodyMediumNunitofffd9b2f)
                                      ]),
                                      textAlign: TextAlign.left),
                                  SizedBox(height: 30.v),
                                  _buildGoogleLogo(context),
                                  SizedBox(height: 75.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtByloggingyou(context);
                                      },
                                      child: SizedBox(
                                          width: 218.h,
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "By logging, you are agreeing with our \n",
                                                    style: CustomTextStyles
                                                        .bodyMediumNunitoff00000013),
                                                TextSpan(
                                                    text: "Terms of Use",
                                                    style: CustomTextStyles
                                                        .labelLargefffca748
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)),
                                                TextSpan(text: " "),
                                                TextSpan(
                                                    text: "and",
                                                    style: CustomTextStyles
                                                        .bodyMediumNunitoff00000013),
                                                TextSpan(text: " "),
                                                TextSpan(
                                                    text: "Privacy Policy",
                                                    style: CustomTextStyles
                                                        .labelLargefffca748
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline))
                                              ]),
                                              textAlign: TextAlign.center))),
                                  SizedBox(height: 69.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTxtDonthaveanaccount(context);
                                          },
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 21.h),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "Don’t have an account? ",
                                                        style: CustomTextStyles
                                                            .bodyLargeff000000),
                                                    TextSpan(text: " "),
                                                    TextSpan(
                                                        text: "Register",
                                                        style: CustomTextStyles
                                                            .titleLargeNunitofffd9b2f
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline))
                                                  ]),
                                                  textAlign: TextAlign.left)))),
                                  SizedBox(height: 2.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 81.v,
        leadingWidth: 50.h,
        leading: Container(
            height: 42.adaptSize,
            width: 42.adaptSize,
            margin: EdgeInsets.only(left: 8.h, bottom: 17.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapBtnArrowLeft(context);
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)),
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  alignment: Alignment.center,
                  child: CustomImageView(imagePath: ImageConstant.imgArrowLeft))
            ])),
        centerTitle: true,
        title: Column(children: [
          AppbarSubtitle(
              text: "Welcome Back!",
              margin: EdgeInsets.only(left: 33.h, right: 37.h)),
          AppbarSubtitleTen(text: "Enter your credentials to continue")
        ]));
  }

  /// Section Widget
  Widget _buildContentConatiner(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: appTheme.blueGray30001, width: 1.h),
            borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Container(
            height: 50.v,
            width: 329.h,
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEnvelope,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 8.h, top: 4.v, bottom: 4.v),
                                child: Text("Email Address",
                                    style: CustomTextStyles
                                        .bodySmallInterBluegray500))
                          ]))),
              CustomTextFormField(
                  width: 329.h,
                  controller: emailController,
                  hintText: "Email Address",
                  textInputType: TextInputType.emailAddress,
                  alignment: Alignment.center,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 13.v, 8.h, 13.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEnvelope,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 50.v))
            ])));
  }

  /// Section Widget
  Widget _buildGoogleLogo(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: appTheme.gray30002, width: 2.h),
              borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Container(
              height: 50.v,
              width: 110.h,
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGoogleLogo,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 50.v,
                        width: 110.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 43.h, vertical: 13.v),
                        decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGoogleLogo,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.center)))
              ]))),
      SizedBox(
          height: 50.v,
          width: 110.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 50.v,
                    width: 110.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 43.h, vertical: 13.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: CustomIconButton(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        decoration: IconButtonStyleHelper.fillBlueA,
                        alignment: Alignment.center,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFacebook)))),
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 50.v,
                    width: 110.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 43.h, vertical: 13.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: CustomIconButton(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        decoration: IconButtonStyleHelper.fillBlueA,
                        alignment: Alignment.center,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFacebook))))
          ])),
      SizedBox(
          height: 50.v,
          width: 110.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 50.v,
                    width: 110.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 44.h, vertical: 13.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 20.v,
                        width: 16.h,
                        alignment: Alignment.center))),
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 50.v,
                    width: 110.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 44.h, vertical: 13.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 20.v,
                        width: 16.h,
                        alignment: Alignment.center)))
          ]))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
  }

  /// Navigates to the homeScreenOneScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  /// Navigates to the termsConditionsScreen when the action is triggered.
  onTapTxtByloggingyou(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.termsConditionsScreen);
  }

  /// Navigates to the infoScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoScreen);
  }
}
