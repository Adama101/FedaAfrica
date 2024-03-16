import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ChildLoginCodeScreen extends StatelessWidget {
  ChildLoginCodeScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 14.h),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFamilyValuesKid,
                              height: 230.v,
                              width: 223.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 53.h)),
                          SizedBox(height: 10.v),
                          Text("Generating Code........",
                              style: CustomTextStyles.titleLargeNunitoBlack900),
                          SizedBox(height: 31.v),
                          Padding(
                              padding: EdgeInsets.only(left: 11.h, right: 7.h),
                              child: CustomTextFormField(
                                  controller: priceController,
                                  hintText: "924A2L",
                                  textInputAction: TextInputAction.done,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 30.h, vertical: 14.v))),
                          SizedBox(height: 37.v),
                          CustomElevatedButton(
                              text: "Copy",
                              margin: EdgeInsets.only(left: 11.h),
                              onPressed: () {
                                onTapCopy(context);
                              }),
                          SizedBox(height: 49.v),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSearchPrimary,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("Share code",
                                            style: CustomTextStyles
                                                .titleSmallInterPrimary))
                                  ]))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 317.h, 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreenOneScreen when the action is triggered.
  onTapCopy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
