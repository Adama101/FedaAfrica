import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AddChildScreenOneDialog extends StatelessWidget {
  AddChildScreenOneDialog({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: _buildPopupQuickSaving(context));
  }

  /// Section Widget
  Widget _buildPopupQuickSaving(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 27.h, right: 20.h, bottom: 377.v),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text("Add your Child",
                      style: CustomTextStyles.headlineSmallSemiBold)),
              SizedBox(height: 19.v),
              Text("Full Name",
                  style: CustomTextStyles.bodyMediumNunitoBlack900_1),
              SizedBox(height: 7.v),
              CustomTextFormField(
                  controller: fullNameController,
                  hintText: "Full Name",
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnErrorContainer,
                  filled: true,
                  fillColor: theme.colorScheme.onErrorContainer),
              SizedBox(height: 25.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Date of Birth ",
                        style: CustomTextStyles.bodyMediumNunitoff000000),
                    TextSpan(
                        text: "(DD/MM/YY)",
                        style: CustomTextStyles.bodyMediumNunitoffef2828)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 8.v),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                  decoration: AppDecoration.fillOnErrorContainer
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendarAltBlack900,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h, bottom: 2.v),
                        child: CustomTextFormField(
                          controller: dateController,
                          hintText: "08/02/2015",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.datetime,
                            textStyle: CustomTextStyles.bodySmallGray500))
                  ])),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(right: 48.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            width: 140.h,
                            text: "Save",
                            buttonStyle: CustomButtonStyles.fillBlueA,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallOnErrorContainer,
                            onPressed: () {
                              onTapSave(context);
                            }),
                        GestureDetector(
                            onTap: () {
                              onTapCancelButton(context);
                            },
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 12.v, bottom: 11.v),
                                child: Text("Cancel",
                                    style: CustomTextStyles.titleSmallRed800)))
                      ]))
            ]));
  }

  /// Navigates to the addChildScreenTwoScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addChildScreenTwoScreen);
  }

  /// Navigates to the homeScreenOneScreen when the action is triggered.
  onTapCancelButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
