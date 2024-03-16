import 'package:fedaafrica/widgets/custom_icon_button.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InfoScreen extends StatelessWidget {
  InfoScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                horizontal: 20.h, vertical: 10.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 74.v,
                                      width: 176.h,
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text("Create Account",
                                                    style: theme.textTheme
                                                        .headlineSmall)),
                                            CustomIconButton(
                                                height: 42.adaptSize,
                                                width: 42.adaptSize,
                                                alignment: Alignment.topLeft,
                                                onTap: () {
                                                  onTapBtnClock(context);
                                                },
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgClockGray30001))
                                          ])),
                                  SizedBox(height: 8.v),
                                  Container(
                                      width: 294.h,
                                      margin: EdgeInsets.only(
                                          left: 4.h, right: 36.h),
                                      child: Text(
                                          "Enter your details as they appear on your legal documents",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 54.v),
                                  _buildContentConatiner1(context),
                                  SizedBox(height: 25.v),
                                  _buildContentConatiner2(context),
                                  SizedBox(height: 32.v),
                                  _buildContentConatiner4(context),
                                  SizedBox(height: 12.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("Date of birth",
                                          style: CustomTextStyles
                                              .titleMediumBlack900)),
                                  SizedBox(height: 12.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("DD/MM/YY",
                                          style: CustomTextStyles
                                              .labelLargeDeeporangeA200)),
                                  SizedBox(height: 7.v),
                                  _buildContentConatiner6(context),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  Widget _buildContentConatiner1(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 3.h),
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
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUserBlueGray10003,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 4.v, bottom: 4.v),
                            child: Text("Full Name",
                                style:
                                    CustomTextStyles.bodySmallInterBluegray500))
                      ]))),
              CustomTextFormField(
                  width: 329.h,
                  controller: fullNameController,
                  hintText: "Full Name",
                  hintStyle: CustomTextStyles.bodySmallNunitoBluegray500,
                  alignment: Alignment.center,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 13.v, 8.h, 13.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgUserBlueGray10003,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 50.v))
            ])));
  }

  /// Section Widget
  Widget _buildContentConatiner2(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 2.h),
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
                                imagePath:
                                    ImageConstant.imgEnvelopeBlueGray10003,
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
                  hintStyle: CustomTextStyles.bodySmallNunitoBluegray500,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  alignment: Alignment.center,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 13.v, 8.h, 13.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEnvelopeBlueGray10003,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 50.v))
            ])));
  }

  /// Section Widget
  Widget _buildContentConatiner4(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 3.h),
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
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPhoneAlt,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 4.v, bottom: 4.v),
                            child: Text("Phone Number",
                                style:
                                    CustomTextStyles.bodySmallInterBluegray500))
                      ]))),
              _buildContentConatiner(context,
                  calendarAlt: ImageConstant.imgPhoneAlt,
                  dDMMYY: "Phone Number")
            ])));
  }

  /// Section Widget
  Widget _buildContentConatiner6(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          _buildContentConatiner(context,
              calendarAlt: ImageConstant.imgCalendarAlt, dDMMYY: "DD/MM/YY"),
          CustomImageView(
              imagePath: ImageConstant.imgCalendarAlt,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 13.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 17.v, bottom: 17.v),
              child: Text("DD/MM/YY",
                  style: CustomTextStyles.bodySmallInterBluegray500))
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "Next",
        margin: EdgeInsets.only(left: 24.h, right: 16.h, bottom: 55.v),
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Common widget
  Widget _buildContentConatiner(
    BuildContext context, {
    required String calendarAlt,
    required String dDMMYY,
  }) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v),
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(children: [
              CustomImageView(
                  imagePath: calendarAlt,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 4.v),
                  child: Text(dDMMYY,
                      style: CustomTextStyles.bodySmallInterBluegray500
                          .copyWith(color: appTheme.blueGray500)))
            ])));
  }

  /// Navigates to the parentLoginScreen when the action is triggered.
  onTapBtnClock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parentLoginScreen);
  }

  /// Navigates to the infoFilledScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoFilledScreen);
  }
}
