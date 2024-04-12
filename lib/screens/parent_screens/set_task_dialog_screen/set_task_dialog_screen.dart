import 'package:fedaafrica/widgets/custom_icon_button.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SetTaskScreenDialogScreen extends StatefulWidget {
  SetTaskScreenDialogScreen({Key? key}) : super(key: key);

  @override
  State<SetTaskScreenDialogScreen> createState() =>
      _SetTaskScreenDialogScreenState();
}

class _SetTaskScreenDialogScreenState extends State<SetTaskScreenDialogScreen> {
  TextEditingController taskController = TextEditingController();

  TextEditingController rewardAmountController = TextEditingController();

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
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 40.v),
                                              child: Text(
                                                  "Assign Tasks to My Kid",
                                                  style: theme.textTheme
                                                      .headlineSmall))),
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
                            SizedBox(height: 15.v),
                            Container(
                                width: 294.h,
                                margin: EdgeInsets.only(left: 4.h, right: 36.h),
                                child: Text("Create a task",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(height: 1.50))),
                            SizedBox(height: 54.v),
                            _buildPassword(context),
                            SizedBox(height: 35.v),
                            _buildConfirmpassword(context),
                            SizedBox(height: 35.v),
                          ]))))),
      bottomNavigationBar: _buildSave(context),
    ));
  }

  /// Password Widget
  Widget _buildPassword(BuildContext context) {
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
            decoration: AppDecoration.outlineBlueGray,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                  )),
              CustomTextFormField(
                  width: 329.h,
                  controller: taskController,
                  hintText: "Task Name",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.name,
                  hintStyle: CustomTextStyles.bodySmallNunitoBluegray500,
                  alignment: Alignment.center,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 13.v, 8.h, 13.v),
                      child: CustomImageView(
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 50.v))
            ])));
  }

  /// Reward Widget
  Widget _buildconfirmPassword(BuildContext context) {
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
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                height: 24.adaptSize,
                                width: 24.adaptSize)
                          ]))),
              CustomTextFormField(
                  width: 329.h,
                  controller: rewardAmountController,
                  hintText: "Reward Amount",
                  hintStyle: CustomTextStyles.bodySmallNunitoBluegray500,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  alignment: Alignment.center,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 13.v, 8.h, 13.v),
                      child: CustomImageView(
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 50.v))
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
              child: Text("Amount is in Naira",
                  style: CustomTextStyles.bodySmallNunitoGray500)),
          _buildconfirmPassword(context)
        ]));
  }

  /// NEXT Button Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 24.h, right: 16.h, bottom: 100.v),
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Navigates to the parentLoginScreen when the action is triggered.
  onTapBtnClock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  /// Navigates to the infoFilledScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.taskScreen);
  }
}
