import 'package:fedaafrica/widgets/custom_icon_button.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InfoFilledScreen extends StatelessWidget {
  InfoFilledScreen({Key? key}) : super(key: key);

  TextEditingController contentConatinerController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

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
                                      height: 72.v,
                                      width: 187.h,
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text("Personal Details",
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
                                  SizedBox(height: 55.v),
                                  _buildContentConatiner(context),
                                  SizedBox(height: 29.v),
                                  _buildEmail(context),
                                  SizedBox(height: 14.v),
                                  _buildMobileNo(context),
                                  SizedBox(height: 26.v),
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
                                  _buildContentConatiner1(context),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildContinue(context)));
  }

  /// Section Widget
  Widget _buildContentConatiner(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: contentConatinerController,
            hintText: "Ohua",
            hintStyle: CustomTextStyles.bodyLargeLatoGray90003,
            prefix: Padding(
                padding: EdgeInsets.fromLTRB(12.h, 13.v, 30.h, 13.v),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUserBlack900,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.fromLTRB(12.h, 13.v, 8.h, 13.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgUserBlack900,
                      height: 24.adaptSize,
                      width: 24.adaptSize)
                ])),
            prefixConstraints: BoxConstraints(maxHeight: 50.v)));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 2.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Ohua.afi@gmail.com",
            hintStyle: CustomTextStyles.bodyLargeLatoGray90003,
            textInputType: TextInputType.emailAddress,
            prefix: Padding(
                padding: EdgeInsets.fromLTRB(12.h, 13.v, 30.h, 13.v),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEnvelope,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.fromLTRB(12.h, 13.v, 8.h, 13.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgEnvelope,
                      height: 24.adaptSize,
                      width: 24.adaptSize)
                ])),
            prefixConstraints: BoxConstraints(maxHeight: 50.v)));
  }

  /// Section Widget
  Widget _buildMobileNo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: mobileNoController,
            hintText: "+23350607045",
            hintStyle: CustomTextStyles.bodyLargeLatoGray90003,
            textInputAction: TextInputAction.done,
            prefix: Padding(
                padding: EdgeInsets.fromLTRB(12.h, 13.v, 30.h, 13.v),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPhonealtBlack900,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.fromLTRB(12.h, 13.v, 8.h, 13.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgPhonealtBlack900,
                      height: 24.adaptSize,
                      width: 24.adaptSize)
                ])),
            prefixConstraints: BoxConstraints(maxHeight: 50.v)));
  }

  /// Section Widget
  Widget _buildContentConatiner1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v),
              decoration: AppDecoration.outlineBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCalendarAltBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          CustomImageView(
              imagePath: ImageConstant.imgCalendarAltBlack900,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 13.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 15.v, bottom: 13.v),
              child: Text("08/02/1959",
                  style: CustomTextStyles.bodyLargeLatoGray90003))
        ]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 24.h, right: 16.h, bottom: 52.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates to the infoScreen when the action is triggered.
  onTapBtnClock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoScreen);
  }

  /// Navigates to the setPasswordScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.setPasswordScreen);
  }
}
