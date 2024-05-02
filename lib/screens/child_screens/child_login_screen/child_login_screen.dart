import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ChildLoginScreen extends StatelessWidget {
  ChildLoginScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

    TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 13.v),
                child: Column(children: [
                  CustomImageView(
                      //Welcome banner image
                      imagePath: ImageConstant.imgObjects,
                      height: 100.v,
                      width: 200.h),
                  Spacer(flex: 31),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text("Enter Your Username",
                              style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 15.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: CustomTextFormField(
                          controller: userNameController,
                          hintText: "*******",
                          hintStyle:
                              CustomTextStyles.bodyMediumNunitoBluegray500,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 14.v))),
                              Spacer(flex:15),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text("Enter the code generated by your parent",
                              style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 15.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: CustomTextFormField(
                          controller: codeController,
                          hintText: "*******",
                          hintStyle:
                              CustomTextStyles.bodyMediumNunitoBluegray500,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 14.v))),
                  Spacer(flex: 24),
                  // "Continue Button"
                  CustomElevatedButton(
                      text: "Continue",
                      margin: EdgeInsets.only(left: 22.h, right: 18.h),
                      onPressed: () {
                        onTapContinue(context);
                      }),
                  Spacer(flex: 43)
                ]))));
  }

  //Navigates to the childWelcomeScreen when clicked "Continue Button"
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.childHomeScreen);
  }
}
